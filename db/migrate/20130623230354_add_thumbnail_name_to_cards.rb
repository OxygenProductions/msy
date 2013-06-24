class AddThumbnailNameToCards < ActiveRecord::Migration
  def change
    add_column :cards, :thumbnail_name, :string
    add_column :cards, :thumbnail_type, :string
    add_column :cards, :thumbnail_size, :integer
  end
end
