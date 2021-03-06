require 'uri'
require 'net/http'

uri = URI.parse('http://gihyo.jp/')
response = Net::HTTP.get_response(uri)
p response.code
p response.message
p response.body

#6回までリダイレクト先に遷移する
def fetch(uri, limit = 6)
  response = Net::HTTP.get_response(uri)

  case response.code.to_i
  when 200
    puts response.body
  when 300, 301
    unless limit.zero?
      fetch URI.parse(response['Location']), limit.pred
    else
      response.value
    end
  else
    response.value
  end
end

uri = URI.parse('http://gihyo.jp/')
fetch uri

#プロキシでアクセス
proxy_class = Net::HTTP::Proxy('127.0.0.1',3000)
http_proxy = proxy_class.new('www.ruby-lang.org')
http_proxy.start do |h|
  p h.get('/ja')
end
