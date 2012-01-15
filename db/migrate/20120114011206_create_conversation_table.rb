class CreateConversationTable < ActiveRecord::Migration
  def up
    create_table :conversations do |t|
        t.integer :sender
        t.integer :reciever
        t.timestamps
    end
  end

  def down
    drop_table :conversations
  end
end
