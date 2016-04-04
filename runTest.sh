#!/bin/bash
echo "testing everything! This could take upwards of an hour"
echo "=========== C =============" >> times
time a.out >> times
echo >> times
echo "========= Ruby ============" >> times
time ruby prime.rb >> times
echo >> times
echo "========= JRuby ===========" >> times
time jruby prime.rb >> times
echo >> times
echo "========== Java ===========" >> times
time java Primes >> times
echo >> times
