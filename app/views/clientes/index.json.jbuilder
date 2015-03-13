json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :cliente
  json.url cliente_url(cliente, format: :json)
end
