json.array!(@nombres) do |nombre|
  json.extract! nombre, :id, :nombreinstructor
  json.url nombre_url(nombre, format: :json)
end
