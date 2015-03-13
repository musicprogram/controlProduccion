json.array!(@prendas) do |prenda|
  json.extract! prenda, :id, :prenda
  json.url prenda_url(prenda, format: :json)
end
