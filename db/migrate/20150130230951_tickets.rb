class Tickets < ActiveRecord::Migration
  def change
  	change_column_null :tickets, :empleado_id, true
  end
end
