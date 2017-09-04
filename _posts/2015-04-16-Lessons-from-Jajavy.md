---
layout: post
category: links
title: Lessons from Jajavy
teaser: 
tags: 
---

This year, I filed the final tax return for my now-dead company: Jajavy LLC. It was a good time to reflect on everything that I learned from the experience.

###History

The idea for Jajavy came to me in January 2011. [Groupon](http://groupon.com) was the hot new thing at the time; they even had a Superbowl ad, which was my inspiration. My idea was essentially a way for merchants to give out referral bonuses to their customers via the trusty old "punchcard". If you made the punchcard, traditionally redeemed for a free beverage after 10 visits, digital, it could be shared with friends on Facebook and Twitter. If your friends then visited the same merchant, you got a small cashback if you and all your friends (and their friends) filled up the punchcard.

###Work Starts

I managed to convince a co-founder (who shall remain un-named till he reads and approves this blog post) to join me on this (mis)adventure. We named the company Jajavy, LLC, after a type of tree that grows in Madagascar. Coding started June 2011.

###What we did

We made two products: Kanjus, the punchcard idea named after the Hindi word for cheap, and Corporate Web Identity Package, the ingenious brainchild of my co-founder. CWIP was a set of Selenium scripts that automated the signup process for a bunch of different social media sites. Why? Because when a small business starts up, the owner farms out the social media stuff to their 15-year old niece or nephew. Who might do an incomplete job. Or lose passwords. No more, thanks to CWIP.

###Work Ends

By April 2012, work on Jajavy, LLC had stopped. In all, it took about 10 months from glorious optimism to "give-up-ness". What happened?

###Lessons Learned

1. *Two-sided markets are hard* - Our product required us to market and sell to two different groups of people: merchants, and customers of those merchants. Too few customers and merchants wouldn't see value in signing up with us, too few merchants and customers would forget about our app soon. A product where you're an intermediary is therefore incredibly hard. It's far easier when you both make it and sell. How we'd solve this chicken-egg problem was the most common question we heard at angel investor pitches.
2. *Attack 2-sided markets with energy* - If you do have the misfortune of being driven by an idea that's a 2-sided market, it helps to be a high-energy, hustling personality. You need to talk to as many potential users as possible, pitch your idea over and over, do impromptu demos and other [things that don't scale](http://paulgraham.com/ds.html). I don't think we ever sold in this fashion; our attitude was always more "We need to get one more thing right, and then..."
3. *Build an MVP and release fast* - This is the basic lesson that's hammered into every single person who starts a company. We knew it; we said it; we just didn't do it. Version 1 took 6 months to build. See the next lesson for more details. It wasn't well-received; we signed up 3 merchants and less than 50 users. We don't really know why it wasn't well-received because...see point 5
4. *Don't reinvent anything* - Obviously an exaggeration. If the technology that you're building is the key differentiator between you and the competition, then "reinventing" is exactly what you're supposed to do. If you're building a service that's technically well-understood, you should not build your own PHP ORM or MVC library. You should certainly never write your own JavaScript framework. We did all those things. You don't have time for that. Any time spent on doing anything that's not directly customer-related is a waste. Could we have released version one faster than 6 months if we hadn't spent all that time on things that turned out to not matter?
5. *Measure everything* - Again, one of those adages that we knew and never did anything about. Sure we put Google Analytics on our pages. But we never tracked anything that was useful. How many conversions did we have? What point of the signup process did people drop out at? No idea. None. It's doubly important when you spend so long on a first release.
6. *People will try to take advantage of you* - We went to networking events and pitches. There were a couple that charged money to pitch; a practice that I'm torn over. Most people we met were nice and helpful. Mad props to Devon Wijesinghe, for instance, for taking the time to talk to us and giving much useful advice. Others are less scrupulous. We fielded more than one sales pitch that started out as "We have this other thing, we can help you, let's be partners". I know better now, but I was incredibly naive then.
7. *Have a life* - When I started working on the company, most of my friends had graduated grad school and left town. My co-founder was admirably shouldering both grad school and company work. When you start a company, you are responsible for its success or failure. I felt like I had to work all the time. It was too intense; the pressure, the social isolation, the feeling of not having achieved enough.


###Conclusion

It's easy to look back at mistakes made 3 years ago and laugh at myself. I knew most of these things back then, but yet somehow, didn't _know_ them. These lessons are burned deep into me now.
