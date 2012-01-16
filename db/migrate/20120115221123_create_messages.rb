class CreateMessages < ActiveRecord::Migration
    def up
        create_table :messages do |t|
            t.integer :sender
            t.integer :receiver
            t.text :message
          t.timestamps
        end
      end
      
  def down
    drop_table :conversations
  end
end


