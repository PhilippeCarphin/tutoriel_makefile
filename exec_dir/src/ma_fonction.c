#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <autre_fonction_lib.h>

int ma_fonction(void)
{
	printf("ma_fonction() called\n");
	autre_fonction_lib();
	printf("ma_fonction() returning\n");
	return 0;
}
