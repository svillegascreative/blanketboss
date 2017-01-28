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

  def edit
    @blanket = Blanket.find(params[:id])
  end

  def update
    @blanket = Blanket.find(params[:id])

    if @blanket.update_attributes(blanket_params)
      redirect_to "/blankets/#{@blanket.id}"
    else
      render :edit
    end
  end

private
  def blanket_params
    params.require(:blanket).permit(:name, :photo, :blanket_type, :brand, :size, :colour, :trim, :status, :note)
  end

end
