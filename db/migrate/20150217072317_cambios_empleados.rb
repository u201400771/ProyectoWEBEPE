class CambiosEmpleados < ActiveRecord::Migration
  def change
    rename_column :empleados, :codigo, :username
    add_column :empleados, :email, :string
    add_column :empleados, :role_id, :integer
  end
end
