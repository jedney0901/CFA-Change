class Submission < ApplicationRecord
  belongs_to :debate
  belongs_to :user
  # validates :description, length: { maximum: 500 }
  validate :total_submission, :on => :create


private
  def total_submission
    if debate.submissions.count >= 6
      errors.add(:base, "Total number of submissions has been complete")
    end
  end
end
