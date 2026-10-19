
target/ticket19/selection-fix/coefficient-components/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000367340 <<fastfft_arena::fastfft_adapter::FastRunner<T> as fastfft_arena::adapters::Runner<T>>::run>:
  367340:	push   rax
  367341:	mov    rax,rsi
  367344:	mov    rsi,QWORD PTR [rsi+0x18]
  367348:	mov    rdx,QWORD PTR [rax+0x20]
  36734c:	mov    r9,QWORD PTR [rax+0x68]
  367350:	mov    r8,QWORD PTR [rax+0x70]
  367354:	movzx  r11d,BYTE PTR [rdi+0x28]
  367359:	mov    rcx,QWORD PTR [rdi+0x18]
  36735d:	mov    r10,QWORD PTR [rdi+0x20]
  367361:	mov    rdi,QWORD PTR [r10+0x10]
  367365:	dec    rdi
  367368:	and    rdi,0xfffffffffffffff0
  36736c:	add    rdi,rcx
  36736f:	add    rdi,0x10
  367373:	test   r11d,r11d
  367376:	je     367393 <<fastfft_arena::fastfft_adapter::FastRunner<T> as fastfft_arena::adapters::Runner<T>>::run+0x53>
  367378:	mov    rcx,QWORD PTR [rax+0x40]
  36737c:	mov    rax,QWORD PTR [rax+0x48]
  367380:	cmp    r11d,0x1
  367384:	jne    36739e <<fastfft_arena::fastfft_adapter::FastRunner<T> as fastfft_arena::adapters::Runner<T>>::run+0x5e>
  367386:	mov    QWORD PTR [rsp],r8
  36738a:	mov    r8,rax
  36738d:	call   QWORD PTR [r10+0x70]
  367391:	pop    rax
  367392:	ret
  367393:	mov    rax,QWORD PTR [r10+0x68]
  367397:	mov    rcx,r9
  36739a:	pop    r9
  36739c:	jmp    rax
  36739e:	mov    QWORD PTR [rsp],r8
  3673a2:	mov    r8,rax
  3673a5:	call   QWORD PTR [r10+0x78]
  3673a9:	pop    rax
  3673aa:	ret
