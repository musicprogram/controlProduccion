class MaterialesController < ApplicationController
        
        
        def create
            @ordenproduccion = Ordenproduccion.find(params[:ordenproduccion_id])
            @material = @ordenproduccion.materiales.create(material_params)
            redirect_to ordenproduccion_path(@ordenproduccion)
        end
        
        
              
        def destroy
          @ordenproduccion = Ordenproduccion.find(params[:ordenproduccion_id])
          @material = @ordenproduccion.materiales.find(params[:id])
          @material.destroy
          redirect_to ordenproduccion_path(@ordenproduccion)
        end
              
        
     
      private
        def material_params
          params.require(:material).permit(:anchom, :largotrazom, :tela_id, :largotendidom, :capasm, :vecestrazom, :cantidad, :promedio, :totalmetros, :ordenproduccion_id)
        end
end

