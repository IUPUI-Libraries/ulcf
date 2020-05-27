class CreateTopics < ActiveRecord::Migration[6.0]
  def change
    create_table :topics do |t|
      t.string :name

      t.timestamps
    end

    create_table :covid_photos_topics, id: false do |t|
      t.belongs_to :covid_photo
      t.belongs_to :topic
    end
  end
end
