class ChangeMessages < ActiveRecord::Migration
  def up
    remove_column :messages, :sender
    remove_column :messages, :receiver
    add_column :messages, :sender_id, :integer
    add_column :messages, :receiver_id, :integer
  end

  def down
    add_column :messages, :sender, :integer
    add_column :messages, :receiver, :integer
    remove_column :messages, :sender_id
    remove_column :messages, :receiver_id    
  end
end
