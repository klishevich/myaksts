class MessageMailer < ActionMailer::Base
  default from: 'mans1st@yandex.ru'

  def send_message_email(title, message, email)
    @message = message
    Rails.logger.debug 'test_email'
    mail to: email, subject: title
    # mail to: 'm.klishevich@yandex.ru', subject: message.title if message.send_type=="email_real"
  end
end
