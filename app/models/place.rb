class Place < ApplicationRecord
  #uploader_photo_cloudnary
  mount_uploader :photo, PhotoUploader

  #references
  belongs_to :user
  has_many :items
  has_many :bills

  #validations
  validates :address, :place_name, uniqueness: { case_sensitive: false }
  validates :address, :place_name, presence: true
end
