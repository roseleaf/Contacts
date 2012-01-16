class RenameColumn < ActiveRecord::Migration
  def up
    rename_column :messages, :message, :text
  end

  def down
    rename_column :messages, :message, :text
  end
end
