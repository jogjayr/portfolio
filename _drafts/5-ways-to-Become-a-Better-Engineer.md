---
layout: post
category: links
title: 5 Ways to Become a Better Engineer
teaser: 5 things I did in 2013 to level up
tags: 
---

For those of us who love coding and technology, there's nothing quite like the thrill of getting better. There are many great coders out there and they offer a variety of advice for improving. This is what I put into action last year.

##Learn to Type


###Why?
This tip comes from [Steve Yegge](http://steve-yegge.blogspot.com/2008/09/programmings-dirtiest-little-secret.html). Known for his opinionated, wall-of-text, entertaining blog rants, Steve Yegge puts great stock in being able to type well and type fast. Yegge's typing speed is probably the main reason he is able to write his massive blog posts without getting bored or exhausted.

###Implementing it
Before June 2013, I could type all the letters on my keyboard without needing to look down, but I didn't use all my fingers. I was never able to break 55 wpm in typing tests because of this. I had been typing like that since I got my first computer at age 11.

I used Typing Web's excellent online typing tutor software. It starts you off placing the fingers on the home row, typing letters at first, then words and finally sentences. Numbers and punctuation come later.

###The result
It was really hard in the beginning, especially at work (had to work late a few times the first couple of weeks, just to get stuff done), but I kept at it. Seven months later, I am back to my old 55-60 wpm speed, but now I use all my fingers. I'm sure I will get faster. It takes time to break 15 years of habit.


##Learn (a) Lisp


###Why?
This is actually from a number of different sources. [Paul Graham](http://www.paulgraham.com/avg.html) is a big one, since he's probably the most prominently successful (in business terms) Lisp-er out there. There's also [Eric Raymond](http://www.catb.org/esr/faqs/hacker-howto.html), [xkcd](https://xkcd.com/224/) and [Steve Yegge](https://sites.google.com/site/steveyegge2/scheming-is-believing) (again). Every serious Lisp-er has nothing but praise for the language and says it will change the way you think and be almost like a religious experience.

###Implementing it
Lisp isn't as prominent (or relevant) in the industry as in hacker circles/academia. While I fully support learning for its own sake, it still seemed better to learn a Lisp that I might be able to use at a job someday. Clojure, with its practical design outlook and JVM-ness, seemed ideal. It's got real traction. I had seen it action a couple of years ago at grad school, where one of my colleagues used it with Processing to make cool looking sketches.

I actually had previous history with Lisp. Training for new recruits at TCS followed (and as far as I know, still does), the beginner level programming course at MIT, which uses Scheme. At the time, fresh out of college, my previous programming education treated the different styles of programming (functional, object-oriented etc.) the way that old-school Darwinist biologists treated evolution. Every new form was an improvement over the previous, eventually leading to the ideal form: human beings/OOP. Coming from that background, Scheme was a giant WTF. "What imbecile would use functions to act like classes?", I thought, and left it at that. No, the instructors at TCS didn't tell us why we were using Scheme either; I doubt they themselves knew.

The hardest part about getting started with Clojure, was learning the syntax. I started trying to learn in May 2013, but it wasn't till about July or August till I found the right resources. The koan-style problem website [4clojure.com](http://4clojure.com) is perfect for learning the syntax. Another project, [clojure-koans](https://github.com/functional-koans/clojure-koans), and some [essays](http://aphyr.com/posts/306-clojure-from-the-ground-up-state) written by bloggers got me started. In December, I wrote a small [tic-tac-toe](https://github.com/jogjayr/ttt) game in Clojure.

###The result
I love it. I'm still barely a beginner, I don't even fully grasp macros yet (according to Paul Graham, the most powerful feature of Lisp), and it's still amazing. Lisp code looks...beautiful. Concise. Elegant. There's nothing else like it. And now, having been exposed to this style of programming, I find it bleeding over into the way I write JavaScript (currently my main language).

##*Really* understand CS theory

###Why?
I didn't have a great teacher for Automata Theory, in college. I also had a lot going on at the time and slacked off. I got good marks in the exam by last-minute cramming, but I've never understood the whole deal with Turing machines and the rest of that. It felt like something was missing.

###Implementing it
I signed up for the Automata Theory course on Coursera. Did most of the lectures and assignments, except the last couple of weeks.

###The result
This one is a bit of a mixed bag. I definitely understand computer science theory a lot more now. I was lax in doing the proofs in the course, so maybe I didn't get as much out of it as I could have.

##Get to know your tools

###Why?
I've read this in a couple of places too, but really, it's just common sense. If you better learn the tools you use every day and use features that you haven't used before, it can take you less time to do the same work.

###Implementing it
I use many tools. Sublime Text 2 is a major one; I do almost all my typing in it (haven't tried upgrading to ST3 yet). There is a huge ecosystem of plugins and snippets and packages for it. The ones I found most useful: [Emmet](http://emmet.io/), [JSHint](http://www.jshint.com/install/), and [Sidebar](https://github.com/titoBouzout/SideBarEnhancements). I also learned keyboard shortcuts for selecting text in different ways: column select, word select, selection within quotes, within tags and within the current (bracket) scope.

Among the other tools I use: I switched from bash to the [fish shell](http://fishshell.com/). I switched from the default OS X terminal to iTerm. And I also added [Alfred](http://www.alfredapp.com/) to my workflow, to automate my work  (the jury is still out on this one, because I've also become better at shell scripting) and help me look up documentation more quickly.

###The result
Faster work, less RSI, less boredom. Every minute I've spent studying keyboard shortcuts and other features has paid off many times over.

##<a name='git'></a>Get better at Git

###Why?
If you're still using SVN or CVS or other non-distributed source control system, you're a sucker, [according to a very smart person](#git). When I say "Git", I don't mean just Git, but that's the distributed source control system I know best. Git obviously has a lot of momentum, and the sheer power that if offers over SVN makes you an order of magnitude more productive. Branching and merging, doing releases, working with other team members, hunting down bugs, creating clean histories, doing experimental work; everything is easier and faster with Git.

###Implementing it
I have been using Git for personal projects since 2011, but 2013 was the first time I got to use it in the workplace. Working with Git wizards and my team using the [Gitflow](http://nvie.com/posts/a-successful-git-branching-model/) model has contributed a great deal to my understanding of it. I discovered the magical tool that is `git rebase` and how to use it to clean up development histories and make your merges go more smoothly. I learned how [`git bisect`](http://git-scm.com/book/en/Git-Tools-Debugging-with-Git) could save me a lot of manual work in figuring out where a bug was introduced.

###The result
Git is fucking awesome. Even at my advanced beginner level of understanding of the software, I can feel its power, compared to SVN. Creating branches for each feature and fix, code reviews before merges and frequent small commits now all feel like the right way to do write software.
