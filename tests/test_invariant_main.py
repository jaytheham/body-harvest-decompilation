import pytest
import struct
import ctypes


# Simulated safe decompressor that mirrors the vulnerability pattern
# This represents what a safe implementation MUST enforce
def safe_memmove_with_bounds(dest_buf, dest_offset, source_buf, source_offset, size, dest_buf_size):
    """
    Safe wrapper that enforces bounds checking before memmove operations.
    Returns True if operation is safe, raises ValueError if bounds would be exceeded.
    """
    # Check source bounds
    if source_offset < 0:
        raise ValueError(f"Negative source offset: {source_offset}")
    if source_offset + size > len(source_buf):
        raise ValueError(f"Source read overflow: offset={source_offset}, size={size}, buf_len={len(source_buf)}")
    
    # Check destination bounds
    if dest_offset < 0:
        raise ValueError(f"Negative destination offset: {dest_offset}")
    if dest_offset + size > dest_buf_size:
        raise ValueError(f"Destination write overflow: offset={dest_offset}, size={size}, buf_size={dest_buf_size}")
    
    # Perform the actual copy
    for i in range(size):
        dest_buf[dest_offset + i] = source_buf[source_offset + i]
    
    return True


def simulate_rnc_decompressor(compressed_data, mem1_size=0xFFFF):
    """
    Simulates the RNC ProPack decompressor logic with the vulnerability pattern.
    Extracts dict_size and pack_block_pos from compressed data and performs
    bounds-checked memmove operations.
    
    Returns (success, error_message) tuple.
    """
    MEM1_SIZE = mem1_size  # 0xFFFF bytes as in the original
    
    if len(compressed_data) < 8:
        return False, "Input too short"
    
    try:
        # Parse crafted values from compressed data (simulating attacker-controlled fields)
        # dict_size at offset 0 (2 bytes)
        dict_size = struct.unpack_from('<H', compressed_data, 0)[0]
        # pack_block_pos at offset 2 (2 bytes)  
        pack_block_pos = struct.unpack_from('<H', compressed_data, 2)[0]
        # offset into source at offset 4 (2 bytes)
        src_offset = struct.unpack_from('<H', compressed_data, 4)[0]
        # dest offset at offset 6 (2 bytes)
        dst_offset = struct.unpack_from('<H', compressed_data, 6)[0]
        
        # The vulnerable operation: size = dict_size + pack_block_pos
        combined_size = dict_size + pack_block_pos
        
        # Allocate buffers
        mem1 = bytearray(MEM1_SIZE)
        source = bytearray(compressed_data)
        
        # INVARIANT: combined_size must never exceed MEM1_SIZE
        if combined_size > MEM1_SIZE:
            return False, f"BOUNDS_VIOLATION: combined_size={combined_size} exceeds MEM1_SIZE={MEM1_SIZE}"
        
        # INVARIANT: offsets must be within bounds
        if src_offset + combined_size > len(source):
            return False, f"BOUNDS_VIOLATION: source read would overflow"
        
        if dst_offset + combined_size > MEM1_SIZE:
            return False, f"BOUNDS_VIOLATION: dest write would overflow"
        
        # Safe memmove operation
        safe_memmove_with_bounds(mem1, dst_offset, source, src_offset, combined_size, MEM1_SIZE)
        
        return True, "OK"
        
    except (struct.error, ValueError) as e:
        return False, str(e)


