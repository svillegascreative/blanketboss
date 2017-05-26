class PagesController < ApplicationController

  def send_contact_form
    name = params[:name]
    email = params[:email]
    body = params[:feedback]

    AdminMailer.contact_form(name, email, body).deliver
    redirect_to root_url, success: "Message sent. Thanks for getting in touch!"
  end

end
