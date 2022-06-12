#!/bin/bash

echo "i am ready to encrypt your files :-) "
echo 
echo "Before Encrypting please place me, Where your files are in and you are now  in $(pwd) path"
echo
read -p "$(pwd) : here are your files yes/no " r
if [ "$r" = yes ]; then
  echo  "hey please select your file name $(ls -l) "
  read -p "file name to encrypt  " F

  if [ !-f $F ]; then
    echo "This file is not there, please give proper name"
    exit 1
  else
    gpg -c $F
    echo "file ecrypted "
    echo "deleting original file"
    rm -f $F
    echo "done, bye"
  fi
 else 
  echo "check your input"
 fi
