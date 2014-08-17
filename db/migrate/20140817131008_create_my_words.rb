class CreateMyWords < ActiveRecord::Migration
  def change
    create_table :my_words do |t|
      t.string :word
      t.string :soundmark
      t.text :explain
      t.string :add_time
      t.integer :search_times

      t.timestamps
    end
  end
end
