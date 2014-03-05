class Mercury::ImagesController < MercuryController

  respond_to :json

  # POST /images.jsonrespond_to :json

  def create
     @blog_image = BlogImage.new(params[:image])
     @blog_image.save!
     render :json => @blog_image.to_json(:only => :image)
  end


  # DELETE /images/1.json
  def destroy
    @image = Mercury::Image.find(params[:id])
    @image.destroy
    respond_with @image
  end

end
