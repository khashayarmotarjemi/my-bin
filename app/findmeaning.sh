#/bin/bash

word=$(xclip -out -selection primary)
search="$word meaning "
xdg-open "http://www.google.com/search?q=$search"

