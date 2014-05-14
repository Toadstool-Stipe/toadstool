#Welcome to Toadstool
![toadstool logo](https://raw.github.com/toadstool-stipe/toadstool/master/public/images/toadstool-logo.png "toadstool - put that in your styleguide")

	VERSION 0.1.0 / STIPE gem dependency 0.0.5.7.7

Toadstool is a Style Guide framework. Concepts are simple, build in the abstract and apply to the semantic.

##Run the app
Toadstool is a Sinatra rack app. Simply clone the app into a new directory, `bundle install` and then `rake server`

To simulate "production" mode run `rake server production`. This task will compile your Sass with the compressed output style and closely simulates Heroku's environment. We use this mode to perform final QA prior to deployment to Heroku.

##Sass / Compass
Processing your Sass to CSS can happen a few ways.

By default, Toadstool is set up to compile Sass once via the following Rakefile command. This is the most efficient way to do it and ensures that a static version of Sass is made available in production.
```ruby
desc "Compile the app's Sass"
task "assets:precompile" do
  system("bundle exec compass compile")
end
```
This task automatically invokes when you run `rake server`; there should be no need to run it manually.

###Toadstool and Sass
Toadstool style guide framework makes heavy use of Sass as it's primary styling language [read more ...](http://goo.gl/72YhA)

###Developing Sass
Be sure to run `compass watch` process in the background. This really is the best way to process edited Sass. In the terminal it will be easy to see the Sass error log if there are issues.

###Running Sass in memory
If you want run process Sass in memory, [uncomment these lines](http://goo.gl/HAKNR). Then comment out [this rake task](http://goo.gl/bvzEx).

*Note:* Running Sass in memory will not generate actual CSS files. If you have CSS files in public/stylesheets, those will be served instead. If you edit your Sass, but don't see your changes in the browser, delete any CSS files in public/stylesheets.

Running Sass in memory can also be quite slow, especially as your Sass library grows in size and complexity.

###Production Sass
By default your Sass will be run in [debug mode](http://goo.gl/a0UKV). By simply [changing your output](http://goo.gl/VN7g7) to `compressed`, this will over-ride the debugging and compress all your CSS for production.

###Glob-based import support
A great feature, supported in Rails 3.1+ projects, is the ability to import files like so `@import "directory/*";`. In order to bring this capibility to other projects Toadstool requires the `sass-globbing` gem.

If you are using this in a Rails 3.1+ project, the gem is not required.

##What is a Style Guide Framework?
While bootstrap frameworks are all the rage, I feel that there are some things that they do very well and then some things that they do very poorly. They give a team/developer a quick spring board to get a new app up and running. For a team/developer that is light on UI skillz, that is a good thing. But I have heard time and time again, from one developer to the next, that as the app continues to mature this 'bootstrap' UI is now a burden to bear.

After all, it is a 'bootstrap' framework, not a 'production' framework. This is where Toadstool comes in, a real life production framework; a framework, a guideline, a process to make really awesome production ready code.

##Stipe
The [Stipe](https://github.com/Anotheruiguy/stipe) gem is a core element of the Toadstool style guide framework. A collection of commonly used Mixins and a growing number of easily useable silent placeholder classes to make development quicker, easier and more flexible. [Stipe](https://github.com/Anotheruiguy/stipe) and Toadstool, when used correctly, can quickly become the foundational framework for all your development projects. Making it more accessible to new developers on your teams and ensures that returning to a legacy project is not a daunting task of relearning the UI code.

##Toadstool is more, it's a process
In the countless projects I have been involved in, the one constant is the lack of abstraction between the design element, HTML and CSS for the widget and view.

Toadstool aims to give structure to the styleguide development process.

##Don't go chasing waterfalls
In the old waterfall days, it was common to think a project's problems all the way through. Specification documents and comps that encompassed almost the entire project before line one of code was ever written was the expectation. Oh, those were the days.

For developers, It was easier to see the future and write patterned code, but the cost was too great. All the planning up front was time consuming. When developers began to lay patterns out in their code, based on those assumptions, changes down the road were much harder to manage. Not to mention expenses and opportunities for broken code were too high. Anyone remember writing tests in those days?

With modern agile practices, the idea is not to solve the problem until it is an official problem. Sure, we can speculate, but the idea is not to execute until it is appropriate. So, what does that mean for designers and developers? For developers, that is pretty easy to answer, don't develop that feature until it is time. However, for designers, this has been a harder problem to solve. After all, the designers' role has traditionally been to be those who think ahead. Developers have looked up to them, to be ready when the time comes.

##Designers get agile, the comp has failed you
Up until now, the designers' deliverable has been, and in most cases continues to be, the comp. While most of the development world has moved on from waterfall, I see time and time again designers holding onto these same processes. Given a project, I have seen design teams go overboard in trying to solve problems that don't exist yet. This leads them down a path of no return having thought so deep into solving a problem that the attachment to a solution became too great. When the time comes, when there needs to be adjustments to the solution to fit the changing needs of the business, 'turning the boat' comes with great cost and is usually met with frustrations, if not flat out resistance.

Getting agile with code prototypes fills the gap where the comp fails. All too often when composing the comp, the designer feels the need to design the whole experience of a single view. This means a lot of time in Photoshop and duplicating screens again and again just to adjust subtle nuances. This means changing the design comes at to great a cost. Too often the designers become obsessed with minor pixel adjustments that take time, work and endless review cycles, all for what? When we go from picture to code, we will be using `em` or `%` as our values. In a device driven world, these pixel measurements are abstracted to relationships and will adjust based on the viewport of the device.

Version control is another issue of great frustration. Many times the 'comp' from the designer will go through other experimental iterations that may accidentally get incorporated into a design delivered to a developer. This is a classic case of a 'signal vs noise' issue. A developer will typically pick up on these inconsistent nuances and make the changes to the layout of the view. This simple issue commonly leads to unnecessary work and frustrations.

Another common versioning issue, there may be changes in the view that are not appropriately managed in the next series of comps that are coming down the line. In the waterfall comp design process, many of the screens are created ahead of time and as the project progresses, things change. It is both time consuming and expensive to go back and update all of the comps with changes that to the UI that occurred since that view was designed. Again, we find ourselves measuring final deliverables against an imperfect measuring stick that leads to confusion and frustration.

What if we were to bite this off into smaller chunks? What if at fist we were to only decide things such as color pallete, typography, forms and buttons? This is pretty cool and most will agree that this is a process that most designers go through. The breakdown is how to document these choices. Historically designers did this with the comp. Today I say do it with a style guide.

##Element, module, view
The process is simple, the ideas are basic and the process is tried and true. Toadstool is set up to support some basic concepts that help you build a solid UI foundation that will allow for greater team integration, promote quality code reuse and build solid consistency in your app.  [Clean out your Sass Junk-Drawer](http://gist.io/4436524) is a post written that best details this process and Toadstool's file structure.

