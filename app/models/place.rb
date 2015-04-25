class Place < ActiveRecord::Base
  belongs_to :con
  validates_presence_of :con

  belongs_to :parent, class_name: 'Place'
end
