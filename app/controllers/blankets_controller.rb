class BlanketsController < ApplicationController
  before_action :require_login

  def index
    @blankets = current_user.blankets
                            .filter(params.slice(:blanket_size, :blanket_type_id, :status_ids))
                            .order("name ASC")
    respond_to do |format|
      format.html
      format.text { render 'index.txt.erb' }
      format.csv { send_data @blankets.to_csv }
    end
  end

  def show
    find_blanket

    if request.xhr?
      render layout: false
    end
  end

  def new
    @blanket = Blanket.new
  end

  def create
    @blanket = Blanket.new(blanket_params)
    if @blanket.save
      redirect_to @blanket, success: "Your blanket was added successfully!"
    else
      flash.now[:error] = "Oops, there was problem. Please try again."
      render :new
    end
  end

  def edit
    find_blanket
  end

  def update
    find_blanket

    if @blanket.update_attributes(blanket_params)
      redirect_to "/blankets/#{@blanket.id}", success: "Your blanket was updated successfully!"
    else
      flash.now[:error] = "Oops, there was problem. Please try again."
      render :edit
    end
  end

  def destroy
    find_blanket
    @blanket.destroy
    redirect_to blankets_url
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

  def find_blanket
    @blanket = Blanket.find(params[:id])

    if @blanket.user_id == current_user.id
      @blanket
    else
      redirect_back fallback_location: blankets_url
    end
  end

end
