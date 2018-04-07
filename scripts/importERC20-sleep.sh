#!/bin/bash
x=1

csvtool col 2,3 snapshot_282.csv > pubKey_balance.txt

while read line
do
    if [ $x  % 2 == 0 ]
        sleep 2
    pubKeyBalance=$(echo "$line" | tr "," " ")
    username=$(pwgen 9 1 -A -0)

    ./createAccountsAndSendTransaction.sh $username $pubKeyBalance
    let "x++"
done < pubKey_balance.txt