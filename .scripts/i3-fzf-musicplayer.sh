#!/bin/sh
mpc listall | fzf | mpc add && mpc play $(mpc playlist | wc -l)

#mapfile -t songs < <(mpc search -f '[%artist% - [%album% - ][%track% - ][%title%]]|%file%' filename '' | fzf -m)
#(( ${#songs[@]} > 0 )) || exit
#printf '%s\n' "${songs[@]}" | mpc -q add
#index=$(mpc playlist | wc -l)
#(( ${#songs[@]} > 1 )) && index=$(( index - ${#songs[@]} + 1))
#mpc -q play "$index"
