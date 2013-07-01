class Audio < ActiveRecord::Base
  
  mount_uploader :image, ImageUploader
  store_in_background :image
  
  mount_uploader :audio, AudioUploader
  store_in_background :audio
  
  attr_accessible :audio, :image, :title, :weight, :tag_list, :audio_tag_list
  acts_as_taggable
  acts_as_taggable_on :audio_tags

end
