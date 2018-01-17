require 'twitter'

# quelques lignes qui enregistrent les cles d'APIs
# pour des twit en stream, changer REST en Streaming

client = Twitter::Streaming::Client.new do |config|
  config.consumer_key        = "xmdpPL3MYo3gOc2oQyBse8RJT"
  config.consumer_secret     = "Bi80LL0gaXhAsLPz1X6s0ClZwOeZwSAAulBaCmtu68kZEhAwRF"
  config.access_token        = "953471119293431809-kTYTxM1nftbM5v65lIzkpFABpIf5svc"
  config.access_token_secret = "8oHkpDp5aAwEqItYuDsXVviQ0JAdq6JUq8Jp77Kn6amRz"
end

topics = ["coffee", "tea"]
client.filter(track: topics.join(",")) do |object|
  puts object.text if object.is_a?(Twitter::Tweet)
end