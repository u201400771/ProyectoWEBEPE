class RenombrarCampos < ActiveRecord::Migration
  def change
      rename_column :usuarios, :cod_rol, :area_id
  end
end
