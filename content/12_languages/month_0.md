+++
title = "Month 0"
+++

I've been very interested in learning more programming languages.  After diving head first into Rust a year ago, and having a blast reading [the book](https://doc.rust-lang.org/book/) I can't help but wonder if I'll have a similar experience with other languages.  Why not challenge myself to learn 12 more?

<!-- more -->

In fact, I've been using rust for only a year, and it is now my prefered language, and feel more comfortable and productive in it than in C++ or Java that I learned in college.  The rust book was such a great dive into a language.  It wasn't just a "programming tutorial."  The book served the material to someone with experience programming, which feels hard to find when trying to learn a popular language like Python.

My C++ and Java experience started with introduction classes.  C++ was taught at my university as the introduction to programming course and Java was taught as the introduction to object-oriented programming.  That is, the way the languages were presented to me was at the most basic level, a level for computer science majors just getting their feet wet.  As a result, I was never aware of templates, modules, hashmaps, error-handling, or macros until I read the rust book.

When I finally discovered that all these features weren't unique to rust, I started wondering on how much I was missing out on.  I've had a strong distaste for Java and C++ because I never thought they were powerful compared to this newly-created rust language.  I was wrong; they are just as powerful.  I just didn't know any better.  

When I get around to classifying programming languages I've used into categories "proficient" and "familiar" I begin to realize how little I know.

## My Current Expertise

I'm gonna run down every language I've written a single program in, to set a baseline for my programming language knowledge.

### Javascript / Node.js

It all started here, when I wanted to add a "rainfall" effect to my tumblr page and had to actually paste in "html code" to get what I wanted.  That's when I learned front end Javascript for the first time.  Years later, I attended a bootcamp that taught me ES6 and react, and I've used that knowledge to develop various websites and APIs written in Node.

### C/C++

Technically we used the g++ compiler and named our files `first.cpp` in my introductory programming course.  But we really weren't writing C++, it was more just C with file streams.  We used `cin` and `cout` and I'm pretty sure the rest was just C code.  I would use C/C++ more in my advanced classes.  I learned to allocate arrays and push pointers around.  But in all my computer science classes it was never used for its OOP features.  It was simply a means to write scientific procedures, like writing 4 different algorithms to solve the knapsack problem.

I did take a course on parallel algorithms though, so I am experienced with using the MPI framework in C++.  I would also pick up using the boost library and catch2 during my computation research.

### Java

I learned Java to learn object oriented programming.  But all of my projects weren't complex enough to create numerous classes that inherited from one another.  So while I touched on some features like inheritance and polymorphism, I certainly not used to writing this way.  I used java for maybe a year as my go-to, but fell aside as C++ was used for my advanced classes and faster for my computational work.

### C#

I had a single computer science course for this too.  I formally learned error handling in C# and actually had a chance to write a large piece of software with 4 other classmates.  But again, I never did anything more than what I knew how to do in Java.

### R

I used this for my statistics courses.  No formal instruction, just know enough to import some packages and run functions.  I think we used a loop twice across all my statistics classes, and never once wrote a function.

### Python

I picked this up from sitting in on brand new data science course.  It was taught at a low level but it was the first time I was exposed to certain features because in python it is so simply why can't you teach it to novices?  I learned about tuples, dictionaries (hashmaps), slicing, and lists for the first time (that's right, nowhere in any of the CS courses I took were we exposed to variable-length arrays.)  I relied on this heavily for my data science projects at my internship, and has since been my "scripting" language of choice.

### Rust

I had heard of rust because I wanted to see if there was a language faster than C/C++ that I could do my computational research in.  I saw a printed copy of "the book" at my library and knew I had to read it.  I read nearly the whole thing (getting lost when it came to reference counting and interior mutability, whatever that is.)  I learned about enums (my favorite language feature), match statements, mutability, memory management (the book described what I should have been thinking about when I was writing C++), iterators, closures, and many other things.  The book really transformed me as a developer.

### Standard ML

I started a programming languages course on coursera and completed the first module that taught the basics of functional programming using standard ML.  It was my first exposure to functional programming and has made me look for similar features in every language I've used since (that is, higher order functions and iterators).

### Elm, Scala, Prolog

Technically, I've written and ran a file in these languages.  But that's about the extent.  I have never made a functioning program out of Elm or Scala.  I learned prolog to help tutor kids who needed it for a class, and while logic programming is neat, I won't be trying to master it over the next 12 months either.

### Summary

That said, I'd say I'm **proficient** in Rust, Python, and Javascript.  I'm **familiar** with C/C++, C#, Java, and R.  And I wouldn't dare mention the others on my resume.  I'd like to change that.

## My 12 Language Challenge

The current plan is to try and learn one language every month for the next year.  The twelve languages go as follows:

1. C
1. Java
1. Typescript
1. Scala
1. Nim
1. Haskell
1. C++
1. Julia
1. Elixir
1. Ruby
1. Dart
1. Go

I want to relearn C/C++ and Java, now that I'm more experienced and can learn at a far faster rate.  The others?  They either looked fun (Julia), were very popular (Go), or were going to turn my understanding of programming on its head (Haskell).  Of course I'm making sure I learn C before C++, and Java before Scala.  Hopefully that will make learning the ladder languages easier.

## What to expect from each month

Every month will end a blog post describing my experience learning the language.  This challenge has made me ask a very difficult question: how to measure if a language has been "learned"?

Tests and projects are usually ways to measure growth in the classroom.  Projects can include a variety of programs that I'll write for each language, that will test a variety of language features to prove that I can perform in the given language.  How can I test my knowledge?  I could do some sort of certification, but I don't think that's very fun and sounds challenging for newer and less popular languages like Nim or Elixir.  But I do know that pull requests on github are typically peer reviewed and "graded".  So I'm going to try and contribute to an open source project every month.  Other developers on the team will be my graders, and prove if I've met expectations.  

I've decided that to go into each language with a set of tasks to complete.  Completing these tasks should prove that I've gained experience, as well as keep me on track each month.  I've decided that for each month, each language, I will try to complete the following.

1. Write a bunch of prime seive implementations, and create a test suite around it

I love prime seives, and you can write them a variety of ways to optimize space and to optimize look up times.  I think its a simple task that will allow me to easily write a great variety of tests to verify its accuracy.  This will make sure I try out a testing framework within each language.

With the variety of optimizations, this will also allow me to use a bitset (either from the standard library, a popular library, or write one myself) and also dive into multithreading as well.

2. Contribute to an open source project written in the language.

What better graders than open source contributers?  I hope I can tackle a bug or two within a project.  This is something I've never done outside some spelling errors, so this will be good experience no matter the language.

3. Write a website using a front end framework, and an api using a server framework. (Conway's game of life?)

Everything is web based, so it couldn't hurt to expand from express api's and react front-ends to something more "exotic".  These frameworks typically have their own set of design patterns and expectations, so being able to write in these frameworks should show that I've got the basics of the language down.  I'm also hoping that this will expose me to asynchronous programming as well, a weak point in my skillset.

4. Write a compression algorithm: arithmetic encoding

## We're off!

Starting on **insert date here** I will begin my deep dive into C, with the goal of completing all the tasks defined above.  This should be a fun experience.  The goals are what they are, _goals_ and not completing them will not be the end of the world.  Let's learn!
