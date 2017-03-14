class BlanketsController < ApplicationController
  # before_action :ensure_logged_in

  def index
    load_user
    @blankets = @user.blankets
  end

  def show
    find_blanket
  end

  def new
    @blanket = Blanket.new
  end

  def create
    @blanket = Blanket.new(blanket_params)
    if @blanket.save
      redirect_to blanket_url
    else
      render :new
    end
  end

  def edit
    find_blanket
  end

  def update
    find_blanket

    if @blanket.update_attributes(blanket_params)
      redirect_to "/blankets/#{@blanket.id}"
    else
      render :edit
    end
  end

  def destroy
    find_blanket
    @blanket.destroy
    redirect_to blankets_url
  end

  def make_list
  end

  def list
    if :status_ids
      status =  Status.find(params[:status_ids])
      @blankets = status.blankets
    end
  end

private
  def blanket_params
    params.require(:blanket).permit(:name, :photo, :blanket_type_id, :brand, :size, :colour, :trim, :note, status_ids:[] )
  end

  def load_user
    @user = current_user
  end

  def find_blanket
    @blanket = Blanket.find(params[:id])
  end

end
