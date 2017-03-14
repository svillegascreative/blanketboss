class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      auto_login(@user)
      redirect_to root_url, notice: "Registration successful!"
    else
      flash.now[:alert] = "Registration failed."
      render :new
    end
  end


private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end