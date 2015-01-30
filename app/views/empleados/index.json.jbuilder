json.array!(@empleados) do |empleado|
  json.extract! empleado, :id, :nombres, :apellidos, :codigo, :empresa_id, :area_id
  json.url empleado_url(empleado, format: :json)
end
