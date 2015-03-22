class DescripcioncortesController < ApplicationController
  before_action :set_descripcioncorte, only: [:show, :edit, :update, :destroy, :index, :new, :create]
before_action :authenticate_usuario!
  # GET /descripcioncortes
  # GET /descripcioncortes.json
  def index
    @descripcioncortes = @ordenproduccion.descripcioncortes.all
  end

  # GET /descripcioncortes/1
  # GET /descripcioncortes/1.json
  def show
  end

  # GET /descripcioncortes/new
  def new
    @descripcioncorte = Descripcioncorte.new
    @descripcioncorte.ordenproduccion_id = @ordenproduccion.id
  end

  # GET /descripcioncortes/1/edit
  def edit
  end

  # POST /descripcioncortes
  # POST /descripcioncortes.json
  def create
    @descripcioncorte = Descripcioncorte.new(descripcioncorte_params)
    @descripcioncorte.ordenproduccion_id = @ordenproduccion.id
    if @descripcioncorte.tallaxs== nil then @descripcioncorte.tallaxs = 0 end
    if @descripcioncorte.tallas== nil then @descripcioncorte.tallas = 0 end
    if @descripcioncorte.tallam== nil then @descripcioncorte.tallam = 0 end
    if @descripcioncorte.tallal== nil then @descripcioncorte.tallal = 0 end
    if @descripcioncorte.tallaxl== nil then @descripcioncorte.tallaxl = 0 end
    
    
    @descripcioncorte.tallasuma = @descripcioncorte.tallaxs + @descripcioncorte.tallas + @descripcioncorte.tallam + @descripcioncorte.tallal + @descripcioncorte.tallaxl
   
    respond_to do |format|
      if @descripcioncorte.save
        format.html { redirect_to ordenproduccion_descripcioncortes_path(@ordenproduccion), notice: 'Descripcioncorte was successfully created.' }
        format.json { render :show, status: :created, location: @descripcioncorte }
      else
        format.html { render :new }
        format.json { render json: @descripcioncorte.errors, status: :unprocessable_entity }
      end
    end
  end
  
  # PATCH/PUT /descripcioncortes/1
  # PATCH/PUT /descripcioncortes/1.json
  def update
     if @descripcioncorte.tallaxs== nil then @descripcioncorte.tallaxs = 0 end
    if @descripcioncorte.tallas== nil then @descripcioncorte.tallas = 0 end
    if @descripcioncorte.tallam== nil then @descripcioncorte.tallam = 0 end
    if @descripcioncorte.tallal== nil then @descripcioncorte.tallal = 0 end
    if @descripcioncorte.tallaxl== nil then @descripcioncorte.tallaxl = 0 end
    
    
    @descripcioncorte.tallasuma = @descripcioncorte.tallaxs + @descripcioncorte.tallas + @descripcioncorte.tallam + @descripcioncorte.tallal + @descripcioncorte.tallaxl
    @descripcioncorte.save
    respond_to do |format|
      if @descripcioncorte.update(descripcioncorte_params)
        format.html { redirect_to ordenproduccion_descripcioncortes_path(@ordenproduccion), notice: 'Descripcioncorte was successfully updated.' }
        format.json { render :show, status: :ok, location: @descripcioncorte }
      else
        format.html { render :edit }
        format.json { render json: @descripcioncorte.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /descripcioncortes/1
  # DELETE /descripcioncortes/1.json
  def destroy
    @descripcioncorte.destroy
    respond_to do |format|
      format.html { redirect_to ordenproduccion_descripcioncortes_url(@ordenproduccion), notice: 'Descripcioncorte was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_descripcioncorte
      
      @ordenproduccion = Ordenproduccion.find(params[:ordenproduccion_id])
      @descripcioncorte = Descripcioncorte.find(params[:id]) if params[:id]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def descripcioncorte_params
      params.require(:descripcioncorte).permit(:tallacantidad, :color, :tallaxs, :tallas, :tallam, :tallal, :tallaxl, :ordenproduccion_id, :color_id, :tallasuma)
    end
end
