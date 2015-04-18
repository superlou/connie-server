class Event < ActiveRecord::Base
  belongs_to :con
  validates_presence_of :con
end
