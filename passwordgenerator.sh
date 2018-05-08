#!/bin/bash
#It creates a password 16 chars long that contains numbers,letters(upper/lower case) and symbols(_!.@#$%&?=-) .
#Characters should not be repeated
#16 passwords are printed,4 password for each line

cat /dev/urandom |tr -dc 'a-zA-Z0-9-_!.@#$%&?=-' |fold -w 16 |grep -vi '\(.\).*\1' |head -n 16 |xargs -n 4
