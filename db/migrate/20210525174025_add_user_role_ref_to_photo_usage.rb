class AddUserRoleRefToPhotoUsage < ActiveRecord::Migration[6.0]
  def change
    add_reference :photo_usages, :user_role, null: false, foreign_key: true
  end
end
