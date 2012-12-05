class MessageUser < ActiveRecord::Base
  attr_accessible :user_id, :message_id

  belongs_to :received_msg, :class_name => "Message", :foreign_key => "message_id"
  belongs_to :receiver, :class_name => "User", :foreign_key => "user_id"
end
