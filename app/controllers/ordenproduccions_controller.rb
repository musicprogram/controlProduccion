class OrdenproduccionsController < ApplicationController
  before_action :authenticate_usuario!
  before_action :set_ordenproduccion, only: [:show, :edit, :update, :destroy]
  # GET /ordenproduccions
  # GET /ordenproduccions.json
  def index
    @ordenproduccions = Ordenproduccion.search(params[:search], params[:page])
    @fondo_page = true
    @orden_p = true
  end

  # GET /ordenproduccions/1
  # GET /ordenproduccions/1.json
  def show    
     @home_pagee = true
     @footer_tuto1 = true
  end

  # GET /ordenproduccions/new
  def new
    @ordenproduccion = Ordenproduccion.new
    @fondo_hand = true
    @footer_tuto = true
  end

  # GET /ordenproduccions/1/edit
  def edit
       @home_pagee = true
       @footer_tuto1 = true

  end

  # POST /ordenproduccions
  # POST /ordenproduccions.json
  def create
    @ordenproduccion = Ordenproduccion.new(ordenproduccion_params)
    
    if @ordenproduccion.largotrazo== nil then @ordenproduccion.largotrazo = 1 end
    if @ordenproduccion.vecestrazo== nil then @ordenproduccion.vecestrazo = 1 end
    if @ordenproduccion.capas== nil then @ordenproduccion.capas = 1 end
    
    @ordenproduccion.promedio = @ordenproduccion.largotrazo / @ordenproduccion.vecestrazo
    @ordenproduccion.totalmetros = @ordenproduccion.largotrazo * @ordenproduccion.capas
    respond_to do |format|
      if @ordenproduccion.save
        format.html { redirect_to @ordenproduccion, notice: 'Ordenproduccion was successfully created.' }
        format.json { render :show, status: :created, location: @ordenproduccion }
      else
        format.html { render :new }
        format.json { render json: @ordenproduccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ordenproduccions/1
  # PATCH/PUT /ordenproduccions/1.json
  def update
    if @ordenproduccion.largotrazo== nil then @ordenproduccion.largotrazo = 1 end
    if @ordenproduccion.vecestrazo== nil then @ordenproduccion.vecestrazo = 1 end
    if @ordenproduccion.capas== nil then @ordenproduccion.capas = 1 end
    
    @ordenproduccion.promedio = @ordenproduccion.largotrazo / @ordenproduccion.vecestrazo
    @ordenproduccion.totalmetros = @ordenproduccion.largotrazo * @ordenproduccion.capas
    @ordenproduccion.save
    respond_to do |format|
      if @ordenproduccion.update(ordenproduccion_params)
        format.html { redirect_to @ordenproduccion, notice: 'Ordenproduccion was successfully updated.' }
        format.json { render :show, status: :ok, location: @ordenproduccion }
      else
        format.html { render :edit }
        format.json { render json: @ordenproduccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ordenproduccions/1
  # DELETE /ordenproduccions/1.json
  def destroy
    @ordenproduccion.destroy
    respond_to do |format|
      format.html { redirect_to ordenproduccions_url, notice: 'Ordenproduccion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ordenproduccion
      @ordenproduccion = Ordenproduccion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ordenproduccion_params
      params.require(:ordenproduccion).permit(:fechaprogramacion, :cliente_id, :descripcion, :referencia, :corte_id, :ancho, :tela_id, :largotrazo, :largotendido, :promedio, :cantidad, :responsablecorte, :totalmetros, :tiqueteada, :prenda_id, :vecestrazo, :capas, :totalmetros)
    end
end
