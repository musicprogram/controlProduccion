class Tela < ActiveRecord::Base
     validates :telanombre, :presence =>true
    
     has_many :ordenproduccions
     
     has_many :materiales
    
end
