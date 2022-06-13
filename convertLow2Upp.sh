#!/bin/bash

echo "Please specify the file that you want to convert (Path/of/file/filename) " 
read FILE
echo
read -p " Which operation: 1. Uppercase-Lowercase 2. Lowercase-Uppercase " IN
if [ $IN -eq 1 ];then
  echo " Converting Upper to Lower case"
  tr '[:upper:]' '[:lower:]' < $FILE
fi
if [ $IN -eq 2 ];then
  echo "Converting Lower to Upper case"
  tr '[:lower:]' '[:upper:]' < $FILE
fi


