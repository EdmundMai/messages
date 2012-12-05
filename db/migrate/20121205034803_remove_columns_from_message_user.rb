class RemoveColumnsFromMessageUser < ActiveRecord::Migration
  def change
  	remove_column :message_users, :sender_id
  	remove_column :message_users, :receiver_id
  	remove_column :message_users, :sent_msg_id
  	remove_column :message_users, :received_msg_id
  end
end
