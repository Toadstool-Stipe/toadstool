#Build a module

One of the core concepts of Toadstool is the law of abstraction. The Achilles heel of UI dev is the lack of abstraction of code from the visual application. We have been trained over the years that content and UI has a single application and any re-work will require editing of the markup. But the latest techniques and technologies have shown us otherwise. 

##Definition a module
A module is a single UI element that serves the purpose of either delivering content and/or interaction. A module is a self-contained series of design elements and possibly UI patterns. Regardless of fixed, fluid or responsive experience, the module itself does not have a defined space. It should always take up 100% width and it's height dictated by the content contined within. 

When developers subscribe to this enginering method, then the application of modual to a view should never require any additional coding. The structure of the view will dictate placement via a grid system.  

##Know when you are doing it wrong
If you find yourself coding elemental and/or UI patterns within a module, this should be a smell to refactor. 

###Here is a simple example of a reusable module
```html
<article class="information_panels">
  <h2>Salvia high life sartorial</h2>
  <div>
    <h3>Quinoa echo park salvia high life sartorial</h3>
    <p>Skateboard tattooed cliche 8-bit banh mi blog biodiesel, freegan locavore vice 
    wayfarers salvia keytar yr. Mustache iphone mixtape, cliche keytar vegan blog etsy 
    beard retro banh mi letterpress next level echo park.</p>
  </div>
  <div>
    <h3>Quinoa echo park salvia high life sartorial</h3>
    <p>Skateboard tattooed cliche 8-bit banh mi blog biodiesel, freegan locavore vice 
    wayfarers salvia keytar yr. Mustache iphone mixtape, cliche keytar vegan blog etsy 
    beard retro banh mi letterpress next level echo park.</p>
  </div>
</article>