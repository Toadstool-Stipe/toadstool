#What is a UI pattern?

In Toadstool's eyes, the module is the single most important things you can build. It is the final object that will be placed in the view to create the experience. But the module is not the starting point, but a distination. 

Starting with the elemental building blocks of the UI, then depending on the size of the module you will either assemble the final module here or using a combination of elements and UI patterns will then assemble the module. 

The UI pattern fits in between the element and the module. The module could be thought of as a complete exlerience within a widget of sorts while a UI pattern is simply a repeated UI element that is shared amoung multiple modules. 

The idea behind the UI pattern is keeping your code DRY. 

##Refactoring is the KEY! 
Modules are easy to discover while UI patterns are more elusive. It is my suggestion that you don't go chasing perfectection.

UI patterns present themselves. It is when you have completed a module and start another that you may discover a similar pattern between the two. This directory is here so that you have a place to document the patterns.  