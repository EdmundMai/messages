class User < ActiveRecord::Base
  attr_accessible :name
  validates_uniqueness_of :name, :on => :create

  before_create { |user| create_remember_token } 

  has_many :sent_msgs, :class_name => "Message", :foreign_key => "sender_id"

  has_many :message_users
  has_many :received_msgs, :through => :message_users

  def create_remember_token
  	self.remember_token = SecureRandom.urlsafe_base64
  end
end
