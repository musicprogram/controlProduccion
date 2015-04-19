class Instructor < ActiveRecord::Base
    
    belongs_to :cuadroproduccion
    belongs_to :nombre
    
    
    # callback para sumar datos y actualizarlos
    before_validation :set_duracion

    def set_duracion
        self.duracion = fecharecibo - fechasalidaalmacen
    end
        
    
    
end
