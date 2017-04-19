class Debate < ApplicationRecord
  has_many :submissions
  belongs_to :user

end
