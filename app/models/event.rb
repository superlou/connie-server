class Event < ActiveRecord::Base
  belongs_to :con
  validates_presence_of :con

  has_many :reservations
  # has_many :reservables, through: :reservations, source_type: 'Reservable'
end
