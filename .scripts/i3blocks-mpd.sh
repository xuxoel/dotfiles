#!/bin/bash                                                                                                     

SONG="$(mpc current)"
STATUS="$(mpc | grep [#] | awk -F'[][]' '{print $2}')"

if [[ "${STATUS}" == 'playing' ]]; then
   echo "playing: ${SONG}"
elif [[ "${STATUS}" == 'paused' ]]; then
   #echo "paused: ${SONG}"
   echo "paused: ${SONG}"
else
    echo ''
fi
