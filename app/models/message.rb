class Message < ActiveRecord::Base
  attr_accessible :body, :send_email, :title
  validates :title, presence: true  
  validates :body, presence: true
end
