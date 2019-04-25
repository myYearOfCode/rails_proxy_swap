# Rails proxy swap

This is a simple proxy-server-like setup where it is essentially doing a url to url redirect, preserving any path and query strings (i.e. swapping out just the domain). I built this because I need to point an internet connected device to a different server than the one that it is hard-coded to request.

It is intended to sit behind a dns redirect within your local network. I use dnsmasq - feel free to do it any way you choose. The dnsmasq redirects from a url to the computer running this rails server. The server grabs the path and query string from the original url, requests that from the replacement site and then passes the response back to the original requesting device.

This is needed because dns redirect tools can only change the ip address that a domain points to, they can not point a domain to a different domain. Not all domains have static ips (such as sites hosted on heroku) so some kind of server in the middle is required.

* Ruby version
2.4.5

* Starting the server
bundle exec rails s

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
