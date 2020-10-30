// ************************************************************************
// *****           Template for ANSI C console application.           *****
// ************************************************************************

#include <math.h>
#include <time.h>
#include <stdio.h>
#include <stdlib.h>

// ------------------------------------------------------------------------
int main(int argc, char* argv[])
{
  if(argc < 2) {
    fprintf(stderr, "ERROR: File name missing.\n");
    return -1;
  }

  clock_t start_time = clock();

  FILE* file = fopen(argv[1], "r");
  if(file == 0) {
    fprintf(stderr, "ERROR: Cannot open file '%s'.\n", argv[1]);
    return -1;
  }

  int no;
  char line[1024];

  no = 0;
  while(fgets(line, sizeof(line), file)) { // read file line by line
    no++;                                  // count line number
    printf("%2d: %s", no, line);           // print line
  }

  fclose(file);

  printf("elapsed time: %g ms", difftime(clock(), start_time));
  return 0;
}
