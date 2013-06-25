class AddImageToFields < ActiveRecord::Migration
  def change
    add_column :fields, :image, :string
  end
end
