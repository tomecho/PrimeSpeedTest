#!/bin/ruby
def test(prime)
  for i in 2...prime
    if(prime % i == 0) 
      return false
    end
  end
  return true
end

def main
  if ARGV[0] == nil
    puts 'please call me like "ruby prime.rb range"'
    exit 1
  else
    @range = ARGV[0].to_i
  end
  primes = []
  for i in 0...@range
    if(test(i)) 
      primes.push(i)
    end
  end
  puts primes.length
end

main
