class Reservation < ActiveRecord::Base
  belongs_to :event
  belongs_to :reservable, polymorphic: true
end
