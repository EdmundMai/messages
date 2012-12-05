class AddMessageIdToMsgattachment < ActiveRecord::Migration
  def change
  	add_column :messageattachments, :message_id, :integer
  end
end
