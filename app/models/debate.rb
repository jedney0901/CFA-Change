class Debate < ApplicationRecord
  has_many :submissions
  belongs_to :user
  has_one :stance

  validates :description, length: { maximum: 500 }

  def can_accept_submissions?
    if submissions.count >= 6
      false
    else
      true
    end
  end

  def argument_turn
    if
  end
end
