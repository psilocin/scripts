#!/bin/sh

# shell script to generate random keys
# set an alias in your .bashrc with the below alias
# alias urandkey='/path/to/genkey.sh'

if [ "$#" -ne 1 ]; then
   echo "usage: urandkey <byte size>"
   exit
fi


head -c $1 /dev/urandom | tr -cd "A-Za-z0-9@#\!\$%^&*()_+=-~;,.<>/[]{}|?:✈'\\\`" && echo
