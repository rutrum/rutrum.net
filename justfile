build:
    zola build

serve:
    zola serve

prod:
    zola build
    microserver -p 1111 public

tree:
    tree -I "public|static" --dirsfirst
