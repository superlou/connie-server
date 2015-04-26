class ReservationSerializer < ActiveModel::Serializer
  embed :id, include: true
  attributes :id
  has_one :event
  has_one :reservable, polymorphic: true
end
