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
end
