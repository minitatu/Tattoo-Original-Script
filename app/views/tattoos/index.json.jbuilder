json.array!(@tattoos) do |tattoo|
  json.extract! tattoo, :id
  json.url tattoo_url(tattoo, format: :json)
end
