#!/usr/bin/awk -f
BEGIN {
    i=0;
    while (i++ < 10000){
        x=int(rand()*100 + 0.5)
        y[x]++;
    }
    for (i=0; i<100; i++){
        printf(y[i])
        printf("\n",i)
    }
    exit;
}