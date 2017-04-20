require 'rails_helper'

RSpec.describe Submission, type: :model do
  it "stops submitting after 6 posts" do

    user = User.create(:email => "josh_edney1@hotmail.com")
    debate = Debate.create(:user => user, :topic => "This is a topic")

    Submission.create!(:user => user, debate: debate, sub_type: "pro", content: "dsfhsudfsdih")
    Submission.create!(:user => user, debate: debate, sub_type: "pro", content: "dsfhsudfsdih")
    Submission.create!(:user => user, debate: debate, sub_type: "pro", content: "dsfhsudfsdih")
    Submission.create!(:user => user, debate: debate, sub_type: "con", content: "dsfhsudfsdih")
    Submission.create!(:user => user, debate: debate, sub_type: "con", content: "dsfhsudfsdih")
    Submission.create!(:user => user, debate: debate, sub_type: "con", content: "dsfhsudfsdih")

    debate.can_accept_submissions?

    expect(debate.can_accept_submissions?).to be false
  end

  it "Allows submission when less than 6 submissions" do

    user = User.create(:email => "josh_edney1@hotmail.com")
    debate = Debate.create(:user => user, :topic => "This is a topic")

    Submission.create!(:user => user, debate: debate, sub_type: "pro", content: "dsfhsudfsdih")
    Submission.create!(:user => user, debate: debate, sub_type: "pro", content: "dsfhsudfsdih")
    Submission.create!(:user => user, debate: debate, sub_type: "pro", content: "dsfhsudfsdih")

    debate.can_accept_submissions?

    expect(debate.can_accept_submissions?).to be true
  end
end
