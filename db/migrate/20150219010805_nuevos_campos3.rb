class NuevosCampos3 < ActiveRecord::Migration
  def change
    add_column :areas, :empleado_id, :integer
  end
end
