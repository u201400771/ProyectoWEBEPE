class CreateEmpleados < ActiveRecord::Migration
  def change
    create_table :empleados do |t|
      t.string :nombres
      t.string :apellidos
      t.string :codigo
      t.belongs_to :empresa, index: true
      t.belongs_to :area, index: true

      t.timestamps null: false
    end
    add_foreign_key :empleados, :empresas
    add_foreign_key :empleados, :areas
  end
end
