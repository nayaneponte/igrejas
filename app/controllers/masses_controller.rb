class MassesController < ApplicationController

  def index
    @masses = Mass.all
  end

  def show
    @mass = Mass.find(params[:id])
  end

  def new
    @mass = Mass.new
  end

  def create

    @mass = Mass.new (mass_params)

    if @mass.save
      redirect_to @mass
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @mass = Mass.find(params[:id])
  end

  def update
    @mass = Mass.find(params[:id])

    if @mass.update(mass_params)
      redirect_to @mass
    else
      render :edit, status: 422
    end

  end

  def destroy
    @mass = Mass.find(params[:id])
    @mass.destroy

    redirect_to masses_path
  end

  private

  def mass_params
    params.require(:mass).permit(:day, :hour)
  end

end
