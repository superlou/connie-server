class ScheduleSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :start, :finish, :name
  has_many :places
  has_many :events
end
