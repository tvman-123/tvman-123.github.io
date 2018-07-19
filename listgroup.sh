#!/usr/bin/env bash
getent passwd | while IFS=: read name trash
do
    groups $name 2>/dev/null | cut -f2 -d: | grep -i -q -w "$1" && echo $name
done
true
