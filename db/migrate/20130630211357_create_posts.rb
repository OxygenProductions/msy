class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :summary
      t.text :content
      t.string :permalink
      t.date :date

      t.timestamps
    end
  end
end
