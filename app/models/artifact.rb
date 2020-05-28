class Artifact < ApplicationRecord

  has_one_attached :photo
  belongs_to :user

  has_many :bids, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  validates :artist, presence: true
  validates :year, presence: true
  validates :starting_value, presence: true
end
