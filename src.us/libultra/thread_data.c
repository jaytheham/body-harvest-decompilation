#include <ultra64.h>

typedef struct {
	OSThread *next;
	OSPri priority;
} ThreadQueueTail;

ThreadQueueTail D_800363A0_36FA0 = {NULL, -1};
OSThread *D_800363A8_36FA8 = (OSThread *)&D_800363A0_36FA0;
OSThread *D_800363AC_36FAC = (OSThread *)&D_800363A0_36FA0;
OSThread *D_800363B0_36FB0 = NULL;
OSThread *D_800363B4_36FB4 = NULL;
