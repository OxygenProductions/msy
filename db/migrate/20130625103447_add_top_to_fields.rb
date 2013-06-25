class AddTopToFields < ActiveRecord::Migration
  def change
    add_column :fields, :top, :integer
    add_column :fields, :left, :integer
    add_column :fields, :width, :integer
    add_column :fields, :height, :integer
  end
end
