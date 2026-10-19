/* Diagnostic native-allocation tracer for N=32768 f32 arena caller buffers.
 * Preserves the requested alignment and allocation size.
 */
#include <errno.h>
#include <stdint.h>
#include <stdio.h>
#include <unistd.h>

extern void *__libc_memalign(size_t, size_t);

int posix_memalign(void **result, size_t alignment, size_t size) {
    if (alignment < sizeof(void *) || (alignment & (alignment - 1))) return EINVAL;
    void *p = __libc_memalign(alignment, size);
    if (!p) return ENOMEM;
    *result = p;
    if (size == 262272 || size == 532672) {
        char line[128];
        int len = snprintf(line, sizeof line,
                           "[DEBUG-ticket19-workspace] pid=%d size=%zu ptr=%p page_offset=%zu\n",
                           (int)getpid(), size, p, (size_t)((uintptr_t)p % 4096));
        if (len > 0 && (size_t)len < sizeof line) {
            ssize_t written = write(2, line, (size_t)len);
            (void)written;
        }
    }
    return 0;
}
