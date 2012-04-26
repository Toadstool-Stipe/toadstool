#Toadstool's mixins directory

Toadstool is a Styleguide UI Framework designed to give you all the power and flexibility of more traditional CSS frameworks without all the crufty CSS that bloats your stylesheets. But how do we do this? The secret is Sass. Or should I say a combination of Sass and the Compass library. Toadstool is a collection of fabricated mixins that are designed to solve common problems. 

##Toadstool mixins
###@include main_content
Designed to be used for the large main content area of a site. Typically a section block set to a specified width that is centered in the view.
**Supported arguments** ``$main_col_count, $main_grid_align: center, $main_grid_uom: em`` If needed
**Example use case**
``
	.main_content {
		@include main_content(6);
	}
``