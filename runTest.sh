#!/bin/bash
echo >> times.txt
echo >> times.txt
if [ -z "$1" ]; then
  echo 'Please call me like : "./runTest.sh range"'
  exit 0
else
  range=$1
fi

# require dependencies
gcc="$(which gcc)"
if [[ "$gcc" == "" ]]; then
  echo 'failed to find suitable c compiler'
  exit 1
fi
java="$(which java)"
if [[ "$java" == "" ]]; then
  echo 'failed to find suitable jvm'
  exit 1
fi
jruby="$(which jruby)"
if [[ "$jruby" == "" ]]; then
  echo 'failed to find suitable jruby runtime'
  exit 1
fi
ruby="$(which ruby)"
if [[ "$ruby" == "" ]]; then
  echo 'failed to find suitable ruby runtime'
  exit 1
fi
python="$(which python)"
if [[ "$python" == "" ]]; then
  echo 'failed to find suitable python runtime'
  exit 1
fi

echo "testing everything! This could take a very long time depending on your range"
echo "=========== C =============" >> times.txt
gcc -std=c11 prime.c
{ time ./a.out $range ; } >> /dev/null 2>> times.txt
echo >> times.txt
rm a.out
echo "========= Ruby ============" >> times.txt
{ time ruby prime.rb $range ; } >> /dev/null 2>> times.txt
echo >> times.txt
echo "========= JRuby ===========" >> times.txt
{ time jruby prime.rb $range ; } >> /dev/null 2>> times.txt
echo >> times.txt
echo "========= Python ==========" >> times.txt
{ time python prime.py $range ; } >> /dev/null 2>> times.txt
echo >> times.txt
echo "========== Java ===========" >> times.txt
javac Prime.java
{ time java Prime $range ; } >> /dev/null 2>> times.txt
echo >> times.txt
rm Prime.class
