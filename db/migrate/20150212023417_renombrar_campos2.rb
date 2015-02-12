class RenombrarCampos2 < ActiveRecord::Migration
  def change
    rename_column :usuarios, :area_id, :role_id
  end
end
