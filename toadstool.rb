require 'rubygems'

# If you're using bundler, you will need to add this
require 'bundler/setup'

require 'sinatra'

get '/' do
  erb :index
end

get '/widgets' do
  erb :"widgets/index"
end