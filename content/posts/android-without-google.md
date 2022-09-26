+++
title = "Using Android Without Google"
date = 2022-09-26

[taxonomies]
tags = ["android", "privacy"]
+++

With the new phone I wanted to deGoogle it as much as possible.  I was able to get so far as to not use a Gmail account for anything, while still using stock android.

<!-- more -->

## Google Pixel

I was running into troubles when I changed carriers. Since my phone was LG, who recently bailed on phone manufacturing, my provided wasn't able to support the issues I was experiencing.  I was stuck buying a new one.

Ironically, I chose the [Google Pixel 6a](https://www.gsmarena.com/google_pixel_6a-11229.php) as my new phone.  You'd be surprised to find out though that Pixels are some of the best phones for unlocking and rooting.  But really the decision came down to the deal provided to me, where I could get this phone for less than $100 with a 3-year contract.  Since I had just switched providers, I decided to take the risk.  My last flagship phone was a refurbished [LG v20](https://www.gsmarena.com/lg_v20-8238.php) from eBay, which is a 2016 phone.  I've not used something so up to date since I bought an [LG G3](https://www.gsmarena.com/lg_g3-6294.php) when it came out in 2014.

Here's how I set up my Pixel running Android 12 with privacy in mind.

## Bypassing Gmail

If you don't get caught up in the moment with the new phone experience, you'll notice that during set up for your android, you can skip most prompts.  This includes logging into your gmail, which is the first step.  **It's probably best to never make the mistake of logging in once**, since you never know what information is cached on the phone that you can't delete, or what information your phone is able to send to google in that short time.  I'm not certain I could remove a gmail account after I've added one.  On my old phone, it looks like the only way would be to factory reset it.

As you go through the set up prompts, I'd just deny everything.  You'll get offered a lot of google services and other defaults, but turn everything off.  You can always turn it on later if you find you need to use it.  Be as paranoid as possible at the beginning.  It is more likely you'll allow a feature later than you are to turn it off later.

## Settings

When you get to the launcher, you can jump straight to settings and tinker around.

### Network & Internet

I'm betting the default private DNS server is something by Google, so I swapped.  I'm going to try [Quad9](https://www.quad9.net/) which does some ad/tracker blocking at the DNS level.  We'll see if that helps me or hurts me.  I've not used Private DNS (DNS over TLS, or DoT) before.

### Connected Devices

Bluetooth is a horrible protocol, since it's insecure and unencrypted, but unfortunately I use it.  So I kept Bluetooth on, but I turned NFC off.  I'm not familiar with what apps use NFC, but I know I won't start using it now.

### Apps

I went through and uninstalled or disabled most services that I knew I didn't use outright.  This includes Drive, Gmail, Google TV, Pixel Tips, among others.  Apps like Google Chrome I will disable later, once I've installed replacements suitable replacements, which we talk about later.

### Battery

I use battery saver almost exclusively.  It saves battery life and gets rid of features I won't notice or care about.  It lowers the max screen brightness, turns off animations, and it is more strict about background app use.  That said, this can sometimes be annoying when an app is forced to close and I lose some progress when I come back to the app.  I'm not certain exactly when or how this happens, so it's something to keep in mind.

You should be able to allow certain apps to bypass the battery saver mode.  So I set it to be on all the time and exclude the few apps that really need it off.

### Sound & Vibration

Here you can start to see some of Google's machine learning powered features.  Even if you don't use them, turning them off _might_ keep them from scraping data from you anyway, but who knows for certain.  These features include "Live Caption" and "Now Playing".  I also turn off "media recommendations" since recommendations consent to data collection, and it's a slippery slope to an advertisement.

### Security

I consented to fingerprints, which is a super convenient feature, and one I'm willing to take given the risks.  I could be convinced otherwise, though.

Here is also the "Play Protect" settings.  It scans your phone for security threats and other malware.  Personally, I don't think this is a huge issue, since most malware is in the form of freemium apps or anything else that gets your unintentional consent to do whatever they want.  If you don't disable it entirely, you can switch off "Improve harmful app detection" which just helps Google index apps that aren't in the Play Store.

### Privacy

Here's where I'm pleased to see these features integrated into Android.  You can soft-turn off microphone and camera access for the entire phone.  Of course, this is just a software lock, and not a hardware switch, but it is still nice to see.  I have these in my notifications menu so I can easily flip on and off as needed.  If you get a call it will ask you to turn on the microphone before you answer, so you can keep it off most of the time.

"Android System Intelligence" is another machine-learning based feature that might be helpful, but will harvest your data regardless.  It's all about providing suggestions in your keyboard based on your phone activity.  Don't bother wondering if it is cool or not. It probably isn't that neat.  Turn it off, in addition to "Personalize using app data".

Another nice feature to turn on is "Show clipboard access" which reminds you whenever an app reads your clipboard, which is essential when you use a password manager.

Keep switching stuff off, like "Autofill service from Google" (use a password manager) and the "Usage & Diagnostics" consent. Delete your advertising ID so it's more difficult for advertisers.

### Location

Have this option handy.  I keep it off as often as possible.  I use it for GPS occasionally, but turn it off every other time.  There's no reason to give apps the opportunity to pull your location when it feels like it.

### Safety & Emergency

This looks like basic information that can be visible without unlocking your phone (in the case of an emergency).  I can see how this would give some peace of mind, but I'm assuming that if I were in trouble the individual that found my unconscious body wouldn't think to look at my phone anyway.  I'm going to not use this feature for now.

Emergency location service is another SHTF feature.  You consent that during emergency calls it will automatically share your location.  It sounds like this might happen regardless, especially since you are probably calling 911 using a cell tower. But again, this might be a peace of mind feature you keep enabled.  I'm going to disable it.

### Passwords & Accounts

You haven't logged in with Gmail, so not much to worry about here!  You might want to turn off "Automatically sync app data" but if you successfully uninstall Google applications and only use apps you trust, then you can leave this on for convenience.

### Google

Run through all these options and disable it all.  Most options will show that you already can't use the feature because you aren't logged in, but a feature like "Find My Device" is default on, but also says a gmail account is required.  Not sure exactly what this means, but I disable it anyway.

Under "Personalize using shared data" sounds like some inter-app communication, but I disable it all and see if I notice.  I bet I won't.

### System

You've got two keyboards installed.  The default "Gboard" and "Google Voice Typing".  You can disable one of these.  The other we will replace later.

Turn off live translate here too.

As far as security updates, I'm never sure.  I'm sure it's important and fixes critical security issues, but I know updates come with a lot more too.  I'm going to stick with the Android 12 that the phone comes with, and avoid updating as long as possible.  Battery saver can sometimes help keep auto-updates at bay.  I was able to do it for a full year with my last phone.  I might be a genius, or an idiot, depends on your personal risk assessment.

## Apps

Now that we've got the default settings taken care of, we need to revisit our apps.  We need immediate replacements for Google Chrome, Google Play, and GBoard.  I'll walk through the bare essentials.

### Firefox

First, we need to replace the default web browser.  Open Chrome for the only time and navigate to [search.brave.com](search.brave.com) or your favorite privacy-respecting search engine, and find a direct download for Firefox mobile.  You should be able to find a link to the actual `apk` file and not a link to the Play Store.  When you download the `apk` file, you will be prompted with a security warning, but it might give you the option to go to settings and allow Chrome to install software.  Consent to this and install Firefox.

### F-Droid

Next we are going to make the first step towards an alternative to the Play Store.  [F-Droid](https://f-droid.org/) is an app manager that exclusively hosts open source Android apps.  It's full of entirely free and privacy-respecting software, and it makes it very clear when an app uses anything that might be remotely a risk to privacy.  For example, downloading a Reddit client will remind you that at the end of the day, you are still communicating directly with a non-free service like Reddit.

You can install F-Droid the same way you installed Firefox, just now you can use Firefox to download it instead.

### Aurora Store

This was brand new to me during this process, but you can't get every app on F-Droid.  Sometimes, for your bank, email, or any other propriety app or service you use or need, you have to use the Play Store, full stop.  Luckily the [Aurora Store](https://f-droid.org/en/packages/com.aurora.store/) is an alternative client for the Play Store, and allows you to navigate and download apps anonymously.  Lucky for us, Aurora Store is available in F-Droid for download.

### Keyboard

I think the last app you should replace is the GBoard keyboard.  You can imagine how much data can be scraped from your keyboard.  There are a variety of apps you can download from F-Droid such as Simple Keyboard and OpenBoard.  I personally use [Florisboard](https://f-droid.org/en/packages/dev.patrickgold.florisboard/), for no other reason than it was the first one I heard about.  You should try a few out, since the smallest changes can sometimes be damning when it comes to the keyboard.

---

You are now fully empowered to disable the Play Store, Google Chrome, and GBoard from your list of apps.  Technically, you can't disable GBoard (because you'd be screwed without it) but you can turn it off in the language & input settings, right where you enabled your replacement keyboard.

I think this is an excellent start to using your new smartphone.  You've found alternatives for the most used Google applications on your phone and opted out of any features that you don't want, need, or consent to.  You can continue to use your phone freely all without your Gmail, which is a huge win over my previous phones.

## Other Alternatives

It doesn't stop here, of course.  There's plenty of other apps you might use regularly, but don't know of alternatives.  This includes Youtube, Google Maps, and Google Photos.  Luckily there are alternatives to all of these, but they aren't straight forward replacements.  You mind give these some thought before switching. There are entire communities dedicated to alternative software for these products, like [r/degoogle](https://www.reddit.com/r/degoogle/) and [r/privacy](https://www.reddit.com/r/privacy/).

There's also other services I'm not fully aware of how to replace either.  Google Play Services is integral to most apps on your Android device. There's an alternative called [MicroG](https://microg.org/), but I can't be certain if it's possible with an out of the box Android install, if it will break some of my apps, or it if it's even necessary to protect privacy.  I'll need to continue to research.  There might be other must haves too, reach out to me _dave@rutrum.net_ if you have suggestions.

These might not work for you, but if your privacy is at this level of concern, you could give these alternatives a shot.

### YouTube

The simplest solution is just to watch YouTube in your browser.  Since you have Firefox, there are so many browser extensions available that can make your experience better than the YouTube app can ever get you.  Download [uBlock Origin](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/) for ad-blocking and (at your discretion) [SponsorBlock](https://addons.mozilla.org/en-US/firefox/addon/sponsorblock/) for skipping content creator's mid-roll ads.  This is my current choice for browsing YouTube on my phone.

For YouTube android clients, the most popular app used to be YouTube Vanced.  But unfortunately they tried making money from their app and were a huge target to Google, and received a cease and desist.  Luckily there are two free and open source projects to take reign, [NewPipe](https://newpipe.net/) and [Revanced](https://github.com/revanced).  Unfortunately, Revanced looks like a series of patches on the original Vanced, but NewPipe stands on its own.  NewPipe doesn't currently integrate with SponsorBlock due to the ideologies of the developers, but there is a [fork of NewPipe with SponsorBlock](https://github.com/gilbsgilbs/NewPipeSponsorBlock) that you can get from F-Droid.

### Photos

One of my favorite tools is [SyncThing](https://syncthing.net/), a file synchronization program that allows different devices on my home network keep files synchronized together.  With my old phone on Android 8, I was unable to select the right folders to sync to my home computer.  Luckily with the new phone, this is no longer an issue.  Now I can just sync my photos folder directly to my computer, so if I were to ever lose my phone, I know all the photos taken before I left home that day are back at home.  It's not as convenient as live backups over the internet, nor does this solution let me browse existing photos, so it's not a feature-for-feature replacement of Google Photos.

But there is an up and coming project called [Immich](https://www.immich.app/) which aims to be _the_ replacement for Google Photos, targeting an app-first approach to development.  They are in heavy development, so they warn users that is not production ready.  But many users have already started using it and report that it works seamlessly.  It's something I want to try out in the near future.

### Maps

The biggest app I don't currently use a replacement for is Google Maps. No app will come close. It's just not possible.  Google Maps is an impressive algorithm that has learned from years and years of traffic data, years and years of development, and it knows real time traffic data to learn about accidents and construction all on its own.  It even integrates user-submitted warnings, like speed traps, which I'm sure are also verified to be more accurate because of the amount of data they have available.  In fairness, it's an incredibly impressive piece of technology.

But if you can part ways with a few nice-to-haves, it looks like there are some options available.  The first is [OsmAnd](https://osmand.net/), an offline maps app that is built on the OpenStreetMap project.  It also looks like there are some other free and privacy respecting options, like [Quant Maps](https://www.qwant.com/maps/) and [Magic Earth](https://www.magicearth.com/) but the source code for these sites are not open source, and Magic Earth doesn't appear to have that "privacy first" branding that most privacy first apps do.  So I'm skeptical. I'm not certain what the best tool is.  This one requires more research.

## Isn't this all Pedantic?

This is good lesson to learn in privacy.  You can't do it all at once.  I've made many suggestions in this article, but your mileage will vary, and each individual will have to balance their technical skills, time, and risk evaluation on what the right amount of privacy is for them.  

If we were to critique my own technology use, I really should not be logged into my YouTube account at all, and instead manage my subscriptions using NewPipe. Nor should I use Brave Search due to some skepticism of the parent company, or use Firefox as apposed to Waterfox, Palemoon, or whatever else.

And let's be real, if I don't trust Google, why would I run Android on a Google Pixel?  I could run something like Ubuntu Touch on a PinePhone, but at this time it just isn't that developed, and there isn't full support.  I could also use CalyxOS or LineageOS, but again, that's a lot of overhead for a product that isn't as developed.  One step at a time is all that's needed for increasing privacy and decreasing dependence on big tech.

I'm taking small steps to be more anonymous, more private, and more secure.  This phone was a huge step towards that goal.  I started transitioning away from Google last year, when I started using [ProtonMail](https://proton.me) and now not needing my Gmail for my phone puts me one step closer to fully retiring my Google account.
