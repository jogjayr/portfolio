---
layout: post
title: Backbone View Collection - Part 3
---

In this series of posts on how I wrote a collection class for Backbone views, I covered the objectives of the enterprise in [part 1](http://jayraj.net/blog/2013/05/19/backbone-view-collection-part-1). In [part 2](http://jayraj.net/blog/2013/05/19/backbone-view-collection-part-2) the Backbone ViewCollection accomplished its first goal: create a lot of child views of a specified type, off of a collection passed to it.

This post will discuss how I event handling works with so many child views. I saw numerous blog posts and StackOverflow questions related to event binding when `empty` is called on a jQuery object. For me, the most important bit of knowledge was that when you do the following [JSFiddle](http://jsfiddle.net/jogjayr/3QfLc/1/):

    var $child_el = $("#my_div").on("click", function() {
        console.log("clicked me");
    })
    $("#parent_elem").html($child_el); //Clicking on the child will do nothing

The CHILD VIEW'S EVENTS ARE LOST! I suppose this is general knowledge among those familiar with the DOM's secrets, but it was a revelation to me.

Second revelation (in fact, as I started writing this blog post), is that the child views' events actually need to delegate to the parent. Previously, I used to do the following:

    var Backbone.ViewCollection = Backbone.View.extend({
		//other View Collection methods here

		//delegateEvents not only re-attaches the collections's events
		//it also re-attaches childEvents without calling them individually
		delegateEvents: function() {
			Backbone.View.prototype.delegateEvents.call(this);
			_(this.childViews).each(function(view, index, childViews) {
				view.delegateEvents();
			});
		}
	});

Thanks to [this blog post](http://lostechies.com/derickbailey/2011/10/11/backbone-js-getting-the-model-for-a-clicked-element/) by the inestimable Derick Bailey of KendoUI and MarionetteJS fame, I have realized that this my existing approach is COMPLETELY MORONIC. I will have to go back to the projects that inspired this library and fix it, but I will do it first here.

The reason it's so stupid is because when you attach an event to each individual child event:

1. Your application uses a lot more memory. Each event listener is extra overhead.
2. The clue was in the method name `delegateEvent`. I should be using the time-tested [event delegation pattern](http://davidwalsh.name/event-delegate)



