#!/bin/bash
#It creates a password 16 chars long that contains numbers,letters(upper/lower case) and symbols(_!.@#$%&?=-) .
#Characters should not be repeated if password is less then 21 char long
function usage(){
  echo "Usage: $0 <password-lenght>"
}

if [ "$#" -eq 1 ]
  then
    if [ "$1" -lt 21 ]
          then
               XARGSN="4"
			   NO_REPEAT="| grep -vi "'\(.\).*\1'" "
			   #echo ${NO_REPEAT}
    elif [ "$1" -gt 20 ] && [ "$1" -lt 65 ]
	  then
	       XARGSN="2"
    else
	  XARGSN="1"
    fi	  
    eval "cat /dev/urandom |tr -dc 'a-zA-Z0-9-!@#$%^&*_+=-' |fold -w $1 ${NO_REPEAT} |head -n 16 | xargs -n $XARGSN"
  else
    usage
fi
