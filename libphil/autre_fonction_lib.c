#include <stdio.h>

int autre_fonction_lib(void)
{
	printf("Entering %s()\n", __FUNCTION__);
	printf("Returning from %s()\n", __FUNCTION__);
	return 0;
}
