class Artifact < ApplicationRecord

  has_one_attached :photo
  belongs_to :user

  has_many :bids, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  validates :artist, presence: true
  validates :year, presence: true
  validates :starting_value, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_all_attributes,
    against: [ :name, :description, :year, :artist, :starting_value ],
    using: {
      tsearch: { prefix: true } # <-- now `cat with hat` will return something!
    }
end
