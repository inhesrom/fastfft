/* Diagnostic glibc interposer, never used for acceptance measurements.
 * Compile twice, with/without -DALIGN64, to isolate allocation alignment.
 * Writes the alignment of 256 KiB allocations (N=32768 f32 Phase B tables).
 */
#include <errno.h>
#include <malloc.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>

extern void *__libc_malloc(size_t);
extern void *__libc_memalign(size_t, size_t);
extern void __libc_free(void *);

void *malloc(size_t n) {
#ifdef ALIGN64
    void *p = __libc_memalign(64, n);
#else
    void *p = __libc_malloc(n);
#endif
    if (n == 262144) {
        char line[120];
        int len = snprintf(line, sizeof line,
                           "[DEBUG-ticket19-align] pid=%d size=%zu ptr=%p offset64=%zu\n",
                           (int)getpid(), n, p, (size_t)((uintptr_t)p % 64));
        if (len > 0 && (size_t)len < sizeof line) {
            ssize_t written = write(2, line, (size_t)len);
            (void)written;
        }
    }
    return p;
}

void *calloc(size_t count, size_t size) {
    size_t n;
    if (__builtin_mul_overflow(count, size, &n)) {
        errno = ENOMEM;
        return NULL;
    }
    void *p = malloc(n);
    if (p) memset(p, 0, n);
    return p;
}

void *realloc(void *old, size_t n) {
    if (!old) return malloc(n);
    if (!n) {
        __libc_free(old);
        return NULL;
    }
    void *p = malloc(n);
    if (p) {
        size_t available = malloc_usable_size(old);
        memcpy(p, old, n < available ? n : available);
        __libc_free(old);
    }
    return p;
}
