class AddUserRefToPhotoUsages < ActiveRecord::Migration[6.0]
  def change
    add_reference :photo_usages, :user, foreign_key: true
  end
end
