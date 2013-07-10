class AdminController < ApplicationController
   respond_to :xls, :html
  def main
    
  end
  def print

  end
  def email
    
  end
  def view
    
  end
  def index
        @teams=Team.all
    respond_with @teams

  end
  
    
end
