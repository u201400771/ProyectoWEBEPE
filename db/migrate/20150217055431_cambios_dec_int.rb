class CambiosDecInt < ActiveRecord::Migration
  def change
    change_column :tickets, :tipo, :integer
    change_column :tickets, :estado, :integer
  end
end
