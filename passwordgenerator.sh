#!/bin/bash
#It creates a password 16 chars long that contains numbers,letters(upper/lower case) and symbols(_!.@#$%&?=-) .
#Characters should not be repeated
#16 passwords are printed,4 password for each line

function usage(){
  echo "Usage: $0 <password-lenght>"
}

if [ "$#" -eq 1 ]
  then
    if [ "$1" -le 20 ]
      then
        cat /dev/urandom |tr -dc 'a-zA-Z0-9-!@#$%^&*_+=-' |fold -w $1 |grep -vi '\(.\).*\1' |head -n 16 |xargs -n 4
      else
        cat /dev/urandom |tr -dc 'a-zA-Z0-9-!@#$%^&*_+=-' |fold -w $1 |head -n 16 |xargs -n 4
    fi
  else
    usage
fi
