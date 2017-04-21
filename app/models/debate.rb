class Debate < ApplicationRecord
  has_many :submissions
  belongs_to :user

  validates :description, length: { maximum: 500 }

  def can_accept_submissions?
    if submissions.count >= 6
      false
    else
      true
    end
  end
end
