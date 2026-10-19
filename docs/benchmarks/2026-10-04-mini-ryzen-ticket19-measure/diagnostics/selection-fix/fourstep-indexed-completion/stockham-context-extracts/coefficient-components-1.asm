
target/ticket19/selection-fix/coefficient-components/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000003673c0 <<fastfft_arena::fastfft_adapter::FastRunner<T> as fastfft_arena::adapters::Runner<T>>::run>:
  3673c0:	push   rax
  3673c1:	mov    rax,rsi
  3673c4:	mov    rsi,QWORD PTR [rsi+0x18]
  3673c8:	mov    rdx,QWORD PTR [rax+0x20]
  3673cc:	mov    r9,QWORD PTR [rax+0x68]
  3673d0:	mov    r8,QWORD PTR [rax+0x70]
  3673d4:	movzx  r11d,BYTE PTR [rdi+0x28]
  3673d9:	mov    rcx,QWORD PTR [rdi+0x18]
  3673dd:	mov    r10,QWORD PTR [rdi+0x20]
  3673e1:	mov    rdi,QWORD PTR [r10+0x10]
  3673e5:	dec    rdi
  3673e8:	and    rdi,0xfffffffffffffff0
  3673ec:	add    rdi,rcx
  3673ef:	add    rdi,0x10
  3673f3:	test   r11d,r11d
  3673f6:	je     367413 <<fastfft_arena::fastfft_adapter::FastRunner<T> as fastfft_arena::adapters::Runner<T>>::run+0x53>
  3673f8:	mov    rcx,QWORD PTR [rax+0x40]
  3673fc:	mov    rax,QWORD PTR [rax+0x48]
  367400:	cmp    r11d,0x1
  367404:	jne    36741e <<fastfft_arena::fastfft_adapter::FastRunner<T> as fastfft_arena::adapters::Runner<T>>::run+0x5e>
  367406:	mov    QWORD PTR [rsp],r8
  36740a:	mov    r8,rax
  36740d:	call   QWORD PTR [r10+0x70]
  367411:	pop    rax
  367412:	ret
  367413:	mov    rax,QWORD PTR [r10+0x68]
  367417:	mov    rcx,r9
  36741a:	pop    r9
  36741c:	jmp    rax
  36741e:	mov    QWORD PTR [rsp],r8
  367422:	mov    r8,rax
  367425:	call   QWORD PTR [r10+0x78]
  367429:	pop    rax
  36742a:	ret
