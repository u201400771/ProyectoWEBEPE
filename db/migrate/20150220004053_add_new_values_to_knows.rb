class AddNewValuesToKnows < ActiveRecord::Migration
  def change
    add_column :knows, :area_id, :integer
    add_column :knows, :categoria_id, :integer
    add_column :knows, :subcategoria_id, :integer
  end
end
