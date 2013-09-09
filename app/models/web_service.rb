require 'sinatra'
require 'json'

class WebService < Sinatra::Base
  set :data do
    JSON.parse(File.read('service.json'))
  end

  get '/service' do
    content_type :json
    WebService.data.to_json
  end

  get '/index' do
    "Hello World"
  end

end