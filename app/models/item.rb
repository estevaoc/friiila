class Item < ApplicationRecord
  belongs_to :place
  has_many :orders
end
