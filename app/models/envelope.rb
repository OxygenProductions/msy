class Envelope < ActiveRecord::Base
  
  has_many :cards
  has_many :images
  
  attr_accessible :name
  
end
