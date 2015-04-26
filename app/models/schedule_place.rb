class SchedulePlace < ActiveRecord::Base
  belongs_to :place
  validates_presence_of :place

  belongs_to :schedule
  validates_presence_of :schedule
end
