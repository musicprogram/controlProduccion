class Material < ActiveRecord::Base
  belongs_to :tela
  belongs_to :color
  belongs_to :ordenproduccion
  
  
 
  
   before_validation :sumas
    
    def sumas
      
       if largotrazom == nil || largotrazom < 0 then  
          self.largotrazom = 0
      end
      if vecestrazom == nil || vecestrazom < 0 then  
          self.vecestrazom = 0
      end
      
      if capasm == nil || capasm < 0 then  
          self.capasm = 0
      end
  

      if largotrazom != nil && vecestrazom != nil         
        self.promedio = largotrazom / vecestrazom
        self.totalmetros = largotrazom * capasm
      end  
    
    end
  
  
  
end
