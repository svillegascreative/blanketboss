class AdminMailer < ApplicationMailer
  default from: 'blanketboss@svillegas.com'

  def contact_form(name, email, body)
    @name = name
    @email = email
    @body = body

    mail(to: 'blanketboss@svillegas.com', subject: 'Feedback from Blanket Boss Contact Form')
  end

end
