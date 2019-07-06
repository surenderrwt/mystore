class Order < ApplicationRecord
  belongs_to :user
  has_one :ship
  has_many :line_items

  enum payment: {
    "unpaid" => 0,
    "paid" => 1
  }

  enum order_status: {
    "Unsuccess" => 0,
    "In Progress" => 1
    "Success" =>3
  }

end
