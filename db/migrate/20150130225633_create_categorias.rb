class CreateCategorias < ActiveRecord::Migration
  def change
    create_table :categorias do |t|
      t.string :name
      t.belongs_to :area, index: true

      t.timestamps null: false
    end
    add_foreign_key :categorias, :areas
  end
end
