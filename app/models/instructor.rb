class Instructor < ActiveRecord::Base
  belongs_to :nombre
  belongs_to :talla
  belongs_to :cuadroproduccion

   
    # callback para sumar datos y actualizarlos
    before_validation :set_duracion

    def set_duracion
        
        if fechasalidaalmacen != nil && fecharecibo != nil
        self.duracion = fechasalidaalmacen - fecharecibo
        
            if duracion < 0
            self.duracion = duracion * -1            
            end
        
        end
    end
        
    before_validation :primersegun

    def primersegun
        
        if primeras != nil && segundas != nil
        
        self.totalrecibidas = primeras + segundas
        self.observacionescalidad = primeras * 100
        
        self.observacionescalidad = observacionescalidad / totalrecibidas
        
        
        end
    end
  





end
