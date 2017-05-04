class UserMailer < ApplicationMailer
  default from: 'blanketboss@svillegas.com'

  def welcome_email(user)
    @user = user
    mail(to: user.email, subject: "Thanks for joining Blanket Boss!")
  end

  def reset_password_email(user)
    @user = User.find(user.id)
    @url  = edit_password_reset_url(@user.reset_password_token)
    mail(:to => user.email,
         :subject => "Your Blanket Boss password has been reset")
  end

end
