#!/bin/sh

bookmark="$(xclip -o)"
file="$HOME/snippets"

if grep -q "^$bookmark$" "$file"; then
    notify-send "Alreay bookmarked!"
else
    notify-send "Bookmar added!" "$bookmark is now saved to the file."
    echo "$bookmark" >> "$file"
fi

