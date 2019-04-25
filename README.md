# README

This is a simple proxy-server-like setup where it is essentially doing a url to url redirect, preserving any path and query strings. I built this because I needed to route an internet connected device to a different server than the one that it wanted to connect to.

* Ruby version
2.4.5

* System dependencies

* Configuration
yarn run install
bundle exec bundle install

* Database creation
rails db:create

* Database initialization
rails db:migrate

* How to run the test suite
There are no meaningful tests currently, but bundle exec rspec will run the rspec suite.

* Deployment instructions
This is meant to be run locally with a dnsmasq redirect pointing to it, so no external deployment has been set up or performed. If you have another use case feel free to deploy away.
