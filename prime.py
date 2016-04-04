import sys
def test(suspect):
    for i in range(2, suspect):
        if suspect % i is 0:
            return False
    return True

if len(sys.argv) == 1:
    print('please call me like "python prime.py range"')
    sys.exit(0)
primes = []
for i in range(int(sys.argv[1])):
    if test(i) == True:
        primes.append(i)
print(len(primes))
