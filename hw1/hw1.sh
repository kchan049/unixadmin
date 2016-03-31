#!/bin/bash
#usage: ./cat.sh filename
let i=1
for i in "$@"
do
cat $i
done
