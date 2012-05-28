class Location < ActiveRecord::Base
  belongs_to :community
  
  attr_accessible :address, :latitude, :longitude, :community_id
  geocoded_by :address
  after_validation :geocode,  :if => :address_changed?
end
