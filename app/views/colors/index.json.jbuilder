json.array!(@colors) do |color|
  json.extract! color, :id, :colornombre
  json.url color_url(color, format: :json)
end
