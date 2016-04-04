#include<stdio.h>
#define true 1
#define false 0
#define bool int

struct Prime {
  int p;
  struct Prime *n;
};

bool test(int i) {
  for(int n=2;n<i;n++){
    if(i%n == 0) {
      return false;
    }
  }
  return true;
}

int main() {
  int primes[100000];
  int primdex = 0;
  for(int i=0;i<1000000;i++){
    if(test(i) == true) { 
      primes[primdex] = i;
      primdex++;
    }
  }
  printf("%d \n", primdex);
  return 0;
}
