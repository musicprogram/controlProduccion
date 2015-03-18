class Ordenproduccion < ActiveRecord::Base
  validates :cliente, :presence => true
  validates :prenda, :presence => true
  validates :tela, :presence => true


  belongs_to :cliente
  belongs_to :tela
  belongs_to :prenda
  belongs_to :corte
  has_many :descripcioncortes
end
