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
    
    if talla6 == nil || talla6 < 0 then
      self.talla6 = 0
    end
    
    if talla8 == nil || talla8 < 0 then
      self.talla8 = 0
    end
    
    if talla10 == nil || talla10 < 0 then
      self.talla10 = 0
    end
    
    if talla12 == nil || talla12 < 0 then
      self.talla12 = 0
    end
    
    if talla14 == nil || talla14 < 0 then
      self.talla14 = 0
    end
    
    if talla28 == nil || talla28 < 0 then
      self.talla28 = 0
    end
    
    if talla30 == nil || talla30 < 0 then
      self.talla30 = 0
    end
    
    if talla32 == nil || talla32 < 0 then
      self.talla32 = 0
    end
    
    if talla34 == nil || talla34 < 0 then
      self.talla34 = 0
    end
    
    if talla36 == nil || talla36 < 0 then
      self.talla36 = 0
    end
    
    
      self.tallasuma = tallal + tallam + tallas + tallaxl + tallaxs + talla6 + talla8 + talla10 + talla12 + talla14 + talla28 + talla30 + talla32 + talla34 + talla36
  
  
      




  end

  
  
end

