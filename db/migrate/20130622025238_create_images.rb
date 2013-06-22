class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :image
      t.integer :image_size
      t.string :image_type
      t.string :name
      t.integer :card_id
      t.integer :field_id
      t.integer :author_id
      t.integer :env_top_id
      t.integer :env_bottom_id
      t.integer :env_under_id
      t.integer :env_thumb_id

      t.timestamps
    end
    add_index :images, :card_id
  end
end
