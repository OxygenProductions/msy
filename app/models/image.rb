class Image < ActiveRecord::Base
  
  belongs_to :envelope
  belongs_to :author
  belongs_to :card
  belongs_to :field
  attr_accessible :author_id, :card_id, :env_bottom_id, :env_thumb_id, :env_top_id, :env_under_id, :field_id, :image, :image_size, :image_type, :name
end
