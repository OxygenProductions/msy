class Field < ActiveRecord::Base
  
  mount_uploader :image, ImageUploader
  
  belongs_to :card
   attr_accessible :editable, :field_type, :font_family, :font_size, :has_text_shadow, :letter_spacing, :line_height, :name, :region, :text, :text_align, :text_shadow, :word_spacing, :image, :top, :left, :width, :height, :card_id, :color, :bg
   
end
