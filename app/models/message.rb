class Message < ActiveRecord::Base
  attr_accessible :content, :sender_id

  has_many :message_users
  has_many :receivers, :through => :message_users

  belongs_to :sender, :class_name => "User", :foreign_key => "sender_id"

  has_one :messageattachment

  def self.systemwipe
  	where("created_at > ?", 1.year.from_now).destroy_all
  	"Old records deleted"
  end
end
