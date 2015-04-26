class EventSerializer < ActiveModel::Serializer
  embed :id, include: true
  attributes :id, :name, :description, :start, :finish
  has_many :reservations
end
