require 'net/http'
require 'uri'

class CatchallController < ApplicationController

  def index
    in_uri = URI.parse(request.url)
    base_url="https://arcane-atoll-28308.herokuapp.com"
    path = "#{base_url}#{in_uri.request_uri}"
    # if request.query_string.length > 0
    #   path += "?#{request.query_string}"
    # end
    uri = URI.parse(path)
    response = Net::HTTP.get_response(uri)
    # binding.pry
    # response.code
    # response.body
    render plain: path
  end
end
