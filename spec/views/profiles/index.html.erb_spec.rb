require 'rails_helper'

RSpec.describe "profiles/index", type: :view do
  before(:each) do
    assign(:profiles, [
      Profile.create!(
        :user => nil,
        :profile_image => "Profile Image",
        :user_name => "User Name",
        :about_me => "MyText"
      ),
      Profile.create!(
        :user => nil,
        :profile_image => "Profile Image",
        :user_name => "User Name",
        :about_me => "MyText"
      )
    ])
  end

  it "renders a list of profiles" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Profile Image".to_s, :count => 2
    assert_select "tr>td", :text => "User Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
