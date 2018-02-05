class Place < ApplicationRecord
  #references
  belongs_to :user
  has_many :items
  has_many :bills

  #validations
  validates :address, :place_name, uniqueness: { case_sensitive: false }
  validates :address, :place_name, presence: true
end
