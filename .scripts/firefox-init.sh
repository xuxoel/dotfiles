#!/bin/bash
cat ~/.mozilla/init-urls | while read line 
do
    firefox --new-tab "$line" &
    sleep 0.5
done

