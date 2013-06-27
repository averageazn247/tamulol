class TeamStepsController < ApplicationController
      include Wicked::Wizard
  steps :capt, :play2, :play3, :play4 , :play5 , :sub
  
  

def create
  @team = Team.new(params[:team])
  if @team.save
    session[:user_id] = @user.id
    redirect_to team_path, notice: "Thank you for signing up."
  else
    render :new
  end
end



def show
   @team = Team.find(params[:id])
  render_wizard
end


end
