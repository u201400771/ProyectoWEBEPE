json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :nombres, :apellidos, :codigo, :empresa_id
  json.url usuario_url(usuario, format: :json)
end
