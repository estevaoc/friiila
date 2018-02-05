class Place < ApplicationRecord
  #uploader_photo_cloudnary
  mount_uploader :photo, PhotoUploader

  #geocoding
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  #references
  belongs_to :user
  has_many :items
  has_many :bills
  has_many :orders, through: :bills
  #validations
  validates :address, :place_name, uniqueness: { case_sensitive: false }
  validates :address, :place_name, presence: true
end
