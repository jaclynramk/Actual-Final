require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
    @title = "Jaclyn Ramkissoon's Portfolio"
    @description = "This site showcases all of the awesome things that Jaclyn Ramkissoon has done."
    @home = "active"

    require 'sinatra'
    require 'twitter'
    client = Twitter::REST::Client.new do |config|
          config.consumer_key        = "LfqX1E9VwGM5JPxgM3P35mPP4"
          config.consumer_secret     = "IaD1Ufx5Oosod7WCoitMH7OTbjgbRhZWll44pnySYObQzQ4RTS"
          config.access_token        = "2882691731-juZvYoYCo580ZZcZCMxi36GznYXXeRspsbn4CmV"
          config.access_token_secret = "RU5EBKdDlFrTsp9dVpXksc2CO7vpmITnhBwU2sOozlRD5"
        end
    
   @search_results = client.user_timeline("beyonce", result_type: "recent").take(10).collect do |tweet|
  # "#{tweet.user.screen_name}: #{tweet.text}"
    tweet
 end
    
    @search_results2 = client.search("to: beyonce", result_type: "recent").take(5).collect do |tweet|
  # "#{tweet.user.screen_name}: #{tweet.text}"
    tweet
 end
    
@search_results3 = client.search("#beyonce", result_type: "recent").take(5).collect do |tweet|
  # "#{tweet.user.screen_name}: #{tweet.text}"
    tweet
 end
    
    erb :home
end

