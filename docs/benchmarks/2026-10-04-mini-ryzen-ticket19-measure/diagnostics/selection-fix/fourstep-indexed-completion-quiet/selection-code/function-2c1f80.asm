
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000002c1f80 <<fastfft_arena::fastfft_adapter::FastRunner<T> as fastfft_arena::adapters::Runner<T>>::run>:
  2c1f80:	push   rax
  2c1f81:	mov    rax,rsi
  2c1f84:	mov    rsi,QWORD PTR [rsi+0x18]
  2c1f88:	mov    rdx,QWORD PTR [rax+0x20]
  2c1f8c:	mov    r9,QWORD PTR [rax+0x68]
  2c1f90:	mov    r8,QWORD PTR [rax+0x70]
  2c1f94:	movzx  r11d,BYTE PTR [rdi+0x28]
  2c1f99:	mov    rcx,QWORD PTR [rdi+0x18]
  2c1f9d:	mov    r10,QWORD PTR [rdi+0x20]
  2c1fa1:	mov    rdi,QWORD PTR [r10+0x10]
  2c1fa5:	dec    rdi
  2c1fa8:	and    rdi,0xfffffffffffffff0
  2c1fac:	add    rdi,rcx
  2c1faf:	add    rdi,0x10
  2c1fb3:	test   r11d,r11d
  2c1fb6:	je     2c1fd3 <<fastfft_arena::fastfft_adapter::FastRunner<T> as fastfft_arena::adapters::Runner<T>>::run+0x53>
  2c1fb8:	mov    rcx,QWORD PTR [rax+0x40]
  2c1fbc:	mov    rax,QWORD PTR [rax+0x48]
  2c1fc0:	cmp    r11d,0x1
  2c1fc4:	jne    2c1fde <<fastfft_arena::fastfft_adapter::FastRunner<T> as fastfft_arena::adapters::Runner<T>>::run+0x5e>
  2c1fc6:	mov    QWORD PTR [rsp],r8
  2c1fca:	mov    r8,rax
  2c1fcd:	call   QWORD PTR [r10+0x40]
  2c1fd1:	pop    rax
  2c1fd2:	ret
  2c1fd3:	mov    rax,QWORD PTR [r10+0x38]
  2c1fd7:	mov    rcx,r9
  2c1fda:	pop    r9
  2c1fdc:	jmp    rax
  2c1fde:	mov    QWORD PTR [rsp],r8
  2c1fe2:	mov    r8,rax
  2c1fe5:	call   QWORD PTR [r10+0x48]
  2c1fe9:	pop    rax
  2c1fea:	ret
