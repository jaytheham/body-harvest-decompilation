#include <ultra64.h>
#include "common.h"

/*
 * guPerspectiveF — build a perspective projection matrix (float form).
 *
 * mf       : output 4x4 float matrix
 * perspNorm: if non-NULL, receives a normalisation value for the projection
 * fovy     : vertical field of view in degrees
 * aspect   : width / height aspect ratio
 * near     : near clip plane distance
 * far      : far clip plane distance
 * scale    : uniform scale applied to all matrix elements on exit
 */
void guPerspectiveF(float mf[4][4], u16 *perspNorm, float fovy, float aspect,
                    float near, float far, float scale) {
    f32 sp20;
    f32 sp1C;
    f32 temp_f2;
    f32 temp_f14;
    f32 temp_f18;
    f32 temp_f12;
    f32 var_f10;
    f32 var_f12;
    f32 var_f14;
    f32 var_f16;
    f32 temp_f8;
    f32 temp_f4;
    f32 temp_f2_2;
    f64 temp_f0;
    f32 *var_v0;
    s32 var_v1;
    u32 temp_t8;

    guMtxIdentF(mf);

    /* fovy (degrees) * pi/180 * 0.5 → half-angle in radians */
    temp_f14 = (f32)((f64)fovy * perspective_rodata_0000);
    temp_f12 = temp_f14 / 2.0f;
    sp1C = temp_f12;
    sp20 = __cosf(temp_f12);
    temp_f2 = sp20 / sinf(temp_f12);           /* cot(fovy/2) */

    temp_f18 = near + far;
    var_v0 = (f32 *)mf;
    temp_f12 = near - far;

    var_v0[11] = -1.0f;                        /* mf[2][3] */
    var_v0[5]  = temp_f2;                      /* mf[1][1] = cot(fovy/2) */
    var_v0[10] = temp_f18 / temp_f12;          /* mf[2][2] = (n+f)/(n-f) */
    var_v0[0]  = temp_f2 / aspect;             /* mf[0][0] */
    var_v0[15] = 0.0f;                         /* mf[3][3] */
    var_v0[14] = (2.0f * near * far) / temp_f12; /* mf[3][2] */

    /* multiply all 16 matrix elements by scale */
    var_v1 = 1;
    var_f16 = var_v0[1];
    var_f10 = var_v0[0] * scale;
    var_f12 = var_v0[2];
    var_f14 = var_v0[3];
    if (var_v1 != 4) {
        do {
            temp_f8  = var_f16 * scale;
            var_f16  = var_v0[5];
            temp_f4  = var_f12 * scale;
            var_f12  = var_v0[6];
            var_v1  += 1;
            temp_f2_2 = var_f14 * scale;
            var_f14  = var_v0[7];
            var_v0[0] = var_f10;
            var_f10  = var_v0[4] * scale;
            var_v0[1] = temp_f8;
            var_v0[2] = temp_f4;
            var_v0  += 4;
            var_v0[-1] = temp_f2_2;
        } while (var_v1 != 4);
    }
    var_v0 += 4;
    var_v0[-4] = var_f10;
    var_v0[-3] = var_f16 * scale;
    var_v0[-2] = var_f12 * scale;
    var_v0[-1] = var_f14 * scale;

    if (perspNorm != NULL) {
        temp_f0 = (f64)temp_f18;
        if (temp_f0 <= 2.0) {
            *perspNorm = 0xFFFF;
            return;
        }
        temp_t8 = (u32)(131072.0 / temp_f0);
        *perspNorm = (s16)temp_t8;
        if ((temp_t8 & 0xFFFF) <= 0) {
            *perspNorm = 1;
        }
    }
}

/*
 * guPerspective — build a perspective projection matrix (fixed-point Mtx form).
 * Delegates to guPerspectiveF then converts via guMtxF2L.
 */
void guPerspective(Mtx *m, u16 *perspNorm, float fovy, float aspect, float near,
                   float far, float scale) {
    float mf[4][4];

    guPerspectiveF(mf, perspNorm, fovy, aspect, near, far, scale);
    guMtxF2L(mf, m);
}
