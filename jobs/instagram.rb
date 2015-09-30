require 'sinatra'
require 'instagram'

# Instagram Client ID from http://instagram.com/developer
Instagram.configure do |config|
  config.client_id = ENV['INSTAGRAM_CLIENT_ID']
  config.client_secret = ENV['INSTAGRAM_CLIENT_SECRET']
  config.access_token = ENV['INSTAGRAM_ACCESS_TOKEN']
end

user_id = ENV['INSTAGRAM_USER_ID']

# puts Instagram.user_recent_media("#{user_id}")

SCHEDULER.every '2m', :first_in => 0 do |job|
  photos = Instagram.user_recent_media("#{user_id}")
  if photos
    photos.map! do |photo|
      { photo: "#{photo.images.low_resolution.url}" }
    end
  end
  send_event('instadash', photos: photos)
end
