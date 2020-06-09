alias b := build
build:
    zola build

alias s := serve
serve:
    zola serve

pages: confirm
    zola build
    git subtree push --prefix public origin master

confirm: 
    #!/usr/bin/python3
    yn = input("Are you sure? [N/y] ")
    if yn != "y": 
        exit(1)
