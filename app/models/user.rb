class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :bids, dependent: :destroy # bids as a potential buyer of an artifact
  has_many :artifacts, dependent: :destroy
  has_many :bids_as_owner, through: :artifacts, source: :bids

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

# you always want to use dependent destroy when there are has_many - never on belongs_to
# as the belongs_to is the dependent i.e. the child of the parent has_many
