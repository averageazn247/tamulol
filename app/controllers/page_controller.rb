class PageController < ApplicationController
  def home
 
       @mircoposts = Micropost.paginate(page: params[:page])
  end
  def officers
    
  end
  def news
    
  end
  
end
