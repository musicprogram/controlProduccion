class Tela < ActiveRecord::Base
     validates :telanombre, :presence =>true
    
     has_many :ordenproduccion
end
