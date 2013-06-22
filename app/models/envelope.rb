class Envelope < ActiveRecord::Base
  
  has_many :cards
  has_one :image_top, class_name: 'Image', foreign_key: 'env_top_id'
  has_one :image_bottom, class_name: 'Image', foreign_key: 'env_bottom_id'
  has_one :image_under, class_name: 'Image', foreign_key: 'env_under_id'
  
  attr_accessible :name, :image_top, :image_bottom, :image_under
  
end
