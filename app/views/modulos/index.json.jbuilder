json.array!(@modulos) do |modulo|
  json.extract! modulo, :id, :modulonombre
  json.url modulo_url(modulo, format: :json)
end
