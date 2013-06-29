class CreateReadings < ActiveRecord::Migration
  def change
    create_table :readings do |t|
      t.string :title
      t.string :image
      t.integer :weight
      t.text :content

      t.timestamps
    end
  end
end
