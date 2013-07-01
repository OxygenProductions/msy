class AddImageTmpToVideo < ActiveRecord::Migration
  def change
    add_column :videos, :image_tmp, :string
  end
end
