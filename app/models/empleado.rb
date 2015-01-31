class Empleado < ActiveRecord::Base
  belongs_to :empresa
  belongs_to :area
  belongs_to :role
end
