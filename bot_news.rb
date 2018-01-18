require 'twitter'
require 'dotenv'
Dotenv.load

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV['key']
  config.consumer_secret     = ENV['key_secret']
  config.access_token        = ENV['token']
  config.access_token_secret = ENV['token_secret']
end