class Debate < ApplicationRecord
  has_many :submissions
  belongs_to :user

  validates :description, length: { maximum: 500 }

  def argument_turn
    if debate.user == false && debate.submission.id == 1
      false
      errors.add(:base, "Wait for the other team to start")
    else
      true
    end
  end

  def previous_submission
    if debate.submission.user_id.last == current_user_id
      errors.add(:base, "It's not your go, wait for the other team!")
    end
  end
end
