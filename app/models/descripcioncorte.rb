class Descripcioncorte < ActiveRecord::Base
  belongs_to :ordenproduccion
  belongs_to :color
end
