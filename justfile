alias b := build
build:
    zola build

alias s := serve
serve:
    zola serve

prod:
    zola build
    microserver -p 1112 public

# Builds site and pushes to master on github
pages MSG: confirm
    pkill zola || true
    zola build
    git add .
    git commit -m "{{MSG}}"
    git push
    git subtree push --prefix public origin master

# User must type y or it fails
confirm: 
    #!/usr/bin/python3
    yn = input("Are you sure? [N/y] ")
    if yn != "y": 
        exit(1)
