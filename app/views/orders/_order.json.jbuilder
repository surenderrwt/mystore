json.extract! order, :id, :user_id, :ship_id, :total, :payment, :order_status, :delivery_date, :created_at, :updated_at
json.url order_url(order, format: :json)
