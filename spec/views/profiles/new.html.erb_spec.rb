require 'rails_helper'

RSpec.describe "profiles/new", type: :view do
  before(:each) do
    assign(:profile, Profile.new(
      :user => nil,
      :profile_image => "MyString",
      :user_name => "MyString",
      :about_me => "MyText"
    ))
  end

  it "renders new profile form" do
    render

    assert_select "form[action=?][method=?]", profiles_path, "post" do

      assert_select "input#profile_user_id[name=?]", "profile[user_id]"

      assert_select "input#profile_profile_image[name=?]", "profile[profile_image]"

      assert_select "input#profile_user_name[name=?]", "profile[user_name]"

      assert_select "textarea#profile_about_me[name=?]", "profile[about_me]"
    end
  end
end
