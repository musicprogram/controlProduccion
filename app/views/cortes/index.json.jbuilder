json.array!(@cortes) do |corte|
  json.extract! corte, :id, :cortenombre
  json.url corte_url(corte, format: :json)
end
