!SLIDE
# Framework vs Library
<blockquote cite="http://www.laputan.org/drc/drc.html">
One important characteristic of a framework is that <strong>the methods defined by the user to tailor the framework will often be called from within the framework itself</strong>, rather than from the user's application code.
<br/><br/>
The framework often plays the role of the main program in coordinating and sequencing application activity.
<br/><br/>
<strong>This inversion of control gives frameworks the power to serve as extensible skeletons</strong>.
<br/><br/>
The methods supplied by the user tailor the generic algorithms defined in the framework for a particular application
</blockquote>
### [http://www.laputan.org/drc/drc.html](http://www.laputan.org/drc/drc.html)

!SLIDE
# Framework vs Library
<blockquote cite="http://www.laputan.org/drc/drc.html">
A framework's application specific behavior is usually defined by adding methods to subclasses of one or more of its classes.
<br/><br/>
<strong>Each method added to a subclass must abide by the internal conventions of its superclasses</strong>.
<br/><br/>
We call these white-box frameworks because their implementation must be understood to use them.
</blockquote>
### [http://www.laputan.org/drc/drc.html](http://www.laputan.org/drc/drc.html)

!SLIDE
# Framework vs Library
<blockquote cite="http://www.laputan.org/drc/drc.html">
<strong>A framework becomes more reusable as the relationship between its parts is defined in terms of a protocol, instead of using inheritance</strong>.
<br/><br/>
In fact, as the design of a system becomes better understood, black-box relationships should replace white-box ones. Black-box relationships are an ideal towards which a system should evolve.
</blockquote>
### [http://www.laputan.org/drc/drc.html](http://www.laputan.org/drc/drc.html)

!SLIDE  incremental
# What is Rack?
* Black box
* protocol (call(env) => [s,h,c])

!SLIDE  incremental
# What is ActiveRecord?
* White box
* inheritance
* understand internal conventions
* (save, find, etc)

!SLIDE  incremental
# What is ActionController?
* White box
* inheritance
* understand internal conventions
* (action definition, filters, etc)

!SLIDE  incremental
# What is Mustache?
* Black box
* protocol (Mustache.render(template, data))
* (Ruby implementation w/ inheritance is white box)
