class UsersController < ApplicationController
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      cookies[:auth_token] = @user.auth_token # Create temporary cookie
      
      # This is where we redirect to onboarding.
      redirect_to root_url, notice: "Thank you for signing up!"
    else
      render "new"
    end
  end
  
end
