require 'net/http'
require 'uri'

class CatchallController < ApplicationController

  def index
    in_uri = URI.parse(request.url)
    # base_url="https://arcane-atoll-28308.herokuapp.com"
    base_url="https://boston.craigslist.org"
    path = "#{base_url}#{in_uri.request_uri}"
    uri = URI.parse(path)
    response = Net::HTTP.get_response(uri)
    render :inline => response.body
  end
end
