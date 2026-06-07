import struct
import os

rom_path = 'baserom.us.z64'
if os.path.exists(rom_path):
    with open(rom_path, 'rb') as f:
        f.seek(0x1F9CA0)
        d1 = struct.unpack('>Q', f.read(8))[0]
        d2 = struct.unpack('>Q', f.read(8))[0]
        f.seek(0x1F9CB0)
        d3 = struct.unpack('>Q', f.read(8))[0]
        
        # Also check D_802E0CB4 and D_802E0CBC
        f.seek(0x1F99C4)
        cb4_data = f.read(6)
        f.seek(0x1F99CC)
        cbc_data = f.read(6)
        
    print(f'D_802E0F90_1F9CA0 = {d1:016X}')
    print(f'D_802E0F98_1F9CA8 = {d2:016X}')
    print(f'D_802E0FA0_1F9CB0 = {d3:016X}')
    
    as_double1 = struct.unpack('>d', struct.pack('>Q', d1))[0]
    as_double2 = struct.unpack('>d', struct.pack('>Q', d2))[0]
    as_double3 = struct.unpack('>d', struct.pack('>Q', d3))[0]
    print(f'')
    print(f'D_802E0F90 = {as_double1}')
    print(f'D_802E0F98 = {as_double2}')
    print(f'D_802E0FA0 = {as_double3}')
    print(f'')
    print(f'D_802E0CB4_1F99C4: {cb4_data.hex()}')
    print(f'D_802E0CBC_1F99CC: {cbc_data.hex()}')
    
    # As s16 values
    print(f'D_802E0CB4 as s16[3]: {struct.unpack(">hhh", cb4_data)}')
    print(f'D_802E0CBC as s16[3]: {struct.unpack(">hhh", cbc_data)}')
else:
    print('ROM not found')
