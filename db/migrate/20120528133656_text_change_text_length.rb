class TextChangeTextLength < ActiveRecord::Migration
  def up
    change_column :texts, :text, :text, {:limit => 1000}
  end

  def down
    change_column :texts, :text, :text, {:limit => 255}
  end
end