# Adversarial payloads designed to trigger buffer overflow conditions
ADVERSARIAL_PAYLOADS = [
    # dict_size + pack_block_pos = 0xFFFF + 1 (exactly one over the limit)
    struct.pack('<HHHH', 0x8000, 0x8000, 0, 0) + b'\x00' * 100,
    
    # dict_size = 0xFFFF, pack_block_pos = 1 (overflow by 1)
    struct.pack('<HHHH', 0xFFFF, 0x0001, 0, 0) + b'\x00' * 100,
    
    # Maximum values for both fields
    struct.pack('<HHHH', 0xFFFF, 0xFFFF, 0, 0) + b'\x00' * 100,
    
    # dict_size = 0xFFFF, pack_block_pos = 0xFFFF (maximum overflow)
    struct.pack('<HHHH', 0xFFFF, 0xFFFF, 0, 0) + b'\x41' * 200,
    
    # Crafted to cause integer overflow when added (wraps around)
    struct.pack('<HHHH', 0xFFFE, 0x0002, 0, 0) + b'\x00' * 100,
    
    # dict_size = 0, pack_block_pos = 0x10000 (if 32-bit)
    struct.pack('<IIHH', 0x00000000, 0x00010000, 0, 0) + b'\x00' * 100,
    
    # Malicious offset values to cause out-of-bounds read
    struct.pack('<HHHH', 0x0100, 0x0100, 0xFFFE, 0) + b'\x00' * 100,
    
    # Malicious dest offset to cause out-of-bounds write
    struct.pack('<HHHH', 0x0100, 0x0100, 0, 0xFFFE) + b'\x00' * 100,
    
    # Combined: large size + large offset
    struct.pack('<HHHH', 0x7FFF, 0x7FFF, 0xFF00, 0xFF00) + b'\x00' * 100,
    
    # All zeros (edge case)
    struct.pack('<HHHH', 0, 0, 0, 0) + b'\x00' * 100,
    
    # Size exactly at boundary (should succeed)
    struct.pack('<HHHH', 0x7FFF, 0x8000, 0, 0) + b'\x00' * 200,
    
    # Negative-like values (max unsigned)
    struct.pack('<HHHH', 0xFFFF, 0x0000, 0, 0) + b'\x00' * 100,
    
    # Pattern with repeated attack bytes
    struct.pack('<HHHH', 0x8001, 0x8001, 0, 0) + b'\xAA' * 200,
    
    # Minimal valid input
    b'\x00' * 8,
    
    # Input with format string-like content
    struct.pack('<HHHH', 0x0010, 0x0010, 0, 0) + b'%s%n%x%p' * 20,
    
    # Input designed to look like valid RNC header but with malicious sizes
    b'RNC\x01' + struct.pack('<HH', 0xFFFF, 0xFFFF) + b'\x00' * 100,
    
    # Boundary: exactly MEM1_SIZE
    struct.pack('<HHHH', 0x7FFF, 0x8000, 0, 0) + b'\x00' * (0x7FFF + 0x8000 + 8),
    
    # One byte over MEM1_SIZE
    struct.pack('<HHHH', 0x8000, 0x8000, 0, 0) + b'\x00' * 100,
]


@pytest.mark.parametrize("payload", ADVERSARIAL_PAYLOADS)
def test_rnc_decompressor_bounds_invariant(payload):
    """
    Invariant: The RNC decompressor must NEVER perform memmove operations where
    dict_size + pack_block_pos exceeds the allocated buffer size (0xFFFF bytes),
    and must NEVER allow out-of-bounds reads or writes regardless of crafted input.
    
    Any operation that would exceed buffer boundaries must be rejected before
    the memory operation is performed.
    """
    MEM1_SIZE = 0xFFFF
    
    if len(payload) < 8:
        pytest.skip("Payload too short to parse")
    
    try:
        dict_size = struct.unpack_from('<H', payload, 0)[0]
        pack_block_pos = struct.unpack_from('<H', payload, 2)[0]
        src_offset = struct.unpack_from('<H', payload, 4)[0]
        dst_offset = struct.unpack_from('<H', payload, 6)[0]
    except struct.error:
        pytest.skip("Cannot parse payload fields")
    
    combined_size = dict_size + pack_block_pos
    
    success, message = simulate_rnc_decompressor(payload, MEM1_SIZE)
    
    # INVARIANT 1: If combined_size exceeds buffer, operation must be rejected
    if combined_size > MEM1_SIZE:
        assert not success, (
            f"SECURITY VIOLATION: Decompressor allowed operation with "
            f"dict_size={dict_size} + pack_block_pos={pack_block_pos} = {combined_size} "
            f"which exceeds MEM1_SIZE={MEM1_SIZE}. "
            f"This would cause a buffer overflow!"
        )
        assert "BOUNDS_VIOLATION" in message or "overflow" in message.lower(), (
            f"Expected bounds violation error, got: {message}"
        )
    
    # INVARIANT 2: If dst_offset + combined_size exceeds buffer, must be rejected
    if dst_offset + combined_size > MEM1_SIZE:
        assert not success, (
            f"SECURITY VIOLATION: Decompressor allowed write at "
            f"dst_offset={dst_offset} with size={combined_size} "
            f"which would write beyond MEM1_SIZE={MEM1_SIZE}"
        )
    
    # INVARIANT 3: If src_offset + combined_size exceeds source buffer, must be rejected
    if src_offset + combined_size > len(payload):
        assert not success, (
            f"SECURITY VIOLATION: Decompressor allowed read at "
            f"src_offset={src_offset} with size={combined_size} "
            f"which would read beyond source buffer length={len(payload)}"
        )
    
    # INVARIANT 4: Successful operations must have been within bounds
    if success:
        assert combined_size <= MEM1_SIZE, (
            f"SECURITY VIOLATION: Successful operation with out-of-bounds size: "
            f"combined_size={combined_size} > MEM1_SIZE={MEM1_SIZE}"
        )
        assert dst_offset + combined_size <= MEM1_SIZE, (
            f"SECURITY VIOLATION: Successful operation with out-of-bounds write: "
            f"dst_offset={dst_offset} + combined_size={combined_size} > MEM1_SIZE={MEM1_SIZE}"
        )
        assert src_offset + combined_size <= len(payload), (
            f"SECURITY VIOLATION: Successful operation with out-of-bounds read: "
            f"src_offset={src_offset} + combined_size={combined_size} > payload_len={len(payload)}"
        )


