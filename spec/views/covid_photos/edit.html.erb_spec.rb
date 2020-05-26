require 'rails_helper'

RSpec.describe "covid_photos/edit", type: :view do
  before(:each) do
    @covid_photo = assign(:covid_photo, CovidPhoto.create!(
      :location => "MyString",
      :author => "MyString",
      :information => "MyText",
      :submit_name => "MyString",
      :submit_email => "MyString",
      :other_topic => "MyString"
    ))
  end

  it "renders the edit covid_photo form" do
    render

    assert_select "form[action=?][method=?]", covid_photo_path(@covid_photo), "post" do

      assert_select "input[name=?]", "covid_photo[location]"

      assert_select "input[name=?]", "covid_photo[author]"

      assert_select "textarea[name=?]", "covid_photo[information]"

      assert_select "input[name=?]", "covid_photo[submit_name]"

      assert_select "input[name=?]", "covid_photo[submit_email]"

      assert_select "input[name=?]", "covid_photo[other_topic]"
    end
  end
end
