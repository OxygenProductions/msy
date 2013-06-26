class AddBgToFields < ActiveRecord::Migration
  def change
    add_column :fields, :bg, :string
  end
end
