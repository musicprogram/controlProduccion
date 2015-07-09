class TallasController < ApplicationController
   before_action :authenticate_usuario!
  before_action :set_talla, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @tallas = Talla.all
    respond_with(@tallas)
  end

  def show
    respond_with(@talla)
  end

  def new
    @talla = Talla.new
    respond_with(@talla)
  end

  def edit
  end

  def create
    @talla = Talla.new(talla_params)
    @talla.save
    respond_with(@talla)
  end

  def update
    @talla.update(talla_params)
    respond_with(@talla)
  end

  def destroy
    @talla.destroy
    respond_with(@talla)
  end

  private
    def set_talla
      @talla = Talla.find(params[:id])
    end

    def talla_params
      params.require(:talla).permit(:nombre)
    end
end
