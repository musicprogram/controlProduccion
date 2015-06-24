class Descripcioncorte < ActiveRecord::Base
  belongs_to :color
  belongs_to :ordenproduccion
 
  
  
   
  before_validation :sumatallas
  def sumatallas
    if tallal == nil || tallal < 0 then  
      self.tallal = 0
    end
    if tallam == nil || tallam < 0 then
      self.tallam = 0
    end
    if tallas == nil || tallas < 0 then
      self.tallas = 0
    end
    if tallaxl == nil || tallaxl < 0 then
      self.tallaxl = 0
    end
    if tallaxs == nil || tallaxs < 0 then
      self.tallaxs = 0
    end
    
      self.tallasuma = tallal + tallam + tallas + tallaxl + tallaxs  
  
  
      




  end

  
  
end

