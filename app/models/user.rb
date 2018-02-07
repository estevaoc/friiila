class User < ApplicationRecord
  # uploader_photo_cloudnary
  mount_uploader :photo, PhotoUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :places, dependent: :destroy
  has_many :bills
  has_many :orders, through: :bills
end
