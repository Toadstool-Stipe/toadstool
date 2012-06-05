#Welcome to Toadstool
![toadstool logo](/blackfalcon/toadstool/raw/master/public/images/toadstool-logo.png "toadstool - put that in your styleguide")

Toadstool is a Styleguide framework. Concepts are simple, build in the abstract and apply to the semantic. 

Toadstool is currently developed as a Sinatra app using Sass (SCSS) and Compass. We have made recent updates that makes the core set of Sass functions into a Compass extension. 

This project is in rapid development so the core files, code names Stipe, are not yet processed into a Gem. Until such time that we make the gem file, you need to clone the Stipe project into a sibling directory from the Toadstool project. 

projects
	-- stipe
	-- toadstool

##To run the app
Toadstool is built using ``Sinatra``, but you can run the app using ``shotgun`` if you prefer.

**To run** ``ruby toadstool.rb`` will start the app. If you are running a VM you may need to run ``ruby toadstool.rb -o 0.0.0.0``.  If you are so inclined, feel free to reset the port like so ``ruby toadstool.rb -o 0.0.0.0 -p 3000``

##Sass / Compass
**(BLEEDING EDGE ALERT)** Toadstool is using ``3.2.0.alpha.*``

The Compass config is included in toadstool.rb, no need to run as a separate process. 

*Note:* Sinatra serves the rendered Sass from memory without generating actual CSS files. However, if you have CSS files in public/stylesheets, those will be served instead. If you edit your Sass, but don't see your changes in the browser, delete any CSS files in public/stylesheets. 

##Stipe Compass extension, Toadstool's core library
While developing this framework I realized that we are begining to build a core series of mixins. It is this core that is the constant between deployments of the Toadstool framework. To better maange this we are in the process of teating this library as a Compass extension and soon to be gem.


###Please don't mind the mess ...
This is a work in progress, if you are following along at home, pull master a lot :D