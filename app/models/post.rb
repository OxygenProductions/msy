class Post < ActiveRecord::Base

  attr_accessible :content, :date, :permalink, :summary, :title, :post_tag_list
  acts_as_taggable
  acts_as_taggable_on :post_tags

end
