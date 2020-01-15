# Twitter Bot

A twitter bot made in Ruby on Rails. Originaly though as a tiny project to tweet every day how much time has passed since my girlfriend and I started dating.

## Details

* Ruby version : 2.5.1

* Core Gems : 
  * Twitter [Github](https://github.com/sferik/twitter)
  * Dotiw [Github](https://github.com/radar/distance_of_time_in_words)
  * Figaro [Github](https://github.com/laserlemon/figaro)
  * Postgresql [Github](https://github.com/ged/ruby-pg)
  
* Configuration :
  First you need to create an app in twitter. Go to [Developer Twitter](https://developer.twitter.com) and follow the steps to create a new app. 
  Once created you need to go to the settings and get:
    Consumer Key, Consumer Secret, Access Token, Access Secret. 
  Add them to your enviroment variables. 
  Locally if you're using figaro you need to add them in `config/application.yml` like this:
  ```
    consumer_key: "your consumer key"
    consumer_secret: "your consumer secret"
    access_token: "your access token"
    access_secret: "your access secret"
  ```
  keep in mind that this file is gitingored. And should be private and secret. If you need to deploy it you should see how to add this to your server enviroment virables.

* Database
    `rake db:create`
    `rake db:migrate`
