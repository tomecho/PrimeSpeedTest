#include<stdio.h>
#include<stdlib.h>
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

int main(int argc, char** argv) {
  if(argc == 1){
    printf("please call me like './prime range'\n");
    return 0;
  }
  int range = atoi(argv[1]);
  int primes[(100 + range/6)];
  int primdex = 0;
  for(int i=0;i<range;i++){
    if(test(i) == true) { 
      primes[primdex] = i;
      primdex++;
    }
  }
  printf("%d \n", primdex);
  return 0;
}
