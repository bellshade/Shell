function isResult(){
    isPrime
    value=`factor $isNumber | wc -w`
    if [[ $value -eq 2 ]]
    then
        echo "$isNumber bilangan prima"
    else
        echo "$isNumber bukan bilangan prima"
    fi
}
function isPrime(){
    echo -e "Enter Number : \c"
    read isNumber
}
isResult
