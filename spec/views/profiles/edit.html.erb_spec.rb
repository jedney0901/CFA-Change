require 'rails_helper'

RSpec.describe "profiles/edit", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :user => nil,
      :profile_image => "MyString",
      :user_name => "MyString",
      :about_me => "MyText"
    ))
  end

  it "renders the edit profile form" do
    render

    assert_select "form[action=?][method=?]", profile_path(@profile), "post" do

      assert_select "input#profile_user_id[name=?]", "profile[user_id]"

      assert_select "input#profile_profile_image[name=?]", "profile[profile_image]"

      assert_select "input#profile_user_name[name=?]", "profile[user_name]"

      assert_select "textarea#profile_about_me[name=?]", "profile[about_me]"
    end
  end
end
