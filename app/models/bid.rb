class Bid < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :artifact, dependent: :destroy
  validates  :value, presence: true
end
