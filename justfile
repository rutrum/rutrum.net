serve:
    zola serve -i 0.0.0.0 --drafts --base-url /

build:
    zola build

prod:
    zola build
    microserver -p 1111 public

tree:
    tree -I "public|static" --dirsfirst
