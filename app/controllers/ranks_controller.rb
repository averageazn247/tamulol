class RanksController < ApplicationController
def show
    @rank = Rank.find(params[:id])
    
    @teams=Team.all
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rank }
    end
  end

  # GET /ranks/new
  # GET /ranks/new.json
  def new
    @rank = Rank.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rank }
    end
  end

  # GET /ranks/1/edit
  def edit
    @rank = Rank.find(params[:id])
  end

  # POST /ranks
  # POST /ranks.json
  def create
    @rank = Rank.new(params[:rank])
    teams=@rank.teams
    winner=@rank.winner
    date=@rank.dayof

    if @rank.save
       UserMailer.rank_match(teams,winner,date).deliver  
      flash[:success] = "Thanks for ranking!"


      redirect_to @rank
    else
      render 'new'
    end
  end
  # PUT /ranks/1
  # PUT /ranks/1.json
  def update
    @rank = Rank.find(params[:id])

    respond_to do |format|
      if @rank.update_attributes(params[:rank])
        format.html { redirect_to @rank, notice: 'Rank was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rank.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ranks/1
  # DELETE /ranks/1.json
  def destroy
    @rank = Rank.find(params[:id])
    @rank.destroy

    respond_to do |format|
      format.html { redirect_to ranks_url }
      format.json { head :no_content }
    end
  end
  
    def index
    @ranks = Rank.all 
  end
end
