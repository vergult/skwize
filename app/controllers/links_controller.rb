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
end
