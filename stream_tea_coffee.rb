require 'twitter'
require 'dotenv'
Dotenv.load

# quelques lignes qui enregistrent les cles d'APIs
# pour des twit en stream, changer REST en Streaming

client = Twitter::Streaming::Client.new do |config|
  config.consumer_key        = ENV['key']
  config.consumer_secret     = ENV['key_secret']
  config.access_token        = ENV['token']
  config.access_token_secret = ENV['token_secret']
end

topics = ["coffee", "tea"]
client.filter(track: topics.join(",")) do |object|
  puts object.text if object.is_a?(Twitter::Tweet)
end