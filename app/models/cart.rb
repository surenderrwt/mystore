class Cart < ApplicationRecord
    has_many :line_items, dependent: :destroy
end

def total_price

    line_items.to_a.sum{ |item| item.total_price}
    
end