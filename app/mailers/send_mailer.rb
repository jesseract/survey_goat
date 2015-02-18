class SendMailer < ApplicationMailer
  def invitation(address)
    @address = address
    mail(to: address, subject: 'Welcome to my awesome site')
  end
end
