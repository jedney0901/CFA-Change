require 'rails_helper'

RSpec.describe Debate, type: :controller do

  it "People can't edit someones debate" do

    user1 = User.create(:email => "josh_edney1@hotmail.com")
    user2 = User.create(:email => "josh_edney1@hootermail.com")

    debate = Debate.create(:user => user1, :topic => "This is a topic")

    Debate.edit!(:user => user2, debate: debate)

    user.can_edit_debate?

    expect(user.can_edit_debate?).to be false
  end
end
