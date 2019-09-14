+++
title = "album-dl"
+++

I used to go to the library when I was younger to grab the very next Van Halen or Rush CD I could find.  When my music taste got broader, I could not longer lean on the library to appease my need for mp3s.

Online Youtube-to-mp3 converters were often smothered with ads and popups.  When I did find a very clean and legitamate site, it still required a lot of time to manually copy link after link into the website just to wait 30 seconds, click a download button, and copy the next link.  After all that, I had to manually rename and tag each and every mp3 file!  There had to be a better way!

I created my own solution, called album-dl, named after youtube-dl, the app that gave me the idea in the first place (and is central to the functionality of the app.)  The script does the following.
1. Prompts the user for a youtube playlist url containing the album to download and link to the album's wikipedia page.
2. Scrapes the wikipedia page for metadata, asking the user to resolve any conflicting findings and confirm what was found.
3. Downloads the youtube playlist (this is where youtube-dl does the heavy lifting) and converts the video files to mp3 files.
4. Automatically matches the metadata with each mp3 file, tags each file, and moves the songs to the right place in my music directory.

Having mp3s of your favorite songs has never been easier!