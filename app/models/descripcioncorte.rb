class Descripcioncorte < ActiveRecord::Base
   validates :color, :presence => true
  belongs_to :ordenproduccion
  belongs_to :color
end
