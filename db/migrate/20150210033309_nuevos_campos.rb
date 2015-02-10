class NuevosCampos < ActiveRecord::Migration
  def change
    
        add_column :usuarios, :email, :string
        add_column :categorias, :estado, :boolean
        add_column :subcategorias, :estado, :boolean
        add_column :tickets, :tipo, :number
        add_column :tickets, :codigo, :string
        add_column :tickets, :estado, :number
        rename_column :tickets, :urgencia, :prioridad
  end
end
