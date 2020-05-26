json.extract! covid_photo, :id, :date_taken, :location, :author, :information, :submit_name, :submit_email, :other_topic, :created_at, :updated_at
json.url covid_photo_url(covid_photo, format: :json)
