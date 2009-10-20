require 'sinatra/base'
require 'net/http'

run Sinatra.new {
  get('/') do
    content_type "application/xml"

    Net::HTTP.start(params[:hostname]) do |http|
      req = Net::HTTP::Get.new(params[:url])
      req.basic_auth params[:user], params[:password]
      response = http.request(req)
    end

    response
  end
}
