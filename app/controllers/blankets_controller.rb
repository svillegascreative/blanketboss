class BlanketsController < ApplicationController

  def index
    @blankets = Blanket.all
  end

  def show
    @blanket = Blanket.find(params[:id])
  end

  def new
    @blanket = Blanket.new
  end

  def create
    @blanket = Blanket.new(blanket_params)
    if @blanket.save
      redirect_to blankets_url
    else
      render :new
    end
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

  def destroy
    @blanket = Blanket.find(params[:id])
    @blanket.destroy
    redirect_to blankets_url
  end

  def make_list
    @blankets = Blanket.all
  end

  def list
  end

private
  def blanket_params
    params.require(:blanket).permit(:name, :photo, :blanket_type_id, :brand, :size, :colour, :trim, :note, status_ids:[] )
  end

end
