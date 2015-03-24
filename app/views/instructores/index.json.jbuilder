json.array!(@instructores) do |instructor|
  json.extract! instructor, :id, :nombre, :fecharecibo, :cantidad, :tallaunidad, :primeras, :segundas, :totalrecibidas, :observacionescalidad, :fechasalidaalmacen
  json.url instructor_url(instructor, format: :json)
end
