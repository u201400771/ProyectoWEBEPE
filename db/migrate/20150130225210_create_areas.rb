class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string :name
      t.belongs_to :empresa, index: true

      t.timestamps null: false
    end
    add_foreign_key :areas, :empresas
  end
end
