json.array!(@cuadroproduccions) do |cuadroproduccion|
  json.extract! cuadroproduccion, :id, :fechatrazo, :anchotrazo, :fechacorte, :fechaentradabodega, :fechaentregamodulo, :cantidad, :instructor
  json.url cuadroproduccion_url(cuadroproduccion, format: :json)
end
