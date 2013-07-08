class Teams::BuildController < ApplicationController
  include Wicked::Wizard

  steps :team, :capt, :play2

  def show
    @team = Team.find(params[:team_id])
    render_wizard
  end


  def update
    @team = Team.find(params[:team_id])
    @team.update_attributes(params[:team])
    render_wizard @team
  end


  def create
    @team = Team.create
    redirect_to wizard_path(steps.first, :team_id => @team.id)
  end
end