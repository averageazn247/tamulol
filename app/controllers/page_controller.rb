class PageController < ApplicationController
  def home
  @users= User.all
  
  @posts = Post.all
  end
  def officers
    
  end
  def news
    
  end
  
end
