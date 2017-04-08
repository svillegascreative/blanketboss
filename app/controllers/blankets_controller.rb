class BlanketsController < ApplicationController
  before_action :require_login
  # before_action :select_user_blankets

  def index
    select_user_blankets
    @blankets = Blanket.filter(params.slice(:blanket_size, :blanket_type_id, :status_ids))
    # @blankets = current_user.blankets
    # @blankets = Blanket.where('user_id = ?', current_user.id).where('size = ?', params[:size])
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
      redirect_to @blanket
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
    params.require(:blanket)
          .permit(:user_id,
                  :name,
                  :photo,
                  :photo_cache,
                  :remote_photo_url,
                  :blanket_type_id,
                  :brand,
                  :blanket_size,
                  :colour,
                  :trim,
                  :note,
                  status_ids:[] )
  end

  def select_user_blankets
    @blankets = Blanket.where('user_id = ?', current_user.id)
  end

  def find_blanket
    @blanket = Blanket.find(params[:id])
  end

end
