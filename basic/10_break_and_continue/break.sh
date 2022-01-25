#!/bin/bash

for (( num=1; num<=15; num++ ))
do
  if (( $num > 7 ))
  then
    break
  fi
  echo $num
done
