class SessionsController < ApplicationController

  def new
  end

  def create
    if login(params[:email], params[:password])
      redirect_to blankets_path, notice: "Login successful!"
    else
      redirect_to root_url, alert: "Login failed"
    end
  end

  def destroy
    logout
    redirect_to root_url, notice: "Logged out!"
  end

end
