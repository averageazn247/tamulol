OmniAuth.config.logger = Rails.logger


Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook,  '152435994952191' ,  '0cafd35bab057f1418c0ee9b67cbe0d0' 
end