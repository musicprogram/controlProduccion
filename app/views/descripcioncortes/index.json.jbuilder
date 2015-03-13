json.array!(@descripcioncortes) do |descripcioncorte|
  json.extract! descripcioncorte, :id, :tallacantidad, :capas, :color, :tallaxs, :tallas, :tallam, :tallal, :tallaxl, :ordenproduccion_id
  json.url descripcioncorte_url(descripcioncorte, format: :json)
end
