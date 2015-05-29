class DescripcioncortesController < ApplicationController
    
 def create
    @ordenproduccion = Ordenproduccion.find(params[:ordenproduccion_id])
    @descripcioncorte = @ordenproduccion.descripcioncortes.create(descripcion_params)
    redirect_to ordenproduccion_path(@ordenproduccion)
 end
 
 
 def destroy
    @ordenproduccion = Ordenproduccion.find(params[:ordenproduccion_id])
    @descripcioncorte = @ordenproduccion.descripcioncortes.find(params[:id])
    @descripcioncorte.destroy
    redirect_to ordenproduccion_path(@ordenproduccion)
  end
 
 
 
  private
    def descripcion_params
        params.require(:descripcioncorte).permit(:tallaxs, :tallas, :tallam, :tallal, :tallaxl, :ordenproduccion_id, :color_id, :tallasuma)

    end    
    
end
