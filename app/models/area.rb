class Area < ActiveRecord::Base
  belongs_to :empresa
  has_many :categoria
  has_many :ticket
end
