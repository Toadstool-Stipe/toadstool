#Welcome to Toadstool

Toadstool is the next evolution of the Axle Styleguide framework.  Concepts are simple, build in the abstract and apply to the semantic. 

Toadstool is currently developed as a Sinatra app using Sass (SCSS) and Compass. 

To-do's ...
* Create a list of completed features
* Create a list of features to develop
* Get better at code documentation - readme files at every directory
* Distill /core down to a point where it makes sense to make it a gem

##To run the app
Toadstool is built using ``Sinatra``, but you can run the app using ``shotgun`` if you prefer.

**To run** ``ruby toadstool.rb`` will start the app. If you are running a VM you may need to run ``ruby toadstool.rb -o 0.0.0.0``.  If you are so inclined, feel free to reset the port like so ``ruby toadstool.rb -o 0.0.0.0 -p 3000``

##Sass / Compass
Config included in toadstool.rb, no need to run as a separate process. 

##Toadstool custom mixins
On the shoulders of giants, Toadstool is also a series of Sass Mixins to make your life better, your UI more consistent and code easier to manage.  Of course there is to much to go over here, so please read about [Toadstool's mixins](/blackfalcon/toadstool/blob/master/readme/mixin_directory.md) here. 


###Please don't mind the mess ...
This is a work in progress, if you are following along at home, pull master a lot :D