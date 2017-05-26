class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      auto_login(@user, should_remember = false)
      redirect_to blankets_path, success: "Registration successful!"
      UserMailer.welcome_email(@user).deliver_later
    else
      flash.now[:error] = "Hmm... Registration failed for some reason. Please try again."
      render :new
    end
  end


private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end
