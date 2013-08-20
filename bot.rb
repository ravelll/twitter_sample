require 'twitter'
require './config.rb'

Twitter.configure do |config|
  config.consumer_key = $CONSUMER_KEY
  config.consumer_secret = $CONSUMER_SECRET
  config.oauth_token = $OAUTH_TOKEN
  config.oauth_token_secret = $OAUTH_SECRET
end

while 1 do
  Twitter.update(rand 10)
  sleep 60
end
