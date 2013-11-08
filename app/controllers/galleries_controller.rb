class GalleriesController < ApplicationController
  def new
    @gallery= Gallery.new(params[:gallery])
  end
  def create
    @gallery=Gallery.new(params[:gallery])
    respond_to do |format|
      if @gallery.save
        flash[:notice] = "Successfully created gallery."
      redirect_to @gallery
    else
      render :action => 'new'
    end
    end
  end
  
  def index
    @galleries =Gallery.all
  end
  def destroy
    @gallery = Gallery.find(params[:id])
    @gallery.destroy
    flash[:notice] = "Successfully destroyed gallery."
    redirect_to galleries_url
  end
  def show
    @gallery=Gallery.find(params[:id])
  end
  def edit
    @gallery = Gallery.find(params[:id])
  end 
end 
