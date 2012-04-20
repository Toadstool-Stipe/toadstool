# General Sass notes, advice and guidelines

**Follow contributers on Twitter [@anotheruiguy](http://twitter.com/anotheruiguy) and [@ScottKellum](http://twitter.com/ScottKellum)**

## Syntax and formatting

Sass is written using the multi-line format very similar to CSS. While Sass is the language, SCSS is a version of the syntax. There is no right or wrong, better or worse. Some prefer the Sass syntax, I prefer to work with SCSS. For the purpose of this document I will refer Sass as the language, but code examples will be written as SCSS and file names as `.scss`.  

### Sass and SCSS

Sass has two equally valid syntaxes, Sass and SCSS. Some key differences to be illustrated are, Sass uses less characters and a 'double space' tab for child selector delineation, exactly like HAML. While SCSS uses a syntax that is more representational of CSS and you can use a full 'tab' for child selector delineation. See examples.

**Sass**

```Sass
.your_new_class
  margin: 0
  padding: 0
```

**SCSS**

```scss
.your_new_class {
	margin: 0;
	padding: 0;
}
```

## Comments

SCSS supports both invisible and visible comments. Using `//` before any SCSS, this will place a comment in your SCSS code, but will not be output in the processed CSS. 

Using the standard `/* */` CSS comments in your SCSS, when processed this will be output in your CSS.  

Comments in code is awesome. Especially when working with a team. Be kind, leave instructions. 

### Nesting

Nesting in Sass is not like indenting in CSS. In Sass nesting has meaning. Sass uses the nested white space to declare parent child relationships. Nesting allows the developer to inherit the parent selector, but be mindful, it is easy to fall into the trap of insane selector inheritance. Rule of thumb, if you are tabbing in a third time, is this declaration really that specific to this namespace or can you abstract to be used more universally? 

Just because you are using Sass doesn't mean that you should toss all CSS and OOCSS best practices out the window. 

**The Good**

```scss
.your_new_class {
	margin: 0;
	padding: 0;
	p {
		color: red;
	}
	a {
		color: blue;
		text-decoration: none;
	}
	li {
		float: left;
		width: 100%;
	}
}
```

**The Bad**

```scss
.your_new_class {
	margin: 0;
	padding: 0;
	div {
		p {
			color: red:
			a {
				color: blue
				text-decoration: none;
			}
		}
		ul {
			li {
				float: left;
				width: 100%;
				a {
					color: blue;
					text-decoration: none;
				}
			}
		}
	}
}
```

### Declaration best practice

It is best practice to list your parent specific declarations directly under the class selector and then list the indented child selectors to keep readability as a maximum.  

Example of a parent class selector with nested selectors:

```scss
.fieldset {
	margin-bottom: 2em;
	p {
		margin-bottom: 0;
		line-height: 1.5em;		
	}
	legend {
		float: left;
		width: 100%;
	}
}
```

### Selector naming conventions

I personally use underscore delimited lowercase selectors. Why? I can double click on a selector and get the whole thing. `.CamelCase{}`, `.hyphen-delimited{}`, or `.underscore_delimited{}`, as long as you are consistent, rock on!


## Working with partials

A partial in Sass is a document with an underscore preceding the name.  Example, `_widget.scss`. Using this convention, when processed, Sass will not output a standalone CSS file. A partial is simply a resource file that other docs can consume and use. This is essential for managing large libraries of Sass logic, element and widget styles. 

I have found that the simplest way to manage your Sass files is via a core.scss file consisting of imported partials and a logical grouping of sub files. With Sass @import works and it works really well, unlike standard CSS. It is encouraged to break your files into smaller manageable chunks of code. 

If you can't decide to use either Sass or SCSS, the good news is that you don't. Sass and SCSS files can live together in perfect harmony. So if you have a reason for using one syntax over another for specific use cases, this is acceptable. For example, some like to use SCSS for logic building and then use Sass for design building. You do not need to state either SCSS or Sass with the @import function, just the path to the partial.


## Dynamic and reusable code

Sass's greatest strength is in it's ability to create dynamic, intelligent and efficiently reusable code. 

### @mixins

Mixins are a great way to keep your code DRY as well as create logical chunks of code to be reused again and again. Using the `@mixin` directive you can engineer smart reusable code to be used throughout your application. It is considered best practice to only use a mixin if you are also using arguments like the following. 

```scss
@mixin the_box ($padding, $background, $border, $style, $color) {
	padding: $padding;
	background: $background;
	border: $border $style $color;
}
```

To use the mixin use the `@include` directive like so

```scss
.your_new_class {
	@include the_box (10px, red, 1px, solid, black);
}
```

### @extend

If you are not using arguments in your mixin, you should consider using a CSS class object and apply using the `@extend` directive. Here is a best practice example for creating a stylistic class for use as an extend using a Compass mixin.

```scss
// Style class object
.default_grey_border {
	@include border-radius(25px);
	border: 1px solid grey;
}  

// Semantically names class
.promoters_box {
	@extend .default_grey_border;
}
```

This will produce the following best practice CSS

```scss
.default_grey_border, promoters_box {
	-webkit-border-radius: 25px;
	-moz-border-radius: 25px;
	-ms-border-radius: 25px;
	-o-border-radius: 25px;
	border-radius: 25px;
	border: 1px solid grey;
}
```

### @extends gone bad

@extend is an awesome tool, but used unwisely will cause real issues. Something I consider to be best practice is to NEVER USE extends inside a mixin. Depending on how the parent mixin is used in generating more CSS even with the possibility of that mixin being used to create a class that is in turn extended, this can create an amazing array of selectors in your final CSS.

**The Bad**

	need to engineer bad @mixin with @extend example
	
**The Bad CSS**

	illustrate css selector blote 



### @-Rules and Directives

One of the advantages Sass has over other languages are control directives. This allows for the ability to programmatically generate css and values.

### Functions

Sass has built in functions like `percentage($value)` along with [plenty of others](http://Sass-lang.com/docs/yardoc/Sass/Script/Functions.html). However you can build your own functions to help with calculations and generating values for a verity of use cases. Below is an exponent function that can be used on any value.

```scss
@function exponent($base, $exponent) {
  // reset value
  $value: $base;
  // positive intergers get multiplied
  @if $exponent > 1 {
    @for $i from 2 through $exponent {
      $value: $value * $base; } }
  // negitive intergers get divided. A number divided by itself is 1
  @if $exponent < 1 {
    @for $i from 0 through -$exponent {
      $value: $value / $base; } }
  // return the last value written
  @return $value; 
}
```


### Combining features

The above tools can be combined to provide even more powerful tools for writing CSS. Loops can be placed in mixins to create grids. Mixins can be nested in mixins to cleanly write code that effects lots of areas. While you need to be careful with the CSS this generates nesting features can provide you with a lot of power when generating styles.