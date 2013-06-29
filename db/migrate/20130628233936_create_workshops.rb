class CreateWorkshops < ActiveRecord::Migration
  def change
    create_table :workshops do |t|
      t.string :title
      t.text :summary
      t.text :content
      t.date :date

      t.timestamps
    end
  end
end
