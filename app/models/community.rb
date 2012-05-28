class Community < ActiveRecord::Base
  has_one :location
  attr_accessible :name, :url, :summary
end
