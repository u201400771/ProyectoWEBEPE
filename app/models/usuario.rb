class Usuario < ActiveRecord::Base
  belongs_to :empresa
  has_many :ticket
end
