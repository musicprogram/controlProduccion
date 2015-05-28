class DescripcioncortesController < ApplicationController
  before_action :set_descripcioncorte, only: [:show, :edit, :update, :destroy, :index, :new, :create]
  # GET /descripcioncortes
  # GET /descripcioncortes.json
  def index
    @descripcioncortes = @ordenproduccion.descripcioncortes.all
    @fondo_hand = true
    @fondo_desc = true
    
  end

  # GET /descripcioncortes/1
  # GET /descripcioncortes/1.json
  def show
    @footer_tuto1 = true
  end

  # GET /descripcioncortes/new
  def new
    @descripcioncorte = Descripcioncorte.new
    @descripcioncorte.ordenproduccion_id = @ordenproduccion.id
    @home_pagee12 = true
    @footer_tuto = true
  end

  # GET /descripcioncortes/1/edit
  def edit
    @fondo_page = true
    @footer_tuto = true
  end

  # POST /descripcioncortes
  # POST /descripcioncortes.json
  def create
    @descripcioncorte = Descripcioncorte.new(descripcioncorte_params)
    
    @descripcioncorte.ordenproduccion_id = @ordenproduccion.id
   
    
    respond_to do |format|
      if @descripcioncorte.save
        format.html { redirect_to ordenproduccion_descripcioncorte_path(@ordenproduccion, @descripcioncorte), notice: 'Descripcioncorte was successfully created.' }
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
    
      respond_to do |format|
        if @descripcioncorte.update(descripcioncorte_params)
          format.html { redirect_to ordenproduccion_descripcioncorte_path(@ordenproduccion, @descripcioncorte),  notice: 'Persona was successfully updated.' }
          format.json { render :show, status: :ok, location:  @descripcioncorte }
        else
          format.html { render :edit }
          format.json { render json:  @descripcioncorte.errors, status: :unprocessable_entity }
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
      params.require(:descripcioncorte).permit(:tallaxs, :tallas, :tallam, :tallal, :tallaxl, :ordenproduccion_id, :color_id, :tallasuma)
    end
end
