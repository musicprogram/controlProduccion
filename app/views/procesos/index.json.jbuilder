json.array!(@procesos) do |proceso|
  json.extract! proceso, :id, :procesonombre
  json.url proceso_url(proceso, format: :json)
end
