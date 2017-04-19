require 'rails_helper'

RSpec.describe "profiles/show", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :user => nil,
      :profile_image => "Profile Image",
      :user_name => "User Name",
      :about_me => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Profile Image/)
    expect(rendered).to match(/User Name/)
    expect(rendered).to match(/MyText/)
  end
end
