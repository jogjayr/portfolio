---
layout: post
category: links
title: Getting Started with Clojure Unit Testing
teaser: 
tags: 
---

Clojure comes built-in with a basic testing library: `clojure.test`. When you scaffold a project using Leiningen, a `test` directory is created.

####Writing tests

A scaffolded project contains a single test, shown below:

    ;; Default test created by Leiningen
    (ns yourproject.core-test
    (:require [clojure.test :refer :all]
              [yourproject.core :refer :all]))
    
    (deftest a-test
      (testing "FIXME, I fail."
        (is (= 0 1))))

The first couple of lines define the test namespace and include `clojure.test` and the module from `yourproject` that is being tested.

`deftest` is a macro that defines a test function. That's about as much as I've understood about how it does what it does (because I don't understand macros very well). 

`testing` creates a context for your tests, kind of like a `let` binding. You specify a string that describes the test and a list of assertions. I've only used an `is` assertion so far.

####Running tests

`lein test` will run your tests. If you have a large suite of tests that take a long time to run, you can instead do `lein retest`, which only runs the tests that failed on the last run.

####Lessons from writing unit tests for Clojure Tictactoe

In December of last year, I wrote a [small Tictactoe engine](https://github.com/jogjayr/ttt). I decided to embrace unit testing, partly because it is such a time-saver. My tictactoe game is command-line driven and I wanted to separate the logic from the actual UI. This is perfect for writing a bunch of unit tests. I learned the following:

1. Unit tests are a time-saver - Already mentioned before, but still worth mentioning again. The typical programming cycle is: 1) code 2) run and type in inputs (usually) 3) find a bug 4) fix bug; go to (2). When you take the time to write unit tests once though, there's no "typing in inputs" in step 2. Ever. Again. That's a HUGE time-saver.
2. You can refactor fearlessly - Another one of those "No shit, Sherlock" statements of blinding obviousness. But as a relative latecomer to writing unit tests (I'd been employed as a software professional in a full-time or part-time capacity for going on 5 years by the time I got the unit-testing religion), this just blows my mind. You can actually change your code and FIND OUT IF YOU BROKE IT ACCIDENTALLY!
3. Write small functions that do one thing - I might as well be reading off a list titled "Good ideas when programming", by now but there's nothing like doing a project that teaches you all these things at once. I started off writing a function that, given input from the user, validates it and adds it to the global gameboard state, and then calculates the next move and returns the global gameboard. Completely unnecessary and it made my unit tests too complex. When I broke that shit up into different functions and stopped modifying global state in the function that does the computation (the next lesson), everything became a lot simpler
4. Don't modify state willy-nilly - Clojure emphasizes immutability for a reason; it makes for more bug-free programs when used correctly. I was using it incorrectly in earlier versions. My "next move calculator" was appending the result of its operation to the global game board state. This violates a fundamental functional programming rule: functions shouldn't have side-effects. There are exceptions, obviously, because we ultimately want to get things done. But they are exceptions; not the normal way of doing things.
