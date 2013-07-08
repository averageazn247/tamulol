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
    session[:team_id]=@team.id
      if @team.save
        redirect_to team_steps_path(:first_step, :team_id => @team.id)
      # redirect_to @team
    end
      
  
    
  end
  def update
    session[:team_id]=@team.id
    @team= Team.find(params[:id])
    if @team.update_attributes(params[:team])
        
    else
      render action: "edit"
      
    end
  end
end
