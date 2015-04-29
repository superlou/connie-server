class Place < ActiveRecord::Base
  belongs_to :convention
  validates_presence_of :convention

  belongs_to :parent, class_name: 'Place'
end
