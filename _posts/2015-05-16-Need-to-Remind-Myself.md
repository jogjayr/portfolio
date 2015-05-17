---
layout: post
category: links
title: I Need to Remind Myself Sometimes
teaser: 
tags: 
---

> 'Well, hurry up, I can't breathe!' Harry gasped, wrestling it as it curled around his chest.

> 'Devil's Snare, Devil's Snare... what did Professor Sprout say? - it likes the dark and the damp -' 

> 'So light a fire!' Harry choked.

> 'Yes- of course- but there's no wood!' Hermione cried, wringing her hands.

> 'HAVE YOU GONE MAD?' Ron bellowed. 'ARE YOU A WITCH OR NOT?' 

> \- _Harry Potter and the Chamber of Secrets_


That I'm an engineer. Sometimes I forget that I know more than most people about computers. No, this isn't a story of how I wonder in amazement how laypeople can't "do the simplest things with computers". Quite the opposite.

I've started dusting off my personal laptop again. For a long time, I've been playing with little bits and pieces of code on my work laptop, mostly because I didn't care about ownership issues. But now I'm starting up a project that I might come to care about, so I need my personal laptop development-ready.

It had gathered a little dust, metaphorically speaking. No `git` installed; Homebrew _and_ Macports (what was I thinking?), no Seil or Karabiner for [Home Row Arrow Keys](/Home-row-arrow-keys/). And of course, Citrix Receiver installed and in the top bar on startup. Wait, what? When did this happen?

 ![Citrix Receiver in top bar](/assets/img/topbar.png "Citrix receiver icon in top bar")

Looked for "Citrix" in Spotlight, looked for it in "System Preferences -> Accounts -> Startup Items". Nada. Where is this danged thing?

"Uninstall Citrix Receiver Mac" -> Google. That gave me an uninstaller application from Citrix. What the hell, it's Saturday morning. Who needs a brain? Let's just run the "uninstaller", like a Windows-using schmuck. But I restart and there's the little icon staring at me again, smugly.

 ![Citrix Receiver in top bar](/assets/img/topbar.png "Citrix receiver icon in top bar")

What now? Was I doomed to seeing this thing forever? Would I have to reset my Mac to factory settings? This things's 7 years old; that would surely be the deathblow.

Almost at ["give-up-ness"](/Lessons-from-Jajavy/), I was reminded of one of my favorite quotes from _Harry Potter and the Chamber of Secrets_.

Of course I have other options!

    ps -ef | grep citrix

Nothing. *Scratches chin*

    ps -ef

I don't see anything named "Citrix". Until...

![Citrix Receiver in ps -ef output](/assets/img/psoutput.png "Citrix receiver in ps -ef output")

Triumph! I know where the binary is! I can kill the process too! Only to have it come back, like an Inferi.

![Citrix Receiver in still lives](/assets/img/stilllives.png "Citrix receiver still lives")

Who is doing this? The `ppid` says it's `launchd`. Mystery solved. `launchd`'s daemons live in various places. Per the man page:

    ~/Library/LaunchAgents         Per-user agents provided by the user.
    /Library/LaunchAgents          Per-user agents provided by the administrator.
    /Library/LaunchDaemons         System-wide daemons provided by the administrator.
    /System/Library/LaunchAgents   Per-user agents provided by Mac OS X.
    /System/Library/LaunchDaemons  System-wide daemons provided by Mac OS X.

Conclusion: I need to challenge my brain more.
