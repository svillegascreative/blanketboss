class UserMailer < ApplicationMailer
  default from: 'blanketboss@svillegas.com'

  def welcome_email(user)
    @user = user
    mail(to: user.email, subject: "Thanks for joining Blanket Boss!")
  end
end
