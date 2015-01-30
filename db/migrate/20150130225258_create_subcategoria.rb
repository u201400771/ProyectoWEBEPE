class CreateSubcategoria < ActiveRecord::Migration
  def change
    create_table :subcategoria do |t|
      t.string :name
      t.belongs_to :categoria, index: true

      t.timestamps null: false
    end
    add_foreign_key :subcategoria, :categoria
  end
end
