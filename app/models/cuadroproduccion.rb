class Cuadroproduccion < ActiveRecord::Base
	belongs_to :ordenproduccion
	belongs_to :modulo
	
	has_many :instructores 
	has_many :descripcioncorte
end
