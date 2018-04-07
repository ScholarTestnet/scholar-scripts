#!/bin/bash

csvtool col 2,3 snapshot_282.csv > pubKey_balance.txt

while read line
do
    pubKeyBalance=$(echo "$line" | tr "," " ")
    username=$(pwgen 9 1 -A -0)

    ./createAccountsAndSendTransaction.sh $username $pubKeyBalance
done < pubKey_balance.txt
