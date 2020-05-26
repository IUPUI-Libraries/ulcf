require 'rails_helper'

RSpec.describe "covid_photos/index", type: :view do
  before(:each) do
    assign(:covid_photos, [
      CovidPhoto.create!(
        :location => "Location",
        :author => "Author",
        :information => "MyText",
        :submit_name => "Submit Name",
        :submit_email => "Submit Email",
        :other_topic => "Other Topic"
      ),
      CovidPhoto.create!(
        :location => "Location",
        :author => "Author",
        :information => "MyText",
        :submit_name => "Submit Name",
        :submit_email => "Submit Email",
        :other_topic => "Other Topic"
      )
    ])
  end

  it "renders a list of covid_photos" do
    render
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Submit Name".to_s, :count => 2
    assert_select "tr>td", :text => "Submit Email".to_s, :count => 2
    assert_select "tr>td", :text => "Other Topic".to_s, :count => 2
  end
end
