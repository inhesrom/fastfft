
target/ticket19/selection-fix/fourstep-storage-anchor/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000002c25c0 <<fastfft_arena::fastfft_adapter::FastRunner<T> as fastfft_arena::adapters::Runner<T>>::run>:
  2c25c0:	push   rax
  2c25c1:	mov    rax,rsi
  2c25c4:	mov    rsi,QWORD PTR [rsi+0x18]
  2c25c8:	mov    rdx,QWORD PTR [rax+0x20]
  2c25cc:	mov    r9,QWORD PTR [rax+0x68]
  2c25d0:	mov    r8,QWORD PTR [rax+0x70]
  2c25d4:	movzx  r11d,BYTE PTR [rdi+0x28]
  2c25d9:	mov    rcx,QWORD PTR [rdi+0x18]
  2c25dd:	mov    r10,QWORD PTR [rdi+0x20]
  2c25e1:	mov    rdi,QWORD PTR [r10+0x10]
  2c25e5:	dec    rdi
  2c25e8:	and    rdi,0xfffffffffffffff0
  2c25ec:	add    rdi,rcx
  2c25ef:	add    rdi,0x10
  2c25f3:	test   r11d,r11d
  2c25f6:	je     2c2613 <<fastfft_arena::fastfft_adapter::FastRunner<T> as fastfft_arena::adapters::Runner<T>>::run+0x53>
  2c25f8:	mov    rcx,QWORD PTR [rax+0x40]
  2c25fc:	mov    rax,QWORD PTR [rax+0x48]
  2c2600:	cmp    r11d,0x1
  2c2604:	jne    2c261e <<fastfft_arena::fastfft_adapter::FastRunner<T> as fastfft_arena::adapters::Runner<T>>::run+0x5e>
  2c2606:	mov    QWORD PTR [rsp],r8
  2c260a:	mov    r8,rax
  2c260d:	call   QWORD PTR [r10+0x40]
  2c2611:	pop    rax
  2c2612:	ret
  2c2613:	mov    rax,QWORD PTR [r10+0x38]
  2c2617:	mov    rcx,r9
  2c261a:	pop    r9
  2c261c:	jmp    rax
  2c261e:	mov    QWORD PTR [rsp],r8
  2c2622:	mov    r8,rax
  2c2625:	call   QWORD PTR [r10+0x48]
  2c2629:	pop    rax
  2c262a:	ret
