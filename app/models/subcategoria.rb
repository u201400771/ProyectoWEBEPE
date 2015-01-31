class Subcategoria < ActiveRecord::Base
  belongs_to :categoria
  has_many :ticket
end
