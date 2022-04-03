#!/bin/bash

WEBHOOK_URL=""

rtl_fm -E dc -F 0 -l 1 -A fast -g 25 -f 157.950M -s22050 | \
multimon-ng -q -c -a FLEX -a POCSAG512 -a POCSAG1200 -a POCSAG2400 -t raw -f alpha /dev/stdin | \
while read message
do
    curl \
       -H "Content-Type: application/json" \
       -d '{"username": "PagerBot", "content": "'"$message"'"}' \
       $WEBHOOK_URL
done
