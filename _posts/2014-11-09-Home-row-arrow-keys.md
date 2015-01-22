---
layout: post
category: links
title: Home row arrow keys
teaser: 
tags: 
---

**UPDATE**

[AJ ONeal](http://blog.coolaj86.com), author of [Desi](http://dear.desi), wrote up [another way to do it](http://blog.coolaj86.com/articles/home-row-arrow-keys-on-os-x-with-karabiner.html). My own way to do it is based on [this blog post](http://msol.io/blog/tech/2014/03/10/work-more-efficiently-on-your-mac-for-developers/).

**..Continued**

I didn't even know it, but I was tired of taking my hands off home row to use the arrow keys. Inspired by [this post](http://duartes.org/gustavo/blog/post/home-row-computing/), I decided to set up my MacBook Pro to use Caps Lock + IJKL instead of arrow keys. Here's how I did it:

1. Download and install [Karabiner](https://pqrs.org/osx/karabiner/) and [Seil](https://pqrs.org/osx/karabiner/seil.html.en). Seil helps you remap the Caps Lock key and Karabiner helps you remap everything else. At this point, I'm unclear why you need two separate apps to do this though
2. Run Seil and remap the Caps Lock key to the Fn key (code 63), as in the screenshot. ![Remapping Caps Lock Key to Fn Key](/assets/img/seil.png "Seil Remapping Caps Lock key")
3. Run Karabiner and open `private.xml` from "Misc & Uninstall". ![Opening private.xml](/assets/img/privatexml.png "Click on Misc & Uninstall and private.xml") Put your desired mappings in `private.xml`. Mine, below, map Fn+IJKL to their respective arrow keys:

        <?xml version="1.0"?>
        <root>
            <item>
                <name>Bind CapsLock + J to left arrow</name>
                <identifier>private.caps_leftarrow</identifier>
                <autogen>
                    __KeyToKey__ 
                    KeyCode::J, ModifierFlag::FN,
                    KeyCode::CURSOR_LEFT
                </autogen>
            </item>
            <item>
                <name>Bind CapsLock + K to down arrow</name>
                <identifier>private.caps_downarrow</identifier>
                <autogen>
                    __KeyToKey__ 
                    KeyCode::K, ModifierFlag::FN,
                    KeyCode::CURSOR_DOWN
                </autogen>
            </item>
            <item>
                <name>Bind CapsLock + L to right arrow</name>
                <identifier>private.caps_rightarrow</identifier>
                <autogen>
                    __KeyToKey__ 
                    KeyCode::L, ModifierFlag::FN,
                    KeyCode::CURSOR_RIGHT
                </autogen>
            </item>
            <item>
                <name>Bind CapsLock + I to up arrow</name>
                <identifier>private.caps_uparrow</identifier>
                <autogen>
                    __KeyToKey__ 
                    KeyCode::I, ModifierFlag::FN,
                    KeyCode::CURSOR_UP
                </autogen>
            </item>
        </root>
4. Click "Reload XML" in "Change Key". Your new mappings should show up in the list. Activate them by clicking on the check box next to them. ![Activate remappings](/assets/img/karabinermappings.png "Activate remappings by checking checkboxes") 

That's it. You can now enjoy greater productivity :-)
