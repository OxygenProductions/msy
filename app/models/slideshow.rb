class Slideshow < ActiveRecord::Base
  
  mount_uploader :image, ImageUploader
  store_in_background :image
  
  attr_accessible :content, :image, :title, :weight, :tag_list, :slideshow_tag_list
  acts_as_taggable
  acts_as_taggable_on :slideshow_tags  
  
  
end
