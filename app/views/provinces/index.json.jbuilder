json.array!(@provinces) do |province|
  json.extract! province, :id, :name, :pst, :hst, :gst
  json.url province_url(province, format: :json)
end
