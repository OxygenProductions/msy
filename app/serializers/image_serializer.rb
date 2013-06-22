class ImageSerializer < ActiveModel::Serializer
  attributes :id, :image, :image_size, :image_type, :name
end