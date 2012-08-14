#Welcome to Toadstool
![toadstool logo](/Anotheruiguy/toadstool/blob/master/public/images/toadstool-logo.png "toadstool - put that in your styleguide")

Toadstool is a Styleguide framework. Concepts are simple, build in the abstract and apply to the semantic. 

Toadstool is currently developed as a Sinatra app using Sass (SCSS) and Compass. We have made recent updates that makes the core set of Sass functions into a Compass extension. 

##To run the app
Toadstool is built using ``Sinatra``, but you can run the app using ``shotgun`` if you prefer.

**To run** ``ruby toadstool.rb`` will start the app. If you are running a VM you may need to run ``ruby toadstool.rb -o 0.0.0.0``.  If you are so inclined, feel free to reset the port like so ``ruby toadstool.rb -o 0.0.0.0 -p 3000``

##Sass / Compass
**(BLEEDING EDGE ALERT)** Toadstool is using ``3.2.0.alpha.*``
For [reasons explained](/Anotheruiguy/toadstool/blob/master/doc-src/exploited-bug.md) please continue using the alpha gem and upgrading to Sass 3.2 will break Toadstool and Stipe. 

The Compass config is included in toadstool.rb, no need to run as a separate process. 

*Note:* Sinatra serves the rendered Sass from memory without generating actual CSS files. However, if you have CSS files in public/stylesheets, those will be served instead. If you edit your Sass, but don't see your changes in the browser, delete any CSS files in public/stylesheets. 

#Stipe Compass Extension
Stipe is the life blood of the Toadstool style guide framework. Consisting of a series of mixins, extends and defaults that give Toadstool that 'instant on' experience. 

[Stipe](https://rubygems.org/gems/stipe)

##To install
`gem install stipe`

Current gem version dependency => 0.0.2.8

##To use 
To use the Stipe gem, using Bundler `gem 'stipe'`

Stipe is a Compass Extension, so Compass is set as a depdency. You will need to include `require 'stipe'` in your config.rb file.


###Please don't mind the mess ...
This is a work in progress, if you are following along at home, pull master a lot :D