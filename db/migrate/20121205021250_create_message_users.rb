class CreateMessageUsers < ActiveRecord::Migration
  def change
    create_table :message_users do |t|
      t.integer :sender_id
      t.integer :receiver_id
      t.integer :sent_msg_id
      t.integer :received_msg_id

      t.timestamps
    end
  end
end
