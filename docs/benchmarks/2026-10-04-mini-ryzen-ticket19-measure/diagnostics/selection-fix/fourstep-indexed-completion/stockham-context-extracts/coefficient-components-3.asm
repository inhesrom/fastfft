
target/ticket19/selection-fix/coefficient-components/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000004e19c0 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch>:
  4e19c0:	push   rbp
  4e19c1:	push   r15
  4e19c3:	push   r14
  4e19c5:	push   r13
  4e19c7:	push   r12
  4e19c9:	push   rbx
  4e19ca:	sub    rsp,0x18
  4e19ce:	mov    r15,QWORD PTR [rdi+0xb0]
  4e19d5:	test   r15,r15
  4e19d8:	je     4e1b3c <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x17c>
  4e19de:	mov    r10,r9
  4e19e1:	mov    r14,rcx
  4e19e4:	mov    r13,rdx
  4e19e7:	mov    r12,rsi
  4e19ea:	mov    rax,QWORD PTR [rdi]
  4e19ed:	sub    rax,0x2
  4e19f1:	mov    ebx,0x2
  4e19f6:	cmovae rbx,rax
  4e19fa:	lea    rax,[rip+0xffffffffffbf47ab]        # d61ac <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b06c>
  4e1a01:	movsxd rcx,DWORD PTR [rax+rbx*4]
  4e1a05:	add    rcx,rax
  4e1a08:	mov    QWORD PTR [rsp+0x10],rdi
  4e1a0d:	jmp    rcx
  4e1a0f:	mov    rax,QWORD PTR [rdi+0x68]
  4e1a13:	lea    rbx,[rax+0x8]
  4e1a17:	test   rax,rax
  4e1a1a:	cmove  rbx,rax
  4e1a1e:	jmp    4e1a97 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0xd7>
  4e1a20:	mov    rax,QWORD PTR [rdi+0x80]
  4e1a27:	mov    rcx,QWORD PTR [rdi+0x88]
  4e1a2e:	add    rax,rax
  4e1a31:	mov    rdx,QWORD PTR [rdi+0x90]
  4e1a38:	imul   rdx,rcx
  4e1a3c:	xor    esi,esi
  4e1a3e:	cmp    rcx,0x2
  4e1a42:	cmovae rsi,rdx
  4e1a46:	add    rax,QWORD PTR [rdi+0x78]
  4e1a4a:	lea    rbx,[rsi+rax*1]
  4e1a4e:	add    rbx,0x8
  4e1a52:	jmp    4e1a97 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0xd7>
  4e1a54:	mov    rax,QWORD PTR [rdi+0x50]
  4e1a58:	mov    QWORD PTR [rsp+0x8],rax
  4e1a5d:	mov    rax,QWORD PTR [rdi+0x38]
  4e1a61:	mov    rcx,QWORD PTR [rdi+0x40]
  4e1a65:	mov    rdx,QWORD PTR [rcx+0x10]
  4e1a69:	dec    rdx
  4e1a6c:	and    rdx,0xfffffffffffffff0
  4e1a70:	lea    rdi,[rax+rdx*1]
  4e1a74:	add    rdi,0x10
  4e1a78:	mov    rbx,r8
  4e1a7b:	mov    rbp,r10
  4e1a7e:	call   QWORD PTR [rcx+0x80]
  4e1a84:	mov    r10,rbp
  4e1a87:	mov    r8,rbx
  4e1a8a:	mov    rcx,QWORD PTR [rsp+0x8]
  4e1a8f:	lea    rbx,[rcx+rax*1]
  4e1a93:	add    rbx,0x8
  4e1a97:	mov    r9,QWORD PTR [rsp+0x50]
  4e1a9c:	cmp    r13,r8
  4e1a9f:	jne    4e1b4b <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x18b>
  4e1aa5:	mov    rax,r13
  4e1aa8:	or     rax,r15
  4e1aab:	shr    rax,0x20
  4e1aaf:	je     4e1ac3 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x103>
  4e1ab1:	mov    rax,r13
  4e1ab4:	xor    edx,edx
  4e1ab6:	div    r15
  4e1ab9:	cmp    r9,rbx
  4e1abc:	jae    4e1ad0 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x110>
  4e1abe:	jmp    4e1b4b <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x18b>
  4e1ac3:	mov    eax,r13d
  4e1ac6:	xor    edx,edx
  4e1ac8:	div    r15d
  4e1acb:	cmp    r9,rbx
  4e1ace:	jb     4e1b4b <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x18b>
  4e1ad0:	cmp    r13,r15
  4e1ad3:	jb     4e1b4b <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x18b>
  4e1ad5:	test   rdx,rdx
  4e1ad8:	jne    4e1b4b <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x18b>
  4e1ada:	shl    r15,0x3
  4e1ade:	xor    r13d,r13d
  4e1ae1:	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  4e1af0:	mov    QWORD PTR [rsp+0x8],r12
  4e1af5:	inc    r13
  4e1af8:	mov    rdi,QWORD PTR [rsp+0x10]
  4e1afd:	mov    rsi,r12
  4e1b00:	mov    rdx,r14
  4e1b03:	mov    rcx,r10
  4e1b06:	mov    r8,rbx
  4e1b09:	mov    r9d,0x1
  4e1b0f:	mov    rbp,r10
  4e1b12:	mov    r12,r14
  4e1b15:	mov    r14,r15
  4e1b18:	mov    r15,rax
  4e1b1b:	call   4f8bc0 <fastfft::fft::FftImpl<T>::run_chunk>
  4e1b20:	mov    rax,r15
  4e1b23:	mov    r15,r14
  4e1b26:	mov    r14,r12
  4e1b29:	mov    r12,QWORD PTR [rsp+0x8]
  4e1b2e:	mov    r10,rbp
  4e1b31:	add    r14,r15
  4e1b34:	add    r12,r15
  4e1b37:	cmp    r13,rax
  4e1b3a:	jb     4e1af0 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x130>
  4e1b3c:	add    rsp,0x18
  4e1b40:	pop    rbx
  4e1b41:	pop    r12
  4e1b43:	pop    r13
  4e1b45:	pop    r14
  4e1b47:	pop    r15
  4e1b49:	pop    rbp
  4e1b4a:	ret
  4e1b4b:	mov    rdi,r15
  4e1b4e:	mov    rsi,r13
  4e1b51:	mov    rdx,r8
  4e1b54:	mov    rcx,rbx
  4e1b57:	mov    r8,r9
  4e1b5a:	call   d40dc0 <fastfft::fft::fail_outofplace>
