require 'net/http'
require 'json'

class GetRequester
  attr_reader :url

  def initialize(url)
    @url = url
  end

  def get_response_body
    Net::HTTP.get_response(URI.parse(self.url)).body
  end

  def parse_json
    JSON.parse(get_response_body)
  end
end