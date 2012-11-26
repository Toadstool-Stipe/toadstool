#Welcome to Toadstool
![toadstool logo](/Anotheruiguy/toadstool/raw/master/public/images/toadstool-logo.png "toadstool - put that in your styleguide")

Toadstool is a Style Guide framework. Concepts are simple, build in the abstract and apply to the semantic. 

##What is a Style Guide Framework?
While bootstrap frameworks are all the rage, I feel that there are some things that they do very well and then some things that they do very poorly. What they do well is give a team/developer a quick spring board to get a new app up and running. For a team/developer that is light on UI skillz, that is a good thing. But what I have heard time and time again from one developer to the next is that as the app continues to mature this 'bootstrap' UI is now a burden to bear.

After all, it is a 'bootstrap' framework, not a 'production' framework. This is where Toadstool comes in, a real life production framework, a framework, a guideline, a process to make really awesome production ready code.

##Stipe
Stipe is a collection of commonly used Mixins and more-so a growing number of easily useable silent placeholder classes to make development quicker, easier and more flexible. Stipe and Toadstool, when used correctly can quickly become the foundational framework for all your development projects. Making it more accessible to new developers on your teams and ensures that returning to a legacy project is not a daunting task of relearning the UI code.  

##Element, module, view
The process is simple, the ideas are basic and the process is tried and true. Toadstool is set up to support some basic concepts that help you build a solid UI foundation that will allow for greater team integration, promote quality code reuse and build solid consistency in your app.  

###The Element
The root most part of your UI is the elements of the design. Every design can be broken down to these basic elements, typography, colors, grid, forms and buttons. As the UI developer, by coding these first, you will remove the necessity to revisit these later. 

[Stipe](https://github.com/Anotheruiguy/stipe) helps with much of the heavy lifting and provides a great foundation to get started with. You as the UI developer, you simply have to update the values of your style guide [_config.scss](http://goo.gl/PqQSK) file. Toadstool and Stipe have been carefully engineered and updated with tender care with each project deployment to make this process as easy as possible to customize. 

###The Module
Once the elemental foundation is complete, it's time to get to work. Unlike 'bootstrap' frameworks, Toadstool comes with very little pre-written UI code. This is where you, the UI developer needs to get to work. What Toadstool provides is a good development structure in which to create your modules and document your code.

Within the view structure of Toadstool there is a directory for Modules. As modules are developed, each module should be placed within it's own directory. Each module directory should consist of a `view.erb` file that provides the document view for the style guide as well as the `.erb` file(s) needed for the module itself. 

The module itself needs to be written from an abstract perspective. This module bay be a partial that can be placed anywhere in the site in any view. That's the important part. Regardless of how you received the visual spec for this module, that is only one representation of that module. It's width, always 100% of it's container. It's height always directed by the content witin. Think Responsive baby!

The Sass is the skin for the module. Located in the Sass part of the style guide there is also a directory for modules and in there should be a Sass file named the same as the module .erb. This is the glue. This is the uniform structure that makes scaleability and modularity successful. 

###Module versus pattern
One can argue that any given module can be broken down into smaller repeatable UI patterns. This is a gray area and always subject to interpretation and the point of development. One easy distinction is that a UI pattern is more then an element, but less then a full blown module. Where those lines exist are up to your team. 

###The view
The last part of the puzzle is the assembly of the modules into a view template or layout file. The number of view templates will vary greately depending on the size of the application. It is my best practice to namespace the view template with a class at the `html` or `body` tag. In the `views` directory will be a `layouts` directory. Correspondingly in the Sass directory will be a `layouts` directory as well. 

For the purpose of the style guide, it is suggested that the layout erb files contain no markup other then the structural containers needed to display the modules. The modules themselves would be pulled into the view via partials. This is necessary to reduce code duplication, increase maintainability and promote reusability of the engineered modules.

##To run the app
Toadstool is a Sinatra rack app. Simply clone the app into a new directory, `bundle install` and then `rake server`

##Sass / Compass
The Compass config is included in toadstool.rb, no need to run as a separate process. 

*Note:* Sinatra serves the rendered Sass from memory without generating actual CSS files. However, if you have CSS files in public/stylesheets, those will be served instead. If you edit your Sass, but don't see your changes in the browser, delete any CSS files in public/stylesheets. 

#Stipe Compass Extension
Stipe is the life blood of the Toadstool style guide framework. Consisting of a series of mixins, extends and defaults that give Toadstool that 'instant on' experience. 