json.extract! inventory, :id, :serial_number, :name, :device_type, :user_id, :comment, :created_at, :updated_at
json.url inventory_url(inventory, format: :json)
