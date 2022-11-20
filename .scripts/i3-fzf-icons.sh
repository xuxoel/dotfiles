#!/bin/sh

chosen=$(cut -d ';' -f1 ~/.local/share/fonts/* | fzf | sed "s/ .*//") 

[ -z "$chosen" ] && exit

# If you run this command with an argument, it will automatically insert the character. Otherwise, show a message that the emoji has been copied.
if [ -n "$1" ]; then
  xdotool type "$chosen"
else
  printf "$chosen" | xclip -selection clipboard
  notify-send "'$chosen' copied to clipboard." 
fi
