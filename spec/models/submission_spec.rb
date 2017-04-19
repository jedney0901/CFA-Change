require 'rails_helper'

RSpec.describe Submission, type: :model do
  it "stops submitting after 6 posts" do
    submission1 = Submission.create!(sub_type: "pro", content: "dsfhsudfsdih")
    submission2 = Submission.create!(sub_type: "pro", content: "dsfhsudfsdih")
    submission3 = Submission.create!(sub_type: "pro", content: "dsfhsudfsdih")
    submission4 = Submission.create!(sub_type: "con", content: "dsfhsudfsdih")
    submission5 = Submission.create!(sub_type: "con", content: "dsfhsudfsdih")
    submission6 = Submission.create!(sub_type: "con", content: "dsfhsudfsdih")

    expect(Submission.new.to be_valid)
  end


end
