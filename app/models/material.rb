class Material < ActiveRecord::Base
  belongs_to :tela
  belongs_to :ordenproduccion
  
  
  
  
   before_validation :sumas

    def sumas

      if largotrazom != nil && vecestrazom != nil         
        self.promedio = largotrazom / vecestrazom
        self.totalmetros = largotrazom * capasm
      end  
    
    end
  
  
  
end
