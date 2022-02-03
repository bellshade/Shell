#!/bin/bash
function isReturnValue(){
    echo "Hello World"
    return 55
}
isReturnValue
res=$?
echo $res
