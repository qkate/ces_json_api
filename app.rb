require 'sinatra'

require_relative 'lib/parser'

get '/' do
  erb :index
end

get '/submit/?' do
  redirect '/'
end

post '/submit' do
  Parser.parse(params['file'][:filename], params['file'][:tempfile])
end