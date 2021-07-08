class School < ApplicationRecord
  has_and_belongs_to_many :photo_usages
end
