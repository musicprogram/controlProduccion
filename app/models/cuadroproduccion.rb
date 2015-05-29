class Cuadroproduccion < ActiveRecord::Base
	belongs_to :ordenproduccion
	belongs_to :modulo
	
	has_many :instructores 
end
