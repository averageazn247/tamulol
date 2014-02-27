class PageController < ApplicationController
  def home
 
  
  @posts = Post.all
  end
  def officers
    
  end
  def news
    
  end
  
end
