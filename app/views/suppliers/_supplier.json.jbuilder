json.extract! supplier, :id, :name, :address, :city, :zip, :status, :contact_name, :phone, :email, :url, :notes, :created_at, :created_at, :updated_at
json.url supplier_url(supplier, format: :json)
