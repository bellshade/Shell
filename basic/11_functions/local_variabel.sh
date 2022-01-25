#!/bin/bash

function isName(){
  local name=$1
  echo "My Name : $name"
}
name="Dias"
echo "My Name : $name => Before"
isName Kiyo
echo "My Name : $name => After"
