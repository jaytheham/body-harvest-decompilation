#include <ultra64.h>
#include "common.h"

/*
 * guLookAtReflectF — build a view matrix and populate a LookAt lighting descriptor.
 *
 * mf                   : output 4x4 float matrix (same layout as guLookAtF)
 * l                    : output LookAt struct — right vector in l[0].l.dir,
 *                        up vector in l[1].l.dir (quantized to signed bytes)
 * xEye/yEye/zEye       : camera position
 * xAt/yAt/zAt          : look-at target position
 * xUp/yUp/zUp          : world up vector
 *
 * Computes the same orthonormal basis as guLookAtF and additionally writes the
 * basis vectors into the LookAt lighting structure as signed bytes scaled by 128
 * and clamped to s8 max (127.0, from lookatref_rodata_0000).
 */
void guLookAtReflectF(float mf[4][4], LookAt *l,
                      float xEye, float yEye, float zEye,
                      float xAt, float yAt, float zAt,
                      float xUp, float yUp, float zUp) {
    f32 sp70;   /* up_z (normalized) */
    f32 sp6C;   /* up_y (normalized) */
    f32 sp68;   /* up_x (normalized) */
    f32 temp_f2;
    f32 temp_f4;
    f32 temp_f6;
    f32 temp_f8;
    f32 temp_f10;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f18;
    f32 var_f20;  /* forward_x (negated) */
    f32 var_f22;  /* forward_y (negated) */
    f32 var_f24;  /* forward_z (negated) */
    f32 var_f26;  /* right_x */
    f32 var_f28;  /* right_y */
    f32 var_f30;  /* right_z */
    f64 temp_f0_d;
    f32 *var_v0;

    guMtxIdentF(mf);
    var_v0 = (f32 *)mf;

    /* forward = at - eye */
    temp_f4 = xAt - xEye;
    var_f22 = yAt - yEye;
    var_f24 = zAt - zEye;

    /* normalize forward with scale = -1/|forward| */
    temp_f8 = sqrtf((temp_f4 * temp_f4) + (var_f22 * var_f22) + (var_f24 * var_f24));
    temp_f2 = (f32)((-1.0) / (f64)temp_f8);
    var_f20 = temp_f4 * temp_f2;
    var_f22 = var_f22 * temp_f2;
    var_f24 = var_f24 * temp_f2;

    /* right = up x forward (cross product) */
    var_f26 = (yUp * var_f24) - (zUp * var_f22);
    var_f28 = (zUp * var_f20) - (xUp * var_f24);
    var_f30 = (xUp * var_f22) - (yUp * var_f20);

    /* normalize right with scale = 1/|right| */
    temp_f8 = sqrtf((var_f26 * var_f26) + (var_f28 * var_f28) + (var_f30 * var_f30));
    temp_f14 = (f32)(1.0 / (f64)temp_f8);
    var_f26 = var_f26 * temp_f14;
    var_f28 = var_f28 * temp_f14;
    var_f30 = var_f30 * temp_f14;

    /* new_up = forward x right */
    temp_f2 = (var_f22 * var_f30) - (var_f24 * var_f28);
    temp_f16 = (var_f24 * var_f26) - (var_f20 * var_f30);
    temp_f18 = (var_f20 * var_f28) - (var_f22 * var_f26);

    sp68 = temp_f2;
    sp6C = temp_f16;
    sp70 = temp_f18;

    /* normalize new_up with scale = 1/|new_up| */
    temp_f8 = sqrtf((sp68 * sp68) + (sp6C * sp6C) + (sp70 * sp70));
    temp_f14 = (f32)(1.0 / (f64)temp_f8);
    sp68 = sp68 * temp_f14;
    sp6C = sp6C * temp_f14;
    sp70 = sp70 * temp_f14;

    /* quantize right vector into l[0].l.dir, clamped to [x, 127] */
    temp_f0_d = (f64)var_f26 * 128.0;
    if (temp_f0_d < lookatref_rodata_0000) { temp_f0_d = temp_f0_d; } else { temp_f0_d = lookatref_rodata_0000; }
    l->l[0].l.dir[0] = (s8)(s32)temp_f0_d;

    temp_f0_d = (f64)var_f28 * 128.0;
    if (temp_f0_d < lookatref_rodata_0000) { temp_f0_d = temp_f0_d; } else { temp_f0_d = lookatref_rodata_0000; }
    l->l[0].l.dir[1] = (s8)(s32)temp_f0_d;

    temp_f0_d = (f64)var_f30 * 128.0;
    if (temp_f0_d < lookatref_rodata_0000) { temp_f0_d = temp_f0_d; } else { temp_f0_d = lookatref_rodata_0000; }
    l->l[0].l.dir[2] = (s8)(s32)temp_f0_d;

    /* quantize up vector into l[1].l.dir */
    temp_f0_d = (f64)sp68 * 128.0;
    if (temp_f0_d < lookatref_rodata_0000) { temp_f0_d = temp_f0_d; } else { temp_f0_d = lookatref_rodata_0000; }
    l->l[1].l.dir[0] = (s8)(s32)temp_f0_d;

    temp_f0_d = (f64)sp6C * 128.0;
    if (temp_f0_d < lookatref_rodata_0000) { temp_f0_d = temp_f0_d; } else { temp_f0_d = lookatref_rodata_0000; }
    l->l[1].l.dir[1] = (s8)(s32)temp_f0_d;

    temp_f0_d = (f64)sp70 * 128.0;
    if (temp_f0_d < lookatref_rodata_0000) { temp_f0_d = temp_f0_d; } else { temp_f0_d = lookatref_rodata_0000; }
    l->l[1].l.dir[2] = (s8)(s32)temp_f0_d;

    /* zero all color/padding fields */
    l->l[0].l.col[0]  = 0;
    l->l[0].l.col[1]  = 0;
    l->l[0].l.col[2]  = 0;
    l->l[0].l.pad1    = 0;
    l->l[0].l.colc[0] = 0;
    l->l[0].l.colc[1] = 0;
    l->l[0].l.colc[2] = 0;
    l->l[0].l.pad2    = 0;
    l->l[1].l.col[0]  = 0;
    l->l[1].l.col[1]  = 0x80;
    l->l[1].l.col[2]  = 0;
    l->l[1].l.pad1    = 0;
    l->l[1].l.colc[0] = 0;
    l->l[1].l.colc[1] = 0x80;
    l->l[1].l.colc[2] = 0;
    l->l[1].l.pad2    = 0;

    /* fill matrix: columns are right, up, -forward */
    var_v0[0]  = var_f26;   /* right_x */
    var_v0[4]  = var_f28;   /* right_y */
    var_v0[8]  = var_f30;   /* right_z */
    var_v0[2]  = var_f20;   /* -forward_x */
    var_v0[6]  = var_f22;   /* -forward_y */
    var_v0[10] = var_f24;   /* -forward_z */
    var_v0[1]  = sp68;      /* up_x */
    var_v0[5]  = sp6C;      /* up_y */
    var_v0[9]  = sp70;      /* up_z */

    /* translation: -(rotation * eye) */
    var_v0[12] = -(((f32)xEye * var_f26) + ((f32)yEye * var_f28) + ((f32)zEye * var_f30));
    var_v0[13] = -(((f32)xEye * sp68) + ((f32)yEye * sp6C) + ((f32)zEye * sp70));
    var_v0[14] = -(((f32)xEye * var_f20) + ((f32)yEye * var_f22) + ((f32)zEye * var_f24));
    var_v0[15] = 1.0f;

    var_v0[3]  = 0.0f;
    var_v0[7]  = 0.0f;
    var_v0[11] = 0.0f;
}

/*
 * guLookAtReflect — view matrix with LookAt (fixed-point Mtx form).
 * Delegates to guLookAtReflectF then converts via guMtxF2L.
 */
void guLookAtReflect(Mtx *m, LookAt *l,
                     float xEye, float yEye, float zEye,
                     float xAt, float yAt, float zAt,
                     float xUp, float yUp, float zUp) {
    float mf[4][4];

    guLookAtReflectF(mf, l, xEye, yEye, zEye, xAt, yAt, zAt, xUp, yUp, zUp);
    guMtxF2L(mf, m);
}
