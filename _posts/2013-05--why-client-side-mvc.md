---
layout: post
category: knowledge
title: Why Client-side MVC?
---

Client-side MVC (Model-View-Controller) for Web applications is becoming ever more popular. There's a great deal of diversity in this ecosystem: Backbone.js, Spine.js, Javascript MVC, Ext JS (and it's excellent cousin for mobile web, Sencha Touch 2). But why have an MVC paradigm on the client-side?

I was asked this question in a job interview, and realized it was worth writing about in a full-length post (and I'm going to include a diagram! Fun!). To be sure, MVC isn't the only pattern that can be used. Addy Osmani has written an [excellent blog post] about the Model-View-ViewModel and I'm definitely going to try it out. 

But on to MVC. A well-understood and long-established pattern on the server-side, an MVC framework greatly simplifies writing back-end logic. It's possible to understand client-side MVC when viewed through the prism of server-side MVC. In both cases, all the parts perform the same roles.

The Model - At an abstract level, a model is two things: a calculator and a means to write to a disk. On the server, this means the ever-popular "business logic", is contained in the models. Popular server-side frameworks use the ORM technique, mapping a scripting language class to a database table (I'm not talking about NoSQL databases here). Calling a "save" or "write" method on an object of such a class causes a database create or update query to run, writing these changes to disk.

On the client-side, the likes of Backbone.js and Sencha Touch provide a route to a disk write via an AJAX call. The instances of the model (represented by a Javascript class) on the client-side try to keep this object in sync with the backend by using methods named "load", "store" etc. (obviously the names vary across frameworks). The point is, the model can perform any checks, calculations and whatever else you need, and then write the changes back, or read in new data. It's basically a disk write adapter, only now, it's over the Internet (instead of a simple local database query)

The View - No matter what end we're at, the view is responsible for output. Output implies markup or data. The job of the view is to render model data in a way that makes sense to whoever is receiving the output. On the server, the "receiver" is the web browser's HTTP request i.e. whatever the view produces is sent in response to an HTTP request. This means that a server-side view can return not just markup but also structured data, plain text and images; practically anything under the sun that is data. The same doesn't necessarily hold true for client-side views. Here the "receiver" is eventually going to be the end-user; client-side views are expected to be rendered in the browser so the user can see the result. So JSON may be valid in certain cases, but not always. 

The Controller - The view does "output", and the controller does "input". For the server, this usually means handling HTTP requests, and providing views for "routes", predefined URLs. The client-side controller does the same thing, but accepts user "requests" in the form of interactions with the interface: clicks, data entry, swipes, scrolls and so on. Client-side controllers can also have predefined "routes" to access views. This is useful for accessing the application at