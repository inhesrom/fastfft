
target/ticket19/selection-fix/canonical-storage/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000003d1ec0 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch>:
  3d1ec0:	push   rbp
  3d1ec1:	push   r15
  3d1ec3:	push   r14
  3d1ec5:	push   r13
  3d1ec7:	push   r12
  3d1ec9:	push   rbx
  3d1eca:	sub    rsp,0x18
  3d1ece:	mov    r15,QWORD PTR [rdi+0x100]
  3d1ed5:	test   r15,r15
  3d1ed8:	je     3d203c <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x17c>
  3d1ede:	mov    r10,r9
  3d1ee1:	mov    r14,rcx
  3d1ee4:	mov    r13,rdx
  3d1ee7:	mov    r12,rsi
  3d1eea:	mov    rax,QWORD PTR [rdi]
  3d1eed:	movabs rcx,0x8000000000000000
  3d1ef7:	xor    rcx,rax
  3d1efa:	test   rax,rax
  3d1efd:	mov    ebx,0x2
  3d1f02:	cmovs  rbx,rcx
  3d1f06:	lea    rax,[rip+0xffffffffffccb28f]        # 9d19c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a79c>
  3d1f0d:	movsxd rcx,DWORD PTR [rax+rbx*4]
  3d1f11:	add    rcx,rax
  3d1f14:	mov    QWORD PTR [rsp+0x10],rdi
  3d1f19:	jmp    rcx
  3d1f1b:	mov    rax,QWORD PTR [rdi+0x60]
  3d1f1f:	lea    rbx,[rax+0x8]
  3d1f23:	test   rax,rax
  3d1f26:	cmove  rbx,rax
  3d1f2a:	jmp    3d1fa3 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0xe3>
  3d1f2c:	mov    rax,QWORD PTR [rdi+0xd0]
  3d1f33:	mov    rcx,QWORD PTR [rdi+0xd8]
  3d1f3a:	add    rax,rax
  3d1f3d:	mov    rdx,QWORD PTR [rdi+0xe0]
  3d1f44:	imul   rdx,rcx
  3d1f48:	xor    esi,esi
  3d1f4a:	cmp    rcx,0x2
  3d1f4e:	cmovae rsi,rdx
  3d1f52:	add    rax,QWORD PTR [rdi+0xc8]
  3d1f59:	lea    rbx,[rsi+rax*1]
  3d1f5d:	add    rbx,0x8
  3d1f61:	jmp    3d1fa3 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0xe3>
  3d1f63:	mov    rax,QWORD PTR [rdi+0x50]
  3d1f67:	mov    QWORD PTR [rsp+0x8],rax
  3d1f6c:	mov    rax,QWORD PTR [rdi+0x38]
  3d1f70:	mov    rcx,QWORD PTR [rdi+0x40]
  3d1f74:	mov    rdx,QWORD PTR [rcx+0x10]
  3d1f78:	dec    rdx
  3d1f7b:	and    rdx,0xfffffffffffffff0
  3d1f7f:	lea    rdi,[rax+rdx*1]
  3d1f83:	add    rdi,0x10
  3d1f87:	mov    rbx,r8
  3d1f8a:	mov    rbp,r10
  3d1f8d:	call   QWORD PTR [rcx+0x50]
  3d1f90:	mov    r10,rbp
  3d1f93:	mov    r8,rbx
  3d1f96:	mov    rcx,QWORD PTR [rsp+0x8]
  3d1f9b:	lea    rbx,[rcx+rax*1]
  3d1f9f:	add    rbx,0x8
  3d1fa3:	mov    r9,QWORD PTR [rsp+0x50]
  3d1fa8:	cmp    r13,r8
  3d1fab:	jne    3d204b <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x18b>
  3d1fb1:	mov    rax,r13
  3d1fb4:	or     rax,r15
  3d1fb7:	shr    rax,0x20
  3d1fbb:	je     3d1fcf <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x10f>
  3d1fbd:	mov    rax,r13
  3d1fc0:	xor    edx,edx
  3d1fc2:	div    r15
  3d1fc5:	cmp    r9,rbx
  3d1fc8:	jae    3d1fdc <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x11c>
  3d1fca:	jmp    3d204b <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x18b>
  3d1fcf:	mov    eax,r13d
  3d1fd2:	xor    edx,edx
  3d1fd4:	div    r15d
  3d1fd7:	cmp    r9,rbx
  3d1fda:	jb     3d204b <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x18b>
  3d1fdc:	cmp    r13,r15
  3d1fdf:	jb     3d204b <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x18b>
  3d1fe1:	test   rdx,rdx
  3d1fe4:	jne    3d204b <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x18b>
  3d1fe6:	shl    r15,0x3
  3d1fea:	xor    r13d,r13d
  3d1fed:	nop    DWORD PTR [rax]
  3d1ff0:	mov    QWORD PTR [rsp+0x8],r12
  3d1ff5:	inc    r13
  3d1ff8:	mov    rdi,QWORD PTR [rsp+0x10]
  3d1ffd:	mov    rsi,r12
  3d2000:	mov    rdx,r14
  3d2003:	mov    rcx,r10
  3d2006:	mov    r8,rbx
  3d2009:	mov    r9d,0x1
  3d200f:	mov    rbp,r10
  3d2012:	mov    r12,r14
  3d2015:	mov    r14,r15
  3d2018:	mov    r15,rax
  3d201b:	call   3e9100 <fastfft::fft::FftImpl<T>::run_chunk>
  3d2020:	mov    rax,r15
  3d2023:	mov    r15,r14
  3d2026:	mov    r14,r12
  3d2029:	mov    r12,QWORD PTR [rsp+0x8]
  3d202e:	mov    r10,rbp
  3d2031:	add    r14,r15
  3d2034:	add    r12,r15
  3d2037:	cmp    r13,rax
  3d203a:	jb     3d1ff0 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x130>
  3d203c:	add    rsp,0x18
  3d2040:	pop    rbx
  3d2041:	pop    r12
  3d2043:	pop    r13
  3d2045:	pop    r14
  3d2047:	pop    r15
  3d2049:	pop    rbp
  3d204a:	ret
  3d204b:	mov    rdi,r15
  3d204e:	mov    rsi,r13
  3d2051:	mov    rdx,r8
  3d2054:	mov    rcx,rbx
  3d2057:	mov    r8,r9
  3d205a:	call   c05e00 <fastfft::fft::fail_outofplace>
