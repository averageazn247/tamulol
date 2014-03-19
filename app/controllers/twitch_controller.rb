class TwitchController < ApplicationController
   def mercury_update
  post = Twitch.find(params[:id])
  # Update page
  post.name=params[:content][:page_topic][:value]
  post.desc= params[:content][:page_body][:value]
  post.start=params[:content][:page_time][:value]
  
  post.dayof=params[:content][:page_date][:value]
  post.save!
  render :json => {:url => post_path(post)}
  end
  
  def index
   @twitchs = Twitch.all  
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @twitch = Twitch.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @twitch }
    end
  end

  # GET /events/new
  # GET /events/new.json
  def new
    @twitch = Twitch.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @twitch}
    end
  end

  # GET /events/1/edit
  def edit
    @event = Twitch.find(params[:id])
  end

  # POST /events
  # POST /events.json
  def create
    @twitch = Twitch.new(params[:twitch])

    respond_to do |format|
      if @twitch.save
        format.html { redirect_to @twitch, notice: 'Twitch page was successfully created.' }
        format.json { render json: @twitch, status: :created, location: @twitch}
      else
        format.html { render action: "new" }
        format.json { render json: @twitch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /events/1
  # PUT /events/1.json
  def update
    @twitch = Twitch.find(params[:id])

    respond_to do |format|
      if @twitch.update_attributes(params[:twitch])
        format.html { redirect_to @twitch, notice: 'Twitch was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @twitch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def online
    
  end
  def destroy
    @twitch = twitch.find(params[:id])
    @twitch.destroy

    respond_to do |format|
      format.html { redirect_to twitchs_url }
      format.json { head :no_content }
    end
  end
end
