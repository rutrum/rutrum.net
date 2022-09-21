+++
title = "Case Conversion"
date = 2020-05-01

[taxonomies]
tags = ["command-line", "programming"]

[extra]
github = "https://github.com/rutrum/convert-case"
+++

Turns out there is no linux utility to easily convert filenames written in snake case into a title case phrase, so I wrote the utility myself.

<!-- more -->

## Use Case

I rediscovered emulators and roms and had such a fun time playing them, I wanted a quick way to load one up.  So I decided to just pipe all the rom filenames into a dmenu so I could select a file to run with an emulator.  For example, I would be presented a list like the following.

```
$ ls ~/roms
donkey_kong_64.z64
kirby_64_the_crystal_shards.z64
super_mario_64.z64
```

I thought it would be nice if it weren't written in snake case, but instead in title case (delimited by spaces and the first letter of each word is capitalized.)  Thinking this was a simple task I googled linux utilities to do this, and couldn't find anything simple.  Sure, I could use [some complex sed command](https://unix.stackexchange.com/questions/196239/convert-underscore-to-pascalcase-ie-uppercamelcase) but it scares me and I refuse to settle with bloatware.

Thus, `convert_case` and `ccase` were born.  Command line utility `ccase` is written in rust and `convert_case` is the library behind it.  Both of these are [published to crates.io](https://crates.io/crates/convert_case) so anyone can install `ccase` with a "cargo install" command and `convert_case` can be included within cargo projects.

`ccase` will convert from any case to any case (and there are some odd ones I found out) but it let me solve my problem with a sweet one liner.  It trims off the file extension and then passes the name into ccase which parses the name as snake case and then converts it into title case.  Now selecting the right rom is easier and looks nice.  Worth it!

```
$ ls ~/roms | cut -d '.' -f 1 | ccase -f snake -t title
Donkey Kong 64
Kirby 64 The Crystal Shards
Super Mario 64
```

## The Rabbit Hole

In the process of creating this utility I had to investigate the naming conventions surrounding certain cases.  Did you know that these names are just convention, and there isn't much of a definitive source for the naming?  I could have sworn some programming language or IDE or something would have put it all in writing.

The "snake" case is a good example of ambiguity.  A snake case string is all lowercase letters with underscores combining the words.  Snake case is called snake by some, but according to Python's documentation they call it exactly what it is: ["lowercase_with_underscores"](https://docs.python.org/3/tutorial/controlflow.html?highlight=lowercase_with_underscore#intermezzo-coding-style).

Kebab case is interesting as well.  The case with lowercase letters and hyphens was first called kebab case [in a Stack Overflow post from 2012](https://stackoverflow.com/questions/11273282/whats-the-name-for-hyphen-separated-case) (it seems that history has changed, and the original answer is no longer present).  I've even heard Pascal case, mixed case, and camel case used to refer to two different cases.  It's all ambiguous.

Who is the source of truth in this matter?  I think the sources with the most authority are programming languages.  Cases are relevant particularly in this domain and documentation outlines the expected case for variables, functions, classes, etc.  You could also look to conventions by large projects and software, such as the linux kernel.

But alas, there is no consistency.  There are some terms that have become standard, however.  Snake case and camel case are well known, and typically consistent in modern writing.  But what do you call a case that's all uppercase letters with hyphens?  Considering this isn't used very often, it's not well mentioned.  I've heard "upper kebab case" and "Cobol case", among others.

Well, I made my own Rust library and command line utility that offers a _large_ list of cases.  Why don't I take my stab at standardizing?

## stringcase.org

That's right, I literally bought a domain dedicated to consolidating the history and definition of string cases.  This site, unforunately, is still a great work in progress.  I'd like this site to accomplish the following things.

1) Precisely define what a string case is.
2) Propose a standard name for each case.
3) Propose a standard for case conversion.
4) Document the history of naming conventions.

I hope that this site serves as a point of reference for naming conventions.  Most importantly, I'd love this to be a standard of some sort, that other case-conversion utilities use for consistency.  Although, that sounds hard, and it might be silly to try to standardize this.  But I'll have my own project, in Rust, that follows the standard for reference.

Kind of a silly project, but it's been very interesting!  I've even gone so far as to consult the reference that defines text itself: Unicode.  They use terminology I'd never considered and handle edge cases to the smallest detail.  Knowing unicode is an important part of this project.  I recently had to update my Rust library to handle edge cases involving unicode that had previously crashed the program.

Be sure to [check the site](https://stringcase.org) and see how it progresses!
