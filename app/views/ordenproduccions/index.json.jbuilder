json.array!(@ordenproduccions) do |ordenproduccion|
  json.extract! ordenproduccion, :id, :fechaprogramacion, :ordennumero, :cliente_id, :descripcion, :referencia, :corte, :ancho, :tela_id, :largotrazo, :largotendido, :numeropaquetes, :cantidad, :promediounidad, :totalmetros, :corte, :tiqueteada, :prenda_id
  json.url ordenproduccion_url(ordenproduccion, format: :json)
end
