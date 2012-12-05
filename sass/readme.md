#Toadstool and Sass
The Toadstool style guide framework makes heavy use of Sass as it's primary styling language. Primary features of Sass not only include the ability to modularize your UI code, but also engineer your UI code in an abstract manor that allows for infinite reusability. 

The look of your Toadstool style guide is driven from the [Stipe](http://goo.gl/68RPd) gem. All the Sass files you see in this directory are to be used to generate the final CSS for your project. 

##Sass manifest files
In your project there are two Sass manifest files, `style.scss` and `toadstool.scss`. Your `style.scss` is what will be used for your production project while the `toadstool.scss` will only be used for the style guide view.

For the most part there will be no need to edit the `toadstool.scss` file. All the UI that you see in the Toadstool views is being generated from Sass written in the [Stipe](http://goo.gl/68RPd) gem.

The `style.scss` on the other hand is the principal manifest of your generated CSS. Let's go step-by-step into this file so that we understand what is happening here.

###The _config.scss file. 

```scss
// App Config - this is where most of your magic will happen
// ------------------------------------------------------------------------------
@import "config";  // Editing defaults here will override any set in the Stipe gem

```

The `_config.scss` file serves as the core UI configuration for your new UI. In this document are a series of pre-set variables. Including, but not limited to the following. [Read more](http://goo.gl/iLR3o) about how the config file works.
* Typography
* Images directory
* Color palette
* Grid configuration
* Semantic color variables
* Form UI variables
* Buttons
* Borders
* Spacing
* Shadows
* Breakpoints

###CSS reset
Toadstool comes pre-set with a Toadstool specific CSS reset. This reset address the most common UI settings. Stipe comes pre-loaded with Eric Meyer's reset as well and since we are using Compass, if you want, you could use that reset as well. Simply address the lines below in your `_config.scss` file.

If you have your own reset, you can use that too. Simply uncomment the local `@import "reset";` line and in the file structure of the style guide put your reset. 

```scss
// Choose the CSS reset by selectively commenting/uncommenting the import files
// ------------------------------------------------------------------------------
@import "stipe/resets/toadstool";           // Default toadstool reset
// @import "stipe/resets/eric_meyer";       // http://meyerweb.com/eric/tools/css/reset/reset.css
// @import "compass/reset";                 // Reset supported by the Compass gem

// Don't want to use any of these? Kool, we can respect that
// ------------------------------------------------------------------------------
// @import "reset";

```

###Web fonts
Web fonts in Stipe and Toadstool are really easy to manage. In the `_config.scss` file you are already importing the `_web_fonts.scss` file.  

```scss
// Want web fonts? We got those too.
// ------------------------------------------------------------------------------
@import "web_fonts";

```

The `_web_fonts.scss` file itself is your manifest for all imported web fonts. Zocial and Font-Awesome are already installed for your use. Simply uncomment the following to take advantage:

```scss
// Pre-loaded web fonts for your use, enjoy!
// Fonts needed to be loaded in path specified above in relation to the rendered CSS file
// -----------------------------------------------------------
// To activate 'zocial' uncomment both lines
// @import "stipe/typography/web_fonts/zocial";
// @import "stipe/typography/web_fonts/zocial_characters";

// To activate 'font_awesome' uncomment both lines
// @import "stipe/typography/web_fonts/font_awesome";
// @import "stipe/typography/web_fonts/font_awesome_pua";
```

To install your own, simply use the `font-face` mixin:
```scss
@font-face {
	@include font-face ($font_family: [name of family], $font-file:  [name of file], $font_weight: [value], $font_style: [value]);
```

If you prefer to use a Google Font, use the following as example:
```scss
// Install google fonts
// -----------------------------------------------------------
@import url(http://fonts.googleapis.com/css?family=Emblema+One);
```

###Using the Stipe gem
The Stipe gem will be installed on your machine and the following line calles in the necessary libraries.
```scss
// Following sequence will load the necessary Stipe libraries
// ------------------------------------------------------------------------------
@import "stipe/manifest";
``` 

Color management is a little tricky as the placeholder classes that are extended into your project need to be processed in context with the color specifications dictated in your `_config.scss` file. So, the following is included:
```scss
@import "color/extends";
```

###Your styles
Finally we have your styles included in the manifest. 
```scss
// This where you start building your own styles. 
// ------------------------------------------------------------------------------
@import "typography";
@import "forms";
@import "buttons";
@import "design";
@import "ui_patterns";    // manifest files
@import "modules";        // manifest files
@import "layouts";        // manifest files
```

Elemental files include `typography`, `forms`, `buttons`, `design`. The Sass necessary for the site's design are to be edited directly in these files. 

Collective manifest files include `ui_patterns`, `modules` and `layouts`. No Sass is ever to be written in these files. They are only to `@import` the various UI Patterns, Modules and Layouts. 

##Typography
Setting basic typography is a pretty simple task, so this is why I set out to make this a consistent pattern so I never have to do this again. Toadstool's typography pulls a lot of CSS rules from the Stipe gem. These rules are represented in your local Toadstool style guide, but the rules are commented out. 

Core typography settings for your style guide require little intervention. By simply updating the correct variables in the `_config.scss` file, you can effect great change. But if needed, you can either edit the CSS rule directly with the selector or actually over-ride the extended silent placeholder that drives the UI for that block element. 

If these typography settings are unwanted, simply remove `@import "stipe/typography/default";` from the manifest file and populate the Sass file with the appropriate CSS rules. 

It should also be noted that neither Toadstool or Stipe use pixles. EMs are the preferred way to draw relationships between elements in the UI. Again Toadstool/Stipe aim to make life easier, so deep in the Stipe's core are [typography functions](http://goo.gl/g2sPk) to address integer conversion to em value.

```scss
@function em($target, $context: $font_size) {
  @return ($target / $context) * 1em;
}
```

###Adding web fonts
It is very simple to include general web fonts for your design/typography. Located `sass/typography/_web_fonts.scss` file you will see a easy to follow template for adding font libraries and/or Google fonts as well. 

To install your own, simply place the font files in the `public/fonts/` directory and add some Sass

```scss
@font-face {
  @include font-face ($font_family: [name of family], $font-file:  [name of file], $font_weight: [value], $font_style: [value]);
}
```

To add a Google font:

```scss
@import url(http://fonts.googleapis.com/css?family=Emblema+One);
```

###FontCustom.sass
Toadstool fully supports a custom build of [FontCustom.scss](https://github.com/blackfalcon/fontcustom.sass). 

Just place your SVG or EPS icons in the `icons/` directory and run `fontcustom compile icons`. Your icon fonts will be placed in `public/fonts/` and `sass/typography/_fontcustom.scss` will be created or updated for you. 

__NOTE:__ FontCustom is slow (really, really slow) with no indication that it is running. Be patient. 

##Forms
Toadstool comes pre-loaded with the basic elements that make up a form UI. You will find very basic CSS rules in your version of the Toadstool style guide. 

##Buttons

##The design dumping ground