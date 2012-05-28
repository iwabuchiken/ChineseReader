class ChangeStringToText < ActiveRecord::Migration
  def up
    change_column :texts, :text, :text
  end

  def down
    change_column :texts, :text, :string
  end
end
