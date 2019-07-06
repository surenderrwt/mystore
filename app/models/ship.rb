class Ship < ApplicationRecord
  belongs_to :country
  belongs_to :state
  belongs_to :order
end
