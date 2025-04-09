class Destination < ApplicationRecord
  has_many :attractions, dependent: :destroy
  has_many :reviews, as: :reviewable, dependent: :destroy

  validates :name, :country, presence: true
end
