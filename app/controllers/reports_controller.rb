class ReportsController < ApplicationController
  def new
    @report=Report.new(parmas[:report])
    if @report.save
      root_path
    end
  end
  def edit
    @report=Report.find(parmas[:id])
  end
  def index
    @reports = Report.all
  end
  def show
    @report=Report.find(parmas[:id])

  end
  
end
