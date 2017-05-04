class SessionsController < ApplicationController

  def new
  end

  def create
    if login(params[:email], params[:password], params[:remember])
      redirect_to blankets_path, notice: "Login successful!"
    else
      redirect_to new_session_path, alert: "Login failed"
    end
  end

  def destroy
    logout
    redirect_to root_url, notice: "Logged out!"
  end

end
