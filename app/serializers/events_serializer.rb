class EventsSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :start, :finish
end
