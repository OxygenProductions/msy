class Field < ActiveRecord::Base
  
  belongs_to :card
   
  has_one :image, foreign_key: 'field_id'
   attr_accessible :editable, :field_type, :font_family, :font_size, :has_text_shadow, :letter_spacing, :line_height, :name, :region, :text, :text_align, :text_shadow, :word_spacing
   
end
