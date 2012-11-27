#Toadstool config

Please read the following information as how to use Toadstool's configurations

## CSS Reset
Toadstool is designed to support any CSS rest you prefer. Resets installed are Toadstool reset, HTML5 reset, Eric Meyer's reset and Nicolas Gallagher's Normalize. And of course, Compass' reset is supported as well. 

All resets are written in Sass and configuration is as simple as uncommenting the preferred reset in the ``config_files/_reset.scss`` directory. In any of the reset files, any hardcoded pixel values are being converted to ems and all hex colors have of course been replaced with Toadstool's variables. Activation of any reset will inherit color values as dictated by the ``_config.scss`` file. 

###Toadstool reset
Toadstool's reset is a slight modification on the HTML5 reset. All of the font styling features of this reset have been moved to the ``_text.scss`` file.

###HTML5 reset and Normalize
To the same effect that all styling in Toadstool's reset have been moved to more appropriate locations in the framework, same has been done with the installation of HTML5 reset and Normalize. 

###'My Reset'
You have your own preferences for reset, that's cool. In the ``sass`` directory there is a placeholder ``_myreset.scss`` that is all yours to use. Simply uncomment the import listing in ``config_files/_reset.scss`` and profit.

