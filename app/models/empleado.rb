class Empleado < ActiveRecord::Base
  belongs_to :empresa
  belongs_to :area
end
