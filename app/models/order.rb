class Order < ApplicationRecord
  belongs_to :user
  belongs_to :ship
  accepts_nested_attributes_for :ship, allow_destroy: true
  has_many :line_items

  enum payment: {
    "unpaid" => 0,
    "paid" => 1
  }

  enum order_status: {
    "Unsuccess" => 0,
    "In Progress" => 1,
    "Success" => 2
  }

end
