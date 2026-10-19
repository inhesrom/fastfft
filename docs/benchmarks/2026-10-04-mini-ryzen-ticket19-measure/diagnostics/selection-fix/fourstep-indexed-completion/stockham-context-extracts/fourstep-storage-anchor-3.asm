
target/ticket19/selection-fix/fourstep-storage-anchor/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000003d2900 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch>:
  3d2900:	push   rbp
  3d2901:	push   r15
  3d2903:	push   r14
  3d2905:	push   r13
  3d2907:	push   r12
  3d2909:	push   rbx
  3d290a:	sub    rsp,0x18
  3d290e:	mov    r15,QWORD PTR [rdi+0xb0]
  3d2915:	test   r15,r15
  3d2918:	je     3d2a6c <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x16c>
  3d291e:	mov    r10,r9
  3d2921:	mov    r14,rcx
  3d2924:	mov    r13,rdx
  3d2927:	mov    r12,rsi
  3d292a:	mov    rax,QWORD PTR [rdi]
  3d292d:	sub    rax,0x2
  3d2931:	mov    ebx,0x2
  3d2936:	cmovae rbx,rax
  3d293a:	lea    rax,[rip+0xffffffffffcca9ab]        # 9d2ec <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a7cc>
  3d2941:	movsxd rcx,DWORD PTR [rax+rbx*4]
  3d2945:	add    rcx,rax
  3d2948:	mov    QWORD PTR [rsp+0x10],rdi
  3d294d:	jmp    rcx
  3d294f:	mov    rax,QWORD PTR [rdi+0x68]
  3d2953:	lea    rbx,[rax+0x4]
  3d2957:	test   rax,rax
  3d295a:	cmove  rbx,rax
  3d295e:	jmp    3d29d4 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0xd4>
  3d2960:	mov    rax,QWORD PTR [rdi+0x80]
  3d2967:	mov    rcx,QWORD PTR [rdi+0x88]
  3d296e:	add    rax,rax
  3d2971:	mov    rdx,QWORD PTR [rdi+0x90]
  3d2978:	imul   rdx,rcx
  3d297c:	xor    esi,esi
  3d297e:	cmp    rcx,0x2
  3d2982:	cmovae rsi,rdx
  3d2986:	add    rax,QWORD PTR [rdi+0x78]
  3d298a:	lea    rbx,[rsi+rax*1]
  3d298e:	add    rbx,0x4
  3d2992:	jmp    3d29d4 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0xd4>
  3d2994:	mov    rax,QWORD PTR [rdi+0x50]
  3d2998:	mov    QWORD PTR [rsp+0x8],rax
  3d299d:	mov    rax,QWORD PTR [rdi+0x38]
  3d29a1:	mov    rcx,QWORD PTR [rdi+0x40]
  3d29a5:	mov    rdx,QWORD PTR [rcx+0x10]
  3d29a9:	dec    rdx
  3d29ac:	and    rdx,0xfffffffffffffff0
  3d29b0:	lea    rdi,[rax+rdx*1]
  3d29b4:	add    rdi,0x10
  3d29b8:	mov    rbx,r8
  3d29bb:	mov    rbp,r10
  3d29be:	call   QWORD PTR [rcx+0x50]
  3d29c1:	mov    r10,rbp
  3d29c4:	mov    r8,rbx
  3d29c7:	mov    rcx,QWORD PTR [rsp+0x8]
  3d29cc:	lea    rbx,[rcx+rax*1]
  3d29d0:	add    rbx,0x4
  3d29d4:	mov    r9,QWORD PTR [rsp+0x50]
  3d29d9:	cmp    r13,r8
  3d29dc:	jne    3d2a7b <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x17b>
  3d29e2:	mov    rax,r13
  3d29e5:	or     rax,r15
  3d29e8:	shr    rax,0x20
  3d29ec:	je     3d2a00 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x100>
  3d29ee:	mov    rax,r13
  3d29f1:	xor    edx,edx
  3d29f3:	div    r15
  3d29f6:	cmp    r9,rbx
  3d29f9:	jae    3d2a0d <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x10d>
  3d29fb:	jmp    3d2a7b <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x17b>
  3d2a00:	mov    eax,r13d
  3d2a03:	xor    edx,edx
  3d2a05:	div    r15d
  3d2a08:	cmp    r9,rbx
  3d2a0b:	jb     3d2a7b <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x17b>
  3d2a0d:	cmp    r13,r15
  3d2a10:	jb     3d2a7b <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x17b>
  3d2a12:	test   rdx,rdx
  3d2a15:	jne    3d2a7b <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x17b>
  3d2a17:	shl    r15,0x4
  3d2a1b:	xor    r13d,r13d
  3d2a1e:	xchg   ax,ax
  3d2a20:	mov    QWORD PTR [rsp+0x8],r12
  3d2a25:	inc    r13
  3d2a28:	mov    rdi,QWORD PTR [rsp+0x10]
  3d2a2d:	mov    rsi,r12
  3d2a30:	mov    rdx,r14
  3d2a33:	mov    rcx,r10
  3d2a36:	mov    r8,rbx
  3d2a39:	mov    r9d,0x1
  3d2a3f:	mov    rbp,r10
  3d2a42:	mov    r12,r14
  3d2a45:	mov    r14,r15
  3d2a48:	mov    r15,rax
  3d2a4b:	call   3e7d80 <fastfft::fft::FftImpl<T>::run_chunk>
  3d2a50:	mov    rax,r15
  3d2a53:	mov    r15,r14
  3d2a56:	mov    r14,r12
  3d2a59:	mov    r12,QWORD PTR [rsp+0x8]
  3d2a5e:	mov    r10,rbp
  3d2a61:	add    r14,r15
  3d2a64:	add    r12,r15
  3d2a67:	cmp    r13,rax
  3d2a6a:	jb     3d2a20 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x120>
  3d2a6c:	add    rsp,0x18
  3d2a70:	pop    rbx
  3d2a71:	pop    r12
  3d2a73:	pop    r13
  3d2a75:	pop    r14
  3d2a77:	pop    r15
  3d2a79:	pop    rbp
  3d2a7a:	ret
  3d2a7b:	mov    rdi,r15
  3d2a7e:	mov    rsi,r13
  3d2a81:	mov    rdx,r8
  3d2a84:	mov    rcx,rbx
  3d2a87:	mov    r8,r9
  3d2a8a:	call   c1fb40 <fastfft::fft::fail_outofplace>
