# Require any additional compass plugins here.
# Comment this out if you are using Toadstool inside a Rails project
# Gem to add glob-based imports to Sass
require 'sass-globbing'

# require '../stipe/lib/stipe.rb' # locally as a Compass extension
require 'stipe'

# Set this to the root of your project when deployed:
http_path = "/"

#if ENV['PWD'].end_with?('sass')
#  css_dir = "../public/stylesheets"
#  sass_dir = "."
#else
#  css_dir = "public/stylesheets"
#  sass_dir = "sass"
#end

css_dir = "public/stylesheets"
sass_dir = "sass"
images_dir = "images"
javascripts_dir = "javascripts"

# You can select your preferred output style here (can be overridden via the command line):
# output_style = :expanded or :nested or :compact or :compressed
output_style = :nested

# To enable relative paths to assets via compass helper functions. Uncomment:
# relative_assets = true

# To disable debugging comments that display the original location of your selectors. Uncomment:
line_comments = false

# http://www.mobify.com/dev/sass-sleuth-debugging-sass-in-webkit-browsers/
# compass watch --debug-info

# sass_options = {
#   :debug_info => true
# }

# If you prefer the indented syntax, you might want to regenerate this
# project again passing --syntax sass, or you can uncomment this:
# preferred_syntax = :sass
# and then run:
# sass-convert -R --from scss --to sass sass scss && rm -rf sass && mv scss sass
