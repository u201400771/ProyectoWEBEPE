json.array!(@comentarios) do |comentario|
  json.extract! comentario, :id, :comentario, :ticket_id, :empleado_id, :usuario_id
  json.url comentario_url(comentario, format: :json)
end
