class Bill < ApplicationRecord
  belongs_to :user
  belongs_to :place
  has_many :orders
end
