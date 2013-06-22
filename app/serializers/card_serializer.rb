class CardSerializer < ActiveModel::Serializer
  attributes :id, :name, :card_type, :is_new, :envelope_id, :author_id
  has_many :fields, embed: :ids
  has_many :images, embed: :ids
end
