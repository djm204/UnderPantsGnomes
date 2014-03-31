json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :price, :image_name, :stock_quantity, :category_id_id
  json.url product_url(product, format: :json)
end
