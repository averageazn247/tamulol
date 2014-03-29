class ApplicationController < ActionController::Base
  protect_from_forgery  :except => :check_online,
  :execpt => :pages_that_are_posted_to_from_out_side
   include SessionsHelper
 
   def all_streams
    @all_streams=Stream.all 
   end
 
   
   def current_user
    @current_user ||= User.find_by_auth_token( cookies[:auth_token]) if cookies[:auth_token]
  end
    require 'open-uri'
  def  check_online(name)
    temp=''
      #test=Faraday.get(:url => 'https://api.twitch.tv/kraken/streams/'+name.to_s )
       url ='https://api.twitch.tv/kraken/streams/'+name.to_s 
       
     #return 'offine'
         rest = RestClient.get(url) 
    json = JSON.parse(rest)

      
          
    streams = json["stream"]
          
     if streams != nil
      return 'online'
     
     end
     return 'offline'
   end
  def is_online(name)
     temp=''

       url =@@twitchChannel+name.to_s 
       stream = JSON.parse(open(url).read) 
       stream.each do |a|
         temp=a
          if temp.include? 'null'
            return 'online'
          end
          
     end
     return 'offline'
   
    
  end
  helper_method :all_streams
  helper :all
  helper_method :current_user
  helper_method :is_online
  helper_method :check_online
  # Force signout to prevent CSRF attacks
  def handle_unverified_request
    sign_out
    super
  end
end
