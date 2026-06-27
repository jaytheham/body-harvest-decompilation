#include <check.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>

// Include the actual production code
#include "tools/rnc_propack_source/main.c"

START_TEST(test_buffer_reads_never_exceed_declared_length)
{
    // Invariant: Buffer reads never exceed the declared length
    const char *payloads[] = {
        // Exact exploit case: size parameter that would cause overflow
        "EXPLOIT_PAYLOAD",
        // Boundary case: size equals buffer size
        "BOUNDARY_CASE",
        // Valid input: size less than buffer size
        "VALID_INPUT"
    };
    int num_payloads = sizeof(payloads) / sizeof(payloads[0]);
    
    // Test buffer sizes
    const size_t dest_size = 100;
    const size_t source_size = 200;
    
    for (int i = 0; i < num_payloads; i++) {
        // Setup test buffers
        uint8_t dest[dest_size];
        uint8_t source[source_size];
        size_t offset = 0;
        
        // Initialize buffers with known pattern
        memset(dest, 0xAA, dest_size);
        memset(source, 0xBB, source_size);
        
        // Calculate size parameter based on payload type
        int size;
        if (strcmp(payloads[i], "EXPLOIT_PAYLOAD") == 0) {
            size = dest_size * 2;  // Double buffer size - should overflow
        } else if (strcmp(payloads[i], "BOUNDARY_CASE") == 0) {
            size = dest_size;      // Exactly buffer size
        } else {
            size = dest_size / 2;  // Half buffer size - valid
        }
        
        // Call the actual production function
        read_buf(dest, source, &offset, size);
        
        // Check that offset was updated correctly
        ck_assert_int_eq(offset, (size_t)size);
        
        // For valid inputs, verify data was copied correctly
        if (size <= (int)dest_size && size <= (int)source_size) {
            // Verify the destination buffer contains the copied data
            for (int j = 0; j < size; j++) {
                ck_assert_int_eq(dest[j], 0xBB);
            }
            // Verify remaining buffer unchanged
            if (size < (int)dest_size) {
                ck_assert_int_eq(dest[size], 0xAA);
            }
        }
    }
}
END_TEST

Suite *security_suite(void)
{
    Suite *s;
    TCase *tc_core;

    s = suite_create("Security");
    tc_core = tcase_create("Core");

    tcase_add_test(tc_core, test_buffer_reads_never_exceed_declared_length);
    suite_add_tcase(s, tc_core);

    return s;
}

int main(void)
{
    int number_failed;
    Suite *s;
    SRunner *sr;

    s = security_suite();
    sr = srunner_create(s);

    srunner_run_all(sr, CK_NORMAL);
    number_failed = srunner_ntests_failed(sr);
    srunner_free(sr);

    return (number_failed == 0) ? EXIT_SUCCESS : EXIT_FAILURE;
}