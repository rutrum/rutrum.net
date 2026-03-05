serve:
    zola serve --drafts

build:
    zola build

prod:
    zola build
    microserver -p 1111 public

tree:
    tree -I "public|static" --dirsfirst
