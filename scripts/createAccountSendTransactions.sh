#!/bin/bash
# params (username public-key balance)

accountnames=$(./cleos.sh get accounts $2 | jq -r ".account_names")

if [[ "$accountnames" == "[]" ]] ; then
    ./cleos.sh create account eosio $1 $2 $2
    ./cleos.sh transfer eosio $1 $3 "ERC20" -f
else
    echo "$accountnames already exists. Skipping!"
fi
