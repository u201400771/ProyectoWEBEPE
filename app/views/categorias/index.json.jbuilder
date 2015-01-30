json.array!(@categorias) do |categoria|
  json.extract! categoria, :id, :name, :area_id
  json.url categoria_url(categoria, format: :json)
end
