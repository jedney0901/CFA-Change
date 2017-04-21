class Stance < ApplicationRecord
  belongs_to :user
  belongs_to :debate
  has_one :debate
end
