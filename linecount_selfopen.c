#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define BUFFSIZE 32
#define UNUSED_VARIABLE(x) (void)(x)

int main(int argc, char *argv[]){
  UNUSED_VARIABLE(argc);
  UNUSED_VARIABLE(argv);
  char *filepath = "./1G.dat";

  char buff[BUFFSIZE];
  if (argc > 1) {
    filepath = argv[1];
  }
  printf("filepath is %s\n",filepath);

  FILE *fp;

  if ((fp = fopen(filepath, "r")) == NULL) {
    printf("%s can not open\n",filepath);
    exit(EXIT_FAILURE);
  }
  unsigned long line = 0;
  // unsigned long sum = 0;

  while(fgets(buff, BUFFSIZE, fp) != NULL){
    line += 1;
    // sum += strlen(buff);
  }
  // printf("%ld bytes read\n",sum);
  printf("%ld lines read\n",line);
  return 0;
}
