json.array!(@ordenterceros) do |ordentercero|
  json.extract! ordentercero, :id, :referencia, :numeroop, :nombreproveedor, :direccion, :telefono, :email, :fechaingreso, :fechasalida, :responsable, :proceso_id, :cantidad, :pieza, :color_id, :transportador, :totalunidad, :observacion
  json.url ordentercero_url(ordentercero, format: :json)
end
