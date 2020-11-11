class CovidPhoto < ApplicationRecord
  has_and_belongs_to_many :topics
  has_one_attached :photo
  belongs_to :user

  validates :date_taken, :location, :author_first, :author_last, :information,
            :topics, :photo, :submit_name, :submit_email, presence: true
  validates_presence_of :other_topic, if: :other_checked?

  def other_checked?
    topics.each do |t|
      return true if t.name == 'Other'
    end

    false
  end

  def copy_file(file_path)
    file_path << '/' unless file_path.end_with?('/)')
    photo.open do |file|
      FileUtils.cp file.path, "/Users/andjsmit/Projects/rails/ulcf/tmp/test/#{file_name}"
    end
    photo
  end

  def self.to_csv
    headers = %w[
      FileName
      Date
      Location
      Firstname
      Lastname
      Information
      Topics
      OtherTopics
      SubmitName
      SubmitEmail
      UserID
    ]
    attributes = %w[
      file_name
      date_taken
      location
      author_first
      author_last
      information
      topics_list
      other_topic
      submit_name
      submit_email
      user_uid
    ]
    CSV.generate(headers: true) do |csv|
      csv << headers
      all.each do |photo|
        csv << attributes.map{ |attr| photo.send(attr) }
      end
    end
  end

  def user_uid
    "#{user.uid}"
  end

  def topics_list
    "#{topics.map(&:name).join(', ')}"
  end

  def file_name
    "#{[photo.id, '--', photo.blob.filename].join}"
  end
end
