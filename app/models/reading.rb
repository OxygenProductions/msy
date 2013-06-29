class Reading < ActiveRecord::Base
  
  mount_uploader :image, ImageUploader
  process_in_background :image
  
  attr_accessible :content, :image, :title, :weight, :tag_list, :reading_tag_list
  acts_as_taggable
  acts_as_taggable_on :reading_tags
  
end
