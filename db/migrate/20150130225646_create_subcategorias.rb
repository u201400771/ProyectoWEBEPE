class CreateSubcategorias < ActiveRecord::Migration
  def change
    create_table :subcategorias do |t|
      t.string :name
      t.belongs_to :categoria, index: true

      t.timestamps null: false
    end
    add_foreign_key :subcategorias, :categorias
  end
end
