# ligne très importante qui appelle la gem. Sans elle, le programme ne saura pas appeler Twitter
require 'twitter'
require "dotenv"

# quelques lignes qui enregistrent les clés d'APIs
client = Twitter::REST::Client.new do |config|
 config.consumer_key        = ENV["TACLÉTROPBIEN"]
 config.consumer_secret     = ENV["TACLÉTROPBIEN"]
 config.access_token        = ENV["TACLÉTROPBIEN"]
 config.access_token_secret = ENV["TACLÉTROPBIEN"]
end

# ligne qui permet de tweeter
client.update('Mon premier tweet en ruby !!!!')
