class InstructoresController < ApplicationController

def create
    @cuadroproduccion = Cuadroproduccion.find(params[:cuadroproduccion_id])
    @instructor = @cuadroproduccion.instructores.create(instructor_params)
    
    redirect_to cuadroproduccion_instrutor_path(@cuadroproduccion, @instructor)
 end



 def destroy
    @cuadroproduccion = Cuadroproduccion.find(params[:cuadroproduccion_id])
    @instructor = @cuadroproduccion.instructores.find(params[:id])
    @instructor.destroy
    redirect_to cuadroproduccion_instructor_path(@instructor,cuadroproduccion_id)
  end
 
 
  private
    def instructor_params
 		params.require(:instructor).permit(:nombre, :fecharecibo, :cantidad, :primeras, :segundas, :totalrecibidas, :observacionescalidad, :fechasalidaalmacen, :cuadroproduccion_id, :nombre_id, :duracion, :talla_id)

    end

end
