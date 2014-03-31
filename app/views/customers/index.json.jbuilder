json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :billing_address, :shipping_address, :city, :postal_code, :province_id, :credit_limit, :email_address
  json.url customer_url(customer, format: :json)
end
