class PrendasController < ApplicationController
  before_action :set_prenda, only: [:show, :edit, :update, :destroy]

  # GET /prendas
  # GET /prendas.json
  def index
    @prendas = Prenda.all
  end

  # GET /prendas/1
  # GET /prendas/1.json
  def show
  end

  # GET /prendas/new
  def new
    @prenda = Prenda.new
  end

  # GET /prendas/1/edit
  def edit
  end

  # POST /prendas
  # POST /prendas.json
  def create
    @prenda = Prenda.new(prenda_params)

    respond_to do |format|
      if @prenda.save
        format.html { redirect_to @prenda, notice: 'Prenda was successfully created.' }
        format.json { render :show, status: :created, location: @prenda }
      else
        format.html { render :new }
        format.json { render json: @prenda.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prendas/1
  # PATCH/PUT /prendas/1.json
  def update
    respond_to do |format|
      if @prenda.update(prenda_params)
        format.html { redirect_to @prenda, notice: 'Prenda was successfully updated.' }
        format.json { render :show, status: :ok, location: @prenda }
      else
        format.html { render :edit }
        format.json { render json: @prenda.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prendas/1
  # DELETE /prendas/1.json
  def destroy
    @prenda.destroy
    respond_to do |format|
      format.html { redirect_to prendas_url, notice: 'Prenda was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prenda
      @prenda = Prenda.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prenda_params
      params.require(:prenda).permit(:prenda)
    end
end
