+++
title = "album-dl"
description = "script to download and tag albums"

[extra]
github = "https://github.com/rutrum/album-dl"
+++

I wrote a script that allows me to download albums off youtube and tag them with metadata found on wikipedia.

<!-- more -->

I used to go to the library when I was younger to grab every Van Halen and Rush CD I could find.  When my music taste got broader, I could no longer lean on the library to appease my need for mp3s.

Online Youtube-to-mp3 converters were often smothered with ads and popups.  When I did find a very clean and legitamate site, it took a long time to download and then manually rename and tag each and every mp3 file!

So I created album-dl in python.  I leverage the youtube-dl library to download songs and beautiful soup to scrape the wikipedia article for metadata.  I thought about rewriting it in go, but having direct access to the youtube-dl library made it too easy to stick with python.
