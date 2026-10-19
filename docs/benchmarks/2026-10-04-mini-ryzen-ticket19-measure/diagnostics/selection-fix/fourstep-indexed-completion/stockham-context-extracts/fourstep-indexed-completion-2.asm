
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000003d2140 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch>:
  3d2140:	push   rbp
  3d2141:	push   r15
  3d2143:	push   r14
  3d2145:	push   r13
  3d2147:	push   r12
  3d2149:	push   rbx
  3d214a:	sub    rsp,0x18
  3d214e:	mov    r15,QWORD PTR [rdi+0xb0]
  3d2155:	test   r15,r15
  3d2158:	je     3d22ac <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x16c>
  3d215e:	mov    r10,r9
  3d2161:	mov    r14,rcx
  3d2164:	mov    r13,rdx
  3d2167:	mov    r12,rsi
  3d216a:	mov    rax,QWORD PTR [rdi]
  3d216d:	sub    rax,0x2
  3d2171:	mov    ebx,0x2
  3d2176:	cmovae rbx,rax
  3d217a:	lea    rax,[rip+0xffffffffffccb19b]        # 9d31c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a7cc>
  3d2181:	movsxd rcx,DWORD PTR [rax+rbx*4]
  3d2185:	add    rcx,rax
  3d2188:	mov    QWORD PTR [rsp+0x10],rdi
  3d218d:	jmp    rcx
  3d218f:	mov    rax,QWORD PTR [rdi+0x68]
  3d2193:	lea    rbx,[rax+0x8]
  3d2197:	test   rax,rax
  3d219a:	cmove  rbx,rax
  3d219e:	jmp    3d2214 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0xd4>
  3d21a0:	mov    rax,QWORD PTR [rdi+0x80]
  3d21a7:	mov    rcx,QWORD PTR [rdi+0x88]
  3d21ae:	add    rax,rax
  3d21b1:	mov    rdx,QWORD PTR [rdi+0x90]
  3d21b8:	imul   rdx,rcx
  3d21bc:	xor    esi,esi
  3d21be:	cmp    rcx,0x2
  3d21c2:	cmovae rsi,rdx
  3d21c6:	add    rax,QWORD PTR [rdi+0x78]
  3d21ca:	lea    rbx,[rsi+rax*1]
  3d21ce:	add    rbx,0x8
  3d21d2:	jmp    3d2214 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0xd4>
  3d21d4:	mov    rax,QWORD PTR [rdi+0x50]
  3d21d8:	mov    QWORD PTR [rsp+0x8],rax
  3d21dd:	mov    rax,QWORD PTR [rdi+0x38]
  3d21e1:	mov    rcx,QWORD PTR [rdi+0x40]
  3d21e5:	mov    rdx,QWORD PTR [rcx+0x10]
  3d21e9:	dec    rdx
  3d21ec:	and    rdx,0xfffffffffffffff0
  3d21f0:	lea    rdi,[rax+rdx*1]
  3d21f4:	add    rdi,0x10
  3d21f8:	mov    rbx,r8
  3d21fb:	mov    rbp,r10
  3d21fe:	call   QWORD PTR [rcx+0x50]
  3d2201:	mov    r10,rbp
  3d2204:	mov    r8,rbx
  3d2207:	mov    rcx,QWORD PTR [rsp+0x8]
  3d220c:	lea    rbx,[rcx+rax*1]
  3d2210:	add    rbx,0x8
  3d2214:	mov    r9,QWORD PTR [rsp+0x50]
  3d2219:	cmp    r13,r8
  3d221c:	jne    3d22bb <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x17b>
  3d2222:	mov    rax,r13
  3d2225:	or     rax,r15
  3d2228:	shr    rax,0x20
  3d222c:	je     3d2240 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x100>
  3d222e:	mov    rax,r13
  3d2231:	xor    edx,edx
  3d2233:	div    r15
  3d2236:	cmp    r9,rbx
  3d2239:	jae    3d224d <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x10d>
  3d223b:	jmp    3d22bb <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x17b>
  3d2240:	mov    eax,r13d
  3d2243:	xor    edx,edx
  3d2245:	div    r15d
  3d2248:	cmp    r9,rbx
  3d224b:	jb     3d22bb <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x17b>
  3d224d:	cmp    r13,r15
  3d2250:	jb     3d22bb <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x17b>
  3d2252:	test   rdx,rdx
  3d2255:	jne    3d22bb <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x17b>
  3d2257:	shl    r15,0x3
  3d225b:	xor    r13d,r13d
  3d225e:	xchg   ax,ax
  3d2260:	mov    QWORD PTR [rsp+0x8],r12
  3d2265:	inc    r13
  3d2268:	mov    rdi,QWORD PTR [rsp+0x10]
  3d226d:	mov    rsi,r12
  3d2270:	mov    rdx,r14
  3d2273:	mov    rcx,r10
  3d2276:	mov    r8,rbx
  3d2279:	mov    r9d,0x1
  3d227f:	mov    rbp,r10
  3d2282:	mov    r12,r14
  3d2285:	mov    r14,r15
  3d2288:	mov    r15,rax
  3d228b:	call   3e9380 <fastfft::fft::FftImpl<T>::run_chunk>
  3d2290:	mov    rax,r15
  3d2293:	mov    r15,r14
  3d2296:	mov    r14,r12
  3d2299:	mov    r12,QWORD PTR [rsp+0x8]
  3d229e:	mov    r10,rbp
  3d22a1:	add    r14,r15
  3d22a4:	add    r12,r15
  3d22a7:	cmp    r13,rax
  3d22aa:	jb     3d2260 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x120>
  3d22ac:	add    rsp,0x18
  3d22b0:	pop    rbx
  3d22b1:	pop    r12
  3d22b3:	pop    r13
  3d22b5:	pop    r14
  3d22b7:	pop    r15
  3d22b9:	pop    rbp
  3d22ba:	ret
  3d22bb:	mov    rdi,r15
  3d22be:	mov    rsi,r13
  3d22c1:	mov    rdx,r8
  3d22c4:	mov    rcx,rbx
  3d22c7:	mov    r8,r9
  3d22ca:	call   c1f540 <fastfft::fft::fail_outofplace>
