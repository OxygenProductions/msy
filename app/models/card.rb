class Card < ActiveRecord::Base
  
  belongs_to :author
  belongs_to :envelope
  
  has_many :fields
  has_many :images, foreign_key: 'card_id'
  
  attr_accessible :card_type, :envelope, :is_new, :name, :tag_list
  acts_as_taggable
  
end
