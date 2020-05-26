class CreateCovidPhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :covid_photos do |t|
      t.date :date_taken
      t.string :location
      t.string :author
      t.text :information
      t.string :submit_name
      t.string :submit_email
      t.string :other_topic

      t.timestamps
    end
  end
end
