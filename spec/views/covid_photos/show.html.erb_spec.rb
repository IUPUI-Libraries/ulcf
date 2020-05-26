require 'rails_helper'

RSpec.describe "covid_photos/show", type: :view do
  before(:each) do
    @covid_photo = assign(:covid_photo, CovidPhoto.create!(
      :location => "Location",
      :author => "Author",
      :information => "MyText",
      :submit_name => "Submit Name",
      :submit_email => "Submit Email",
      :other_topic => "Other Topic"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/Author/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Submit Name/)
    expect(rendered).to match(/Submit Email/)
    expect(rendered).to match(/Other Topic/)
  end
end
