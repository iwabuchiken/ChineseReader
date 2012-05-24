class CreateTexts < ActiveRecord::Migration
  def change
    create_table :texts do |t|
      t.string :body
      t.string :url
      t.string :genre

      t.timestamps
    end
  end
end
