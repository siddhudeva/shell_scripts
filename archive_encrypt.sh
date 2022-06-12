#!/bin/bash

echo "This script will be used to package the content and encrypt the contenet"
echo
echo "Please Enter File name that package"
read N
echo "Enter path"
read P
name=$N
path=$P
tar -czvf "$name.tar.gz" "$path"
gpg -c "$name.tar.gz"
rm -rf "$name.tar.gz"

