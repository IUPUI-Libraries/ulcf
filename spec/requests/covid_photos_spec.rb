require 'rails_helper'

RSpec.describe "CovidPhotos", type: :request do
  describe "GET /covid_photos" do
    it "works! (now write some real specs)" do
      get covid_photos_path
      expect(response).to have_http_status(200)
    end
  end
end
