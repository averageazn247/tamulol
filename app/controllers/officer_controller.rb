class OfficerController < ApplicationController
      def mercury_update
  post = Officer.find(params[:id])
  # Update page
  post.name=params[:content][:page_topic][:value]
  post.desc= params[:content][:page_body][:value]
  post.start=params[:content][:page_time][:value]
  
  post.dayof=params[:content][:page_date][:value]
  post.save!
  render :json => {:url => post_path(post)}
  end
  
  def new
    
    @officer = Officer.new
  end
  
  
  def show
    @officer=Officer.find(params[:id])
  end
  
  def index
    @officers=Officer.all
  end
  
  def list
    @officers=Officer.all
  end
  
  
end
