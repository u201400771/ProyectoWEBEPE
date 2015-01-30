class CreateCategoria < ActiveRecord::Migration
  def change
    create_table :categoria do |t|
      t.string :name
      t.belongs_to :area, index: true

      t.timestamps null: false
    end
    add_foreign_key :categoria, :areas
  end
end
