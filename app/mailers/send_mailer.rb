class SendMailer < ApplicationMailer
  def invitation
    mail(to: "jlpearce@gmail.com", subject: 'Welcome to my awesome site')
  end
end
