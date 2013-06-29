class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.string :title
      t.text :summary
      t.text :content
      t.integer :weight

      t.timestamps
    end
  end
end
