class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :name
      t.boolean :is_new
      t.string :card_type
      t.integer :envelope_id
      t.integer :author_id

      t.timestamps
    end
    add_index :cards, :author_id
  end
end
