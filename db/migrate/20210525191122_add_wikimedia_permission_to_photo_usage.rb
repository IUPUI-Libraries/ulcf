class AddWikimediaPermissionToPhotoUsage < ActiveRecord::Migration[6.0]
  def change
    add_column :photo_usages, :wikimedia_permission, :boolean
  end
end
