class AddImageTmpToAudio < ActiveRecord::Migration
  def change
    add_column :audios, :image_tmp, :string
    add_column :audios, :audio_tmp, :string
  end
end
