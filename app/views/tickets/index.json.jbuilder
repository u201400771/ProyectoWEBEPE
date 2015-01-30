json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :asunto, :urgencia, :empresa_id, :cliente_id, :empleado_id, :categoria_id, :subcategoria_id, :area_id
  json.url ticket_url(ticket, format: :json)
end
