class TeamStepsController < ApplicationController
      include Wicked::Wizard
    steps   :capt, :play2, :play3, :play4 , :play5 , :subs, :backup
  
 

  def show
     id=session[:team_id]
     if id!=nil
      @team = Team.find(id) 
      else
        if current_user.admin
          @team= Team.find(params[:team_id])
        else 
          @team=Team.find(session[:team_id])
        end 
        
      end
   render_wizard 
end
  

def create
  @team = Team.create
   @team.save
    @user=User.find(current_user.id)
    @user.setteam(@team.id,@user)
    session[:user_id] = current_user.id
    session[:team_id] = @team.id
    redirect_to wizard_path(steps.first, :team_id => @team.id)
 
end





  def update
    team_id=params[:team_id]
    id=session[:team_id]
    if session[:team_id]
      @team = Team.find( session[:team_id])
    else
       @user=User.find(current_user.id)
      @team = Team.find_by_user_id(session[:team_id])
     
    end
    params[:team][:status] = step.to_s
    params[:team][:status] = 'active' if step == steps.last
    @team.attributes = params[:team]
    session[:team_id] = @team.id
    render_wizard @team
  end
def redirect_to_finish_wizard(team)
    @team=Team.find( session[:team_id])
    session[:team_id]=nil
    redirect_to @team 
  end
end
