class CreateAudios < ActiveRecord::Migration
  def change
    create_table :audios do |t|
      t.string :title
      t.string :image
      t.string :audio
      t.integer :weight

      t.timestamps
    end
  end
end
