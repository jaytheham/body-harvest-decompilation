Incorrect ASM in the map camera movement. IDO stored the proposed X position in a second stack slot and reloaded it for the constrained movement test.

    swc1    $f8,0x290(sp)
    ...
    lwc1    $f14,0x290(sp)

-> Code changed. Use a coordinate pair and keep its X member in a floating-point register. Load the Y snapshot before the X store in the unrestricted branch and use the same kind of snapshot in the constrained branch.

    proposed.x = temp_f2 - ((temp_f0 * sp2C0) - (sp2C8 * sp2BC));
    sp2C8 = (sp2C8 * sp2C0) - (temp_f0 * sp2BC);
    proposed.y = oldY + sp2C8;
    /* In the unrestricted branch */
    sp2C8 = proposed.y;
    var_s3->targetX = proposed.x;
    var_s3->targetY = sp2C8;

-> Correct ASM order and stack slot. The proposed X stays in a floating-point register while Y reloads from 0x28c.

    bnez    t3,a7b88
     swc1   $f10,0x28c(sp)
    lwc1    $f0,0x28c(sp)
    swc1    $f16,0x8(s3)
    swc1    $f0,0xc(s3)

The camera movement block has no structural diff rows. The Y reload and both final coordinate stores also match their register operands.
