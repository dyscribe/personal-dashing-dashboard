require 'soundcloud'

# create client object with app and user credentials
client = Soundcloud.new(:client_id => ENV['SOUNDCLOUD_CLIENT_ID'],
                        :client_secret => ENV['SOUNDCLOUD_SECRET'],
                        :username => ENV['SOUNDCLOUD_USERNAME'],
                        :password => ENV['SOUNDCLOUD_PASSWORD'])

SCHEDULER.every '30m', :first_at => Time.now do

  count = 0

  client.get('/me/tracks').each do |track|
    count += track['playback_count']
  end

  send_event('soundcloud-plays', { current: count } )

end
