class PlaceSerializer < ActiveModel::Serializer
  embed :ids

  attributes :id, :name
  has_one :parent
end
