class Community < ActiveRecord::Base
  has_one :location
  attr_accessible :name, :url, :summary, :adddress, :location_attributes
  accepts_nested_attributes_for :location, :allow_destroy => true
end
