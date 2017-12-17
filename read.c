#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define BUFFSIZE 256

int main(int argc,char *argv[]){
  char buff[BUFFSIZE];
  char filepath[] = "./1G.dat";
  FILE *fp;

  if ((fp = fopen(filepath, "r")) == NULL) {
    printf("%s can not open\n",filepath);
    exit(EXIT_FAILURE);
  }
  unsigned long sum = 0;

  while( fgets(buff, BUFFSIZE, fp) != NULL){
    sum += strlen(buff);
  }
  printf("%ld bytes read\n",sum);
  return 0;
}
