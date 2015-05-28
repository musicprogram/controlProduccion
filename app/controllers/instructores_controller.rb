class InstructoresController < ApplicationController
  before_action :set_instructor, only: [:show, :edit, :update, :destroy, :index, :new, :create]

  respond_to :html

  def index
    @instructores = @cuadroproduccion.instructores.all
    @tuto_videoins = true
    @filename = 'index.pdf'
  end
  
  def showinstructores
    
    #Promedio 
    @instructores = Instructor.select('nombre_id').group('nombre_id').average('observacionescalidad')
    @instructoresdura = Instructor.select('nombre_id').group('nombre_id').average('duracion')
    @instructorestotal = Instructor.select('nombre_id').group('nombre_id').sum('totalrecibidas')
    @tuto_estadisticas = true
    
    @instructores1 = Instructor.all
    @estadisti = true

    
  end
  
  def show
    
    @descripcioncortes = Descripcioncorte.all
    
    
   
  end
  
 
  def new
    @instructor = Instructor.new
  end

  def edit
  end

  def create
    @instructor = Instructor.new(instructor_params)
    @instructor.cuadroproduccion_id = @cuadroproduccion.id
    
   
      respond_to do |format|
      if @instructor.save
        format.html { redirect_to cuadroproduccion_instructor_path(@cuadroproduccion, @instructor), notice: 'Instructor was successfully created.' }
        format.json { render :show, status: :created, location: @instructor }
      else
        format.html { render :new }
        format.json { render json: @instructor.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
  
    respond_to do |format|
      if @instructor.update(instructor_params)
        format.html { redirect_to cuadroproduccion_instructor_path(@cuadroproduccion, @instructor), notice: 'Instructor was successfully updated.' }
        format.json { render :show, status: :ok, location: @instructor }
      else
        format.html { render :edit }
        format.json { render json: @instructor.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @instructor.destroy
     respond_to do |format|
      format.html { redirect_to cuadroproduccion_instructores_url(@cuadroproduccion), notice: 'Instructores was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_instructor
      @cuadroproduccion = Cuadroproduccion.find(params[:cuadroproduccion_id])
      @instructor = Instructor.find(params[:id]) if params[:id]
    end

    def instructor_params
      params.require(:instructor).permit(:nombre, :fecharecibo, :cantidad, :primeras, :segundas, :totalrecibidas, :observacionescalidad, :fechasalidaalmacen, :cuadroproduccion_id, :nombre_id, :duracion, :talla_id)
    end
end
