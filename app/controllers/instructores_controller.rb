class InstructoresController < ApplicationController
  before_action :set_instructor, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @instructores = Instructor.all
    respond_with(@instructores)
  end

  def show
    respond_with(@instructor)
  end

  def new
    @instructor = Instructor.new
    respond_with(@instructor)
  end

  def edit
  end

  def create
    @instructor = Instructor.new(instructor_params)
    
      respond_to do |format|
      if @instructor.save
        format.html { redirect_to @instructor, notice: 'Instructor was successfully created.' }
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
        format.html { redirect_to @instructor, notice: 'Instructor was successfully updated.' }
        format.json { render :show, status: :ok, location: @instructor }
      else
        format.html { render :edit }
        format.json { render json: @instructor.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @instructor.destroy
    respond_with(@instructor)
  end

  private
    def set_instructor
      @instructor = Instructor.find(params[:id])
    end

    def instructor_params
      params.require(:instructor).permit(:nombre, :imagen, :fecharecibo, :cantidad, :tallaunidad, :primeras, :segundas, :totalrecibidas, :observacionescalidad, :fechasalidaalmacen)
    end
end
