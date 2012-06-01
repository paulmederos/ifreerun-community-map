class PagesController < ApplicationController
  
  def home
    @users = User.all
    @communities = Community.all
    @json = Location.all.to_gmaps4rails do |location, marker|
      marker.infowindow render_to_string(:partial => "/locations/marker", :object => location)
    end
  end
end