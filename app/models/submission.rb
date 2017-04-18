class Submission < ApplicationRecord
  belongs_to :debate
  belongs_to :user
end
