import struct

with open('build/bh.us.bin', 'rb') as f:
    d = f.read()

start = 0x877D8
end = start + 0x400
insts = []

for i in range(start, end, 4):
    if i + 4 > len(d):
        break
    w = struct.unpack('>I', d[i:i+4])[0]
    op = w >> 26
    if op == 0:
        funct = w & 0x3F
        if funct == 8:
            insts.append((i, 'jr'))
        elif funct == 0:
            if (w>>16)&0x1F == 0 and (w>>6)&0x1F == 0 and (w>>11)&0x1F == 0:
                insts.append((i, 'nop'))
            else:
                insts.append((i, 'sll'))
        else:
            insts.append((i, f'f{funct:x}'))
    elif op == 3:
        insts.append((i, 'jal'))
    else:
        insts.append((i, f'op{op:x}'))

for idx, (off, txt) in enumerate(insts):
    if txt == 'jr' and idx + 1 < len(insts) and insts[idx+1][1] == 'nop':
        print(f'jr at 0x{off:X} (idx {idx})')
        for j in range(max(0, idx-3), min(len(insts), idx+5)):
            print(f'  0x{insts[j][0]:X}: {insts[j][1]}')
        print()
