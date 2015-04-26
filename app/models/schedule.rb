class Schedule < ActiveRecord::Base
  has_many :schedule_places
  has_many :places, through: :schedule_places
  belongs_to :con
  has_many :events, through: :con
end
