class Bill < ApplicationRecord
  belongs_to :user
  belongs_to :place
  has_many :orders

  # Search Scope
  include PgSearch
  pg_search_scope :search_by_name,
    associated_against: {
      user: [ :user_name ]
    },
    using: {
      tsearch: { prefix: true }
  }
end
