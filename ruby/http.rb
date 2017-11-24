require 'uri'
require 'net/http'

uri = URI.parse('http://gihyo.jp/')
response = Net::HTTP.get_response(uri)
p response.code
p response.message
p response.body
