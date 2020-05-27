class CovidPhoto < ApplicationRecord
  has_and_belongs_to_many :topics
  has_one_attached :photo
end
