+++
title = "A Utility for Paths"
date = 2023-09-15

[taxonomies]
tags = ["programming", "command-line-utility"]
+++

I found another rabbit hole of unstandardized naming conventions...what do you call parts of a file path?

<!-- more -->

I have a repository full of markdown files that I want to convert using `pandoc`.  I have a handful of scripts that find the location of source markdown files and then write them to another output location with a similar directory structure.  There have been a number of occasions I have needed a utility for manipulating file paths.

Here's an easy example.  I have a file `article.md` that I want to convert in `pandoc` like so.
```
pandoc article.md -f markdown -t latex -o article.pdf
```
This is straightforward.  Now, suppose I want to generalize this for any file `$FILE`.  I expect `$FILE` to contain the file extension `md`.  How can I change the file extension of `$FILE`?

The answer isn't that straightforward.  There's no coreutil that I know of that does this simply.  I would love to do something like 
```
pandoc $FILE -f markdown -t latex -o "$(rmextension $FILE).pdf"
```
What are my options?

## Manipulating Paths with `basename` and `cut`

The first out of the box command line utility is `basename`.  It can take any path and just return the basename, or filename.
```
$ basename /path/to/file.txt
file.txt
```
Useful, but not what we need.  Luckily in its very short man page is a argument `-s, --suffix=SUFFIX` that removes the trailing `SUFFIX`.  Let's try it on our `article.md`.
```
$ basename -s md article.md
article.
```
Of course it would do that.  It's not smart, it literally chops off the last few characters if they match verbatim.  So the final solution is this.
```
$ basename -s .md article.md
article
```
We can also use the `cut` utility.  We delimit `-d` the string on the `.` and then pick `-f` the first part.
```
$ echo "article.md" | cut -d . -f 1
article
```
This options is good for general string manipulation.  What if we have multiple extensions?  Or no extension at all?  At least `basename` was built for path strings, unlike cut.  Is there a utility that is built around file paths?

## Doing it Myself

I couldn't find any utilities that did what I needed, and it sounded like an easy opportunity to write a CLI.  So I wrote `pathmut`, a path string manipulation utility.

Picking out the filename without its extension can be written like so.
```
$ pathmut stem article.md
article
```
Since this was written leveraging the [Rust standard library's Path struct](https://doc.rust-lang.org/stable/std/path/struct.Path.html) I decided to add a handful of commands to pull out various parts of a path.  Here's a quick demo of all the components.
```
$ pathmut ext /path/to/file.tar.gz
gz

$ pathmut name /path/to/file.tar.gz
file.tar.gz

$ pathmut parent /path/to/file.tar.gz
/path/to

$ pathmut prefix /path/to/file.tar.gz
file

$ pathmut stem /path/to/file.tar.gz
file.tar
```
You can see the utility library handles files with multiple extensions.  There's a distinction between the file _prefix_ and file _stem_ in the Rust standard library, apparently.  I don't believe this naming convention is common between languages.

## Extending Functionality

How would take `path/to/article.md` and extract exactly `path/to/article`?  Sure, I could use the `cut` example, but now is a good time to extend `pathmut`.  Quickly, I created the `rmext` command.
```
$ pathmut rmext /path/to/article.md
/path/to/article
```
Soon after I realized how bizarre of a decision this was. I extended the functionality to remove any of the path components with the `-r` or `--remove` flag.
```
$ pathmut ext --remove /path/to/article.md
/path/to/article

$ pathmut prefix -r /path/to/article.md
/path/to/md
```
Similarly with replacement using `-s` or `--replace`.
```
$ pathmut ext --replace pdf /path/to/article.md
/path/to/article.pdf

$ pathmut prefix -s journal /path/to/article.md
/path/to/journal.md
```
Currently this is extent of the functionality available in `pathmut`, with the addition of a `first` command that picks out the first component (which could be the root `/`, or a directory, or the file itself.)

I would like to extend this further, allow for many different path operations such as joining paths head to tail, or determining the lowest common directory between two paths.  I'd also like functionality to normalize paths like removing redundant `./` mid-path or even translating paths between Unix and Windows conventions.

## What are the Components of a Path?

Suppose I want something to turn a path like `src/folder/article.md` to `target/folder/article.md`.  What do you call that top most directory?  Nothing was in Rust's `Path` documentation. I found [this stack overflow article](https://stackoverflow.com/questions/2235173/what-is-the-naming-standard-for-path-components) discussing a wide variety of naming conventions.

Of course, there's going to be some overlap.  That article mentions that what Rust calls the "file prefix", Vim calls the "file root".  This is confusing because "root directory" also has a meaning.  What do you use to describe the top level directory?  The article doesn't mention anything.

Another confusing part of this StackOverflow discussion is a lot of naming is based on the present working directory, which my utility knows nothing about.  My utility is being built specifically for _path strings_.  It will never care if such a file or directory structure exists, or what folder you are in relative to it.

I suspect that `pathmut` will end up contributing to the list of naming conventions.  I'll try to investigate the many path manipulation libraries available in different programming languages, then select the most appropriate ones for my utility.

## Conclusion

This realization has given me the sudden inspiration to clear the ambiguity and unite under a naming standard!  I don't think I'll go so far as to [buy a domain to discuss it](https://stringcase.org/) but I will be extending `pathmut` to allow for a lot of functionality.  And with this, will come documentation to support and describe the terminology used.  I'll be sure to write a follow up when `pathmut` gets a few more updates.
