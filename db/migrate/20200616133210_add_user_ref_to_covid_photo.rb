class AddUserRefToCovidPhoto < ActiveRecord::Migration[6.0]
  def change
    add_reference :covid_photos, :user, foreign_key: true
  end
end
