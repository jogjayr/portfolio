---
layout: post
category: links
title: 5 Reasons to Improve your Vim Fu
teaser: 
tags: 
---

Yes, it's 2014. No, logically, we shouldn't be using text editors written in the fucking 1970s. I mean, seriously, how many other things made in the 70s are we still using now?

You have to admit though, those bell-bottommed, (often) bearded geniuses made some exceptionally timeless and durable pieces of software. Because there were no funny cat videos on the Web in those days (no Web, and barely an Internet), they mostly read and wrote text. And they made tools that were exceptionally good for writing text.

Vim is something every Mac and Git-using programmer will encounter; at least while typing commit messages. We all know `i`, `:q` and `:w`, and realistically, that's all you need to write commit messages in Vim for the rest of your career. Congratulations, we're done here! You can go. 

Or...read on. Because if you care to get even slightly better at Vim, there are so many rewards.

1) No GUI dependence - Vim, Emacs and other editors from the Unix golden-age (a term I pulled out of my ass), were developed in an era with no (or limited) availability of mice, monitors and so on. The bad - this means using a mouse can be odd (although I hear it's better in Emacs than in Vim). The good - if you get good at Vim-ing, you never need to use a mouse again to manipulate text; and that is a *very good thing* for your speed.

2) Default Editor for Git - Vim is. So if you want to go beyond standard Git stuff like typing commit messages, like re-order and squash your commits using interactive rebase, you can either:
    a) do it slowly and laboriously, using only `i` and `Esc`
    b) (what I do) copy all the commit lines into Sublime, re-order and edit and paste them back in
    c) Become a Vim badass and do it right there

3) Expressiveness - Before Sublime, my editors of choice, in chronological order, were Notepad, Gedit, Notepad++, Aptana and Geany). In front of those, Sublime's multi-cursor selection, snippet support and shortcuts were like Arnold Schwarznegger in *Terminator*: something from the future. So imagine when I got to reading about Vim's capabilities (using `vimtutor`) and was confronted with `d2w`. Delete 2 words and put the cursor at the beginning of the third words. And this was lesson 2. "But what good is that", you might say, "I'm never giving up Sublime, because it has so much that I like". Well...

4) Vintage Mode for Sublime - It's Sublime made better with Vim's abilities. That's like welding Batman's Utility Belt to the best Swiss Army knife in the world.

5) Vim is everywhere - You can't always control your environment. If you SSH to an EC2 instance where you have to modify environment files or code, you can't use Sublime (not without jumping through some hoops). Meanwhile, `vim` is right there, just waiting for you to use it.

Convinced? Here's how to get started:

1. As many people have said, the key to understanding Vim is realizing that there are two modes: a mode where you enter commands, and a mode where you type in text (yes, those are their *actual* names). The advantage of this is you can both type text and do other stuff without having to use too many modifier keys.

2. Use `vimtutor` - Usually comes with Vim on Mac OS X. Run it in the terminal and go through an approximately 30 minute tutorial that takes in  a lot of the basics. Vim basics that is; crazy ways to insert and delete text, undo and redo and so much more.

3. Start up vim (just run `vim`), then type `:help` to see more ways to learn. It has an extensive help section with clickable table of contents, that cover everything in Vim.
