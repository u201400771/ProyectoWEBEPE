class Ticket < ActiveRecord::Base
  has_many :comentario
  accepts_nested_attributes_for :comentario, allow_destroy: true
    
  belongs_to :empresa
  belongs_to :usuario
  belongs_to :empleado
  belongs_to :categoria
  belongs_to :subcategoria
  belongs_to :area
end
