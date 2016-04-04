def test(suspect):
    for i in range(2, suspect):
        if suspect % i is 0:
            return False
    return True

primes = []
for i in range(1000000):
    if test(i) == True:
        primes.append(i)
print(len(primes))
