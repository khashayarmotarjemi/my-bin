word = $(xclip)
notify-send "definition: $word" "$(trans -e google -no-ansi -d $word)"
