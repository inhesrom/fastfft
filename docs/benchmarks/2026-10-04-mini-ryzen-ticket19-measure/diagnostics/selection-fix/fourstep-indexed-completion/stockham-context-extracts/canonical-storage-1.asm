
target/ticket19/selection-fix/canonical-storage/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000002c1d40 <<fastfft_arena::fastfft_adapter::FastRunner<T> as fastfft_arena::adapters::Runner<T>>::run>:
  2c1d40:	push   rax
  2c1d41:	mov    rax,rsi
  2c1d44:	mov    rsi,QWORD PTR [rsi+0x18]
  2c1d48:	mov    rdx,QWORD PTR [rax+0x20]
  2c1d4c:	mov    r9,QWORD PTR [rax+0x68]
  2c1d50:	mov    r8,QWORD PTR [rax+0x70]
  2c1d54:	movzx  r11d,BYTE PTR [rdi+0x28]
  2c1d59:	mov    rcx,QWORD PTR [rdi+0x18]
  2c1d5d:	mov    r10,QWORD PTR [rdi+0x20]
  2c1d61:	mov    rdi,QWORD PTR [r10+0x10]
  2c1d65:	dec    rdi
  2c1d68:	and    rdi,0xfffffffffffffff0
  2c1d6c:	add    rdi,rcx
  2c1d6f:	add    rdi,0x10
  2c1d73:	test   r11d,r11d
  2c1d76:	je     2c1d93 <<fastfft_arena::fastfft_adapter::FastRunner<T> as fastfft_arena::adapters::Runner<T>>::run+0x53>
  2c1d78:	mov    rcx,QWORD PTR [rax+0x40]
  2c1d7c:	mov    rax,QWORD PTR [rax+0x48]
  2c1d80:	cmp    r11d,0x1
  2c1d84:	jne    2c1d9e <<fastfft_arena::fastfft_adapter::FastRunner<T> as fastfft_arena::adapters::Runner<T>>::run+0x5e>
  2c1d86:	mov    QWORD PTR [rsp],r8
  2c1d8a:	mov    r8,rax
  2c1d8d:	call   QWORD PTR [r10+0x40]
  2c1d91:	pop    rax
  2c1d92:	ret
  2c1d93:	mov    rax,QWORD PTR [r10+0x38]
  2c1d97:	mov    rcx,r9
  2c1d9a:	pop    r9
  2c1d9c:	jmp    rax
  2c1d9e:	mov    QWORD PTR [rsp],r8
  2c1da2:	mov    r8,rax
  2c1da5:	call   QWORD PTR [r10+0x48]
  2c1da9:	pop    rax
  2c1daa:	ret
