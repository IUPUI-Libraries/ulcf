class Topic < ApplicationRecord
  has_and_belongs_to_many :covid_photos
end
