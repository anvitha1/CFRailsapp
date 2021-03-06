class UserMailer < ApplicationMailer
  default from: "anvitha1@gmail.com"

  def contact_form(email, name, message)
  @message = message
    mail(from: email,
         to: 'your-email@example.com',
         subject: "A new contact form message from #{name}")
  end
  
  def welcome(user)
    @appname = "Bike Store"
    mail(to: user.email,
         subject: "Welcome to #{@appname}!")
  end
end
