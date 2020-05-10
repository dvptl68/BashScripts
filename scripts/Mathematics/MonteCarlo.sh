#!/bin/bash

n=-1
validN=false
until [ "$validN" = "true" ]; do
  read -p "How many points should be used in the estimation? "  n
  if [ "$n" == "" ]; then
    echo "You must enter a positive integer!"
  else
    if ! [[ "$n" =~ ^[0-9]+$ ]]; then
      echo "You must enter a positive integer!"
    else
      validN=true
    fi
  fi
done

dec=-1
validD=false
until [ "$validD" = "true" ]; do
  read -p "How many decimal places should be used in the estimation? "  dec
  if [ "$dec" == "" ]; then
    echo "You must enter a positive integer!"
  else
    if ! [[ "$dec" =~ ^[0-9]+$ ]]; then
      echo "You must enter a positive integer!"
    else
      validD=true
    fi
  fi
done

interval=0
subInterval=0
while [ $interval -lt $n ]; do
  oneR=$(($RANDOM%2))
  twoR=$(($RANDOM%2))
  centerPoint=1
  ((interval++))
  for j in `seq $dec`; do
    oneD=$(($RANDOM%9))
    ((oneR*=10))
    ((oneR+=oneD))
    twoD=$(($RANDOM%9))
    ((twoR*=10))
    ((twoR+=twoD))
    ((centerPoint*=10))
  done
  distance=$(($(($(($oneR-$centerPoint))**2))+$(($(($twoR-$centerPoint))**2))))
  for k in `seq $dec`; do
    ((centerPoint*=10))
  done
  if [ $distance -lt $centerPoint ]; then
    ((subInterval++))
  fi
done