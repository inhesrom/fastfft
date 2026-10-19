
target/ticket19/selection-fix/canonical-storage/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000003d2080 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch>:
  3d2080:	push   rbp
  3d2081:	push   r15
  3d2083:	push   r14
  3d2085:	push   r13
  3d2087:	push   r12
  3d2089:	push   rbx
  3d208a:	sub    rsp,0x18
  3d208e:	mov    r15,QWORD PTR [rdi+0x100]
  3d2095:	test   r15,r15
  3d2098:	je     3d21fc <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x17c>
  3d209e:	mov    r10,r9
  3d20a1:	mov    r14,rcx
  3d20a4:	mov    r13,rdx
  3d20a7:	mov    r12,rsi
  3d20aa:	mov    rax,QWORD PTR [rdi]
  3d20ad:	movabs rcx,0x8000000000000000
  3d20b7:	xor    rcx,rax
  3d20ba:	test   rax,rax
  3d20bd:	mov    ebx,0x2
  3d20c2:	cmovs  rbx,rcx
  3d20c6:	lea    rax,[rip+0xffffffffffccb0df]        # 9d1ac <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a7ac>
  3d20cd:	movsxd rcx,DWORD PTR [rax+rbx*4]
  3d20d1:	add    rcx,rax
  3d20d4:	mov    QWORD PTR [rsp+0x10],rdi
  3d20d9:	jmp    rcx
  3d20db:	mov    rax,QWORD PTR [rdi+0x60]
  3d20df:	lea    rbx,[rax+0x4]
  3d20e3:	test   rax,rax
  3d20e6:	cmove  rbx,rax
  3d20ea:	jmp    3d2163 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0xe3>
  3d20ec:	mov    rax,QWORD PTR [rdi+0xd0]
  3d20f3:	mov    rcx,QWORD PTR [rdi+0xd8]
  3d20fa:	add    rax,rax
  3d20fd:	mov    rdx,QWORD PTR [rdi+0xe0]
  3d2104:	imul   rdx,rcx
  3d2108:	xor    esi,esi
  3d210a:	cmp    rcx,0x2
  3d210e:	cmovae rsi,rdx
  3d2112:	add    rax,QWORD PTR [rdi+0xc8]
  3d2119:	lea    rbx,[rsi+rax*1]
  3d211d:	add    rbx,0x4
  3d2121:	jmp    3d2163 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0xe3>
  3d2123:	mov    rax,QWORD PTR [rdi+0x50]
  3d2127:	mov    QWORD PTR [rsp+0x8],rax
  3d212c:	mov    rax,QWORD PTR [rdi+0x38]
  3d2130:	mov    rcx,QWORD PTR [rdi+0x40]
  3d2134:	mov    rdx,QWORD PTR [rcx+0x10]
  3d2138:	dec    rdx
  3d213b:	and    rdx,0xfffffffffffffff0
  3d213f:	lea    rdi,[rax+rdx*1]
  3d2143:	add    rdi,0x10
  3d2147:	mov    rbx,r8
  3d214a:	mov    rbp,r10
  3d214d:	call   QWORD PTR [rcx+0x50]
  3d2150:	mov    r10,rbp
  3d2153:	mov    r8,rbx
  3d2156:	mov    rcx,QWORD PTR [rsp+0x8]
  3d215b:	lea    rbx,[rcx+rax*1]
  3d215f:	add    rbx,0x4
  3d2163:	mov    r9,QWORD PTR [rsp+0x50]
  3d2168:	cmp    r13,r8
  3d216b:	jne    3d220b <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x18b>
  3d2171:	mov    rax,r13
  3d2174:	or     rax,r15
  3d2177:	shr    rax,0x20
  3d217b:	je     3d218f <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x10f>
  3d217d:	mov    rax,r13
  3d2180:	xor    edx,edx
  3d2182:	div    r15
  3d2185:	cmp    r9,rbx
  3d2188:	jae    3d219c <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x11c>
  3d218a:	jmp    3d220b <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x18b>
  3d218f:	mov    eax,r13d
  3d2192:	xor    edx,edx
  3d2194:	div    r15d
  3d2197:	cmp    r9,rbx
  3d219a:	jb     3d220b <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x18b>
  3d219c:	cmp    r13,r15
  3d219f:	jb     3d220b <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x18b>
  3d21a1:	test   rdx,rdx
  3d21a4:	jne    3d220b <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x18b>
  3d21a6:	shl    r15,0x4
  3d21aa:	xor    r13d,r13d
  3d21ad:	nop    DWORD PTR [rax]
  3d21b0:	mov    QWORD PTR [rsp+0x8],r12
  3d21b5:	inc    r13
  3d21b8:	mov    rdi,QWORD PTR [rsp+0x10]
  3d21bd:	mov    rsi,r12
  3d21c0:	mov    rdx,r14
  3d21c3:	mov    rcx,r10
  3d21c6:	mov    r8,rbx
  3d21c9:	mov    r9d,0x1
  3d21cf:	mov    rbp,r10
  3d21d2:	mov    r12,r14
  3d21d5:	mov    r14,r15
  3d21d8:	mov    r15,rax
  3d21db:	call   3e7500 <fastfft::fft::FftImpl<T>::run_chunk>
  3d21e0:	mov    rax,r15
  3d21e3:	mov    r15,r14
  3d21e6:	mov    r14,r12
  3d21e9:	mov    r12,QWORD PTR [rsp+0x8]
  3d21ee:	mov    r10,rbp
  3d21f1:	add    r14,r15
  3d21f4:	add    r12,r15
  3d21f7:	cmp    r13,rax
  3d21fa:	jb     3d21b0 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x130>
  3d21fc:	add    rsp,0x18
  3d2200:	pop    rbx
  3d2201:	pop    r12
  3d2203:	pop    r13
  3d2205:	pop    r14
  3d2207:	pop    r15
  3d2209:	pop    rbp
  3d220a:	ret
  3d220b:	mov    rdi,r15
  3d220e:	mov    rsi,r13
  3d2211:	mov    rdx,r8
  3d2214:	mov    rcx,rbx
  3d2217:	mov    r8,r9
  3d221a:	call   c05e00 <fastfft::fft::fail_outofplace>
