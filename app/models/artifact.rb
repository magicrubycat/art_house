class Artifact < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :bids
  validates :name, presence: true, uniqueness: true
  validates :artist, presence: true
  validates :year, presence: true
  validates :starting_value, presence: true
end
