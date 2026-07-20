import struct

with open('build/bh.us.bin', 'rb') as f:
    d = f.read()

# func_80078828_877D8: ROM offset 0x877D8
start = 0x877D8
# Read enough bytes
size = 0x400
data = d[start:start+size]

print(f"Function at ROM 0x{start:X}, {len(data)} bytes")
print()

# Disassemble each instruction
for i in range(0, len(data), 4):
    if i + 4 > len(data):
        break
    w = struct.unpack('>I', data[i:i+4])[0]
    rom_off = start + i
    op = w >> 26
    rs = (w >> 21) & 0x1F
    rt = (w >> 16) & 0x1F
    rd = (w >> 11) & 0x1F
    imm = w & 0xFFFF
    
    # Detect return sequence
    if op == 0 and (w & 0x3F) == 8 and rs == 0 and rt == 0 and rd == 0:  # jr $ra
        print(f"0x{rom_off:X}: jr $ra   <--- RETURN")
    elif op == 0 and (w & 0x3F) == 0 and rt == 0 and rd == 0 and imm == 0:  # nop
        print(f"0x{rom_off:X}: nop")
    elif op == 0 and (w & 0x3F) == 0:  # sll
        print(f"0x{rom_off:X}: sll $r{rd},$r{rt},0x{(w>>6)&0x1F:X}")
    elif op == 3:  # jal
        target = (w & 0x3FFFFFF) << 2
        print(f"0x{rom_off:X}: jal 0x{target:08X}")
    elif op == 2:  # j
        target = (w & 0x3FFFFFF) << 2
        print(f"0x{rom_off:X}: j 0x{target:08X}")
    elif op == 4:  # beq
        print(f"0x{rom_off:X}: beq $r{rs},$r{rt},0x{rom_off+4+((imm<<16)>>14):X}")
    elif op == 5:  # bne
        print(f"0x{rom_off:X}: bne $r{rs},$r{rt},0x{rom_off+4+((imm<<16)>>14):X}")
    elif op == 6:  # blez
        print(f"0x{rom_off:X}: blez $r{rs},0x{rom_off+4+((imm<<16)>>14):X}")
    elif op == 7:  # bgtz
        print(f"0x{rom_off:X}: bgtz $r{rs},0x{rom_off+4+((imm<<16)>>14):X}")
    elif op == 8:  # addi
        print(f"0x{rom_off:X}: addi $r{rt},$r{rs},0x{imm:04X}")
    elif op == 9:  # addiu
        print(f"0x{rom_off:X}: addiu $r{rt},$r{rs},0x{imm:04X}")
    elif op == 10:  # slti
        print(f"0x{rom_off:X}: slti $r{rt},$r{rs},0x{imm:04X}")
    elif op == 12:  # andi
        print(f"0x{rom_off:X}: andi $r{rt},$r{rs},0x{imm:04X}")
    elif op == 13:  # ori
        print(f"0x{rom_off:X}: ori $r{rt},$r{rs},0x{imm:04X}")
    elif op == 15:  # lui
        print(f"0x{rom_off:X}: lui $r{rt},0x{imm:04X}")
    elif op == 32:  # lb
        print(f"0x{rom_off:X}: lb $r{rt},0x{imm:04X}($r{rs})")
    elif op == 33:  # lh
        print(f"0x{rom_off:X}: lh $r{rt},0x{imm:04X}($r{rs})")
    elif op == 35:  # lw
        print(f"0x{rom_off:X}: lw $r{rt},0x{imm:04X}($r{rs})")
    elif op == 37:  # lhu
        print(f"0x{rom_off:X}: lhu $r{rt},0x{imm:04X}($r{rs})")
    elif op == 40:  # sb
        print(f"0x{rom_off:X}: sb $r{rt},0x{imm:04X}($r{rs})")
    elif op == 41:  # sh
        print(f"0x{rom_off:X}: sh $r{rt},0x{imm:04X}($r{rs})")
    elif op == 43:  # sw
        print(f"0x{rom_off:X}: sw $r{rt},0x{imm:04X}($r{rs})")
    elif op == 0x11:  # cop1 (FPU)
        fmt = (w >> 21) & 0x1F
        if fmt == 0:  # MFC1
            print(f"0x{rom_off:X}: mfc1 $r{rt},$f{rd}")
        elif fmt == 4:  # CTC1
            print(f"0x{rom_off:X}: ctc1 $r{rt},$f{rd}")
        elif fmt == 16:  # C.F.s
            funct = w & 0x3F
            if funct == 0x3D:  # CVT.S.W
                print(f"0x{rom_off:X}: cvt.s.w $f{rd},$f{rd>>2}")
            elif funct == 0x24:  # CVT.W.S
                print(f"0x{rom_off:X}: cvt.w.s $f{rd},$f{rd>>2}")
            elif funct == 0x20:  # CVT.S.D
                print(f"0x{rom_off:X}: cvt.s.d $f{rd},$f{rd>>2}")
            elif funct == 0x21:  # CVT.D.S
                print(f"0x{rom_off:X}: cvt.d.s $f{rd},$f{rd>>2}")
            elif funct == 0x0:  # ADD.S
                print(f"0x{rom_off:X}: add.s $f{rd},$f{rs>>2},$f{rt>>2}")
            elif funct == 0x1:  # SUB.S
                print(f"0x{rom_off:X}: sub.s $f{rd},$f{rs>>2},$f{rt>>2}")
            elif funct == 0x2:  # MUL.S
                print(f"0x{rom_off:X}: mul.s $f{rd},$f{rs>>2},$f{rt>>2}")
            elif funct == 0x3:  # DIV.S
                print(f"0x{rom_off:X}: div.s $f{rd},$f{rs>>2},$f{rt>>2}")
            elif funct == 0x4:  # SQRT.S
                print(f"0x{rom_off:X}: sqrt.s $f{rd},$f{rt>>2}")
            else:
                print(f"0x{rom_off:X}: c.opc={funct:X} fmt={fmt:X}")
        elif fmt == 17:  # C.D.s
            funct = w & 0x3F
            if funct == 0:  # ADD.D
                print(f"0x{rom_off:X}: add.d $f{rd},$f{rs>>2},$f{rt>>2}")
            elif funct == 1:  # SUB.D
                print(f"0x{rom_off:X}: sub.d $f{rd},$f{rs>>2},$f{rt>>2}")
            elif funct == 2:  # MUL.D
                print(f"0x{rom_off:X}: mul.d $f{rd},$f{rs>>2},$f{rt>>2}")
            elif funct == 3:  # DIV.D
                print(f"0x{rom_off:X}: div.d $f{rd},$f{rs>>2},$f{rt>>2}")
            elif funct == 0x3D:  # CVT.S.W
                print(f"0x{rom_off:X}: cvt.s.w $f{rd},$f{rd>>2}")
            elif funct == 0x24:  # CVT.W.S
                print(f"0x{rom_off:X}: cvt.w.s $f{rd},$f{rd>>2}")
            elif funct == 0x0D:  # TRUNC.W.D
                print(f"0x{rom_off:X}: trunc.w.d $f{rd},$f{rd>>2}")
            elif funct == 0x20:  # CVT.S.D
                print(f"0x{rom_off:X}: cvt.s.d $f{rd},$f{rd>>2}")
            elif funct == 0x21:  # CVT.D.S
                print(f"0x{rom_off:X}: cvt.d.s $f{rd},$f{rd>>2}")
            else:
                print(f"0x{rom_off:X}: d.opc={funct:X} fmt={fmt:X}")
        else:
            print(f"0x{rom_off:X}: cop1 fmt={fmt}")
    elif op == 0x31:  # LWC1
        base = rs
        print(f"0x{rom_off:X}: lwc1 $f{rt},0x{imm:04X}($r{base})")
    elif op == 0x35:  # LDC1
        base = rs
        print(f"0x{rom_off:X}: ldc1 $f{rt},0x{imm:04X}($r{base})")
    elif op == 0x39:  # SWC1
        print(f"0x{rom_off:X}: swc1 $f{rt},0x{imm:04X}($r{rs})")
    elif op == 0x3D:  # SDC1
        print(f"0x{rom_off:X}: sdc1 $f{rt},0x{imm:04X}($r{rs})")
    else:
        print(f"0x{rom_off:X}: op={op:X} rs={rs} rt={rt} rd={rd} imm=0x{imm:04X}")
    
    # Stop after we see jr $ra + nop
    if op == 0 and (w & 0x3F) == 8:  # jr
        next_i = i + 4
        if next_i + 4 <= len(data):
            next_w = struct.unpack('>I', data[start+next_i:start+next_i+4])[0]
            next_op = next_w >> 26
            if next_op == 0 and (next_w & 0x3F) == 0 and ((next_w>>16)&0x1F) == 0 and ((next_w>>11)&0x1F) == 0 and ((next_w>>6)&0x1F) == 0:
                # nop after jr - function end
                print(f"0x{rom_off+4:X}: nop")
                print(f"\nFunction ends at ROM 0x{rom_off+8:X}")
                print(f"Function size: {rom_off+8-start} bytes = {(rom_off+8-start)//4} instructions")
                break
