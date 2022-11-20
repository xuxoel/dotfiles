#!/bin/sh

# Prints the current volume or  if muted.

case $BLOCK_BUTTON in
	1) setsid -f "$TERMINAL" -e pulsemixer ;;
	2) pamixer -t ;;
	4) pamixer --allow-boost -i 1 ;;
	5) pamixer --allow-boost -d 1 ;;
	3) notify-send "📢 Volume module" "\- Shows volume 🔊,  if muted.
- Middle click to mute.
- Scroll to change." ;;
	6) "$TERMINAL" -e "$EDITOR" "$0" ;;
esac

vol="$(wpctl get-volume @DEFAULT_AUDIO_SINK@)"

# If muted, print  and exit
[ "$vol" != "${vol%\[MUTED\]}" ] && echo  && exit

vol="${vol#Volume: }"
split() {
	# For ommiting the . without calling and external program.
	IFS=$2
	set -- $1
	printf '%s' "$@"
}
vol="$(split "$vol" ".")"
vol="${vol##0}"

case 1 in
	$((vol >= 50)) ) icon="🔊 " ;;
	$((vol >= 1)) ) icon="🔈 " ;;
	* ) echo 🔇 && exit ;;
esac

echo "$icon$vol%"
