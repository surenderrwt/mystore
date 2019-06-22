json.extract! product, :id, :title, :description, :img_url, :price, :qty, :category_id, :active, :created_at, :updated_at
json.url product_url(product, format: :json)
