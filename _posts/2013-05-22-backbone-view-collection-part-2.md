---
layout: post
title: Backbone View Collection - Part 2
---

In [part 1] of this series, I explained what I wanted from a Backbone View Collection. The first and foremost thing was a common render method:

    Backbone.ViewCollection = Backbone.View.extend({
    	childViews: [],
		render: function() {

			//The Backbone view class passed in that is 
			//used to generate child views
			var ItemViewClass = this.options.ItemView || Backbone.View;

			var me = this;
			_(me.collection).each(function(model, index, collection) {

				//for every model in the collection, create a new view
				var new_item_view = new ItemViewClass({model: model});

				//add it to the list of child views the collection holds
				me.childViews.push(new_item_view);

				//also add it to the view collection's own HTML element
				me.$el.append(new_item_view.$el);
			});
		}
	});

This approach carries a couple of issues. The first one I faced was actually quite silly; setting `childViews` to an empty array in the class definition results in __every__ instance of that class pointing to the same array. This is quite disastrous; all the child items of every instance of ViewCollection are added to the same array. We have to fix this, and it's quite simple:

    Backbone.ViewCollection = Backbone.View.extend({
		render: function() {
			//all the stuff we wrote above...
		},
		initialize: function() {
			//this ensures every instance of ViewCollection has a fresh array of childViews
			this.childViews = [];
		}
	});

There's also another problem, and it has to do with how we pass `ItemView` to ViewCollection. If we were to create a new ViewCollection like so:

    var PokedexView = new Backbone.ViewCollection({
    	collection: Pokedex,
    	ItemView: PokemonView 
	});

then the line:

    var ItemViewClass = this.options.ItemView || Backbone.View;

works perfectly. The `options` attribute of a Backbone view is composed of the object you pass into the constructor. But what if you don't call the constructor directly? Consider the following:

    var PokedexView = Backbone.ViewCollection.extend({
    	collection: Pokedex
	});
    //a specific type of Pokedex that uses a grid layout
	var PokemonGridItemView = Backbone.View.extend({});
    var PokedexGridView = PokedexView.extend({
		ItemView: PokemonGridItemView
	});

Now, `this.options.ItemView` is `undefined`. This does not bode well for being able to build complex class hierarchies with ViewCollection, so we have to modify what we wrote just a little bit:
    
    //Either `this` is an instance of ViewCollection, in which case ItemView is an `option`
    //or `this` is an instance of a another type derived from ViewCollection
    //or use the plain-old Backbone.View class
    var ItemViewClass = this.options.ItemView || this.ItemView || Backbone.View;

Same thing applies for collection. So

    _(me.collection).each(...)

won't work every time.

Having learned all this, here's ViewCollection now:

    Backbone.ViewCollection = Backbone.View.extend({
		render: function() {

			//The Backbone view class passed in that is 
			//used to generate child views
			var ItemViewClass = this.options.ItemView || this.ItemView || Backbone.View;
			var collection = this.options.collection || this.collection;
			var me = this;
			_(collection).each(function(model, index, collection) {

				//for every model in the collection, create a new view
				var new_item_view = new ItemViewClass({model: model});

				//add it to the list of child views the collection holds
				me.childViews.push(new_item_view);

				//also add it to the view collection's own HTML element
				me.$el.append(new_item_view.$el);
			});
		},
		initialize: function() {
			this.childViews = [];
		}
	});

To be continued...
