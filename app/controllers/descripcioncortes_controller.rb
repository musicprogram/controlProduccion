class DescripcioncortesController < ApplicationController
     before_action :authenticate_usuario!
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
 
 def estadisticas
     
     @descripcioncortexs =  Descripcioncorte.select('color_id').group('color_id').sum('tallaxs')
     @descripcioncortess =  Descripcioncorte.select('color_id').group('color_id').sum('tallas')
     @descripcioncortem =  Descripcioncorte.select('color_id').group('color_id').sum('tallam')
     @descripcioncortel =  Descripcioncorte.select('color_id').group('color_id').sum('tallal')
     @descripcioncortexl =  Descripcioncorte.select('color_id').group('color_id').sum('tallaxl')

 end
 
  private
    def descripcion_params
        params.require(:descripcioncorte).permit(:tallaxs, :tallas, :tallam, :tallal, :tallaxl,:talla2, :talla4, :talla6, :talla8, :talla10,:talla28, :talla30, :talla32, :talla34, :talla36, :ordenproduccion_id, :color_id, :tallasuma, :material)

    end    
    
end
