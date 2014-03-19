class Stream < ActiveRecord::Base
  attr_accessible :name, :info, :time, :twitch_account, :link,:user
  require 'open-uri'
  def self.check_online(name)
   
    twitch=Twitch.new.getUser(name)  
    result = JSON.parse(twitch[:body].to_json )
 temp=nil
     
       url ='https://api.twitch.tv/kraken/streams/'+name.to_s 
       stream = JSON.parse(open(url).read) 
       stream.each do |a|
         temp=a
       end 
     if temp.include?(nil)
       return "offline"
     else
       return "online"
     end
     
   
    
  end
  
  def check_all_online()
    streams=Stream.all
    streams.each do |stream|
      stream.name
      
    end
  
  end
end
