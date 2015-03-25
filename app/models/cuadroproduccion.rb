class Cuadroproduccion < ActiveRecord::Base
	belongs_to :descripcioncorte
	belongs_to :modulo
	
	has_many :instructores 
end
