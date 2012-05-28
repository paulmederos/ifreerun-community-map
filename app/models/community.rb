class Community < ActiveRecord::Base
  attr_accessible :name, :url, :summary
end
