+++
title = "Convert Case"
date = 2020-05-01

[extra]
github = "https://github.com/rutrum/convert-case"
+++

Turns out there is no linux utility to easily convert filenames written in snake case into a title case phrase, so I wrote the utility myself.

<!-- more -->

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
