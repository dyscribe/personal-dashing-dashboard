# Yet another Dashing dashboard

[![Build Status](https://travis-ci.org/dyscribe/dyscribe-dashboard.svg?branch=master)](https://travis-ci.org/dyscribe/dyscribe-dashboard)

This is the source for a [Dashing.io dashboard](http://dashing.io/) _(ready to use be used on [Heroku](//heroku.com))_.
You may [check the live preview of the dashboard in action](https://dyscribe.herokuapp.com).

### Screenshot
![Dashboard screenshot](/assets/images/screenshot.png)


### Widgets:

It contains the follwing widgets:

 * **Soundcloud:** Number of plays for an artist
 * **Trello:** Number of cards per list
 * **Twitter:** Recent Tweets by `@username`
 * **Github:** Number of open Pullrequests and Issues on a repo of your choice
 * **Instagram:** Display images by a user of your choice

Furthermore some standards like:

 * Logo / Image Widget
 * Clock Widget

## Local development

* Run `bundle install` to install the needed gems
* If bundler is not installed, run ``gem install bundler` and try again
* Rename the file `.env.EXAMPLE` into `.env`
* Fill in your keys and user data
* Run `dashing start`
* Open a browser at `http://locahost:3030`

> The `.env` file is listed in the `.gitignore` so it will remain on your machine only. You should be aware about the concept of environment variables in order to keep your personal credentials secure.

## Publishing your dashboard

I use Heroku to host my dashboard. It is available under:

[https://dyscribe.herokuapp.com](https://dyscribe.herokuapp.com)
