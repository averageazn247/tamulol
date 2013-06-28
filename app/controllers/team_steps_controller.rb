class TeamStepsController < ApplicationController
      include Wicked::Wizard
    steps   :capt, :play2, :play3, :play4 , :play5 , :sub
  
  def new
      @team = Team.create
  end
  def show
   
  id=current_user.id
 @team= Team.find(params[:team_id])
   
  render_wizard
end

def create
  @team = Team.create
   @team.save
    session[:user_id] = @user.id
    
    render_wizard @team
 
end




  def update
    @team = Team.find(params[:team_id])
    @team.attributes = params[:team]
    render_wizard @team
  end
def redirect_to_finish_wizard
    redirect_to root_url, notice: "Thank you for signing up."
  end
end
