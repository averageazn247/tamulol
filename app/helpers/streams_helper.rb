module StreamsHelper
  
  def is_online(name)
    
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
end
