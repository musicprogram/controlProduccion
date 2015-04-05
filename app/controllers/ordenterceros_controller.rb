class OrdentercerosController < ApplicationController
  before_action :set_ordentercero, only: [:show, :edit, :update, :destroy]
  # GET /ordenterceros
  # GET /ordenterceros.json
  def index
    @ordenterceros = Ordentercero.all
    @fondo_page = true
    @footer_terce = true
    
  end

  # GET /ordenterceros/1
  # GET /ordenterceros/1.json
  def show
    @home_pagee = true
    @footer_tuto1 = true
  end

  # GET /ordenterceros/new
  def new
    @ordentercero = Ordentercero.new
    @fondo_hand = true
    @footer_tuto = true
  end

  # GET /ordenterceros/1/edit
  def edit
    @fondo_hand = true
    @footer_tuto = true
  end

  # POST /ordenterceros
  # POST /ordenterceros.json
  def create
    @ordentercero = Ordentercero.new(ordentercero_params)

    respond_to do |format|
      if @ordentercero.save
        format.html { redirect_to @ordentercero, notice: 'Ordentercero was successfully created.' }
        format.json { render :show, status: :created, location: @ordentercero }
      else
        format.html { render :new }
        format.json { render json: @ordentercero.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ordenterceros/1
  # PATCH/PUT /ordenterceros/1.json
  def update
    respond_to do |format|
      if @ordentercero.update(ordentercero_params)
        format.html { redirect_to @ordentercero, notice: 'Ordentercero was successfully updated.' }
        format.json { render :show, status: :ok, location: @ordentercero }
      else
        format.html { render :edit }
        format.json { render json: @ordentercero.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ordenterceros/1
  # DELETE /ordenterceros/1.json
  def destroy
    @ordentercero.destroy
    respond_to do |format|
      format.html { redirect_to ordenterceros_url, notice: 'Ordentercero was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ordentercero
      @ordentercero = Ordentercero.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ordentercero_params
      params.require(:ordentercero).permit(:referencia, :nombreproveedor, :direccion, :telefono, :email, :fechaingreso, :fechasalida, :responsable, :proceso_id, :cantidad, :pieza, :color_id, :transportador, :totalunidad, :observacion)
    end
end
