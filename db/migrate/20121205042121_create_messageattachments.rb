class CreateMessageattachments < ActiveRecord::Migration
  def change
    create_table :messageattachments do |t|
      t.string :avatar

      t.timestamps
    end
  end
end
