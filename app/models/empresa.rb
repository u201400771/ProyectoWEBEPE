class Empresa < ActiveRecord::Base
	has_many :area
	has_many :usuario
	has_many :empleado
	has_many :ticket
end
