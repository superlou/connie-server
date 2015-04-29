class Event < ActiveRecord::Base
  belongs_to :convention
  validates_presence_of :convention

  has_many :reservations
  # has_many :reservables, through: :reservations, source_type: 'Reservable'
end
