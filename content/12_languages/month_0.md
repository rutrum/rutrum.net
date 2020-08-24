+++
title = "Month 0"
+++

I've been very interested in learning more programming languages.  After diving head first into Rust a year ago, and having a blast reading [the book](https://doc.rust-lang.org/book/) I can't help but wonder if I'll have a similar experience with other languages.  Why not challenge myself to learn 12 more?

<!-- more -->

In fact, I've been using rust for only a year, and it is now my preferred language.  I feel more comfortable and productive in it than in C++ or Java that I learned in college.  The rust book was such a great dive into a language.  It wasn't just a "programming tutorial."  The book served the material to someone with experience programming.

C++ was taught at my university as the introduction to programming course and Java was taught as the introduction to object-oriented programming.  Those languages were presented to me as a novice, a level for computer science majors just getting their feet wet.  As a result, I was never familiar with templates, modules, hashmaps, enums, or macros until I read the rust book.

When I finally discovered that all these features weren't unique to rust, I started wondering on how much I was missing out on.  I've had a strong distaste for Java and C++ because I never thought they were as powerful as rust. Obviously I was wrong; I just didn't know any better.  

## Language Exposure

A quick run-down every language I've written a single program in, to set a baseline for my programming language knowledge.

{{ langtitle(lang="javascript", title="JavaScript", size=3) }} 

It all started in highschool with HTML and CSS.  JavaScript followed, and I would eventually attend a bootcamp that taught me ES6 and React, and I've used that knowledge to develop various websites and APIs written in Node (such as [Type Sync](@/projects/typesync.md).)

{{ langtitle(lang="cpp", title="C++", size=3) }} 

Technically we used the g++ compiler and named our files `first.cpp` in my introductory programming course.  But we really weren't writing C++, it was more just C with file streams.  We used `cin` and `cout` and I'm pretty sure the rest was just C code.  I would use C/C++ more in my advanced classes.  I learned to allocate arrays and push pointers around.  I would also learn how to use MPI bindings and write parallel programs.  But in all my computer science classes it was never used for its OOP features.  It bothers me that I can't quite distinguish which features I've used are C or C++11 or otherwise.

{{ langtitle(lang="java", title="Java", size=3) }} 

I used Java to learn object oriented programming.  But all of my projects weren't complex enough to create numerous classes that inherited from one another.  So while I touched on some features like inheritance and polymorphism, I am certainly not used to writing this way.  I used java for maybe a year as my go-to, but fell aside as C++ was used for my advanced classes and faster for my [computational work](@/projects/mn.md).

{{ langtitle(lang="csharp", title="C#", size=3) }} 

I had a single computer science course for this too.  I formally learned error handling in C# and actually had a chance to write a large piece of software with 4 other classmates.  But again, I never did anything more than what I knew how to do in Java.


{{ langtitle(lang="r", title="R", size=3) }} 

I used this for my statistics courses.  No formal instruction, just know enough to import some packages and run functions.  I think we used a loop twice across all my statistics classes, and never once wrote a function.

{{ langtitle(lang="python", title="Python", size=3) }} 

I picked this up from sitting in on brand new data science course.  It was taught at a low level but it was the first time I was exposed to many language features.  I learned about tuples, dictionaries (hashmaps), slicing, and lists.  I relied on this heavily for my data science projects at my internship, and has since been my "scripting" language of choice.

{{ langtitle(lang="rust", title="Rust", size=3) }} 

I had heard of rust because I wanted to see if there was a language faster than C/C++ that I could do my computational research in.  I came across "the book" and read nearly the whole thing (getting lost when it came to reference counting and interior mutability, whatever that is.)  I learned about enums (my favorite language feature), match statements, mutability, memory management (the book described what I should have been thinking about when I was writing C++), iterators, closures, and many other things.  The book really transformed me as a developer.

### Standard ML, Elm, Scala, Prolog

Technically, I've written and ran a file in these languages.  Despite doing very little, these gave me exposure to functional programming (and logic programming), which will help tremendously over the next year.

### Summary

That said, I'd say I'm **proficient** in Rust, Python, and JavaScript.  I'm **familiar** with C/C++, C#, Java, and R.  And I wouldn't dare mention the others on my resume.  I'd like to change that.

## 12 Language Challenge

The current plan is to try and learn one language every month for the next year.  I've selected the following twelve languages.

<div class="month-list">
{{ langsummary(lang="c", num="1", name="C") }}
{{ langsummary(lang="java", num="2", name="Java") }}
{{ langsummary(lang="typescript", num="3", name="TypeScript") }}
{{ langsummary(lang="scala", num="4", name="Scala") }}
{{ langsummary(lang="nim", num="5", name="Nim") }}
{{ langsummary(lang="haskell", num="6", name="Haskell") }}
{{ langsummary(lang="cpp", num="7", name="C++") }}
{{ langsummary(lang="julia", num="8", name="Julia") }}
{{ langsummary(lang="elixir", num="9", name="Elixir") }}
{{ langsummary(lang="ruby", num="10", name="Ruby") }}
{{ langsummary(lang="dart", num="11", name="Dart") }}
{{ langsummary(lang="go", num="12", name="Go") }}
</div>

I want to relearn C/C++ and Java, now that I'm more experienced and can learn at a far faster rate.  The others?  They either looked fun (Julia), were very popular (Go), or were going to turn my understanding of programming on its head (Haskell).  Of course I'm making sure I learn C before C++, and Java before Scala.  Hopefully that will make learning the ladder languages easier.

## Monthly Tasks

Every month will end a blog post describing my experience learning the language.  This challenge has made me ask a very difficult question: how to measure if a language has been "learned"?

Along with learning the language, I've created a set of tasks to complete that should prove that I've "learned" in some capacity, as well as keep me on track each month.  Each month I will try to complete the following.

### 1. Write a few prime sieve implementations, and create a test suite around it

I love prime sieves, and you can write them a variety of ways to optimize space and to optimize look up times.  I think its a simple task that will allow me to easily write a great variety of tests to verify its accuracy.  This will make sure I try out a testing framework within each language.

With the variety of optimizations, this will also allow me to use a bitset (either from the standard library, a popular library, or write one myself) and also dive into multithreading as well.

### 2. Contribute to an open source project

What better graders than open source contributers?  I hope I can tackle a bug or two within a project.  This is something I've never done outside some spelling errors, so this will be good experience no matter the language.

### 3. Write Conway's game of life using a front end web framework

Everything is web based, so it couldn't hurt to expand from express api's and react front-ends to something more "exotic".  These frameworks typically have their own set of design patterns and expectations, so being able to write in these frameworks should show that I've got the basics of the language down.  I'm also hoping that this will expose me to asynchronous programming as well, a weak point in my skillset.

## We're off!

Starting on September 1, 2020 I will begin my deep dive into C.  All of the code I write for this 12 month challenge will be in the 12 languages repository on github.  Let's learn!
