class Image < ActiveRecord::Base
  
  mount_uploader :image, ImageUploader
  
  belongs_to :envelope
  belongs_to :author
  belongs_to :card
  belongs_to :field
  
  attr_accessible :author_id, :card_id, :envelope_id, :field_id, :image, :image_size, :image_type, :name, :envelope_type
  
  before_save :update_image_details

  def update_image_details
    # => before the image is created, the file name/type and size need to be added in the db
    self.assign_attributes(name: image.file.file.split('/').last, image_type: image.file.content_type, image_size: image.file.size)
  end
  
end
