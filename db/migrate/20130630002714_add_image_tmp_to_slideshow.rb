class AddImageTmpToSlideshow < ActiveRecord::Migration
  def change
    add_column :slideshows, :image_tmp, :string
  end
end
