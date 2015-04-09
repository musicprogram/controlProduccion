class NombresController < ApplicationController
  before_action :set_nombre, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @nombres = Nombre.all
    respond_with(@nombres)
  end

  def show
    respond_with(@nombre)
  end

  def new
    @nombre = Nombre.new
    respond_with(@nombre)
  end

  def edit
  end

  def create
    @nombre = Nombre.new(nombre_params)
    @nombre.save
    respond_with(@nombre)
  end

  def update
    @nombre.update(nombre_params)
    respond_with(@nombre)
  end

  def destroy
    @nombre.destroy
    respond_with(@nombre)
  end

  private
    def set_nombre
      @nombre = Nombre.find(params[:id])
    end

    def nombre_params
      params.require(:nombre).permit(:nombreinstructor, :avatar)
    end
end
