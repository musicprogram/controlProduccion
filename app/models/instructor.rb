class Instructor < ActiveRecord::Base
    
    belongs_to :cuadroproduccion
    belongs_to :nombre
    belongs_to :talla
    
    
    # callback para sumar datos y actualizarlos
    before_validation :set_duracion

    def set_duracion
        self.duracion = fecharecibo - fechasalidaalmacen
    end
        
 

        
end
