class CreatePhotoUsages < ActiveRecord::Migration[6.0]
  def change
    create_table :photo_usages do |t|
      t.boolean :acknowledgement
      t.string :signature
      t.string :username
      t.datetime :date_signed

      t.timestamps
    end
  end
end
