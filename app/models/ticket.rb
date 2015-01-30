class Ticket < ActiveRecord::Base
  belongs_to :empresa
  belongs_to :usuario
  belongs_to :empleado
  belongs_to :categoria
  belongs_to :subcategoria
  belongs_to :area
end
