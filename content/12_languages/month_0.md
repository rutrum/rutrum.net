+++
title = "Month 0"
+++

I've been very interested in learning more programming languages.  After diving head first into Rust a year ago, and having a blast reading [the book](https://doc.rust-lang.org/book/) I can't help but wonder if I'll have a similar experience with other languages.  Why not challenge myself to learn 12 more?

<!-- more -->

In fact, I've been using rust for only a year, and it is now my preferred language.  I feel more comfortable and productive in it than in C++ or Java that I learned in college.  The rust book was such a great dive into a language.  It wasn't just a "programming tutorial."  The book served the material to someone with experience programming.

C++ was taught at my university as an introduction to programming and Java was taught as an introduction to object-oriented programming.  Those languages were presented to me as a novice, a level for computer science majors just getting their feet wet.  As a result, I was never familiar with templates, modules, hashmaps, enums, or macros until I read the rust book.

When I finally discovered that all these features weren't unique to rust, I started wondering how much I was missing out on.  I've had a strong distaste for Java and C++ because I never thought they were as powerful as rust. Obviously I was wrong; I just didn't know any better.  

## Language Exposure

Here is a quick run-down of every language I've written a single program in, to set a baseline for my programming language knowledge.

{{ langtitle(lang="javascript", title="JavaScript", size=3) }} 

It all started in highschool with HTML and CSS.  JavaScript followed, and I would eventually attend a bootcamp that taught me ES6 and React, and I've used that knowledge to develop various websites and APIs written in Node (such as [Type Sync](@/projects/typesync.md).)

{{ langtitle(lang="cpp", title="C++", size=3) }} 

Technically we used the g++ compiler and named our files `first.cpp` in my introductory programming course.  But we really weren't writing C++, it was more just C with file streams.  We used `cin` and `cout` and I'm pretty sure the rest was just C code.  I would use C/C++ more in my advanced classes.  I learned to allocate arrays and push pointers around.  I would also learn how to use the MPI library bindings and write parallel programs.  But in all my computer science classes it was never used for its OOP features.  It bothers me that I can't quite distinguish which features I've used are C or C++11 or otherwise.

{{ langtitle(lang="java", title="Java", size=3) }} 

I used Java to learn object oriented programming.  But all of my projects weren't complex enough to create numerous classes that inherited from one another.  So while I touched on some features like inheritance and polymorphism, I am certainly not used to writing this way.  I used java for maybe a year as my go-to, but fell aside as C++ was used for my advanced classes and faster for my [computational work](@/projects/mn.md).

{{ langtitle(lang="csharp", title="C#", size=3) }} 

I had a single computer science course for C#. I formally learned error handling in C# and actually had a chance to write a large piece of software with 4 other classmates.  But I never did anything more than what I knew how to do in Java.


{{ langtitle(lang="r", title="R", size=3) }} 

I used this for my statistics courses.  I had no formal instruction.  I know just enough to import some packages and run functions.  I think we used a loop twice across all my statistics classes, and never once wrote a function.

{{ langtitle(lang="python", title="Python", size=3) }} 

I picked this up from sitting in on the brand new data science course.  It was taught at a low level but it was the first time I was exposed to many language features.  I learned about tuples, dictionaries (hashmaps), slicing, and lists.  I relied on this heavily for my data science projects at my internship, and it has since been my "scripting" language of choice.

{{ langtitle(lang="rust", title="Rust", size=3) }} 

I had heard of rust because I wanted to see if there was a language faster than C/C++ that I could do my computational research in.  I came across "the book" and read it in its entirety.   I learned about enums (my favorite language feature), match statements, mutability, memory management (the book described what I should have been thinking about when I was writing C++), iterators, closures, and many other things.  The book really transformed me as a developer.

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

## How to Learn

Every month will end a blog post describing my experience learning the language.  This challenge has made me ask a very difficult question: how to measure if a language has been "learned"?

Originally, I had made a small list of tasks to complete.  The tasks were all some small applications.  The more and more I thought about measuring how much I've learned, the more I realized that no task list would encompass the wide range of language features and would eventually get boring by the 12th language.  So I scrapped a task list.

## Plan for Month 1

I have a basic plan going into the first month learning C.  I'm going to start with a tutorial or documentation that will outline the basics of C.  Perhaps I'll even follow a video series.  Once I've got an understanding of language features I'd like to experiment with writing a few programs.

I'd like to try out a testing framework as well as a front-end web framework (will these be achievable in plain C?  Not sure.)  At the very least I can program a command line utility or something else that plays to C's strengths.  

As a final challenge for the month, I am going to contribute to an open source project.  What better graders than open source contributers? This is something I've never done outside some spelling errors, so this will be good experience no matter the language.

All the code I write will be saved in the [12 languages repository](https://github.com/rutrum/12-languages) on github.  Then at the end of the month I'll write another article on this website, to report what I accomplished and what I liked and disliked about each language.

This is a pretty loose plan of attack. Every time I constructed something more rigorous I realized that, even after the first month, my goals will most likely change.  I'm allowing this challenge to be very flexible to accomidate for my interests, the language, and my overall time put into the project.

## We're off!

Starting on September 1, 2020 I will begin my deep dive into C.  Let's learn!
