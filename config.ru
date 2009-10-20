require 'sinatra/base'
require 'net/https'

run Sinatra.new {
  get('/') do
    content_type "application/xml"

    port = params[:ssl] ? 443 : 8000
    http = Net::HTTP.new(params[:hostname], port)
    http.use_ssl = params[:ssl]
    resp = http.start do |http|
      req = Net::HTTP::Get.new(params[:url])
      req.basic_auth params[:user], params[:password]
      http.request(req)
    end

    resp.body
  end
}
