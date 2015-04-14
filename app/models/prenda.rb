class Prenda < ActiveRecord::Base
   validates :prendanombre, :presence =>true
   
   has_many :ordenproduccions 
   
end
