#!/bin/bash

for (( i=0; i<=15; i++))
do
  if (( $i < 7 ))
  then
    continue
  fi
  echo "$i"
done
