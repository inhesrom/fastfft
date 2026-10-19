
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000003d2300 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch>:
  3d2300:	push   rbp
  3d2301:	push   r15
  3d2303:	push   r14
  3d2305:	push   r13
  3d2307:	push   r12
  3d2309:	push   rbx
  3d230a:	sub    rsp,0x18
  3d230e:	mov    r15,QWORD PTR [rdi+0xb0]
  3d2315:	test   r15,r15
  3d2318:	je     3d246c <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x16c>
  3d231e:	mov    r10,r9
  3d2321:	mov    r14,rcx
  3d2324:	mov    r13,rdx
  3d2327:	mov    r12,rsi
  3d232a:	mov    rax,QWORD PTR [rdi]
  3d232d:	sub    rax,0x2
  3d2331:	mov    ebx,0x2
  3d2336:	cmovae rbx,rax
  3d233a:	lea    rax,[rip+0xffffffffffccafeb]        # 9d32c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a7dc>
  3d2341:	movsxd rcx,DWORD PTR [rax+rbx*4]
  3d2345:	add    rcx,rax
  3d2348:	mov    QWORD PTR [rsp+0x10],rdi
  3d234d:	jmp    rcx
  3d234f:	mov    rax,QWORD PTR [rdi+0x68]
  3d2353:	lea    rbx,[rax+0x4]
  3d2357:	test   rax,rax
  3d235a:	cmove  rbx,rax
  3d235e:	jmp    3d23d4 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0xd4>
  3d2360:	mov    rax,QWORD PTR [rdi+0x80]
  3d2367:	mov    rcx,QWORD PTR [rdi+0x88]
  3d236e:	add    rax,rax
  3d2371:	mov    rdx,QWORD PTR [rdi+0x90]
  3d2378:	imul   rdx,rcx
  3d237c:	xor    esi,esi
  3d237e:	cmp    rcx,0x2
  3d2382:	cmovae rsi,rdx
  3d2386:	add    rax,QWORD PTR [rdi+0x78]
  3d238a:	lea    rbx,[rsi+rax*1]
  3d238e:	add    rbx,0x4
  3d2392:	jmp    3d23d4 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0xd4>
  3d2394:	mov    rax,QWORD PTR [rdi+0x50]
  3d2398:	mov    QWORD PTR [rsp+0x8],rax
  3d239d:	mov    rax,QWORD PTR [rdi+0x38]
  3d23a1:	mov    rcx,QWORD PTR [rdi+0x40]
  3d23a5:	mov    rdx,QWORD PTR [rcx+0x10]
  3d23a9:	dec    rdx
  3d23ac:	and    rdx,0xfffffffffffffff0
  3d23b0:	lea    rdi,[rax+rdx*1]
  3d23b4:	add    rdi,0x10
  3d23b8:	mov    rbx,r8
  3d23bb:	mov    rbp,r10
  3d23be:	call   QWORD PTR [rcx+0x50]
  3d23c1:	mov    r10,rbp
  3d23c4:	mov    r8,rbx
  3d23c7:	mov    rcx,QWORD PTR [rsp+0x8]
  3d23cc:	lea    rbx,[rcx+rax*1]
  3d23d0:	add    rbx,0x4
  3d23d4:	mov    r9,QWORD PTR [rsp+0x50]
  3d23d9:	cmp    r13,r8
  3d23dc:	jne    3d247b <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x17b>
  3d23e2:	mov    rax,r13
  3d23e5:	or     rax,r15
  3d23e8:	shr    rax,0x20
  3d23ec:	je     3d2400 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x100>
  3d23ee:	mov    rax,r13
  3d23f1:	xor    edx,edx
  3d23f3:	div    r15
  3d23f6:	cmp    r9,rbx
  3d23f9:	jae    3d240d <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x10d>
  3d23fb:	jmp    3d247b <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x17b>
  3d2400:	mov    eax,r13d
  3d2403:	xor    edx,edx
  3d2405:	div    r15d
  3d2408:	cmp    r9,rbx
  3d240b:	jb     3d247b <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x17b>
  3d240d:	cmp    r13,r15
  3d2410:	jb     3d247b <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x17b>
  3d2412:	test   rdx,rdx
  3d2415:	jne    3d247b <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x17b>
  3d2417:	shl    r15,0x4
  3d241b:	xor    r13d,r13d
  3d241e:	xchg   ax,ax
  3d2420:	mov    QWORD PTR [rsp+0x8],r12
  3d2425:	inc    r13
  3d2428:	mov    rdi,QWORD PTR [rsp+0x10]
  3d242d:	mov    rsi,r12
  3d2430:	mov    rdx,r14
  3d2433:	mov    rcx,r10
  3d2436:	mov    r8,rbx
  3d2439:	mov    r9d,0x1
  3d243f:	mov    rbp,r10
  3d2442:	mov    r12,r14
  3d2445:	mov    r14,r15
  3d2448:	mov    r15,rax
  3d244b:	call   3e7780 <fastfft::fft::FftImpl<T>::run_chunk>
  3d2450:	mov    rax,r15
  3d2453:	mov    r15,r14
  3d2456:	mov    r14,r12
  3d2459:	mov    r12,QWORD PTR [rsp+0x8]
  3d245e:	mov    r10,rbp
  3d2461:	add    r14,r15
  3d2464:	add    r12,r15
  3d2467:	cmp    r13,rax
  3d246a:	jb     3d2420 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x120>
  3d246c:	add    rsp,0x18
  3d2470:	pop    rbx
  3d2471:	pop    r12
  3d2473:	pop    r13
  3d2475:	pop    r14
  3d2477:	pop    r15
  3d2479:	pop    rbp
  3d247a:	ret
  3d247b:	mov    rdi,r15
  3d247e:	mov    rsi,r13
  3d2481:	mov    rdx,r8
  3d2484:	mov    rcx,rbx
  3d2487:	mov    r8,r9
  3d248a:	call   c1f540 <fastfft::fft::fail_outofplace>
