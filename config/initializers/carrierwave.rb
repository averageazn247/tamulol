CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: "AWS",
    aws_access_key_id: 'AKIAIYMECOCTITPYCCOQ',
    
    #aws_access_key_id:  ENV['AWS_ACCESS_KEY_ID'] ,
    aws_secret_access_key: 'gfxO5rfMvjBCXShRmsG3cU3aJZACdHFIC3iyl56Z'
    #aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY']
  }
  config.fog_directory = "tamulol2013"
end