json.array!(@subcategorias) do |subcategoria|
  json.extract! subcategoria, :id, :name, :categoria_id
  json.url subcategoria_url(subcategoria, format: :json)
end
