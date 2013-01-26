# Toadstool Changelog

###0.1.2(roadmap)
	toadstool branch: not created / stipe branch: not created
* Remove all the IE7 support from the grid
	* move all logic to suplimental gem for backwards compatibility

###0.1.1(roadmap)
	toadstool branch: custom_colors / stipe branch: not created
* New process for adding custom colors to project/style guide
	* TO DO - update colors read me to illustrate process
	* TO DO - Make `extend_color_loop` universally available 
	* TO DO - Make silent placeholder classes available in both `style.scss` and `toadstool.scss`, but OOCSS classes are only generated in `toadstool.scss` and are available to `style.scss`
* Breakapart `_config.scss` 
	* New buttons illustrate the configurable options in the `_buttons.scss` file. 
	* TO DO - Config options can be addressed at this level? 
	* TO DO - test to see if these config options carry throughout all the code no matter where a button is created
* BUG FIX
	* nth-child buttons: need to remove the left margin for mobile breakpoint

###0.1.0
* Setting up normal versioning
* Overhaul of color palette view
* Re-Implemented color defaults so that preset semantic colors update when `_confic.scss` colors are updated
	* This required the creation of `/sass/color/_color_defaults.scss` which is a duplication of defaults found in Stipe
	* Defaults are needed in stipe for the gem to process default colors
	* Defaults are needed in Toadstool in order to process the default colors using local value
* Updates to `/toadstool/sass/color/_extends.scss`
	* Added new `name_color_loop` mixin
	* Dynamically looping through list of OOCSS names to create color block placeholder classes
* Added `contenteditable` support for code examples
	* Users can now edit the code example in the view and then copy for use in other context of the application 
	* UI Fail: You can't see the caret in the text. [Possible solution](http://jsbin.com/ehuki3/3/edit)
* Updated button support
	* Added new color swatch to colors view
	* Deprecated `$primary_button_border_color` from the view
* Deleted legacy button libraries, they all sucked anyway
	