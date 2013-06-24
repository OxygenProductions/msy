class RemoveEnvTopFromImages < ActiveRecord::Migration
  def up
    remove_column :images, :env_top_id
    remove_column :images, :env_bottom_id
    remove_column :images, :env_under_id
    add_column :images, :envelope_id, :integer
  end

  def down
    add_column :images, :env_top_id, :integer
    add_column :images, :env_bottom_id, :integer
    add_column :images, :env_under_id, :integer
    remove_column :images, :envelope_id
  end
end
