class TeamsController < ApplicationController
   def index
    @teams = Team.all
  end
  
  def show
    @team = Team.find(params[:id])
  end
  def new
    @team= Team.new
    
  end
  def edit
    @team = Team.find(params[:id])
    
  end
  def create
    @team= Team.create(params[:team])
  
      redirect_to team_steps_path(:id =>  'capt', :team_id => @team.id), notice: 'saved'
 
      
  
    
  end
  def update
    @team= Team.find(params[:id])
    if @team.update_attributes(params[:team])
       redirect_to team_steps_path(:id =>  'capt', :team_id => @team.id), notice: 'saved'
    else
      render action: "edit"
      
    end
  end
end
