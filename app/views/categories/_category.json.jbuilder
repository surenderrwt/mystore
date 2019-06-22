json.extract! category, :id, :title, :description, :img_url, :active, :created_at, :updated_at
json.url category_url(category, format: :json)
