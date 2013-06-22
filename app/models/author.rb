class Author < ActiveRecord::Base
  
  has_many :cards
  has_many :images, foreign_key: 'author_id'
  
  attr_accessible :biography, :first_name, :last_name, :images
  
end
