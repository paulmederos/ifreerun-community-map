class Location < ActiveRecord::Base
  belongs_to :community
  
  attr_accessible :address, :latitude, :longitude, :community_id
  after_validation :geocode,  :if => :address_changed?
  
  geocoded_by :address 
  acts_as_gmappable :process_geocoding => false
end
