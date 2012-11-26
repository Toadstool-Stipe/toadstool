#Welcome to Toadstool
![toadstool logo](/Anotheruiguy/toadstool/raw/master/public/images/toadstool-logo.png "toadstool - put that in your styleguide")

Toadstool is a Styleguide framework. Concepts are simple, build in the abstract and apply to the semantic. 

##What is a Style Guide Framework?
While bootstrap frameworks are all the rage, I feel that there are some things that they do very well and then some things that they do very poorly. What they do well is give a team/developer a quick spring board to get a new app up and running. For a team/developer that is light on UI skillz, that is a good thing. But what I have heard time and time again from one developer to the next is that as the app continues to mature this 'bootstrap' UI is now a burden to bear.

After all, it is a 'bootstrap' framework, not a 'production' framework. This is where Toadstool comes in, a real life production framework, a framework, a guideline, a process to make really awesome production ready code.

##Stipe
Stipe is a collection of commonly used Mixins and more-so a growing number of easily useable silent placeholder classes to make development quicker, easier and more flexible. Stipe and Toadstool, when used correctly can quickly become the foundational framework for all your development projects. Making it more accessible to new developers on your teams and ensures that returning to a legacy project is not a daunting task of relearning the UI code.  

##Element, module, view
The process is simple, the ideas are basic the process is tried and true. Toadstool is set up to support some basic concepts that help you build a solid UI foundation that will allow for greater team integration, promote quality code reuse and build solid consistency in your app.  

###The Element
The root most part of your UI is the elements of the design. Every design can be broken down to these basic elements, typography, colors, grid, forms and buttons. As the UI developer, by coding these first, you will remove the necessity to revisit these later. 

How does Toadstool help with this? Stipe helps with much of the heavy lifting and provides a great foundation to get started with. You as the UI developer, you simply have to update the values of your style guide [_config.scss](http://goo.gl/PqQSK) file. Toadstool and Stipe have been carefully engineered and updated with tender care with each project deployment to make this process as easy as possible to customize. 

###The Module
Once the elemental framework is complete, it's time to get to work. Unlike 'bootstrap' frameworks, Toadstool comes with very little pre-written UI code. This is where you, the UI developer need to get to work. What Toadstool provides is a good development structure in which to make your modules and document your code.

Within the view structure of Toadstool there is a directory for Modules. As modules are developed, each module should be placed within it's own directory. Each module directory should consist of a `view.erb` file that provides the document view for the style guide as well as the `.erb` file(s) needed for the module itself. 

The code for the module itself needs to be written from the perspective that this will be a partial that can be placed anywhere in the site. That's the important part. Regardless of how you received the visual spec for this module, that is only one representation of that module. 

In the Sass part of the style guide there is also a directory for modules and in there should be a Sass file named the same as the module .erb. This is the glue of the style guide. This is the uniform structure that makes scaleability and modularity successful. 

##To run the app
Toadstool is built using ``Sinatra``, but you can run the app using ``shotgun`` if you prefer.

**To run** ``ruby toadstool.rb`` will start the app. If you are running a VM you may need to run ``ruby toadstool.rb -o 0.0.0.0``.  If you are so inclined, feel free to reset the port like so ``ruby toadstool.rb -o 0.0.0.0 -p 3000``

A `Rakefile` has been added to the project, simply running `rake server` will start the app. 

##Sass / Compass
The Compass config is included in toadstool.rb, no need to run as a separate process. 

*Note:* Sinatra serves the rendered Sass from memory without generating actual CSS files. However, if you have CSS files in public/stylesheets, those will be served instead. If you edit your Sass, but don't see your changes in the browser, delete any CSS files in public/stylesheets. 

#Stipe Compass Extension
Stipe is the life blood of the Toadstool style guide framework. Consisting of a series of mixins, extends and defaults that give Toadstool that 'instant on' experience. 

[Stipe](https://rubygems.org/gems/stipe)

##To install
`gem install stipe`

Current gem version dependency => 0.0.3.8

##To use 
To use the Stipe gem, using Bundler `gem 'stipe'`

Stipe is a Compass Extension, so Compass is set as a dependency. You will need to include `require 'stipe'` in your config.rb file.


###Please don't mind the mess ...
This is a work in progress, if you are following along at home, pull master a lot :D