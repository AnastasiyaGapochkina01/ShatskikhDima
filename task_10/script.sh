#!/bin/bash
echo "Enter first var: "
read a
echo "Enter second var: "
read b
if [ $a -eq $b ]
  then
#echo "$?"
    echo "a == b"
  else
#echo "$?"
    echo "a != b"
fi