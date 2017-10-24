#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "ma_fonction.h"
#include <fonction_lib.h>

int main(void)
{
	printf("main() called\n");
	ma_fonction();
	fonction_lib();
	printf("main() returning\n");
	return 0;
}
