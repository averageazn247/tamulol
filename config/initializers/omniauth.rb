OmniAuth.config.logger = Rails.logger


Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook,  '152435994952191' ,  '0cafd35bab057f1418c0ee9b67cbe0d0' 

end
# Twitter.configure do |config|
  # config.consumer_key = 'Cschq7cA2X0kr1Ga0n0A'
  # config.consumer_secret =  'UGVLl6d32OEHvGzJH1Mvvre4ia4PGGtDbxIFyOFZY'
  # config.oauth_token = YOUR_OAUTH_TOKEN
  # config.oauth_token_secret = YOUR_OAUTH_TOKEN_SECRET
# end