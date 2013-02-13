# Those little ditties that Sinatra needs to make the magic happen
# -----------------------------------------------------------------------
require 'rubygems'
require 'net/http'

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


  # html_example is a convenienence method that wraps ERB partial @file in our standard example markup
  # with the rendered HTML in an <article> and the code in a collapsible div below.
  #
  # Use in a view as
  #   <%= html_example 'ui_patterns/typography/_body_copy' %>
  #
  # @param file path to an ERB partial, relative to /views and omitting the extension,
  #             e.g.: 'ui_patterns/typography/_body_copy'

  def html_example(file)
    file = File.new(File.join('views', file + '.erb'))

    partial :'shared/_html_example', :locals => { :content => file.read(), :mtime => file.mtime, :path => file.path }
  end


  # sass_example is the same as html_example, but for Sass partials.
  #
  # Use in a view as
  #   <%= sass_example 'forms/_extends' %>
  #
  # @param file path to an SCSS partial, relative to /sass and omitting the extension,
  #             e.g.: 'forms/_extends'

  def sass_example(file)
    file = File.new(File.join('sass', file + '.scss'))

    code_toggle file.read(), file.path, file.mtime
  end


  # code_toggle is a internal convenience method that wraps our collapsible example code div.
  # You shouldn't need to use it directly.
  #
  # @param content  string of HTML or SCSS content
  # @param path     path to the file being displayed
  # @param mtime    mtime of the file being displayed

  def code_toggle(content, path, mtime)
    partial :'shared/_code_toggle', :locals => { :content => content, :mtime => mtime, :path => path }
  end

end


# Without this, there is no app. No really, there is nothing.
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