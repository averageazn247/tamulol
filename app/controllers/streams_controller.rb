class StreamsController < ApplicationController
  require 'json'
  require 'open-uri'
  respond_to :json
   def mercury_update
  post = Stream.find(params[:id])
  # Update page
  post.name=params[:content][:page_topic][:value]
  post.info= params[:content][:page_desc][:value]  
  post.link=params[:content][:page_date][:value]
  post.save!
  render :json => {:url => post_path(post)}
  end
    def update
   post = Stream.find(params[:id])
  # Update page
  post.name=params[:content][:page_topic][:value]
   post.link=params[:content][:page_date][:value]
  post.info= params[:content][:page_desc][:value] 
  post.time= params[:content][:page_tv][:value]
 
  post.save!
  render :json => {:url => post_path(post)}
   
  end
def create
    @stream = Stream.new(params[:stream]) 

    if @stream.save
       #UserMailer.report_match(teams,winner,date).deliver  
      flash[:success] = "Thanks for adding your stream!"


      redirect_to @stream
    else
      render 'new'
    end
  end


def new

@stream =Stream.new
end
def show
  @stream=Stream.find(params[:id])
  name=@stream.link
  @twitch=Twitch.new.getUser(name)  
  
  twitch=@twitch 
  @all= twitch[:body] 
    result = JSON.parse(twitch[:body].to_json ) 
  result.each do | a  ,b |  
    if a == "display_name"
      @result=a
     @test=b
    end
    if a =='logo'
      @logo=b
      
    end
    if a=='bio'
      @bio=b
    end

    
  
  end
  #render json: @twitch
end
def index
  @streams=Stream.all
   
   
   
end 
  def destroy
    @user = Stream.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to streams_url }
      format.json { head :no_content }
    end
  end
helper_method :is_online
end

