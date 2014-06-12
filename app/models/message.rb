class Message < ActiveRecord::Base
  attr_accessible :body, :send_type, :title, :email4test
  validates :title, presence: true  
  validates :body, presence: true

  # Delivers to subscribers via email
  def deliver
  	case self.send_type
	when "email_test"
	  MessageMailer.send_message_email(self.title, self.body, self.email4test).deliver
	when "email_real"
	  Applic.all.each do |applic|
	  	MessageMailer.send_message_email(self.title, self.body, applic.email).deliver
	  end
	end
  end

end
