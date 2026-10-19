
target/ticket19/selection-fix/fourstep-storage-anchor/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000003d2740 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch>:
  3d2740:	push   rbp
  3d2741:	push   r15
  3d2743:	push   r14
  3d2745:	push   r13
  3d2747:	push   r12
  3d2749:	push   rbx
  3d274a:	sub    rsp,0x18
  3d274e:	mov    r15,QWORD PTR [rdi+0xb0]
  3d2755:	test   r15,r15
  3d2758:	je     3d28ac <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x16c>
  3d275e:	mov    r10,r9
  3d2761:	mov    r14,rcx
  3d2764:	mov    r13,rdx
  3d2767:	mov    r12,rsi
  3d276a:	mov    rax,QWORD PTR [rdi]
  3d276d:	sub    rax,0x2
  3d2771:	mov    ebx,0x2
  3d2776:	cmovae rbx,rax
  3d277a:	lea    rax,[rip+0xffffffffffccab5b]        # 9d2dc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a7bc>
  3d2781:	movsxd rcx,DWORD PTR [rax+rbx*4]
  3d2785:	add    rcx,rax
  3d2788:	mov    QWORD PTR [rsp+0x10],rdi
  3d278d:	jmp    rcx
  3d278f:	mov    rax,QWORD PTR [rdi+0x68]
  3d2793:	lea    rbx,[rax+0x8]
  3d2797:	test   rax,rax
  3d279a:	cmove  rbx,rax
  3d279e:	jmp    3d2814 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0xd4>
  3d27a0:	mov    rax,QWORD PTR [rdi+0x80]
  3d27a7:	mov    rcx,QWORD PTR [rdi+0x88]
  3d27ae:	add    rax,rax
  3d27b1:	mov    rdx,QWORD PTR [rdi+0x90]
  3d27b8:	imul   rdx,rcx
  3d27bc:	xor    esi,esi
  3d27be:	cmp    rcx,0x2
  3d27c2:	cmovae rsi,rdx
  3d27c6:	add    rax,QWORD PTR [rdi+0x78]
  3d27ca:	lea    rbx,[rsi+rax*1]
  3d27ce:	add    rbx,0x8
  3d27d2:	jmp    3d2814 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0xd4>
  3d27d4:	mov    rax,QWORD PTR [rdi+0x50]
  3d27d8:	mov    QWORD PTR [rsp+0x8],rax
  3d27dd:	mov    rax,QWORD PTR [rdi+0x38]
  3d27e1:	mov    rcx,QWORD PTR [rdi+0x40]
  3d27e5:	mov    rdx,QWORD PTR [rcx+0x10]
  3d27e9:	dec    rdx
  3d27ec:	and    rdx,0xfffffffffffffff0
  3d27f0:	lea    rdi,[rax+rdx*1]
  3d27f4:	add    rdi,0x10
  3d27f8:	mov    rbx,r8
  3d27fb:	mov    rbp,r10
  3d27fe:	call   QWORD PTR [rcx+0x50]
  3d2801:	mov    r10,rbp
  3d2804:	mov    r8,rbx
  3d2807:	mov    rcx,QWORD PTR [rsp+0x8]
  3d280c:	lea    rbx,[rcx+rax*1]
  3d2810:	add    rbx,0x8
  3d2814:	mov    r9,QWORD PTR [rsp+0x50]
  3d2819:	cmp    r13,r8
  3d281c:	jne    3d28bb <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x17b>
  3d2822:	mov    rax,r13
  3d2825:	or     rax,r15
  3d2828:	shr    rax,0x20
  3d282c:	je     3d2840 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x100>
  3d282e:	mov    rax,r13
  3d2831:	xor    edx,edx
  3d2833:	div    r15
  3d2836:	cmp    r9,rbx
  3d2839:	jae    3d284d <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x10d>
  3d283b:	jmp    3d28bb <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x17b>
  3d2840:	mov    eax,r13d
  3d2843:	xor    edx,edx
  3d2845:	div    r15d
  3d2848:	cmp    r9,rbx
  3d284b:	jb     3d28bb <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x17b>
  3d284d:	cmp    r13,r15
  3d2850:	jb     3d28bb <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x17b>
  3d2852:	test   rdx,rdx
  3d2855:	jne    3d28bb <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x17b>
  3d2857:	shl    r15,0x3
  3d285b:	xor    r13d,r13d
  3d285e:	xchg   ax,ax
  3d2860:	mov    QWORD PTR [rsp+0x8],r12
  3d2865:	inc    r13
  3d2868:	mov    rdi,QWORD PTR [rsp+0x10]
  3d286d:	mov    rsi,r12
  3d2870:	mov    rdx,r14
  3d2873:	mov    rcx,r10
  3d2876:	mov    r8,rbx
  3d2879:	mov    r9d,0x1
  3d287f:	mov    rbp,r10
  3d2882:	mov    r12,r14
  3d2885:	mov    r14,r15
  3d2888:	mov    r15,rax
  3d288b:	call   3e9980 <fastfft::fft::FftImpl<T>::run_chunk>
  3d2890:	mov    rax,r15
  3d2893:	mov    r15,r14
  3d2896:	mov    r14,r12
  3d2899:	mov    r12,QWORD PTR [rsp+0x8]
  3d289e:	mov    r10,rbp
  3d28a1:	add    r14,r15
  3d28a4:	add    r12,r15
  3d28a7:	cmp    r13,rax
  3d28aa:	jb     3d2860 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x120>
  3d28ac:	add    rsp,0x18
  3d28b0:	pop    rbx
  3d28b1:	pop    r12
  3d28b3:	pop    r13
  3d28b5:	pop    r14
  3d28b7:	pop    r15
  3d28b9:	pop    rbp
  3d28ba:	ret
  3d28bb:	mov    rdi,r15
  3d28be:	mov    rsi,r13
  3d28c1:	mov    rdx,r8
  3d28c4:	mov    rcx,rbx
  3d28c7:	mov    r8,r9
  3d28ca:	call   c1fb40 <fastfft::fft::fail_outofplace>
