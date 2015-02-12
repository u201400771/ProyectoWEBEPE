class NuevosCampos2 < ActiveRecord::Migration
  def change
        add_column :usuarios, :apellido_paterno, :string
        add_column :usuarios, :apellido_materno, :string
        add_column :usuarios, :primer_nombre, :string
        add_column :usuarios, :segundo_nombre, :string
        add_column :usuarios, :cod_rol, :string
        
  end
end
