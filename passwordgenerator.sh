#!/usr/bin/env bash
#It creates a passwords that contain numbers,letters(upper/lower case) and symbols.

function usage(){
  echo "Usage: $0 <password-lenght>"
}

if [ "$#" -eq 1 ]
  then
    if [ "$1" -lt 21 ]
          then
               XARGSN="4"
    elif [ "$1" -gt 20 ] && [ "$1" -lt 65 ]
	  then
	       XARGSN="2"
    else
	  XARGSN="1"
    fi	  
	cat /dev/urandom |tr -dc 'A-Za-z0-9!#$%&()*+,-./:;<=>?@[\]^_{|}~' |fold -w $1 |head -n 16 | xargs -n $XARGSN
  else
    usage
fi
