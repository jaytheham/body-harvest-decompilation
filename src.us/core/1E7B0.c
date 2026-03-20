#include <ultra64.h>
#include "common.h"

/*
 * guLookAtF — build a view matrix from eye position, look-at target, and up vector.
 *
 * mf   : output 4x4 float matrix
 * xEye, yEye, zEye : camera position
 * xAt, yAt, zAt    : look-at target position
 * xUp, yUp, zUp    : world up vector
 *
 * Computes orthonormal basis via cross products and fills in rotation +
 * translation columns.  The forward vector is negated during normalisation
 * (scale = -1/mag) so columns 0-2 hold right, up, and -forward directly.
 */
#ifdef NON_MATCHING
void guLookAtF(float mf[4][4], float xEye, float yEye, float zEye,
               float xAt, float yAt, float zAt,
               float xUp, float yUp, float zUp) {
    f32 sp20;
    f32 sp1C;
    f32 temp_f2;
    f32 temp_f4;
    f32 temp_f6;
    f32 temp_f8;
    f32 temp_f10;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f16;
    f32 var_f20;  /* forward_x (negated) */
    f32 var_f22;  /* forward_y (negated) */
    f32 var_f24;  /* forward_z (negated) */
    f32 var_f26;  /* right_x */
    f32 var_f28;  /* right_y */
    f32 var_f30;  /* right_z */
    f32 *var_v0;

    guMtxIdentF(mf);
    var_v0 = (f32 *)mf;

    /* forward = at - eye */
    temp_f4 = xAt - xEye;
    var_f22 = yAt - yEye;
    var_f24 = zAt - zEye;

    /* normalize forward with scale = -1/|forward| (column 2 is -forward) */
    temp_f8 = sqrtf((temp_f4 * temp_f4) + (var_f22 * var_f22) + (var_f24 * var_f24));
    sp1C = (f32)((-1.0) / (f64)temp_f8);
    var_f20 = temp_f4 * sp1C;
    var_f22 = var_f22 * sp1C;
    var_f24 = var_f24 * sp1C;

    /* right = yUp * forward_z - zUp * forward_y, etc. (cross product: up x forward) */
    var_f26 = (yUp * var_f24) - (zUp * var_f22);
    var_f28 = (zUp * var_f20) - (xUp * var_f24);
    var_f30 = (xUp * var_f22) - (yUp * var_f20);

    /* normalize right with scale = 1/|right| */
    temp_f8 = sqrtf((var_f26 * var_f26) + (var_f28 * var_f28) + (var_f30 * var_f30));
    sp20 = (f32)(1.0 / (f64)temp_f8);
    var_f26 = var_f26 * sp20;
    var_f28 = var_f28 * sp20;
    var_f30 = var_f30 * sp20;

    /* new_up = forward x right (cross product gives orthogonal up) */
    temp_f14 = (var_f22 * var_f30) - (var_f24 * var_f28);
    temp_f16 = (var_f24 * var_f26) - (var_f20 * var_f30);
    temp_f12 = (var_f20 * var_f28) - (var_f22 * var_f26);

    /* normalize new_up with scale = 1/|new_up| */
    temp_f8 = sqrtf((temp_f14 * temp_f14) + (temp_f16 * temp_f16) + (temp_f12 * temp_f12));
    sp20 = (f32)(1.0 / (f64)temp_f8);
    temp_f14 = temp_f14 * sp20;
    temp_f16 = temp_f16 * sp20;
    temp_f12 = temp_f12 * sp20;  /* up_z */

    /* fill rotation block: columns are right, up, -forward */
    var_v0[0]  = var_f26;    /* right_x */
    var_v0[4]  = var_f28;    /* right_y */
    var_v0[8]  = var_f30;    /* right_z */
    var_v0[1]  = temp_f14;   /* up_x */
    var_v0[5]  = temp_f16;   /* up_y */
    var_v0[9]  = temp_f12;   /* up_z (sp+0x74 normalized) */
    var_v0[2]  = var_f20;    /* -forward_x */
    var_v0[6]  = var_f22;    /* -forward_y */
    var_v0[10] = var_f24;    /* -forward_z */

    /* translation: -(rotation * eye) */
    var_v0[12] = -(((f32)xEye * var_f26) + ((f32)yEye * var_f28) + ((f32)zEye * var_f30));
    var_v0[13] = -(((f32)xEye * temp_f14) + ((f32)yEye * temp_f16) + ((f32)zEye * temp_f12));

    var_v0[3]  = 0.0f;   /* right_w = 0 */
    var_v0[7]  = 0.0f;   /* up_w    = 0 */
    var_v0[11] = 0.0f;   /* fwd_w   = 0 */

    temp_f2 = ((f32)xEye * var_f20) + ((f32)yEye * var_f22) + ((f32)zEye * var_f24);
    var_v0[14] = -temp_f2;   /* -dot(eye, -forward) */
    var_v0[15] = 1.0f;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/1E7B0/guLookAtF.s")
#endif


/*
 * guLookAt — view matrix (fixed-point Mtx form).
 * Delegates to guLookAtF then converts via guMtxF2L.
 */
#ifdef NON_MATCHING
void guLookAt(Mtx *m, float xEye, float yEye, float zEye,
              float xAt, float yAt, float zAt,
              float xUp, float yUp, float zUp) {
    float mf[4][4];

    guLookAtF(mf, xEye, yEye, zEye, xAt, yAt, zAt, xUp, yUp, zUp);
    guMtxF2L(mf, m);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/1E7B0/guLookAt.s")
#endif


/*
 * guAlignF — build an arbitrary-axis rotation matrix (Rodrigues' formula, float form).
 *
 * mf    : output 4x4 float matrix
 * angle : rotation angle in degrees
 * ax, ay, az : rotation axis (normalised internally via guNormalize)
 *
 * Converts angle to radians using rotate_rodata_0000 (pi/180), caches the
 * scale factor in rotate_bss_0000, then applies Rodrigues' rotation formula.
 */
#ifdef NON_MATCHING
void guAlignF(float mf[4][4], float angle, float ax, float ay, float az) {
    f32 sp3C;   /* angle * scale */
    f32 sp34;   /* sin(angle) */
    f32 sp30;   /* cos(angle) */
    f32 sp2C;   /* ax*ay*(1-cos) */
    f32 sp28;   /* ay*az*(1-cos) */
    f32 sp24;   /* ax*az*(1-cos) */
    f32 temp_f0;
    f32 temp_f2;
    f32 temp_f4;
    f32 temp_f6;
    f32 temp_f8;
    f32 temp_f10;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f18;
    f32 *var_v0;

    rotate_bss_0000 = rotate_rodata_0000;  /* cache pi/180 scale factor */
    sp3C = ax;
    sp3C = (f32)sp3C;  /* ax (passed in $a2 slot) */
    /* axis components stored to stack: ax=sp+0x40, ay=sp+0x44, az=sp+0x48 */
    guNormalize(&ax, &ay, &az);

    sp3C = angle * rotate_bss_0000;    /* angle * pi/180 (degrees to radians) */
    sp34 = sinf(sp3C);
    sp30 = __cosf(sp3C);

    temp_f12 = sp34;
    temp_f14 = sp30;

    /* pre-compute pairwise products with (1-cos) */
    temp_f16 = (ax * ay) * (1.0f - temp_f14);   /* ax*ay*(1-cos) */
    sp2C = temp_f16;
    temp_f18 = (ay * az) * (1.0f - temp_f14);   /* ay*az*(1-cos) */
    sp28 = temp_f18;
    temp_f6  = (ax * az) * (1.0f - temp_f14);   /* ax*az*(1-cos) */
    sp24 = temp_f6;

    guMtxIdentF(mf);
    var_v0 = (f32 *)mf;

    /* Rodrigues' rotation matrix elements */
    temp_f0 = ax * ax;                                   /* ax² */
    temp_f4 = (1.0f - temp_f0) * temp_f12;              /* (1-ax²)*cos */
    var_v0[0] = temp_f4 + temp_f0;                      /* (1-ax²)*cos + ax² */

    temp_f10 = ax * temp_f14;                           /* ax*sin */
    temp_f6 = sp28 - temp_f10;                          /* ay*az*(1-cos) - ax*sin */
    var_v0[9] = temp_f6;                                 /* mf[2][1] */
    temp_f8 = ax * temp_f14;
    temp_f4 = sp28 + temp_f8;                           /* ay*az*(1-cos) + ax*sin */
    var_v0[6] = temp_f4;                                 /* mf[1][2] */

    temp_f0 = ay * ay;                                   /* ay² */
    temp_f10 = (1.0f - temp_f0) * temp_f12;             /* (1-ay²)*cos */
    var_v0[5] = temp_f10 + temp_f0;                     /* (1-ay²)*cos + ay² */

    temp_f10 = ay * temp_f14;                           /* ay*sin */
    temp_f6 = sp24 + temp_f10;                          /* ax*az*(1-cos) + ay*sin */
    var_v0[8] = temp_f6;                                 /* mf[2][0] */
    temp_f4 = sp24 - temp_f10;                          /* ax*az*(1-cos) - ay*sin */
    var_v0[2] = temp_f4;                                 /* mf[0][2] */

    temp_f10 = az * temp_f14;                           /* az*sin */
    temp_f6 = sp2C - temp_f10;                          /* ax*ay*(1-cos) - az*sin */
    var_v0[4] = temp_f6;                                 /* mf[1][0] */
    temp_f4 = sp2C + temp_f10;                          /* ax*ay*(1-cos) + az*sin */
    var_v0[1] = temp_f4;                                 /* mf[0][1] */

    temp_f0 = az * az;                                   /* az² */
    temp_f4 = (1.0f - temp_f0) * temp_f12;              /* (1-az²)*cos */
    var_v0[10] = temp_f4 + temp_f0;                     /* (1-az²)*cos + az² */
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/1E7B0/guAlignF.s")
#endif


/*
 * guAlign — arbitrary-axis rotation matrix (fixed-point Mtx form).
 * Delegates to guAlignF then converts via guMtxF2L.
 */
#ifdef NON_MATCHING
void guAlign(Mtx *m, float angle, float ax, float ay, float az) {
    float mf[4][4];

    guAlignF(mf, angle, ax, ay, az);
    guMtxF2L(mf, m);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/1E7B0/guAlign.s")
#endif


