#What is a module

In Toadstool's eyes, the module is the single most important things you can build. It is the final object that will be placed in the view to create the experience. But the module is not the starting point, but a distination. 

Starting with the elemental building blocks of the UI, then depending on the size of the module you will either assemble the final module here or using a combination of elements and UI patterns will then assemble the module. 

The idea behind the module is keeping your code DRY. 

##Refactoring is the KEY! 
The difference between modules and UI patterns are really in the eye of the beholder. There is no clear divisional line between the two. The only assistance I can offer is ... if the module feels large and there are repeated objects within, then there is a good chance that you have an opportunity to peal out a UI pattern within that module. 