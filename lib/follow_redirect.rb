require "follow_redirect/version"
require 'uri'
require 'net/http'

module FollowRedirect
  
  class Url
    def self.resolve(url)
      redirect_limit = 10
      (0..9).each do 
        uri = URI.parse(url)
        response = nil
        Net::HTTP.start(uri.host, uri.port) {|http|
          response = http.head(uri.request_uri)
        }
        break unless response.key?("Location")
        url = response['Location']
      end
      url
    end
  end
  
end
