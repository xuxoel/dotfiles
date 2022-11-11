#!/bin/sh

BRIGHT=`cat brightness.txt`

if [ "$1" = '+' ]; then
    NEWBRIGHT=$(echo "$BRIGHT + 0.05" | bc)
    if [ "$(echo "$NEWBRIGHT > 1.0" | bc)" -eq 1 ]; then
        NEWBRIGHT='1.0'
    fi
elif [ "$1" = '-' ]; then
    NEWBRIGHT=$(echo "$BRIGHT - 0.05" | bc)
    if [ "$(echo "$NEWBRIGHT < 0.0" | bc)" -eq 1 ]; then
        NEWBRIGHT='0.0'
    fi
fi
echo $NEWBRIGHT > brightness.txt

DISP=$(xrandr -q | grep ' connected' | head -n 1 | cut -d ' ' -f1)
xrandr --output $DISP --brightness $NEWBRIGHT
