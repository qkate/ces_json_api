require 'sinatra'

require_relative 'lib/parser'
require_relative 'lib/sample'

get '/' do
  erb :index
end

get '/submit/?' do
  redirect '/'
end

post '/submit' do
  # Parser.parse(params['file'][:filename], params['file'][:tempfile])

  Sample.create(business_type: 'Retail')
end