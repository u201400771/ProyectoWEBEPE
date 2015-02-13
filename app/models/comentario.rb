class Comentario < ActiveRecord::Base
  belongs_to :ticket
  belongs_to :empleado
  belongs_to :usuario
end
