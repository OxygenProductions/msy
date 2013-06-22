class AuthorSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :biography
  has_many :images, embed: :ids
  has_many :cards, embed: :ids
end