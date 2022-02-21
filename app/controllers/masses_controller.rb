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

  private

  def mass_params
    params.require(:mass).permit(:day, :hour)
  end

end
