
target/ticket19/selection-fix/fourstep-storage-anchor/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000002c2640 <<fastfft_arena::fastfft_adapter::FastRunner<T> as fastfft_arena::adapters::Runner<T>>::run>:
  2c2640:	push   rax
  2c2641:	mov    rax,rsi
  2c2644:	mov    rsi,QWORD PTR [rsi+0x18]
  2c2648:	mov    rdx,QWORD PTR [rax+0x20]
  2c264c:	mov    r9,QWORD PTR [rax+0x68]
  2c2650:	mov    r8,QWORD PTR [rax+0x70]
  2c2654:	movzx  r11d,BYTE PTR [rdi+0x28]
  2c2659:	mov    rcx,QWORD PTR [rdi+0x18]
  2c265d:	mov    r10,QWORD PTR [rdi+0x20]
  2c2661:	mov    rdi,QWORD PTR [r10+0x10]
  2c2665:	dec    rdi
  2c2668:	and    rdi,0xfffffffffffffff0
  2c266c:	add    rdi,rcx
  2c266f:	add    rdi,0x10
  2c2673:	test   r11d,r11d
  2c2676:	je     2c2693 <<fastfft_arena::fastfft_adapter::FastRunner<T> as fastfft_arena::adapters::Runner<T>>::run+0x53>
  2c2678:	mov    rcx,QWORD PTR [rax+0x40]
  2c267c:	mov    rax,QWORD PTR [rax+0x48]
  2c2680:	cmp    r11d,0x1
  2c2684:	jne    2c269e <<fastfft_arena::fastfft_adapter::FastRunner<T> as fastfft_arena::adapters::Runner<T>>::run+0x5e>
  2c2686:	mov    QWORD PTR [rsp],r8
  2c268a:	mov    r8,rax
  2c268d:	call   QWORD PTR [r10+0x40]
  2c2691:	pop    rax
  2c2692:	ret
  2c2693:	mov    rax,QWORD PTR [r10+0x38]
  2c2697:	mov    rcx,r9
  2c269a:	pop    r9
  2c269c:	jmp    rax
  2c269e:	mov    QWORD PTR [rsp],r8
  2c26a2:	mov    r8,rax
  2c26a5:	call   QWORD PTR [r10+0x48]
  2c26a9:	pop    rax
  2c26aa:	ret
