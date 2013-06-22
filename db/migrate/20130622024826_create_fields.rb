class CreateFields < ActiveRecord::Migration
  def change
    create_table :fields do |t|
      t.string :name
      t.string :field_type
      t.string :region
      t.boolean :editable
      t.string :font_family
      t.integer :font_size
      t.integer :letter_spacing
      t.integer :word_spacing
      t.integer :line_height
      t.boolean :has_text_shadow
      t.string :text_shadow
      t.string :text_align
      t.string :text
      t.references :card

      t.timestamps
    end
    add_index :fields, :card_id
  end
end
