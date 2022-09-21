+++
title = "TypeSync"
description = "Typing test where you type the lyrics to any song."
date = 2020-01-21

[taxonomies]
tags = ["programming"]

[extra]
github = "https://github.com/rutrum/typesync-api"
+++

Typing out the rules of baseball and the top 100 most common english words gets old.  How about song lyrics?

<!-- more -->

## Hackathon Project

At [BoilerMake VII](https://boilermake.org/) a couple friends and I decided to build a website that let's you test your typing skills on song lyrics of your choice.  We wrote a website in React and an api in Python.  We leveraged the genius python library to use the genius api.  After completing a song, your time gets saved under your name and put on the leaderboards.

We had a successful project for the hackathon, and we added a couple features over the next few months, like a "simple" lyrics version and a leaderboard.  I later took on the task of rewriting the entire website in Rust, because I guess that would be fun?  I had just discovered an elm-inspired web framework for Rust and I knew the exact right project to write using it.

<img src="/typesync.png" style="width: 100%">

## RIIR, Obviously

The new stack used [Seed](https://seed-rs.org) for the frontend website.  This does not follow the component-based paradigm like React.  It instead follows the more functional approach of Elm for managing state and event flow.  I used [Rocket](https://rocket.rs) for an API with [Diesel](https://diesel.rs) as the database client.

Seed got very complicated when wanting to encapsulate a "page".  It was very hard for me to understand how to have multiple pages that needed to share state with one another.  This paradigm made sense in React, but it was hard to do in Seed.  Most of the examples in Seed weren't these cohesive one-page apps like TypeSync is.  For example, one issue was just trying to "propagate" an event upwards.  The file and module structure that I was following did not make this easy.  I'm still not sure if my file structure was the best way to do it.

Rocket was dead simple, and I had zero issues.  Diesel was very good too.  Although I was in a statically typed environment, I wanted to use the sql-building functions as much as I can.  But at the time of writing the project, grouping did not work!  So I had to write SQL anyway, and it made it feel like all the work I had done to make it typed and error-free.

## What's Next

The website is hosted at [typesync.rutrum.net](https://typesync.rutrum.net) but it is likely that it won't work when you visit.  For whatever reason, after being live for a week, the backend goes down.  It no longer reads any data from the database, nor makes API calls to Genius for lyrics.  I can't tell you why it happens.

The most recent change was adding the top 10 most played songs to the front page.  It's a nice change that gives the sense that other people play on the site too.  I think exploring existing songs would be more fun.  Like viewing the most popular songs by difficultly, or some other metric that would give a challenge.

After building the site and actually playing a song for the first time, I realized _just how long_ it takes to actually type the lyrics of my favorite song.  And I'm not that slow either.  I'm around 60-80 wpm, and it would still take me minutes to complete a song.  That's way too long for my patience.  I would like to add an alternate "minute" mode where your score was either how quickly you completed the song (up to one minute) or what percentage of the song you were able to complete.  Perhaps it could loop the lyrics on a short song so you had to type for one minute regardless.  I thought this would be a good compromise.

Feel free to check it out...I hope it's working!
