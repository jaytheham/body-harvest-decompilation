#include <ultra64.h>
#include "common.h"


typedef union
{
	struct
	{
		unsigned int hi;
		unsigned int lo;
	} word;

	double	d;
} du;

typedef union
{
	unsigned int	i;
	float		f;
} fu;

#ifndef __GL_GL_H__

typedef	float	Matrix[4][4];

#endif

#define ROUND(d)	(int)(((d) >= 0.0) ? ((d) + 0.5) : ((d) - 0.5))
#define	ABS(d)		((d) > 0) ? (d) : -(d)

extern float	__libm_qnan_f;

void guOrthoF(float mf[4][4], float l, float r, float b, float t, float n, float f, float scale)
{
	int	i, j;

	guMtxIdentF(mf);

	mf[0][0] = 2/(r-l);
	mf[1][1] = 2/(t-b);
	mf[2][2] = -2/(f-n);
	mf[3][0] = -(r+l)/(r-l);
	mf[3][1] = -(t+b)/(t-b);
	mf[3][2] = -(f+n)/(f-n);
	mf[3][3] = 1;

	for (i=0; i<4; i++)
		for (j=0; j<4; j++)
		mf[i][j] *= scale;
}

#pragma GLOBAL_ASM("asm/nonmatchings/libultra/ortho.o/guOrtho.s")
