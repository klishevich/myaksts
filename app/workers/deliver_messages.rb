class DeliverMessages
  @queue = :messages_queue
  def self.perform(title,body,email4test)
  	MessageMailer.send_message_email(title, body, email4test).deliver  
  end
end