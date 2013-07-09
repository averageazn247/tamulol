class AdminController < ApplicationController
  def main
    
  end
  def print
    @teams=Team.all
    respond_to do |format|
          format.csv { send_data @teams.to_csv }
      format.xls 

    end
  end
  def email
    
  end
  def view
    
  end
end
