json.array!(@orders) do |order|
  json.extract! order, :id, :customer_id, :status, :taxes, :line_item_id_id
  json.url order_url(order, format: :json)
end
