RSpec.describe Submission, type: :controller do

  it "People can't edit someones submission" do

    user1 = User.create(:email => "josh_edney1@hotmail.com")
    user2 = User.create(:email => "josh_edney1@hotmail.com")

    debate = Debate.create(:user => user1, :topic => "This is a topic")

    submission1 = Submission.create!(:user => user2, debate: debate, sub_type: "pro", content: "dsdhsudfsdih")

    Submission.edit!(:submission => submission1, :user => user1, debate: debate)

    user.can_edit_submissions?

    expect(user.can_edit_submissions?).to be false
  end
end
