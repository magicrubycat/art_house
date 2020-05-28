class Bid < ApplicationRecord
  belongs_to :user
  belongs_to :artifact
  validates  :value, presence: true
end
