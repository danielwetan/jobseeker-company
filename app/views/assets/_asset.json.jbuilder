json.extract! asset, :id, :name, :user_id, :category_id, :manufacturer_id, :status, :order_serial, :purchase_date, :purchase_cost, :notes, :created_at, :updated_at
json.url asset_url(asset, format: :json)
