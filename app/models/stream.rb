class Stream < ActiveRecord::Base
  require 'faraday'
 require "net/http"
  
  
  attr_accessible :name, :info, :time, :twitch_account, :link,:user
  require 'open-uri'
  def self.check_online(name)
    temp=''
      #test=Faraday.get(:url => 'https://api.twitch.tv/kraken/streams/'+name.to_s )
       url ='https://api.twitch.tv/kraken/streams/'+name.to_s 
         
       if RestClient.get(url)
       rest = RestClient.get(url)
    json = JSON.parse(rest)

      
          
    streams = json["stream"]
          
     if streams != nil
      return 'online'
     
     end
     return 'offline'
   end
    
  end
  
  def check_all_online()
    streams=Stream.all
    streams.each do |stream|
      stream.name
      
    end
  
  end
end
