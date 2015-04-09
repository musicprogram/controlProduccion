class CuadroproduccionsController < ApplicationController
  before_action :set_cuadroproduccion, only: [:show, :edit, :update, :destroy, :index, :new, :create]
  # GET /cuadroproduccions
  # GET /cuadroproduccions.json
  def index
    @cuadroproduccions = @descripcioncorte.cuadroproduccions.all
    @fondo_cuadro = true
  end

  # GET /cuadroproduccions/1
  # GET /cuadroproduccions/1.json
  def show
  end

  # GET /cuadroproduccions/new
  def new
    @cuadroproduccion = Cuadroproduccion.new
  end

  # GET /cuadroproduccions/1/edit
  def edit
  end

  # POST /cuadroproduccions
  # POST /cuadroproduccions.json
  def create
    @cuadroproduccion = Cuadroproduccion.new(cuadroproduccion_params)
    @cuadroproduccion.descripcioncorte_id = @descripcioncorte.id
    respond_to do |format|
      if @cuadroproduccion.save
        format.html { redirect_to descripcioncorte_cuadroproduccions_path(@descripcioncorte), notice: 'Cuadroproduccion was successfully created.' }
        format.json { render :show, status: :created, location: @cuadroproduccion }
      else
        format.html { render :new }
        format.json { render json: @cuadroproduccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cuadroproduccions/1
  # PATCH/PUT /cuadroproduccions/1.json
  def update
    respond_to do |format|
      if @cuadroproduccion.update(cuadroproduccion_params)
        format.html { redirect_to descripcioncorte_cuadroproduccions_path(@descripcioncorte), notice: 'Cuadroproduccion was successfully updated.' }
        format.json { render :show, status: :ok, location: @cuadroproduccion }
      else
        format.html { render :edit }
        format.json { render json: @cuadroproduccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cuadroproduccions/1
  # DELETE /cuadroproduccions/1.json
  def destroy
    @cuadroproduccion.destroy
    respond_to do |format|
      format.html { redirect_to descripcioncorte_cuadroproduccions_url(@descripcioncorte), notice: 'Cuadroproduccion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cuadroproduccion
      @descripcioncorte = Descripcioncorte.find(params[:descripcioncorte_id])
      @cuadroproduccion = Cuadroproduccion.find(params[:id]) if params[:id]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cuadroproduccion_params
      params.require(:cuadroproduccion).permit(:fechatrazo, :fechacorte, :fechaentradabodega, :fechaentregamodulo, :descripcioncorte_id, :modulo_id)
    end
end
