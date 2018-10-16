class ContactMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.sendmail.subject
  #
  def sendmail(email,name,addresse,message)
    @email = email
    @name = name 
    @addresse = addresse
    @message = message 
    mail(to: @email, subject: "Nouveau message ")
  end
end