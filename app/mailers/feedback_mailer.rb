class FeedbackMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.feedback.send.subject
  #
  def send_mail(feedback)
    p @message = feedback.message
    p @name = feedback.name
    p @email = feedback.email

    #add the email address to send feedback to
    mail to: "lapushnerron@gmail.com", subject: "FeedbackMailer - #{feedback.subject}"
  end
end
