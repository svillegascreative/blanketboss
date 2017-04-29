class UserMailer < ApplicationMailer
  default from: 'blanketboss@svillegas.com'

  def welcome_email(user)
    @user = user
  end
end
