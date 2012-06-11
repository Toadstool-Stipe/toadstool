require 'rubygems'
require 'compass'
require 'sass'

# require 'stipe'               # installed as a gem
require '../stipe/lib/stipe.rb' # locally as a Compass extension

# If you're using bundler, you will need to add this
require 'bundler/setup'

require 'sinatra'

helpers do
  include ERB::Util
  alias_method :code, :html_escape
end

configure do
  Compass.add_project_configuration(File.join(Sinatra::Application.root, 'config.rb'))
end

# at a minimum, the main sass file must reside within the ./views directory. here, we create a ./views/stylesheets directory where all of the sass files can safely reside.
get '/stylesheets/:name.css' do
  content_type 'text/css', :charset => 'utf-8'
  scss(:"../sass/#{params[:name]}", Compass.sass_engine_options )
end



get '/' do
  erb :grid
end

get %r{([\w\./_-]+)} do
  erb :"#{params[:captures].first}"
end