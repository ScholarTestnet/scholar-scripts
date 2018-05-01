#!/bin/bash

kill `cat nodeos.pid`
kill `cat ipfs.pid`
rm nodeos.pid
rm ipfs.pid
