class Material < ActiveRecord::Base
  belongs_to :tela
  belongs_to :ordenproduccion
  
end
