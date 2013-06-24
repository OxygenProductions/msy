class AddEnvelopeTypeToImages < ActiveRecord::Migration
  def change
    add_column :images, :envelope_type, :string
  end
end
