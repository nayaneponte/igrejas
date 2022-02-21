class ConfessionsController < ApplicationController

  def index
    @confessions = Confession.all
    
  end

  def show
    @confession = Confession.find(params[:id])
  end

  def new
    @confession = Confession.new
  end

  def create
    @confession = Confession.new(confession_params)

    if @confession.save
      redirect_to @confession
    else
      render :new, status: 422
    end
  end


 

  private

  def confession_params
    params.require(:confession).permit(:day,:hour)
  end
end
