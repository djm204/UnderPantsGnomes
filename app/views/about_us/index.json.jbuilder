json.array!(@about_us) do |about_u|
  json.extract! about_u, :id, :title, :content
  json.url about_u_url(about_u, format: :json)
end