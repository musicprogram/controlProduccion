class Cuadroproduccion < ActiveRecord::Base
	belongs_to :ordenproduccion
	belongs_to :modulo
	
	has_many :instructores , dependent: :destroy	
	has_many :descripcioncorte
end
