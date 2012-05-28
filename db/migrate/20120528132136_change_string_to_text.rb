class ChangeStringToText < ActiveRecord::Migration
  def up
    change_column :text, :text, :text
  end

  def down
    change_column :text, :text, :string
  end
end
