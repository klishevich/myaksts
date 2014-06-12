class DeliverMessages
  @queue = :messages_queue
  def self.perform(title,body,send_type,email4test)
  	case send_type
	when "email_test"
	  MessageMailer.send_message_email(title, body, email4test).deliver
	when "email_real"
	  Applic.all.each do |applic|
	  	MessageMailer.send_message_email(title, body, applic.email).deliver
	  end
	end   
  end
end