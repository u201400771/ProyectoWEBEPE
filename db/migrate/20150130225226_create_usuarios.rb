class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nombres
      t.string :apellidos
      t.string :codigo
      t.belongs_to :empresa, index: true

      t.timestamps null: false
    end
    add_foreign_key :usuarios, :empresas
  end
end
