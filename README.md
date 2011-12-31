Princess Anne Automotive Center
===============================

This website was developed in Ruby on Rails. Hopefully, you don't need to know much about [Rails](http://http://rubyonrails.org/) or [Ruby](http://www.ruby-lang.org/en/) to make use of it, you'll probably want to know at least a little Ruby and a bit about MVC architectures and the basics of building a  web app. Fortunately, Rails handles most of the hard stuff for us.

Sitemap
--------

Home -> About
        Services -> Services[1]...[*x*] 
        Promotions
        Contact


Layout
------

The main website "layout" is located in "apps/views/layouts/applicational.html.erb". This is the "wrapper" of the website. It includes the header, navigation and footer. It does *not* include sidebars in its current form, though I will likely build a secondary sidebar layout for this purpose at some point. If I forget to update the documentation, sorry. Hopefully you will be able to figure it out. 

The layout (and the website in general) is build in a manner somewhat consistent with the Responsive Web Design methodology. This allows us to scale the design to various browser widths(you'll notice that the website looks different on mobile, but that there is only one stylesheet - this is how I managed it). 

Home
----

The home page right now consists of an image gallery, an intro paragraph, our location, hours and our Facebook page's news feed. This page has some RWD features beyond what is contained in the main layout. Specifically, at certain browser widths, the site switches between a one column layout and a two-column layout. Additionally, the image gallery, which is powered by FlexSlider.js, is hidden from mobile viewers. 

Services
--------

This page features an intro paragraph and a dynamically generated list of types of services we offer. Each item in the list links to a subpage. I'll get more in depth with this later.

Promotions
----------

Has coupons and stuff.

Contact
-------

Form powered by someone else; forgot who. Forwards emails directly to Rick Proffitt's email at rick@princessanneauto.com




