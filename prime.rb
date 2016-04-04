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
  primes = []
  for i in 0...1000000
    if(test(i)) 
      primes.push(i)
    end
  end
  puts primes.length
end

main
