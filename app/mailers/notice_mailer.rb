class NoticeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.contact.subject
  #
  def contact(name, email, telephone, subject, message)
    @name = name
    @email = email
    @telephone = telephone
    @subject = subject
    @message = message[0]
    mail to: "shop@gmail.com", subject: @subject
  end
end
