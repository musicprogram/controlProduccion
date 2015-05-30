class InstructoresController < ApplicationController

def create
    @cuadroproduccion = Cuadroproduccion.find(params[:cuadroproduccion_id])
    @instructor = @cuadroproduccion.instructores.create(instructor_params)
    redirect_to cuadroproduccion_path(@cuadroproduccion)
 end
 
 
  private
    def instructor_params
 		params.require(:instructor).permit(:nombre, :fecharecibo, :cantidad, :primeras, :segundas, :totalrecibidas, :observacionescalidad, :fechasalidaalmacen, :cuadroproduccion_id, :nombre_id, :duracion, :talla_id)

    end

end
