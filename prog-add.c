
#include <stdio.h>
#include <stdlib.h>
extern int funct1(int x,int y);
int main(int argc, char **argv){    /*void*/
	int x=atoi(argv[1]);
	int y=atoi(argv[2]);
	printf("%d + %d =  %d\n",x,y,funct1(x,y));
	return 0;
}

