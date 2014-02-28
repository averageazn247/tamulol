class PageController < ApplicationController
  def home
 
  @events=Event.all
  @posts = Post.all
  end
  def officers
    
  end
  def news
    
  end
  
end
