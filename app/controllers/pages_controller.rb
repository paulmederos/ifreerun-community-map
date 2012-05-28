class PagesController < ApplicationController
  
  def home
    @users = User.all
    @communities = Community.all
  end
end
