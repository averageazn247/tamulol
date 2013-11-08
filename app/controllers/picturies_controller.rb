class PicturiesController < ApplicationController
def new
  @picture= Picture.new(:gallery_id => params[:gallery_id])
  
end
def create
  @picture= Picture.new(params[:picture])
  if @picture.save
    flash[:notice]="Sucessfully added a picture"
    redurect_to @picture.gallery
  else
    render :action => 'new'
  end
  
end
def edit
  @picture= Painting.find(parmas[:id])
  
end

def update
  @picture= Picture.find(params[:id])
  if @picture.update_attributes(params[:picture])
    flash[:notice]= "Update complete"
    redurect_to @picture.gallery
  
  end
end
def destroy
    @painting = Picture.find(params[:id])
    @painting.destroy
    flash[:notice] = "Successfully destroyed picture."
    redirect_to @painting.gallery
  end
end
