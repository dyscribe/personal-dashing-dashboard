[![Build Status](https://travis-ci.org/dyscribe/personal-dashing-dashboard.svg?branch=master)](https://travis-ci.org/dyscribe/personal-dashing-dashboard)
[![Stories in Ready](https://badge.waffle.io/dyscribe/personal-dashing-dashboard.png?label=ready&title=Ready)](https://waffle.io/dyscribe/personal-dashing-dashboard)

# Personal Dashing Dashboard


This is the source for a personal [Dashing dashboard](//dashing.io/) _(ready to use be used on [Heroku](//heroku.com))_, containing a number of ready made widgets. This is how it looks - once setup.

### Screenshot
![Dashboard screenshot](/assets/images/screenshot.png)


### Widgets:

It contains the follwing widgets:

 * **[Soundcloud](//soundcloud.com):** Number of plays for an artist
 * **[Trello](//trello.com):** Number of cards per list
 * **[Twitter](//twitter.com):** Recent Tweets by `@username`
 * **[Github](//github.com):** Number of open Pullrequests and Issues on a repo of your choice
 * **[Instagram](//instagram.com):** Display images by a user of your choice

Furthermore some Dashing onboard standards like:

 * Logo / Image Widget
 * Clock Widget

## Setup

* Fork the repo
* Rename the file `.env.EXAMPLE` into `.env`

> The local `.env` file is listed in the `.gitignore` so it will remain on your machine only. You still should be familiar with the [usage of environment variables](http://railsapps.github.io/rails-environment-variables.html) and always keep your keys secure.

* Put your keys / user data inside your local `.env` file to grant your dashboard access to the data

> The needed keys can usually be obtained by registering an application (for free) via the developer platform of the corresponding service (e.g. [dev.twitter.com](https://dev.twitter.com/) for twitter and so forth).

## Local development and testing

* Make sure you have [Ruby](https://www.ruby-lang.org/en/) installed on your machine (`which ruby`)
* Go inside the dashboard folder
* Run `bundle install` to install the needed gems _(if [Bundler](http://bundler.io/) is not installed, run `gem install bundler` and try again)_
* Run `dashing start`
* Open a browser at `http://locahost:3030`

## Publishing your dashboard

I use [Heroku](//heroku.com) to host my own dashboard. Be aware that, no matter where you decide to host your dashboard, you will have to set up the `environment` accordingly on your production setup to make the dashboard work.

## Contribution

[Contribution](https://guides.github.com/activities/contributing-to-open-source/) is appreciated :)

* Fork the repo
* Create a branch
* Open a pull request

### LICENSE
-------

> The MIT License
>
> Permission is hereby granted, free of charge, to any person obtaining a copy
> of this software and associated documentation files (the "Software"), to deal
> in the Software without restriction, including without limitation the rights
> to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
> copies of the Software, and to permit persons to whom the Software is
> furnished to do so, subject to the following conditions:
>
> The above copyright notice and this permission notice shall be included in
> all copies or substantial portions of the Software.
>
> THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
> IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
> FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
> AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
> LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
> OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
> THE SOFTWARE.
