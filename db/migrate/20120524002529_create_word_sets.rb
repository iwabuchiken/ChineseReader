class CreateWordSets < ActiveRecord::Migration
  def change
    create_table :word_sets do |t|
      t.string :ch
      t.string :pin
      t.string :jp

      t.timestamps
    end
  end
end
