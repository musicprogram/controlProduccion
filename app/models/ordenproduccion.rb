class Ordenproduccion < ActiveRecord::Base
  validates :cliente, :presence => true
  validates :prenda, :presence => true
  validates :tela, :presence => true
  validates :descripcion, :presence => true
  validates :referencia, :presence => true
  validates :corte, :presence => true
  validates :ancho, :presence => true
  validates :largotrazo, :presence => true
  validates :vecestrazo, :presence => true
  validates :largotendido, :presence => true
  validates :cantidad, :presence => true
  validates :responsablecorte, :presence => true
  validates :tiqueteada, :presence => true
  validates :capas, :presence => true

  belongs_to :cliente
  belongs_to :tela
  belongs_to :prenda
  belongs_to :corte
  has_many :descripcioncortes


  def self.search(search, page)
      where(['upper(referencia) like ?',
      "%#{search}%".upcase]).paginate(page: page, per_page: 5).order("referencia")
  end





end

