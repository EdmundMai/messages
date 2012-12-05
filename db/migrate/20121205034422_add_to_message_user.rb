class AddToMessageUser < ActiveRecord::Migration
  def change
  	add_column :message_users, :message_id, :integer
  	add_column :message_users, :user_id, :integer
  end
end
