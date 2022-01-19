for i in {1..50}
do
    if (( $i%3 == 0 && $i%5 == 0 ))
    then
        echo "FizzBuzz"
    elif (( $i%5 == 0 ))
    then
        echo "Buzz"
    elif (( $i%3 == 0 ))
    then
        echo "Fizz"
    else
        echo $i
    fi
done
