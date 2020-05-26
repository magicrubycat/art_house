class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :bids # bids as a potential buyer of an artifact
  has_many :artifacts
  has_many :bids_as_owner, through: :artifacts, source: :bids

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
