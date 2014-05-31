# auto-require anything listed in the Gemfile
require 'bundler'
Bundler.require(:default)

Mongoid.load!("config/mongoid.yml")

# auto-require anything in /lib
Dir.glob("lib/*") { |file| require_relative file }

get '/' do
  erb :index
end

get '/submit/?' do
  redirect '/'
end

post '/submit' do
  # Parser.parse(params['file'][:filename], params['file'][:tempfile])

  Sample.create(business_type: 'Retail', location: {latitude: 123}, collection_bins: [{name: 'Readily Recyclable'}])
end