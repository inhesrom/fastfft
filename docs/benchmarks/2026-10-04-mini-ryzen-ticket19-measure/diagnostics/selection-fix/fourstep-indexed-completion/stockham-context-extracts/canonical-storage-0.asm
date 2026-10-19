
target/ticket19/selection-fix/canonical-storage/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000002c1cc0 <<fastfft_arena::fastfft_adapter::FastRunner<T> as fastfft_arena::adapters::Runner<T>>::run>:
  2c1cc0:	push   rax
  2c1cc1:	mov    rax,rsi
  2c1cc4:	mov    rsi,QWORD PTR [rsi+0x18]
  2c1cc8:	mov    rdx,QWORD PTR [rax+0x20]
  2c1ccc:	mov    r9,QWORD PTR [rax+0x68]
  2c1cd0:	mov    r8,QWORD PTR [rax+0x70]
  2c1cd4:	movzx  r11d,BYTE PTR [rdi+0x28]
  2c1cd9:	mov    rcx,QWORD PTR [rdi+0x18]
  2c1cdd:	mov    r10,QWORD PTR [rdi+0x20]
  2c1ce1:	mov    rdi,QWORD PTR [r10+0x10]
  2c1ce5:	dec    rdi
  2c1ce8:	and    rdi,0xfffffffffffffff0
  2c1cec:	add    rdi,rcx
  2c1cef:	add    rdi,0x10
  2c1cf3:	test   r11d,r11d
  2c1cf6:	je     2c1d13 <<fastfft_arena::fastfft_adapter::FastRunner<T> as fastfft_arena::adapters::Runner<T>>::run+0x53>
  2c1cf8:	mov    rcx,QWORD PTR [rax+0x40]
  2c1cfc:	mov    rax,QWORD PTR [rax+0x48]
  2c1d00:	cmp    r11d,0x1
  2c1d04:	jne    2c1d1e <<fastfft_arena::fastfft_adapter::FastRunner<T> as fastfft_arena::adapters::Runner<T>>::run+0x5e>
  2c1d06:	mov    QWORD PTR [rsp],r8
  2c1d0a:	mov    r8,rax
  2c1d0d:	call   QWORD PTR [r10+0x40]
  2c1d11:	pop    rax
  2c1d12:	ret
  2c1d13:	mov    rax,QWORD PTR [r10+0x38]
  2c1d17:	mov    rcx,r9
  2c1d1a:	pop    r9
  2c1d1c:	jmp    rax
  2c1d1e:	mov    QWORD PTR [rsp],r8
  2c1d22:	mov    r8,rax
  2c1d25:	call   QWORD PTR [r10+0x48]
  2c1d29:	pop    rax
  2c1d2a:	ret
