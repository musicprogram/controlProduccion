json.array!(@tallas) do |talla|
  json.extract! talla, :id, :talla
  json.url talla_url(talla, format: :json)
end
