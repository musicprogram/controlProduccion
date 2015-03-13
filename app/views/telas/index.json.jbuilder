json.array!(@telas) do |tela|
  json.extract! tela, :id, :tela
  json.url tela_url(tela, format: :json)
end
