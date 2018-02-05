class Place < ApplicationRecord
  belongs_to :user
  has_many :bills
  has_many :items
  has_many :orders, through: :bills
end
