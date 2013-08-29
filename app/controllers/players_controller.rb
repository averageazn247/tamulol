class PlayersController < ApplicationController
  respond_to :html, :json
     def index
    @players = Player.all
  end

  def show
    @player = Player.find(params[:id])
        @player.update_attributes(params[:player])
      respond_with @player
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(params[:player])
    if @player.save
      redirect_to @player, notice: "Successfully created player."
    else
      render :new
    end
  end

  def edit
    @player = Player.find(params[:id])


  end

  def update
    @player = Player.find(params[:id])
 respond_to do |format|
   @player.update_attributes params[:player]
   format.json {repsond_with_bip(@player)}
 end
  
  end


    
  def destroy
    @player = Player.find(params[:id])
    @player.destroy
    redirect_to players_url, notice: "Successfully destroyed player."
  end
  


end
