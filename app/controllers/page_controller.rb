class PageController < ApplicationController
  def home
 
  @events=Event.reorder("dayof").all
  @posts = Post.reorder("id").all
  end
  def officers
    
  end
  def news
    
  end
  
end
