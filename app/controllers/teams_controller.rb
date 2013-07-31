class TeamsController < ApplicationController
   def index
   @teams = Team.paginate(page: params[:page])
        respond_to do |format|
          format.html # index.html.erb
          format.json { render json: @teams }
          format.csv { send_data @teams.to_csv }
          format.xls
    end
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
  def editbio
    @team = Team.find(params[:id])
  end
  def create
    @team= Team.create(params[:team])
    @user=User.find(current_user.id)
    
    session[:team_id]=@team.id
      if @team.save || @team.tos== true
            @user.setteam(@team.id,@user)
     
        redirect_to team_steps_path(:first_step, :team_id => @team.id)
      # redirect_to @team
      else
         render action: "new", :notice =>"Accept The ToS "
    end
      
  
    
  end
  def approve
    
    Team.where(id: params[:team_ids]).update_all(verify: true)
    redirect_to teams_path
  end
  
  def update 
    @team= Team.find(params[:id])
    if @team.update_attributes(params[:team])
        redirect_to teams_url 
    else
      render action: "edit"
      
    end
  end
    def destroy
    @team = Team.find(params[:id])
    @team.destroy

    respond_to do |format|
      format.html { redirect_to teams_url }
      format.json { head :no_content }
    end
  end
  def update_multiple
    @products = Product.update(params[:products].keys, params[:products].values)
    @products.reject! { |p| p.errors.empty? }
    if @products.empty?
      redirect_to products_url
    else
      render "edit_multiple"
    end
  end
end
