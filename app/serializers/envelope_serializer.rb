class EnvelopeSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :cards, embed: :ids
  has_one :image_top, embed: :ids
  has_one :image_bottom, embed: :ids
  has_one :image_under, embed: :ids
end