---
layout: post
title: Backbone View Collection - Part 1
---

I love [Backbone.js](http://backbonejs.org) for many reasons: it's lightweight, small (it's the first open-source library whose code I've actually completely read), super simple to get started with and has a very active community.

Backbone Views leave a bit to be desired because they do very little. As the [documentation](http://backbonejs.org/#View) itself says "Backbone views are almost more convention than they are code". 

One particular pain point I've had is the inability to manage collections of views. There already exist a [number](http://marionettejs.com/) of [solutions](http://chaplinjs.org/) that provide you a nice way to build applications with more structure that what Backbone alone will give you. I decided to write Backbone ViewCollection for 2 reasons:

  1. I wanted to write it myself, to learn how
  2. A Backbone ViewCollection provides a better way of managing Backbone views while still keeping the application pure Backbone

***What should a View Collection Do?***

These are the things I wanted from a View Collection class:

  1. Renders a Backbone Collection into a Backbone View that is composed of further, child views. Each model in the collection corresponds to a child view 
  2. A `render` method that calls `render` on all its child elements
  3. Handles `delegateEvent` and all the other crap associated with it
  4. Manages child view creation and destruction and prevents memory leaks or zombie views
  5. Child views can be anything - as long as they are nodes of the parent view

Here is an example of what such a class would do:

    `var Pokemon = Backbone.Model.extend({});
     var Pokedex = new Backbone.Collection({
     	model: Pokemon;
 	 });
 	 var PokemonView = Backbone.View.extend({
		render: function() {
			//some code to render a Pokemon's info
		}
 	 });
 	 var PokedexView = new Backbone.ViewCollection({
		childView: PokemonView,
		collection: Pokedex
 	 });
 	 //This will create an instance of PokemonView for each model in
 	 //the Pokedex collection and call its render() method
 	 PokedexView.render();`

In the coming blog posts, I will describe how I made my ViewCollection.

