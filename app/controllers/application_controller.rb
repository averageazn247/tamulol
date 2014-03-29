class ApplicationController < ActionController::Base
  protect_from_forgery :secret => 'any_phrase',  
                       :except => :is_online
require 'rest_client'

   include SessionsHelper
 
   def all_streams
    @all_streams=Stream.all 
   end
 
   
   def current_user
    @current_user ||= User.find_by_auth_token( cookies[:auth_token]) if cookies[:auth_token]
  end
  def is_online(name)
     temp=''

       url ='https://api.twitch.tv/kraken/streams/'+name.to_s 
       response=RestClient.get url
       if response.code == 200
       stream = JSON.parse(response) 
       return stream['stream']
   
     
     else
     return nil
   end
    
  end
  helper_method :all_streams
  helper :all
  helper_method :current_user
  helper_method :is_online
  # Force signout to prevent CSRF attacks
  def handle_unverified_request
    sign_out
    super
  end
end
