class CommunitiesController < ApplicationController
  def index
    @communities = Community.all
  end

  def show
    @community = Community.find(params[:id])
  end

  def new
    @community = Community.new
    @community.build_location
  end

  def create
    @community = Community.new(params[:community])
    if @community.save!
      redirect_to @community, :notice => "Successfully created community."
    else
      render :action => 'new'
    end
  end

  def edit
    @community = Community.find(params[:id])
  end

  def update
    @community = Community.find(params[:id])
    if @community.update_attributes(params[:community])
      redirect_to @community, :notice  => "Successfully updated community."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @community = Community.find(params[:id])
    @community.destroy
    redirect_to communities_url, :notice => "Successfully destroyed community."
  end
end
