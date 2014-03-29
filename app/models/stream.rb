class Stream < ActiveRecord::Base
  require 'faraday'
 require "net/http"
  require 'net/https'
require 'json'
  
  attr_accessible :name, :info, :time, :twitch_account, :link,:user
  require 'open-uri'
  def self.check_online(name)
    temp=''
      #test=Faraday.get(:url => 'https://api.twitch.tv/kraken/streams/'+name.to_s )
       url =URI.parse('https://api.twitch.tv/kraken/streams/'+name.to_s )
       response = Net::HTTP.start(url.host, use_ssl: true) do |http|
  http.get url.request_uri, 'User-Agent' => 'MyLib v1.2'
end

case response
when Net::HTTPRedirection
  # repeat the request using response['Location']
when Net::HTTPSuccess
  repo_info = JSON.parse response.body
  json =  repo_info

      
          
    streams = json["stream"]
          
     if streams != nil
      return 'online'
     
     end
     return 'offline'
  
    
   
else
  # response code isn't a 200; raise an exception
  response.error!
 
      
     end
    end
  end
  
  def check_all_online()
    streams=Stream.all
    streams.each do |stream|
      stream.name
      
    end
  

end
