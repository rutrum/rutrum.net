+++
title = "Resume Stack"
+++

The resume that you see in the [resume page](/resume) and in the **pdf** were both generated from [a few scripts](https://github.com/rutrum/resumestack) that makes queries on a sqlite database.  All of the data related to my work history and skills are stored in a local database on my machine.  I wrote two python scripts that generate HTML and LaTeX based on the content in the database.  Lastly I wrote a shell script that redirects the python output to the files stored on this website, and commits those changes to github.  So in one shell script I can keep my website and resume up to date!</p>