#!/bin/bash
if [ -z "$1" ]; then
  echo 'Please call me like : "./runTest.sh range"'
  exit 0
else
  range = $1
fi

echo "testing everything! This could take upwards of an hour"
echo "=========== C =============" >> times
gcc prime.c
time a.out $range >> times
echo >> times
rm a.out
echo "========= Ruby ============" >> times
time ruby prime.rb $range >> times
echo >> times
echo "========= JRuby ===========" >> times
time jruby prime.rb $range >> times
echo >> times
echo "========= Python ==========" >> times
time python prime.py $range >> times
echo >> times
echo "========== Java ===========" >> times
javac Prime.java
time java Primes $range >> times
echo >> times
rm Prime.class
