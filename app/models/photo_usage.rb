class PhotoUsage < ApplicationRecord
  has_many_attached :photos
  has_one_attached :cv_upload
  belongs_to :user
  belongs_to :user_role
  belongs_to :school

  validates :signature, presence: true
  validates :acknowledgement, acceptance: true

end
