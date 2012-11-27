#How does Toadstool manage colors?
The goal of Toadstool and Stipe are to use colors in an intelligent manor, versus CSS with hex values randomly applied throughout the code. 

Nested in the [config.scss](http://goo.gl/rmCQP) file of your Toadstool style guide will be options to change Stipe's default colors. Simply uncomment these lines and replace the hex values with the color palette you wish. 

```scss
// $alphaprimary:   #5a2e2e;        // red
// $bravoprimary:   #3e4147;        // green
// $charlieprimary: #fffedf;        // yellow
// $deltaprimary:   #2a2c31;        // blue
// $echoprimary:    #dfba69;        // accent

// $alphagray:      #333;           //black
```

These primary color values will be processed through your style guide's `colormath.scss` and `grayscalemath.scss` files. In these files you will see an array of new abstract color values being created using Sass' [scale-color](http://goo.gl/SQisc) function. Like the following example:

```scss
$alphacolor:$alphaprimary !default;
$alphacolorbravo:scale-color($alphacolor,$lightness:10%) !default;
$alphacolorcharlie:scale-color($alphacolor,$lightness:20%) !default;
$alphacolordelta:scale-color($alphacolor,$lightness:30%) !default;
$alphacolorecho:scale-color($alphacolor,$lightness:40%) !default;
$alphacolorfox:scale-color($alphacolor,$lightness:50%) !default;
$alphacolorgolf:scale-color($alphacolor,$lightness:60%) !default;
$alphacolorhotel:scale-color($alphacolor,$lightness:70%) !default;
$alphacolorindia:scale-color($alphacolor,$lightness:80%) !default;
$alphacolorjuliet:scale-color($alphacolor,$lightness:90%) !default;
```

##Color application
As you develop your site's CSS, you are encouraged to make use of these abstract color values. In your style guide's [config.scss](http://goo.gl/mi2UC) file there is an array of semantically named color variables using Stipe's abstract color variables as their values like so:

```scss
// default shadow colors
$shadowcolor:                         fade-out($alphagray, 0.5);

// primary header font color
$primaryheadercolor:                 $alphagray;

// primary font color for the app
$primarytext:                         $bravogray;  
```

You are encouraged to update the `config.scss` file values to better suit your site. As new color values are needed, add them to the `config.scss` file. 

There may be times when you will want to simply refer to the abstract color like the following:
```scss
block {
  background: $alphacolorgolf;
}
```

While this is perfectly acceptable, I would encourage you to create a semantically named variable and apply the abstract name as the value in the `config.scss` file. 

##Why the abstraction?
Some may ask, _"Why would you want to make these abstractions versus simply applying the hex value?"_

Even if you are creating a list of semantically names variables, not using this array of abstract values means that you will be applying repeated hex values to all your semantically named variables. Hex values are not names that easily roll off the tongue and can easily become confused.

Using the abstract naming helps to give he color values personality and thus easier to discuss. It is easier to say, "Please use alphacolorcharlie." versus saying, "Please use #8C4747."

Another benefit is that all these abstract variables are gnerated by using Sass' color functions. This keeps all the color editing in one place. Then if at any time that the color palette needs to be updated, simply update the primary color hex values and then all your site's colors are updated in the cascading fashion they were applied. 