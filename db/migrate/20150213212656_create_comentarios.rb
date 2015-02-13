class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.string :comentario
      t.belongs_to :ticket, index: true
      t.belongs_to :empleado, index: true
      t.belongs_to :usuario, index: true

      t.timestamps null: false
    end
    add_foreign_key :comentarios, :tickets
    add_foreign_key :comentarios, :empleados
    add_foreign_key :comentarios, :usuarios
  end
end
