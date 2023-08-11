#!/bin/bash

# Вводим два числа
echo "Enter first num: "
read a
echo "Enter second num: "
read b
 
# Выбираем операцию (+ - / *)
echo "Enter operand :"
echo "1. '+'"
echo "2. '-'"
echo "3. '*'"
echo "4. '/'"
read op
 
case $op in
  1)res=`echo $a + $b | bc`
  ;;
  2)res=`echo $a - $b | bc`
  ;;
  3)res=`echo $a \* $b | bc`
  ;;
  4)res=`echo "scale=2; $a / $b" | bc`
  ;;
esac
echo "Result : $res"