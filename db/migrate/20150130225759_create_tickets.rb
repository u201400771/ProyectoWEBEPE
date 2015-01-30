class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :asunto
      t.integer :urgencia
      t.belongs_to :empresa, index: true
      t.belongs_to :usuario, index: true
      t.belongs_to :empleado, index: true
      t.belongs_to :categoria, index: true
      t.belongs_to :subcategoria, index: true
      t.belongs_to :area, index: true

      t.timestamps null: false
    end
    add_foreign_key :tickets, :empresas
    add_foreign_key :tickets, :clientes
    add_foreign_key :tickets, :empleadoes
    add_foreign_key :tickets, :categorias
    add_foreign_key :tickets, :subcategorias
    add_foreign_key :tickets, :areas
  end
end
