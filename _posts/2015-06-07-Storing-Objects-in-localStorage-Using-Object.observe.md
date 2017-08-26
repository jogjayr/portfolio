---
layout: post
category: links
title: Storing Objects in localStorage Using Object.observe
teaser: 
tags: 
---

I've been working on a [project](https://github.com/jogjayr/productivity) recently where I needed to store objects in `localStorage`.

`localStorage` can store key-value pairs in the browser's local store, segmented by domain name. The catch is that the values can only be strings, or other primitive types, that are coerced to strings.

Storing objects is handy. The straightforward way to do this is:

    var obj = {
        x: 5,
        y: 7
    };
    //to store obj
    localStorage.setItem('obj', JSON.stringify(obj));
    
    //to retrieve obj
    JSON.parse(localStorage.getItem('obj'));

Since I am working in [AngularJS](https://angularjs.org), the obvious thing to do was make a `LocalStorage` service with the methods `getObject` and `setObject`. And this is what I did.

    MyApp.service('LocalStorage', function() {
        this.setObject = function(key, obj) {
            localStorage.setItem(key, JSON.stringify(obj));
        };
    
        //
        this.getObject = function(key) {
            var obj = localStorage.getItem(key);
            if (obj) {
                return JSON.parse(obj);
            }
            return false;
        };
    });

But this leads to an obvious problem. There's no way to cleanly update `localStorage` once you've updated an object gotten using `LocalStorage.getObject`. I had a lot of code that looked like this:

    var objToBeModified = LocalStorage.getObject('somekey');
    objToBeModified.keyToChange = 20;
    LocalStorage.setObject('somekey', objToBeModified);

Simple solution: instead of just returning a `JSON.parse`-d object from `localStorage`, attach an event listener to it to listen for changes, and automatically call `setObject`. Which led to this

    MyApp.service('LocalStorage', function() {
        //.getObject and .setObject are already defined
        this.getSyncedObject = function(key) {
            var obj = this.getObject(key);
            var self = this;
            obj = obj || {};
    
            Object.observe(obj, function() {
                self.setObject(key, obj);
            });
            return obj;
            
        };
    });

This works beautifully. 

    var objToBeModified = LocalStorage.getSyncedObject('somekey');
    objToBeModified.a = 5;
    objToBeModified.b = 7;
    //I can make as many changes as I want and it's all handled

Except...what if I store an array of objects? `Object.observe` is only one level deep. That's my plan scuppered then. There's really only two options:

1. Turn every object in the value returned by `getSyncedObject` into a synced object by recursively attaching an  `Object.observe` event listener on it. Who knows what that'll do for performance though?
2. Use another method to alert the service that an object in the array has changed. That's really no better than using `setObject`.

This is where I stop. I don't know the right answer yet. But I'll figure it out.

EDIT: I did figure it out. This stuff is mostly wrong. I should have just used Angular's digest cycle to watch for changes instead of using `Object.observe` directly.
