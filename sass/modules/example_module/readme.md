#Build a module
When coding the SCSS of a module consider what is repeatable and what is variable. Leave yourself room for improvement. When creating a mixin consider using arguments so that when the mixin is used you have variations available to you.

A well engineered SCSS module will allow for flexible application to the designated markup block without duplication of CSS styles. If you find yourself over-riding CSS declarations within a selector from what the mixin inserts consider using arguments or using a silent extend. 

Each Sass module folder should contain a `mixins.scss` file and a `extends.scss` file. In `sass/_modules.scss` add your created mixins and extends in the appropriate list.

##Definition a module
A module is a self-contained series of design elements and possibly UI patterns. Regardless of fixed, fluid or responsive experience, the module itself does not have a defined space. It should always take up 100% width and it's height dictated by the content contined within. 

Every module will have an independent Sass file for UI constuction. 

##Know when you are doing it wrong
If you find yourself coding elemental and/or UI patterns within a module, this should be a smell to refactor. 

###Here is a simple example of a reusable module
```scss
@mixin information_panel($col_width: 6, $grid_uom: em) {
  @include grid(12, $grid_padding: 10, $grid_border: 1);
  @include standard_rounded_border;
  padding-top: em(10);
  padding-bottom: em(10);
  &:first-child {
    @include alpha;
  }
  &:last-child {
    @include omega;
  }
  h2 {
    @include panel_header;    
  }
  article {
    padding: em(20) em(10);
    border-bottom: 1px solid $delta_grey; 
    h3 {
      @include medium;
      font-weight: bold;
      margin-bottom: 1em;
    }
    &:last-child {
      border: 0;
    }
  }
  .sub_article_push {
    margin-left: em(10);
  }
}