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

  def edit
    @confession = Confession.find(params[:id])
  end

  def update
    @confession = Confession.find(params[:id])

    if @confession.update(confession_params)

      redirect_to @confession
    else
      render :edit, status: :unprocessable_entity
      
    end
  end

  def destroy
    @confession = Confession.find(params[:id])
    @confession.destroy

    redirect_to confessions_path
  end

  private

  def confession_params
    params.require(:confession).permit(:day,:hour)
  end
end
