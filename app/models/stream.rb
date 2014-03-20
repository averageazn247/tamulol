class Stream < ActiveRecord::Base
  attr_accessible :name, :info, :time, :twitch_account, :link,:user
  require 'open-uri'
  def self.check_online(name)
    temp=''

       url ='https://api.twitch.tv/kraken/streams/'+name.to_s 
       stream = JSON.parse(open(url).read) 
       stream.each do |a|
         temp=a
           if temp.include?(nil)
       return "offline" 
       end 
   
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
