class Product < ApplicationRecord
  belongs_to :category
  has_many :line_items
end
