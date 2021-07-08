class ChangeWikimediaPermissionToBeStringInPhotoUsages < ActiveRecord::Migration[6.0]
  def up
    change_column :photo_usages, :wikimedia_permission, :string
  end

  def down
    change_column :photo_usages, :wikimedia_permission, :boolean
  end
end
