#!/bin/sh

# shell script to generate random keys

if [ "$#" -ne 1 ]; then
   echo "usage: urandkey <byte size>"
   exit
fi


head -c $1 /dev/urandom | tr -cd "A-Za-z0-9@#\!\$%^&*()_+=-~;,.<>/[]{}|?:✈'\\\`" && echo
