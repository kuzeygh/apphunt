class Product < ApplicationRecord
  searchkick text_start: ['name']

  belongs_to :user
  has_many :comments
  acts_as_votable

  # Search bar config
  # include PgSearch
  # Search for products for sale
  # pg_search_scope :product_search, against: [ :name, :tagline, :url, :category ],
  # using: {tsearch: {prefix: true, any_word: true}}

end
