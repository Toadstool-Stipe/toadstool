#What is Toadstool?

While CSS frameworks are in increasing abound, one thing that is consistently missing is a good styleguide solution. While it appears that styleguides are an interesting topic and almost everyone agrees that styleguides are the way to go, all the energy for development is going onto yet another version of a UI framework.  

Toadstool aims to bring a little sanity to an insane world. Built in Sanatra, using Sass and Compass, Toadstool in it's core is a styleguide templating solution. 

##Toadstool is a process
In the countless projects I have been involved in, one constant is the lack of abstraction between the design element, HTML and CSS for the widget and the view. 

Toadstool aims to give structure to the styleguide development process.

##Don’t go chasing waterfalls 
In the old waterfall days, it was common to think a project’s problems all the way through. Specification documents and comps that encompassed almost the entire project before line one of code was ever written was the expectation. Oh, those were the days. 

For developers, It was easier for them to see the future and write patterned code, but the expense was to great. All the upfront planning was very time consuming and when developers began to layout patterns in their code based on those assumptions, changes down the road were much harder to manage. Not to mention expensive and opportunities for broken code were to high. Anyone remember writing tests in those days?

In agile the idea is to not solve the problem until it is an official problem. Sure we can speculate, but the idea is to not execute until it is appropriate. So, what does that mean for designers and developers? For developers that is pretty easy to answer, don't develop that feature until it is time. But for designers, this has been a harder problem to solve. After all, the designer’s role has traditionally been to be the ones who think ahead. Developers have looked to them to be ready when the time comes. 

##Designers, get agile or The Failure of the Comp
Up till now the designer’s deliverable has been and in most cases continues to be the comp. While most of the development world has moved on from waterfall, I see time and time again designers holding onto the same processes. Given a project I have seen design teams go overboard in trying to solve problems that don't yet exist. This leads them down a path of no return having thought so deep into solving a particulate problem and the attachment to a solution becomes to great. When the times comes that there needs to be adjustments to the solution to fit the changing needs of the business, ’turning the boat’ comes with great costs and is usually meet with frustrations, if not full out resistance. 

Getting agile fills the gap where the comp fails. All to often when composing the comp, the designer feels the need to design the whole experience of a single view. This means a lot of time in photoshop and duplicating screens again and again to adjust subtle nuances. This means making changes comes at to great a cost. 

What if we were to bite this off into smaller chunks? What if at fist we we're to only decide things like color pallet, typography, forms and buttons? This is pretty cool and most will agree that this is a process that most designers go through. The breakdown is how to document these choices. Historically designers did this with the comp. Today I say do it with a styleguide. 

##The comp is D.O.A.
To me, the delivery of a comp is a ’dead on arrival’ document. The first thing I am going to do is convert this to code and it's lifecycle will exist in code. The customers of our site will never see the comp. So why do we treat it as the defacto standard from which all our site’s views will be measured?

The fact of the matter is, in today’s landscape of devices that are consuming content, this process is flawed in more ways one. As designers and developers we need to be living in the medium is which our product will ship. This means documenting our user’s experience in a format that is abstracted from the actual product, but is representational of the environment from which the user will interact. My answer, styleguide. 

##Abstraction is the key
Since the very early days of CSS it has been prophesied that you could develop a site and redesign it with only CSS. And then there are those who would say that this is a myth, a holy grail that is impossible to achieve. I say, bollocks. 

A trap that developers fall into time and time again is that they write the code to fit the UI. There is zero abstraction between content, markup and then design. It is this error in development that causes developers and designers to state that a redesign will always demand that we re-engineer the markup.

While I will agree that we have not always had the tools at our ready to achieve the holy grail of goals, but that doesn't mean that we throw our hand up in the air either and surrender. We must persevere and persist. We must create the tools we are lacking. 

A goal of Toadstool’s styleguide is to provide a framework so that UI elements are created in an environment that is completely abstract from the actual application. As stated above, developers many times fall into trap of developing a UI element to specific to a view and customized to the content they are given. When I hear a developer say, ”If you change the copy the UI will break”, that really tells me that they are doing it wrong. 

Good UI developers will tell you that when they begin writing code they are looking at the structure of the UI element. From there it is a series of decisions on what markup to use that best represents the layout and the content within. Then we need to provide hooks for your CSS to apply the look and our JavaScript to apply experience. 