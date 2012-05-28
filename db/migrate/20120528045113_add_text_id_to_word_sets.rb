class AddTextIdToWordSets < ActiveRecord::Migration
  def change
    add_column :word_sets, :text_id, :integer

  end
end
