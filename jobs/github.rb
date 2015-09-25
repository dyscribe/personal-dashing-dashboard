#!/usr/bin/env ruby
require 'rest-client'
require 'json'

git_token = ENV['GITHUB_TOKEN']
git_owner = ENV['GITHUB_OWNER']
git_project = ENV['GITHUB_PROJECT']

## Change this if you want to run more than one set of issue widgets
event_name = "github_things"

## the endpoint we'll be hitting
uri = "https://api.github.com/repos/#{git_owner}/#{git_project}?access_token=#{git_token}"

SCHEDULER.every '1m', :first_in => 0 do
    puts "Getting #{uri}"
    response = RestClient.get uri

    send_event(name, {
      repo: name,
      issues: open_issues_count - pulls,
      pulls: pulls,
      forks: forks,
      watchers: subscribers_count,
      stargazers: stargazers_count,
      activity: time_ago_in_words(r.updated_at).capitalize
            })

end # SCHEDULER