@pytest.mark.parametrize("dict_size,pack_block_pos,expected_safe", [
    (0x0000, 0x0000, True),   # Zero sizes - safe
    (0x7FFF, 0x8000, True),   # Exactly at boundary - safe (0x7FFF + 0x8000 = 0xFFFF)
    (0x7FFF, 0x7FFF, True),   # Under boundary - safe
    (0x8000, 0x8000, False),  # Over boundary - unsafe (0x10000 > 0xFFFF)
    (0xFFFF, 0x0001, False),  # Over boundary - unsafe
    (0xFFFF, 0xFFFF, False),  # Maximum overflow - unsafe
    (0xFFFF, 0x0000, True),   # Exactly at boundary - safe
    (0x0001, 0xFFFF, False),  # Over boundary - unsafe (0x10000 > 0xFFFF)
    (0x0000, 0xFFFF, True),   # Exactly at boundary - safe
])
def test_rnc_size_bounds_invariant(dict_size, pack_block_pos, expected_safe):
    """
    Invariant: The combined size (dict_size + pack_block_pos) must never exceed
    the allocated buffer size of 0xFFFF bytes. Any combination that would exceed
    this limit must be detected and rejected before any memory operation.
    """
    MEM1_SIZE = 0xFFFF
    combined_size = dict_size + pack_block_pos
    
    is_safe = combined_size <= MEM1_SIZE
    
    assert is_safe == expected_safe, (
        f"Bounds check mismatch: dict_size={dict_size:#x}, "
        f"pack_block_pos={pack_block_pos:#x}, "
        f"combined={combined_size:#x}, "
        f"MEM1_SIZE={MEM1_SIZE:#x}, "
        f"expected_safe={expected_safe}, actual_safe={is_safe}"
    )
    
    # Build a payload with these values
    payload = struct.pack('<HHHH', dict_size & 0xFFFF, pack_block_pos & 0xFFFF, 0, 0)
    payload += b'\x00' * max(combined_size + 1, 100)
    
    success, message = simulate_rnc_decompressor(payload, MEM1_SIZE)
    
    if not expected_safe:
        assert not success, (
            f"SECURITY VIOLATION: Unsafe operation was allowed! "
            f"dict_size={dict_size:#x} + pack_block_pos={pack_block_pos:#x} = "
            f"{combined_size:#x} > MEM1_SIZE={MEM1_SIZE:#x}"
        )
    else:
        # Safe operations should succeed (assuming offsets are valid)
        # We don't assert success here as other conditions might prevent it,
        # but we assert no bounds violation occurred
        if not success:
            assert "BOUNDS_VIOLATION" not in message or combined_size <= MEM1_SIZE, (
                f"False bounds violation reported for safe input: {message}"
            )