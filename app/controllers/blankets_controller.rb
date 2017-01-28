class BlanketsController < ApplicationController

  def index
    @blankets = Blanket.all
  end

  def show
    @blanket = Blanket.find(params[:id])
  end

  def create
    @blanket = Blanket.new(blanket_params)
    if @blanket.save
      redirect_to blankets_url
    else
      render :new
    end
  end

  def new
    @blanket = Blanket.new
  end

private
  def blanket_params
    params.require(:blanket).permit(:name, :photo, :blanket_type, :brand, :size, :colour, :trim, :status, :note)
  end

end
