class RenameColumn < ActiveRecord::Migration
  def up
    rename_column :texts,  :body,  :text
  end

  def down
    rename_column :texts,  :text,  :body
  end
end
