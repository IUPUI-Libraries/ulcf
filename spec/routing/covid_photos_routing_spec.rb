require "rails_helper"

RSpec.describe CovidPhotosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/covid_photos").to route_to("covid_photos#index")
    end

    it "routes to #new" do
      expect(:get => "/covid_photos/new").to route_to("covid_photos#new")
    end

    it "routes to #show" do
      expect(:get => "/covid_photos/1").to route_to("covid_photos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/covid_photos/1/edit").to route_to("covid_photos#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/covid_photos").to route_to("covid_photos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/covid_photos/1").to route_to("covid_photos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/covid_photos/1").to route_to("covid_photos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/covid_photos/1").to route_to("covid_photos#destroy", :id => "1")
    end
  end
end
