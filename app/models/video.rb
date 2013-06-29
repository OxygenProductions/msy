class Video < ActiveRecord::Base
  
  mount_uploader :image, ImageUploader
  process_in_background :image
  
  attr_accessible :description, :image, :title, :video, :weight, :tag_list, :video_tag_list
  acts_as_taggable
  acts_as_taggable_on :video_tags
  
end
