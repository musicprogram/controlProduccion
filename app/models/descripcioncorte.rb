class Descripcioncorte < ActiveRecord::Base
  belongs_to :color
  belongs_to :ordenproduccion
  
  
   
  before_validation :sumatallas
  def sumatallas
    if tallal == nil then  
      self.tallal = 0
    end
    if tallam == nil then
      self.tallam = 0
    end
    if tallas == nil then
      self.tallas = 0
    end
    if tallaxl == nil then
      self.tallaxl = 0
    end
    if tallaxs == nil then
      self.tallaxs = 0
    end
    
      self.tallasuma = tallal + tallam + tallas + tallaxl + tallaxs  
  
  end
  
  
end
