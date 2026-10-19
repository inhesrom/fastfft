
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000002c2000 <<fastfft_arena::fastfft_adapter::FastRunner<T> as fastfft_arena::adapters::Runner<T>>::run>:
  2c2000:	push   rax
  2c2001:	mov    rax,rsi
  2c2004:	mov    rsi,QWORD PTR [rsi+0x18]
  2c2008:	mov    rdx,QWORD PTR [rax+0x20]
  2c200c:	mov    r9,QWORD PTR [rax+0x68]
  2c2010:	mov    r8,QWORD PTR [rax+0x70]
  2c2014:	movzx  r11d,BYTE PTR [rdi+0x28]
  2c2019:	mov    rcx,QWORD PTR [rdi+0x18]
  2c201d:	mov    r10,QWORD PTR [rdi+0x20]
  2c2021:	mov    rdi,QWORD PTR [r10+0x10]
  2c2025:	dec    rdi
  2c2028:	and    rdi,0xfffffffffffffff0
  2c202c:	add    rdi,rcx
  2c202f:	add    rdi,0x10
  2c2033:	test   r11d,r11d
  2c2036:	je     2c2053 <<fastfft_arena::fastfft_adapter::FastRunner<T> as fastfft_arena::adapters::Runner<T>>::run+0x53>
  2c2038:	mov    rcx,QWORD PTR [rax+0x40]
  2c203c:	mov    rax,QWORD PTR [rax+0x48]
  2c2040:	cmp    r11d,0x1
  2c2044:	jne    2c205e <<fastfft_arena::fastfft_adapter::FastRunner<T> as fastfft_arena::adapters::Runner<T>>::run+0x5e>
  2c2046:	mov    QWORD PTR [rsp],r8
  2c204a:	mov    r8,rax
  2c204d:	call   QWORD PTR [r10+0x40]
  2c2051:	pop    rax
  2c2052:	ret
  2c2053:	mov    rax,QWORD PTR [r10+0x38]
  2c2057:	mov    rcx,r9
  2c205a:	pop    r9
  2c205c:	jmp    rax
  2c205e:	mov    QWORD PTR [rsp],r8
  2c2062:	mov    r8,rax
  2c2065:	call   QWORD PTR [r10+0x48]
  2c2069:	pop    rax
  2c206a:	ret
