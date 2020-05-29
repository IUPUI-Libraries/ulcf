class CovidPhoto < ApplicationRecord
  has_and_belongs_to_many :topics
  has_one_attached :photo

  validates :date_taken, :location, :author, :information, :topics, :photo, :submit_name, :submit_email, presence: true
end
