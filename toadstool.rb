# Those little ditties that Sinatra needs to make the magic happen
# -----------------------------------------------------------------------
require 'rubygems'
require 'compass'
require 'sass'
require 'net/http'

require 'stipe'               # installed as a gem
# require '../stipe/lib/stipe.rb' # locally as a Compass extension

# If you're using bundler, you will need to add this
require 'bundler/setup'

require 'sinatra'
require 'sinatra/partial'

set :partial_template_engine, :erb


# Helpers to add a new horn section to the band
# -----------------------------------------------------------------------
helpers do
  include ERB::Util
  alias_method :code, :html_escape
  
  # write better links
  def link_to_unless_current(location, text )
    if request.path_info == location
      text
    else
      link_to location, text
    end
  end
  
  def link_to(url,text=url,opts={})
    attributes = ""
    opts.each { |key,value| attributes << key.to_s << "=\"" << value << "\" "}
    "<a href=\"#{url}\" #{attributes}>#{text}</a>"
  end

end


# It's like Sammy and Dino, but not really
# -----------------------------------------------------------------------
configure do
  Compass.add_project_configuration(File.join(Sinatra::Application.root, 'config.rb'))
end

# at a minimum, the main sass file must reside within the ./views directory. here, we create a ./views/stylesheets directory where all of the sass files can safely reside.
get '/stylesheets/:name.css' do
  content_type 'text/css', :charset => 'utf-8'
  scss(:"../sass/#{params[:name]}", Compass.sass_engine_options )
end


# Without this, there is no nav. No really, there is nothing.
# -----------------------------------------------------------------------
get '/' do
  erb :typography
end

get %r{([\w\./_-]+)} do
  if File.exists?('views' + params[:captures].first.gsub(/.(\/)$/, '') + '/index.erb')
    erb :"#{params[:captures].first.gsub(/.(\/)$/, '')}/index"
  else
    erb :"#{params[:captures].first}"
  end
end