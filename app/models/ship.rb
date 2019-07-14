class Ship < ApplicationRecord
  belongs_to :country
  belongs_to :state
  has_one :order
end
