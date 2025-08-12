#!/bin/bash

NUMBER1=$1
NUMBER2=$2

R="\e[31m"

SUM=$((NUMBER1+NUMBER2))

if [$SUM -eq 90]

echo -e "It is a good sign ... $R$SUM"
else

echo -e "It is not a good sign .... $R$SUM"
fi
