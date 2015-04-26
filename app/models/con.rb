class Con < ActiveRecord::Base
  has_many :schedules
  has_many :events
  has_many :places
end
