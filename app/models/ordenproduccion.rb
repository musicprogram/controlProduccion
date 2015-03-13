class Ordenproduccion < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :tela
  belongs_to :prenda
  has_many :descripcioncorte
end
