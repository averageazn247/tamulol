class MicropostsController < ApplicationController
  def new
 @micropost=Micropost.new

    if @micropost.save
     redirect_to root_path, :notice => "Postss created"
    end
  end 
    def create
 @micropost=Micropost.create(params[:micropost])
    if @micropost.save
      redirect_to root_path, :notice => "Post created"
      else
            render "new"
        end
    end
  end 
  
  def edit
    @micropost = Micropost.find(params[:id])
     if @micropost.save
       redirect_to root_path
      end
  end
  
  def show
    @micropost = Micropost.find(params[:id])
  end
  
  def index
    @microposts= Micropost.allv
  end
  
    def destroy
   @micropost = Micropost.find(params[:id])
    @micropost.destroy

    respond_to do |format|
      format.html { redirect_to messages_url }
      format.json { head :no_content }
    end
  end
   
