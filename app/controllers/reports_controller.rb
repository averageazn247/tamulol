class ReportsController < ApplicationController

  # GET /reports/1
  # GET /reports/1.json
  def show
    @report = Report.find(params[:id]) 
    
    @teams=Team.all
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @report }
    end
  end

  # GET /reports/new
  # GET /reports/new.json
  def new
    @report = Report.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @report }
    end
  end

  # GET /reports/1/edit
  def edit
    @report = Report.find(params[:id])
  end

  # POST /reports
  # POST /reports.json
  def create
    @report = Report.new(params[:report])
    teams=@report.teams
    winner=@report.winner
    date=@report.dayof
    id= @report.creator_id

    if @report.save
       UserMailer.report_match(teams,winner,date).deliver  
      flash[:success] = "Thanks for reporting!"


      redirect_to @report
    else
      render 'new'
    end
  end
  # PUT /reports/1
  # PUT /reports/1.json
  def update
    @report = Report.find(params[:id])

    respond_to do |format|
      if @report.update_attributes(params[:report])
        format.html { redirect_to @report, notice: 'Report was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reports/1
  # DELETE /reports/1.json
  def destroy
    @report = Report.find(params[:id])
    @report.destroy

    respond_to do |format|
      format.html { redirect_to reports_url }
      format.json { head :no_content }
    end
  end
  
    def index
   
      @reports = Report.paginate(page: params[:page])
  end
end
