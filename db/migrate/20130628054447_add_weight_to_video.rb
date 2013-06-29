class AddWeightToVideo < ActiveRecord::Migration
  def change
    add_column :videos, :weight, :integer
  end
end
