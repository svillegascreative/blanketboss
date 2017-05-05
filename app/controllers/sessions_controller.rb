class SessionsController < ApplicationController

  def new
  end

  def create
    if login(params[:email], params[:password], params[:remember])
      redirect_to blankets_path, success: "You're in!"
    else
      redirect_to new_session_path, error: "That didn't work. Try again?"
    end
  end

  def destroy
    logout
    redirect_to root_url, notice: "See you later!"
  end

end
