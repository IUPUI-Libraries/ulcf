class PhotoUsage < ApplicationRecord
  has_one_attached :photo
  has_one_attached :cv_upload
  belongs_to :user
  belongs_to :user_role
  belongs_to :school

  validates :signature, presence: true
  validates :acknowledgement, acceptance: true
  validates :photo, attached: true, if: :alt_photo?

  def alt_photo?
    wikimedia_permission == "no"
  end

end
