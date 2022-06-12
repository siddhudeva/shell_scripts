#!/bin/bash
echo "This script is to do additions"
read -p "enter your first number " a
read -p "enter your second number " b
echo "What do you want to do ? Addition/Substraction/Multiplicatio"
read -p "enter function (A/S/M) " F
case $F in
A)
  echo " $a + $b"
  echo "Total = $((a+b))"
;;
S)
  echo "$a - $b"
  echo "Total = $((a-b))"
;;
M)
  echo "$a X $b"
  echo "Total = $((a*b))"
;;
*)
  echo "This Function is not available"
;;
esac
