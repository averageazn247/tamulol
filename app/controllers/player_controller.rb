class PlayerController < ApplicationController

def setlol
  session[:group]='lol'
    redirect_to root_url
end

def setsc2
  session[:group]='sc2'
    redirect_to root_url
end

def setfps
  session[:group]='fps'
    redirect_to root_url
end

def reset
    session[:group]=nil
    redirect_to root_url
end
def lolrank
  @teams=Ranks.find(1)
end

end
