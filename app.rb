# auto-require anything listed in the Gemfile
require 'bundler'
Bundler.require(:default)

Mongoid.load!("config/mongoid.yml")

require 'sinatra/json'

# auto-require anything in /lib
Dir.glob("lib/*") { |file| require_relative file }

if production?
  use Rack::Auth::Basic, "Restricted Area" do |username, password|
    username == ENV['BASIC_USER'] and password == ENV['BASIC_PASS']
  end
end

get '/' do
  erb :index
end

get '/samples' do
  @js = ['samples']
  erb :samples
end

get '/submit/?' do
  erb :submit
end

post '/submit' do
  Parser.parse(params['file'][:filename], params['file'][:tempfile])
end

get '/api/samples.?:format?' do
  @samples = Sample.all
  json @samples
end
