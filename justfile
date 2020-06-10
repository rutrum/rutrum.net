alias b := build
build:
    zola build

alias s := serve
serve:
    zola serve

# Builds site and pushes to master on github
pages: confirm
    pkill zola
    zola build
    git subtree push --prefix public origin master

# User must type y or it fails
confirm: 
    #!/usr/bin/python3
    yn = input("Are you sure? [N/y] ")
    if yn != "y": 
        exit(1)
