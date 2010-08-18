class LinksController < ApplicationController
  def create
    @link = Link.find_or_create_by_address params[:link][:address]
    
    if @link.save
      render :action => :show
    else
      flash[:error] = "An error occured while creating the link"
      redirect_to root_path
    end
  end
  
  def redirect
    begin
      @link = Link.find(params[:link_reference].alphadecimal)
    rescue
      flash[:error] = "Not a valid url"
      redirect_to root_path
    else
      redirect_to @link.address
    end
  end
end
