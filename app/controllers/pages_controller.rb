class PagesController < ApplicationController
  
  def home
    @users = User.all
    @communities = Community.all
    
    if params[:search].present?
      @locations = Location.near(params[:search], 50, :order => :distance)
    else
      @locations = Location.all
    end
    
    @locations_json = @locations.to_gmaps4rails do |location, marker|
      marker.infowindow render_to_string(:partial => "/locations/marker", :object => location)
    end
  end
  
end