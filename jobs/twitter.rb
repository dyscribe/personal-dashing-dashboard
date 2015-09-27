#!/usr/bin/env ruby
require 'twitter'

#### Get your twitter keys & secrets:
#### https://dev.twitter.com/docs/auth/tokens-devtwittercom
twitter = Twitter::REST::Client.new do |config|
  config.consumer_key = ENV['TWITTER_CONSUMER_KEY']
  config.consumer_secret = ENV['TWITTER_CONSUMER_SECRET']
  config.access_token = ENV['TWITTER_ACCESS_TOKEN']
  config.access_token_secret = ENV['TWITTER_TOKEN_SECRET']
end

# Get Tweets

begin
   timeline = twitter.user_timeline
   if timeline
     mentions = timeline.take(5).collect do |tweet|
       { name: tweet.user.screen_name, body: tweet.text, avatar: tweet.user.profile_image_url }
     end

     send_event('twitter_mentions', {comments: mentions})
   end
 rescue Twitter::Error
   puts "\e[33mThere was an error with Twitter\e[0m"
 end

# puts "Latest Tweet: #{mentions.inspect}"
