
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000003e7780 <fastfft::fft::FftImpl<T>::run_chunk>:
  3e7780:	push   rbp
  3e7781:	push   r15
  3e7783:	push   r14
  3e7785:	push   r13
  3e7787:	push   r12
  3e7789:	push   rbx
  3e778a:	sub    rsp,0x178
  3e7791:	mov    r11,rcx
  3e7794:	mov    rbx,rdx
  3e7797:	mov    r13,rsi
  3e779a:	mov    rax,QWORD PTR [rdi]
  3e779d:	sub    rax,0x2
  3e77a1:	mov    ecx,0x2
  3e77a6:	cmovae rcx,rax
  3e77aa:	movzx  eax,BYTE PTR [rdi+0xb8]
  3e77b1:	lea    rdx,[rip+0xffffffffffcb5bb4]        # 9d36c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a81c>
  3e77b8:	movsxd rcx,DWORD PTR [rdx+rcx*4]
  3e77bc:	add    rcx,rdx
  3e77bf:	jmp    rcx
  3e77c1:	test   r9b,r9b
  3e77c4:	je     3e9175 <fastfft::fft::FftImpl<T>::run_chunk+0x19f5>
  3e77ca:	mov    rdx,QWORD PTR [rdi+0xb0]
  3e77d1:	shl    rdx,0x4
  3e77d5:	mov    rdi,rbx
  3e77d8:	mov    rsi,r13
  3e77db:	add    rsp,0x178
  3e77e2:	pop    rbx
  3e77e3:	pop    r12
  3e77e5:	pop    r13
  3e77e7:	pop    r14
  3e77e9:	pop    r15
  3e77eb:	pop    rbp
  3e77ec:	jmp    QWORD PTR [rip+0xe62eee]        # 124a6e0 <memcpy@GLIBC_2.14>
  3e77f2:	test   r8,r8
  3e77f5:	je     3e78fa <fastfft::fft::FftImpl<T>::run_chunk+0x17a>
  3e77fb:	lea    rcx,[r11+0x3f]
  3e77ff:	and    rcx,0xffffffffffffffc0
  3e7803:	sub    rcx,r11
  3e7806:	mov    rdx,rcx
  3e7809:	shr    rdx,0x4
  3e780d:	bt     ecx,0x3
  3e7811:	adc    rdx,0x0
  3e7815:	cmp    r8,rdx
  3e7818:	jb     3e933d <fastfft::fft::FftImpl<T>::run_chunk+0x1bbd>
  3e781e:	add    r11,rcx
  3e7821:	movzx  ecx,BYTE PTR [rdi+0xa8]
  3e7828:	lea    rdx,[rip+0xffffffffffcb5b61]        # 9d390 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a840>
  3e782f:	movsxd rcx,DWORD PTR [rdx+rcx*4]
  3e7833:	add    rcx,rdx
  3e7836:	jmp    rcx
  3e7838:	mov    rcx,rdi
  3e783b:	add    rdi,0x8
  3e783f:	mov    rsi,rcx
  3e7842:	movzx  ecx,BYTE PTR [rcx+0x58]
  3e7846:	lea    rdx,[rip+0xffffffffffcb5b2f]        # 9d37c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a82c>
  3e784d:	movsxd rcx,DWORD PTR [rdx+rcx*4]
  3e7851:	add    rcx,rdx
  3e7854:	jmp    rcx
  3e7856:	test   al,al
  3e7858:	mov    QWORD PTR [rsp+0x50],rbx
  3e785d:	je     3e7a72 <fastfft::fft::FftImpl<T>::run_chunk+0x2f2>
  3e7863:	test   r8,r8
  3e7866:	mov    rdx,rsi
  3e7869:	je     3e7ae0 <fastfft::fft::FftImpl<T>::run_chunk+0x360>
  3e786f:	lea    rax,[r11+0x3f]
  3e7873:	and    rax,0xffffffffffffffc0
  3e7877:	sub    rax,r11
  3e787a:	mov    rcx,rax
  3e787d:	shr    rcx,0x4
  3e7881:	bt     eax,0x3
  3e7885:	adc    rcx,0x0
  3e7889:	sub    r8,rcx
  3e788c:	jb     3e933d <fastfft::fft::FftImpl<T>::run_chunk+0x1bbd>
  3e7892:	add    r11,rax
  3e7895:	jmp    3e7ae3 <fastfft::fft::FftImpl<T>::run_chunk+0x363>
  3e789a:	test   r8,r8
  3e789d:	je     3e78c5 <fastfft::fft::FftImpl<T>::run_chunk+0x145>
  3e789f:	lea    rcx,[r11+0x3f]
  3e78a3:	and    rcx,0xffffffffffffffc0
  3e78a7:	sub    rcx,r11
  3e78aa:	mov    rdx,rcx
  3e78ad:	shr    rdx,0x4
  3e78b1:	bt     ecx,0x3
  3e78b5:	adc    rdx,0x0
  3e78b9:	cmp    r8,rdx
  3e78bc:	jb     3e933d <fastfft::fft::FftImpl<T>::run_chunk+0x1bbd>
  3e78c2:	add    r11,rcx
  3e78c5:	mov    rdx,rdi
  3e78c8:	mov    rdi,QWORD PTR [rdi+0x78]
  3e78cc:	mov    esi,DWORD PTR [rdx+0x80]
  3e78d2:	add    rdx,0x8
  3e78d6:	movzx  eax,al
  3e78d9:	movzx  r10d,r9b
  3e78dd:	mov    rcx,r13
  3e78e0:	mov    r8,rbx
  3e78e3:	mov    r9,r11
  3e78e6:	push   rax
  3e78e7:	push   r10
  3e78e9:	call   cf3f00 <fastfft::engine::stockham_f64>
  3e78ee:	add    rsp,0x188
  3e78f5:	jmp    3e917c <fastfft::fft::FftImpl<T>::run_chunk+0x19fc>
  3e78fa:	movzx  ecx,BYTE PTR [rdi+0xa8]
  3e7901:	lea    rdx,[rip+0xffffffffffcb5a88]        # 9d390 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a840>
  3e7908:	movsxd rcx,DWORD PTR [rdx+rcx*4]
  3e790c:	add    rcx,rdx
  3e790f:	jmp    rcx
  3e7911:	movzx  r8d,al
  3e7915:	mov    rsi,r13
  3e7918:	mov    rdx,rbx
  3e791b:	mov    rcx,r11
  3e791e:	add    rsp,0x178
  3e7925:	pop    rbx
  3e7926:	pop    r12
  3e7928:	pop    r13
  3e792a:	pop    r14
  3e792c:	pop    r15
  3e792e:	pop    rbp
  3e792f:	jmp    ed6780 <<fastfft::isa::scalar::S64 as fastfft::engine::fourstep::PanelVector>::execute>
  3e7934:	movzx  r9d,al
  3e7938:	mov    rsi,r13
  3e793b:	mov    rdx,rbx
  3e793e:	mov    rcx,r11
  3e7941:	add    rsp,0x178
  3e7948:	pop    rbx
  3e7949:	pop    r12
  3e794b:	pop    r13
  3e794d:	pop    r14
  3e794f:	pop    r15
  3e7951:	pop    rbp
  3e7952:	jmp    fb0a40 <<fastfft::isa::x86::F64x8 as fastfft::engine::bluestein::BluesteinVector>::execute>
  3e7957:	movzx  r9d,al
  3e795b:	mov    rsi,r13
  3e795e:	mov    rdx,rbx
  3e7961:	mov    rcx,r11
  3e7964:	add    rsp,0x178
  3e796b:	pop    rbx
  3e796c:	pop    r12
  3e796e:	pop    r13
  3e7970:	pop    r14
  3e7972:	pop    r15
  3e7974:	pop    rbp
  3e7975:	jmp    fafac0 <<fastfft::isa::x86::F64x4 as fastfft::engine::bluestein::BluesteinVector>::execute>
  3e797a:	movzx  r9d,al
  3e797e:	mov    rsi,r13
  3e7981:	mov    rdx,rbx
  3e7984:	mov    rcx,r11
  3e7987:	add    rsp,0x178
  3e798e:	pop    rbx
  3e798f:	pop    r12
  3e7991:	pop    r13
  3e7993:	pop    r14
  3e7995:	pop    r15
  3e7997:	pop    rbp
  3e7998:	jmp    fb3140 <<fastfft::isa::x86::F64x4v as fastfft::engine::bluestein::BluesteinVector>::execute>
  3e799d:	test   al,al
  3e799f:	mov    QWORD PTR [rsp+0x50],rbx
  3e79a4:	mov    QWORD PTR [rsp+0x40],rsi
  3e79a9:	je     3e7aa9 <fastfft::fft::FftImpl<T>::run_chunk+0x329>
  3e79af:	test   r8,r8
  3e79b2:	mov    rdx,rsi
  3e79b5:	je     3e7b8d <fastfft::fft::FftImpl<T>::run_chunk+0x40d>
  3e79bb:	lea    rax,[r11+0x3f]
  3e79bf:	and    rax,0xffffffffffffffc0
  3e79c3:	sub    rax,r11
  3e79c6:	mov    rcx,rax
  3e79c9:	shr    rcx,0x4
  3e79cd:	bt     eax,0x3
  3e79d1:	adc    rcx,0x0
  3e79d5:	sub    r8,rcx
  3e79d8:	jb     3e933d <fastfft::fft::FftImpl<T>::run_chunk+0x1bbd>
  3e79de:	add    r11,rax
  3e79e1:	jmp    3e7b90 <fastfft::fft::FftImpl<T>::run_chunk+0x410>
  3e79e6:	movzx  r8d,al
  3e79ea:	mov    rsi,r13
  3e79ed:	mov    rdx,rbx
  3e79f0:	mov    rcx,r11
  3e79f3:	add    rsp,0x178
  3e79fa:	pop    rbx
  3e79fb:	pop    r12
  3e79fd:	pop    r13
  3e79ff:	pop    r14
  3e7a01:	pop    r15
  3e7a03:	pop    rbp
  3e7a04:	jmp    e58040 <<fastfft::isa::x86::F64x8 as fastfft::engine::fourstep::PanelVector>::execute>
  3e7a09:	movzx  r8d,al
  3e7a0d:	mov    rsi,r13
  3e7a10:	mov    rdx,rbx
  3e7a13:	mov    rcx,r11
  3e7a16:	add    rsp,0x178
  3e7a1d:	pop    rbx
  3e7a1e:	pop    r12
  3e7a20:	pop    r13
  3e7a22:	pop    r14
  3e7a24:	pop    r15
  3e7a26:	pop    rbp
  3e7a27:	jmp    e24b40 <<fastfft::isa::x86::F64x4 as fastfft::engine::fourstep::PanelVector>::execute>
  3e7a2c:	movzx  r8d,al
  3e7a30:	mov    rsi,r13
  3e7a33:	mov    rdx,rbx
  3e7a36:	mov    rcx,r11
  3e7a39:	add    rsp,0x178
  3e7a40:	pop    rbx
  3e7a41:	pop    r12
  3e7a43:	pop    r13
  3e7a45:	pop    r14
  3e7a47:	pop    r15
  3e7a49:	pop    rbp
  3e7a4a:	jmp    f8fa40 <<fastfft::isa::x86::F64x4v as fastfft::engine::fourstep::PanelVector>::execute>
  3e7a4f:	movzx  r8d,al
  3e7a53:	mov    rsi,r13
  3e7a56:	mov    rdx,rbx
  3e7a59:	mov    rcx,r11
  3e7a5c:	add    rsp,0x178
  3e7a63:	pop    rbx
  3e7a64:	pop    r12
  3e7a66:	pop    r13
  3e7a68:	pop    r14
  3e7a6a:	pop    r15
  3e7a6c:	pop    rbp
  3e7a6d:	jmp    e0e280 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute>
  3e7a72:	test   r8,r8
  3e7a75:	mov    rdx,rsi
  3e7a78:	je     3e867e <fastfft::fft::FftImpl<T>::run_chunk+0xefe>
  3e7a7e:	lea    rax,[r11+0x3f]
  3e7a82:	and    rax,0xffffffffffffffc0
  3e7a86:	sub    rax,r11
  3e7a89:	mov    rcx,rax
  3e7a8c:	shr    rcx,0x4
  3e7a90:	bt     eax,0x3
  3e7a94:	adc    rcx,0x0
  3e7a98:	sub    r8,rcx
  3e7a9b:	jb     3e933d <fastfft::fft::FftImpl<T>::run_chunk+0x1bbd>
  3e7aa1:	add    r11,rax
  3e7aa4:	jmp    3e8681 <fastfft::fft::FftImpl<T>::run_chunk+0xf01>
  3e7aa9:	test   r8,r8
  3e7aac:	mov    rdx,rsi
  3e7aaf:	je     3e872d <fastfft::fft::FftImpl<T>::run_chunk+0xfad>
  3e7ab5:	lea    rax,[r11+0x3f]
  3e7ab9:	and    rax,0xffffffffffffffc0
  3e7abd:	sub    rax,r11
  3e7ac0:	mov    rcx,rax
  3e7ac3:	shr    rcx,0x4
  3e7ac7:	bt     eax,0x3
  3e7acb:	adc    rcx,0x0
  3e7acf:	sub    r8,rcx
  3e7ad2:	jb     3e933d <fastfft::fft::FftImpl<T>::run_chunk+0x1bbd>
  3e7ad8:	add    r11,rax
  3e7adb:	jmp    3e8730 <fastfft::fft::FftImpl<T>::run_chunk+0xfb0>
  3e7ae0:	xor    r8d,r8d
  3e7ae3:	mov    r15,QWORD PTR [rdx+0x50]
  3e7ae7:	sub    r8,r15
  3e7aea:	mov    QWORD PTR [rsp+0x18],r8
  3e7aef:	jb     3e9355 <fastfft::fft::FftImpl<T>::run_chunk+0x1bd5>
  3e7af5:	mov    rbp,r15
  3e7af8:	shl    rbp,0x4
  3e7afc:	mov    r14,QWORD PTR [rdx+0x10]
  3e7b00:	mov    r9,rdx
  3e7b03:	mov    r12,QWORD PTR [rdx+0x48]
  3e7b07:	test   r12,r12
  3e7b0a:	je     3e7b68 <fastfft::fft::FftImpl<T>::run_chunk+0x3e8>
  3e7b0c:	cmp    r12,0x4
  3e7b10:	jae    3e824b <fastfft::fft::FftImpl<T>::run_chunk+0xacb>
  3e7b16:	xor    eax,eax
  3e7b18:	mov    rcx,r12
  3e7b1b:	shl    rax,0x4
  3e7b1f:	nop
  3e7b20:	movupd xmm0,XMMWORD PTR [r14+rax*1]
  3e7b26:	movsd  xmm1,QWORD PTR [r13+rax*1+0x0]
  3e7b2d:	movsd  xmm2,QWORD PTR [r13+rax*1+0x8]
  3e7b34:	unpcklpd xmm1,xmm1
  3e7b38:	mulpd  xmm1,xmm0
  3e7b3c:	unpcklpd xmm2,xmm2
  3e7b40:	shufpd xmm0,xmm0,0x1
  3e7b45:	mulpd  xmm0,xmm2
  3e7b49:	movapd xmm2,xmm1
  3e7b4d:	addpd  xmm2,xmm0
  3e7b51:	subpd  xmm1,xmm0
  3e7b55:	movsd  xmm1,xmm2
  3e7b59:	movupd XMMWORD PTR [r11+rax*1],xmm1
  3e7b5f:	add    rax,0x10
  3e7b63:	dec    rcx
  3e7b66:	jne    3e7b20 <fastfft::fft::FftImpl<T>::run_chunk+0x3a0>
  3e7b68:	lea    rbx,[r11+rbp*1]
  3e7b6c:	mov    rax,r15
  3e7b6f:	sub    rax,r12
  3e7b72:	jbe    3e83cd <fastfft::fft::FftImpl<T>::run_chunk+0xc4d>
  3e7b78:	lea    rdx,[r12+0x1]
  3e7b7d:	test   al,0x1
  3e7b7f:	jne    3e83ad <fastfft::fft::FftImpl<T>::run_chunk+0xc2d>
  3e7b85:	mov    r10,r12
  3e7b88:	jmp    3e83c4 <fastfft::fft::FftImpl<T>::run_chunk+0xc44>
  3e7b8d:	xor    r8d,r8d
  3e7b90:	mov    r15,QWORD PTR [rdx+0x50]
  3e7b94:	sub    r8,r15
  3e7b97:	jb     3e9355 <fastfft::fft::FftImpl<T>::run_chunk+0x1bd5>
  3e7b9d:	mov    QWORD PTR [rsp+0x18],r8
  3e7ba2:	mov    QWORD PTR [rsp+0x10],r15
  3e7ba7:	shl    r15,0x4
  3e7bab:	mov    rax,QWORD PTR [rdx+0x10]
  3e7baf:	mov    QWORD PTR [rsp+0x28],rax
  3e7bb4:	mov    rax,QWORD PTR [rdx+0x48]
  3e7bb8:	mov    rcx,rax
  3e7bbb:	and    rcx,0xfffffffffffffffe
  3e7bbf:	mov    QWORD PTR [rsp+0x20],rcx
  3e7bc4:	mov    rcx,rax
  3e7bc7:	shr    rcx,1
  3e7bca:	mov    QWORD PTR [rsp+0x30],rax
  3e7bcf:	mov    QWORD PTR [rsp+0x38],rcx
  3e7bd4:	sub    rax,rcx
  3e7bd7:	mov    QWORD PTR [rsp+0x170],rax
  3e7bdf:	mov    QWORD PTR [rsp+0x8],r11
  3e7be4:	je     3e7d34 <fastfft::fft::FftImpl<T>::run_chunk+0x5b4>
  3e7bea:	mov    rbx,QWORD PTR [rsp+0x38]
  3e7bef:	mov    r14,QWORD PTR [rsp+0x30]
  3e7bf4:	sub    rbx,r14
  3e7bf7:	shl    r14,0x4
  3e7bfb:	xor    r12d,r12d
  3e7bfe:	xor    ebp,ebp
  3e7c00:	jmp    3e7c88 <fastfft::fft::FftImpl<T>::run_chunk+0x508>
  3e7c05:	data16 cs nop WORD PTR [rax+rax*1+0x0]
  3e7c10:	movupd xmm1,XMMWORD PTR [r13+r12*1+0x0]
  3e7c17:	movupd xmm2,XMMWORD PTR [r13+r12*1+0x10]
  3e7c1e:	movapd xmm0,xmm1
  3e7c22:	unpcklpd xmm0,xmm2
  3e7c26:	unpckhpd xmm1,xmm2
  3e7c2a:	mov    rax,QWORD PTR [rsp+0x28]
  3e7c2f:	movupd xmm2,XMMWORD PTR [rax+r12*1]
  3e7c35:	movupd xmm3,XMMWORD PTR [rax+r12*1+0x10]
  3e7c3c:	movapd xmm4,xmm0
  3e7c40:	mulpd  xmm4,xmm2
  3e7c44:	movapd xmm5,xmm1
  3e7c48:	mulpd  xmm5,xmm3
  3e7c4c:	addpd  xmm5,xmm4
  3e7c50:	mulpd  xmm0,xmm3
  3e7c54:	mulpd  xmm1,xmm2
  3e7c58:	subpd  xmm0,xmm1
  3e7c5c:	movapd xmm1,xmm5
  3e7c60:	unpcklpd xmm1,xmm0
  3e7c64:	movhlps xmm0,xmm5
  3e7c67:	movupd XMMWORD PTR [r11+r12*1],xmm1
  3e7c6d:	movups XMMWORD PTR [r11+r12*1+0x10],xmm0
  3e7c73:	add    r14,0xffffffffffffffe0
  3e7c77:	add    r12,0x20
  3e7c7b:	add    rbp,0x2
  3e7c7f:	inc    rbx
  3e7c82:	je     3e7d34 <fastfft::fft::FftImpl<T>::run_chunk+0x5b4>
  3e7c88:	cmp    rbp,QWORD PTR [rsp+0x20]
  3e7c8d:	jb     3e7c10 <fastfft::fft::FftImpl<T>::run_chunk+0x490>
  3e7c8f:	lea    rsi,[r12+r13*1]
  3e7c93:	xorps  xmm0,xmm0
  3e7c96:	movaps XMMWORD PTR [rsp+0x150],xmm0
  3e7c9e:	movaps XMMWORD PTR [rsp+0x140],xmm0
  3e7ca6:	movaps XMMWORD PTR [rsp+0x130],xmm0
  3e7cae:	movaps XMMWORD PTR [rsp+0x120],xmm0
  3e7cb6:	movaps XMMWORD PTR [rsp+0x110],xmm0
  3e7cbe:	movaps XMMWORD PTR [rsp+0x100],xmm0
  3e7cc6:	movaps XMMWORD PTR [rsp+0xf0],xmm0
  3e7cce:	movaps XMMWORD PTR [rsp+0xe0],xmm0
  3e7cd6:	movaps XMMWORD PTR [rsp+0xd0],xmm0
  3e7cde:	movaps XMMWORD PTR [rsp+0xc0],xmm0
  3e7ce6:	movaps XMMWORD PTR [rsp+0xb0],xmm0
  3e7cee:	movaps XMMWORD PTR [rsp+0xa0],xmm0
  3e7cf6:	movaps XMMWORD PTR [rsp+0x90],xmm0
  3e7cfe:	movaps XMMWORD PTR [rsp+0x80],xmm0
  3e7d06:	movaps XMMWORD PTR [rsp+0x70],xmm0
  3e7d0b:	movaps XMMWORD PTR [rsp+0x60],xmm0
  3e7d10:	lea    rdi,[rsp+0x60]
  3e7d15:	mov    rdx,r14
  3e7d18:	call   QWORD PTR [rip+0xe629c2]        # 124a6e0 <memcpy@GLIBC_2.14>
  3e7d1e:	mov    r11,QWORD PTR [rsp+0x8]
  3e7d23:	movapd xmm1,XMMWORD PTR [rsp+0x60]
  3e7d29:	movapd xmm2,XMMWORD PTR [rsp+0x70]
  3e7d2f:	jmp    3e7c1e <fastfft::fft::FftImpl<T>::run_chunk+0x49e>
  3e7d34:	mov    rax,QWORD PTR [rsp+0x30]
  3e7d39:	mov    edi,eax
  3e7d3b:	and    edi,0x1
  3e7d3e:	add    rdi,rax
  3e7d41:	xor    ebx,ebx
  3e7d43:	mov    rax,QWORD PTR [rsp+0x10]
  3e7d48:	sub    rax,rdi
  3e7d4b:	cmovae rbx,rax
  3e7d4f:	lea    rax,[r11+r15*1]
  3e7d53:	mov    QWORD PTR [rsp+0x48],rax
  3e7d58:	mov    r14,rbx
  3e7d5b:	shr    r14,1
  3e7d5e:	sub    rbx,r14
  3e7d61:	je     3e7db7 <fastfft::fft::FftImpl<T>::run_chunk+0x637>
  3e7d63:	mov    rcx,QWORD PTR [rsp+0x10]
  3e7d68:	mov    rax,rcx
  3e7d6b:	sub    rax,rdi
  3e7d6e:	mov    r12,rdi
  3e7d71:	cmovb  r12,rcx
  3e7d75:	not    r12
  3e7d78:	add    r12,rcx
  3e7d7b:	test   bl,0x1
  3e7d7e:	je     3e7dae <fastfft::fft::FftImpl<T>::run_chunk+0x62e>
  3e7d80:	lea    r13,[rdi+0x2]
  3e7d84:	dec    rbx
  3e7d87:	shl    rdi,0x4
  3e7d8b:	add    rdi,r11
  3e7d8e:	cmp    rax,0x2
  3e7d92:	mov    edx,0x2
  3e7d97:	cmovb  rdx,rax
  3e7d9b:	shl    edx,0x4
  3e7d9e:	xor    esi,esi
  3e7da0:	call   QWORD PTR [rip+0xe62952]        # 124a6f8 <memset@GLIBC_2.2.5>
  3e7da6:	mov    r11,QWORD PTR [rsp+0x8]
  3e7dab:	mov    rdi,r13
  3e7dae:	cmp    r12,r14
  3e7db1:	jne    3e831f <fastfft::fft::FftImpl<T>::run_chunk+0xb9f>
  3e7db7:	mov    rbx,QWORD PTR [rsp+0x40]
  3e7dbc:	mov    rax,QWORD PTR [rbx+0x38]
  3e7dc0:	mov    rcx,QWORD PTR [rbx+0x40]
  3e7dc4:	mov    rdx,QWORD PTR [rcx+0x10]
  3e7dc8:	mov    r9,QWORD PTR [rcx+0x38]
  3e7dcc:	dec    rdx
  3e7dcf:	and    rdx,0xfffffffffffffff0
  3e7dd3:	lea    rdi,[rax+rdx*1]
  3e7dd7:	add    rdi,0x10
  3e7ddb:	mov    QWORD PTR [rsp+0x160],rdi
  3e7de3:	mov    rsi,r11
  3e7de6:	mov    r14,QWORD PTR [rsp+0x10]
  3e7deb:	mov    rdx,r14
  3e7dee:	mov    rcx,QWORD PTR [rsp+0x48]
  3e7df3:	mov    r8,QWORD PTR [rsp+0x18]
  3e7df8:	mov    QWORD PTR [rsp+0x168],r9
  3e7e00:	call   r9
  3e7e03:	mov    rsi,QWORD PTR [rsp+0x8]
  3e7e08:	mov    r13,r14
  3e7e0b:	shr    r13,1
  3e7e0e:	cmp    r14,r13
  3e7e11:	je     3e8022 <fastfft::fft::FftImpl<T>::run_chunk+0x8a2>
  3e7e17:	mov    rax,QWORD PTR [rbx+0x28]
  3e7e1b:	mov    QWORD PTR [rsp+0x40],rax
  3e7e20:	mov    rax,QWORD PTR [rsp+0x10]
  3e7e25:	mov    rcx,rax
  3e7e28:	and    rcx,0xfffffffffffffffe
  3e7e2c:	lea    rbx,[rsp+0x80]
  3e7e34:	sub    r13,rax
  3e7e37:	xor    r14d,r14d
  3e7e3a:	xor    ebp,ebp
  3e7e3c:	mov    QWORD PTR [rsp+0x58],rcx
  3e7e41:	jmp    3e7ee6 <fastfft::fft::FftImpl<T>::run_chunk+0x766>
  3e7e46:	cs nop WORD PTR [rax+rax*1+0x0]
  3e7e50:	xorpd  xmm2,xmm2
  3e7e54:	movapd XMMWORD PTR [rbx+0xd0],xmm2
  3e7e5c:	movapd XMMWORD PTR [rbx+0xc0],xmm2
  3e7e64:	movapd XMMWORD PTR [rbx+0xb0],xmm2
  3e7e6c:	movapd XMMWORD PTR [rbx+0xa0],xmm2
  3e7e74:	movapd XMMWORD PTR [rbx+0x90],xmm2
  3e7e7c:	movapd XMMWORD PTR [rbx+0x80],xmm2
  3e7e84:	movapd XMMWORD PTR [rbx+0x70],xmm2
  3e7e89:	movapd XMMWORD PTR [rbx+0x60],xmm2
  3e7e8e:	movapd XMMWORD PTR [rbx+0x50],xmm2
  3e7e93:	movapd XMMWORD PTR [rbx+0x40],xmm2
  3e7e98:	movapd XMMWORD PTR [rbx+0x30],xmm2
  3e7e9d:	movapd XMMWORD PTR [rbx+0x20],xmm2
  3e7ea2:	movapd XMMWORD PTR [rbx+0x10],xmm2
  3e7ea7:	movapd XMMWORD PTR [rbx],xmm2
  3e7eab:	movapd XMMWORD PTR [rsp+0x60],xmm1
  3e7eb1:	movaps XMMWORD PTR [rsp+0x70],xmm0
  3e7eb6:	mov    rdi,r12
  3e7eb9:	lea    rsi,[rsp+0x60]
  3e7ebe:	mov    rdx,r15
  3e7ec1:	call   QWORD PTR [rip+0xe62819]        # 124a6e0 <memcpy@GLIBC_2.14>
  3e7ec7:	mov    rcx,QWORD PTR [rsp+0x58]
  3e7ecc:	mov    rsi,QWORD PTR [rsp+0x8]
  3e7ed1:	add    r15,0xffffffffffffffe0
  3e7ed5:	add    r14,0x20
  3e7ed9:	add    rbp,0x2
  3e7edd:	inc    r13
  3e7ee0:	je     3e8022 <fastfft::fft::FftImpl<T>::run_chunk+0x8a2>
  3e7ee6:	lea    rax,[rsi+r14*1]
  3e7eea:	cmp    rbp,rcx
  3e7eed:	jae    3e7f10 <fastfft::fft::FftImpl<T>::run_chunk+0x790>
  3e7eef:	mov    r12,rax
  3e7ef2:	movupd xmm1,XMMWORD PTR [rsi+r14*1]
  3e7ef8:	movupd xmm2,XMMWORD PTR [rsi+r14*1+0x10]
  3e7eff:	jmp    3e7fb7 <fastfft::fft::FftImpl<T>::run_chunk+0x837>
  3e7f04:	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  3e7f10:	xorps  xmm0,xmm0
  3e7f13:	movaps XMMWORD PTR [rsp+0x150],xmm0
  3e7f1b:	movaps XMMWORD PTR [rsp+0x140],xmm0
  3e7f23:	movaps XMMWORD PTR [rsp+0x130],xmm0
  3e7f2b:	movaps XMMWORD PTR [rsp+0x120],xmm0
  3e7f33:	movaps XMMWORD PTR [rsp+0x110],xmm0
  3e7f3b:	movaps XMMWORD PTR [rsp+0x100],xmm0
  3e7f43:	movaps XMMWORD PTR [rsp+0xf0],xmm0
  3e7f4b:	movaps XMMWORD PTR [rsp+0xe0],xmm0
  3e7f53:	movaps XMMWORD PTR [rsp+0xd0],xmm0
  3e7f5b:	movaps XMMWORD PTR [rsp+0xc0],xmm0
  3e7f63:	movaps XMMWORD PTR [rsp+0xb0],xmm0
  3e7f6b:	movaps XMMWORD PTR [rsp+0xa0],xmm0
  3e7f73:	movaps XMMWORD PTR [rsp+0x90],xmm0
  3e7f7b:	movaps XMMWORD PTR [rsp+0x80],xmm0
  3e7f83:	movaps XMMWORD PTR [rsp+0x70],xmm0
  3e7f88:	movaps XMMWORD PTR [rsp+0x60],xmm0
  3e7f8d:	lea    rdi,[rsp+0x60]
  3e7f92:	mov    r12,rax
  3e7f95:	mov    rsi,rax
  3e7f98:	mov    rdx,r15
  3e7f9b:	call   QWORD PTR [rip+0xe6273f]        # 124a6e0 <memcpy@GLIBC_2.14>
  3e7fa1:	mov    rcx,QWORD PTR [rsp+0x58]
  3e7fa6:	mov    rsi,QWORD PTR [rsp+0x8]
  3e7fab:	movapd xmm1,XMMWORD PTR [rsp+0x60]
  3e7fb1:	movapd xmm2,XMMWORD PTR [rsp+0x70]
  3e7fb7:	movapd xmm0,xmm1
  3e7fbb:	unpcklpd xmm0,xmm2
  3e7fbf:	unpckhpd xmm1,xmm2
  3e7fc3:	mov    rax,QWORD PTR [rsp+0x40]
  3e7fc8:	movupd xmm2,XMMWORD PTR [rax+r14*1]
  3e7fce:	movupd xmm3,XMMWORD PTR [rax+r14*1+0x10]
  3e7fd5:	movapd xmm4,xmm1
  3e7fd9:	mulpd  xmm4,xmm3
  3e7fdd:	movapd xmm5,xmm0
  3e7fe1:	mulpd  xmm5,xmm2
  3e7fe5:	subpd  xmm5,xmm4
  3e7fe9:	mulpd  xmm1,xmm2
  3e7fed:	mulpd  xmm0,xmm3
  3e7ff1:	addpd  xmm0,xmm1
  3e7ff5:	xorpd  xmm0,XMMWORD PTR [rip+0xffffffffffc89f43]        # 71f40 <__abi_tag+0x71c44>
  3e7ffd:	movapd xmm1,xmm5
  3e8001:	unpcklpd xmm1,xmm0
  3e8005:	movhlps xmm0,xmm5
  3e8008:	cmp    rbp,rcx
  3e800b:	jae    3e7e50 <fastfft::fft::FftImpl<T>::run_chunk+0x6d0>
  3e8011:	movupd XMMWORD PTR [rsi+r14*1],xmm1
  3e8017:	movups XMMWORD PTR [rsi+r14*1+0x10],xmm0
  3e801d:	jmp    3e7ed1 <fastfft::fft::FftImpl<T>::run_chunk+0x751>
  3e8022:	mov    rdi,QWORD PTR [rsp+0x160]
  3e802a:	mov    rdx,QWORD PTR [rsp+0x10]
  3e802f:	mov    rcx,QWORD PTR [rsp+0x48]
  3e8034:	mov    r8,QWORD PTR [rsp+0x18]
  3e8039:	call   QWORD PTR [rsp+0x168]
  3e8040:	mov    rax,QWORD PTR [rsp+0x8]
  3e8045:	cmp    QWORD PTR [rsp+0x170],0x0
  3e804e:	mov    rbp,QWORD PTR [rsp+0x50]
  3e8053:	mov    rdx,QWORD PTR [rsp+0x30]
  3e8058:	je     3e9175 <fastfft::fft::FftImpl<T>::run_chunk+0x19f5>
  3e805e:	lea    r14,[rsp+0x80]
  3e8066:	sub    QWORD PTR [rsp+0x38],rdx
  3e806b:	shl    rdx,0x4
  3e806f:	xor    ebx,ebx
  3e8071:	lea    r15,[rsp+0x60]
  3e8076:	xor    r13d,r13d
  3e8079:	jmp    3e8123 <fastfft::fft::FftImpl<T>::run_chunk+0x9a3>
  3e807e:	xchg   ax,ax
  3e8080:	lea    rdi,[rbx+rbp*1]
  3e8084:	xorpd  xmm2,xmm2
  3e8088:	movapd XMMWORD PTR [r14+0xd0],xmm2
  3e8091:	movapd XMMWORD PTR [r14+0xc0],xmm2
  3e809a:	movapd XMMWORD PTR [r14+0xb0],xmm2
  3e80a3:	movapd XMMWORD PTR [r14+0xa0],xmm2
  3e80ac:	movapd XMMWORD PTR [r14+0x90],xmm2
  3e80b5:	movapd XMMWORD PTR [r14+0x80],xmm2
  3e80be:	movapd XMMWORD PTR [r14+0x70],xmm2
  3e80c4:	movapd XMMWORD PTR [r14+0x60],xmm2
  3e80ca:	movapd XMMWORD PTR [r14+0x50],xmm2
  3e80d0:	movapd XMMWORD PTR [r14+0x40],xmm2
  3e80d6:	movapd XMMWORD PTR [r14+0x30],xmm2
  3e80dc:	movapd XMMWORD PTR [r14+0x20],xmm2
  3e80e2:	movapd XMMWORD PTR [r14+0x10],xmm2
  3e80e8:	movapd XMMWORD PTR [r14],xmm2
  3e80ed:	movapd XMMWORD PTR [rsp+0x60],xmm1
  3e80f3:	movaps XMMWORD PTR [rsp+0x70],xmm0
  3e80f8:	mov    rsi,r15
  3e80fb:	mov    rdx,r12
  3e80fe:	call   QWORD PTR [rip+0xe625dc]        # 124a6e0 <memcpy@GLIBC_2.14>
  3e8104:	mov    rdx,r12
  3e8107:	mov    rax,QWORD PTR [rsp+0x8]
  3e810c:	add    rdx,0xffffffffffffffe0
  3e8110:	add    rbx,0x20
  3e8114:	add    r13,0x2
  3e8118:	inc    QWORD PTR [rsp+0x38]
  3e811d:	je     3e9175 <fastfft::fft::FftImpl<T>::run_chunk+0x19f5>
  3e8123:	cmp    r13,QWORD PTR [rsp+0x20]
  3e8128:	jae    3e8140 <fastfft::fft::FftImpl<T>::run_chunk+0x9c0>
  3e812a:	mov    r12,rdx
  3e812d:	movupd xmm1,XMMWORD PTR [rax+rbx*1]
  3e8132:	movupd xmm2,XMMWORD PTR [rax+rbx*1+0x10]
  3e8138:	jmp    3e81d9 <fastfft::fft::FftImpl<T>::run_chunk+0xa59>
  3e813d:	nop    DWORD PTR [rax]
  3e8140:	lea    rsi,[rax+rbx*1]
  3e8144:	xorps  xmm0,xmm0
  3e8147:	movaps XMMWORD PTR [rsp+0x150],xmm0
  3e814f:	movaps XMMWORD PTR [rsp+0x140],xmm0
  3e8157:	movaps XMMWORD PTR [rsp+0x130],xmm0
  3e815f:	movaps XMMWORD PTR [rsp+0x120],xmm0
  3e8167:	movaps XMMWORD PTR [rsp+0x110],xmm0
  3e816f:	movaps XMMWORD PTR [rsp+0x100],xmm0
  3e8177:	movaps XMMWORD PTR [rsp+0xf0],xmm0
  3e817f:	movaps XMMWORD PTR [rsp+0xe0],xmm0
  3e8187:	movaps XMMWORD PTR [rsp+0xd0],xmm0
  3e818f:	movaps XMMWORD PTR [rsp+0xc0],xmm0
  3e8197:	movaps XMMWORD PTR [rsp+0xb0],xmm0
  3e819f:	movaps XMMWORD PTR [rsp+0xa0],xmm0
  3e81a7:	movaps XMMWORD PTR [rsp+0x90],xmm0
  3e81af:	movaps XMMWORD PTR [rsp+0x80],xmm0
  3e81b7:	movaps XMMWORD PTR [rsp+0x70],xmm0
  3e81bc:	movaps XMMWORD PTR [rsp+0x60],xmm0
  3e81c1:	mov    rdi,r15
  3e81c4:	mov    r12,rdx
  3e81c7:	call   QWORD PTR [rip+0xe62513]        # 124a6e0 <memcpy@GLIBC_2.14>
  3e81cd:	movapd xmm1,XMMWORD PTR [rsp+0x60]
  3e81d3:	movapd xmm2,XMMWORD PTR [rsp+0x70]
  3e81d9:	movapd xmm0,xmm1
  3e81dd:	unpcklpd xmm0,xmm2
  3e81e1:	unpckhpd xmm1,xmm2
  3e81e5:	mov    rax,QWORD PTR [rsp+0x28]
  3e81ea:	movupd xmm2,XMMWORD PTR [rax+rbx*1]
  3e81ef:	movupd xmm3,XMMWORD PTR [rax+rbx*1+0x10]
  3e81f5:	movapd xmm4,xmm0
  3e81f9:	mulpd  xmm4,xmm2
  3e81fd:	movapd xmm5,xmm1
  3e8201:	mulpd  xmm5,xmm3
  3e8205:	addpd  xmm5,xmm4
  3e8209:	mulpd  xmm0,xmm3
  3e820d:	mulpd  xmm1,xmm2
  3e8211:	subpd  xmm0,xmm1
  3e8215:	xorpd  xmm0,XMMWORD PTR [rip+0xffffffffffc89d23]        # 71f40 <__abi_tag+0x71c44>
  3e821d:	movapd xmm1,xmm5
  3e8221:	unpcklpd xmm1,xmm0
  3e8225:	movhlps xmm0,xmm5
  3e8228:	cmp    r13,QWORD PTR [rsp+0x20]
  3e822d:	jae    3e8080 <fastfft::fft::FftImpl<T>::run_chunk+0x900>
  3e8233:	movupd XMMWORD PTR [rbp+rbx*1+0x0],xmm1
  3e8239:	movups XMMWORD PTR [rbp+rbx*1+0x10],xmm0
  3e823e:	mov    rax,QWORD PTR [rsp+0x8]
  3e8243:	mov    rdx,r12
  3e8246:	jmp    3e810c <fastfft::fft::FftImpl<T>::run_chunk+0x98c>
  3e824b:	mov    rax,r12
  3e824e:	shl    rax,0x4
  3e8252:	lea    rcx,[r11+rax*1]
  3e8256:	lea    rdx,[rax+r13*1]
  3e825a:	add    rax,r14
  3e825d:	cmp    r11,rdx
  3e8260:	setb   dil
  3e8264:	cmp    r13,rcx
  3e8267:	setb   r8b
  3e826b:	cmp    r11,rax
  3e826e:	setb   dl
  3e8271:	cmp    r14,rcx
  3e8274:	setb   sil
  3e8278:	xor    eax,eax
  3e827a:	mov    rcx,r12
  3e827d:	test   dil,r8b
  3e8280:	jne    3e7b1b <fastfft::fft::FftImpl<T>::run_chunk+0x39b>
  3e8286:	and    dl,sil
  3e8289:	jne    3e7b1b <fastfft::fft::FftImpl<T>::run_chunk+0x39b>
  3e828f:	mov    rax,r12
  3e8292:	and    rax,0xfffffffffffffffe
  3e8296:	mov    ecx,r12d
  3e8299:	and    ecx,0x1
  3e829c:	xor    edx,edx
  3e829e:	mov    rsi,rax
  3e82a1:	movupd xmm0,XMMWORD PTR [r13+rdx*1+0x0]
  3e82a8:	movupd xmm1,XMMWORD PTR [r13+rdx*1+0x10]
  3e82af:	movapd xmm2,xmm0
  3e82b3:	unpcklpd xmm2,xmm1
  3e82b7:	unpckhpd xmm0,xmm1
  3e82bb:	movupd xmm1,XMMWORD PTR [r14+rdx*1]
  3e82c1:	movupd xmm3,XMMWORD PTR [r14+rdx*1+0x10]
  3e82c8:	movapd xmm4,xmm1
  3e82cc:	unpcklpd xmm4,xmm3
  3e82d0:	unpckhpd xmm1,xmm3
  3e82d4:	movapd xmm3,xmm0
  3e82d8:	mulpd  xmm3,xmm1
  3e82dc:	mulpd  xmm1,xmm2
  3e82e0:	mulpd  xmm2,xmm4
  3e82e4:	addpd  xmm3,xmm2
  3e82e8:	mulpd  xmm4,xmm0
  3e82ec:	subpd  xmm1,xmm4
  3e82f0:	movapd xmm0,xmm3
  3e82f4:	unpcklpd xmm0,xmm1
  3e82f8:	movhlps xmm1,xmm3
  3e82fb:	movups XMMWORD PTR [r11+rdx*1+0x10],xmm1
  3e8301:	movupd XMMWORD PTR [r11+rdx*1],xmm0
  3e8307:	add    rdx,0x20
  3e830b:	add    rsi,0xfffffffffffffffe
  3e830f:	jne    3e82a1 <fastfft::fft::FftImpl<T>::run_chunk+0xb21>
  3e8311:	cmp    r12,rax
  3e8314:	jne    3e7b1b <fastfft::fft::FftImpl<T>::run_chunk+0x39b>
  3e831a:	jmp    3e7b68 <fastfft::fft::FftImpl<T>::run_chunk+0x3e8>
  3e831f:	mov    r12,QWORD PTR [rsp+0x10]
  3e8324:	sub    r12,rdi
  3e8327:	shl    rdi,0x4
  3e832b:	mov    r14,r15
  3e832e:	sub    r14,rdi
  3e8331:	lea    r13,[rdi+r11*1]
  3e8335:	add    r13,0x20
  3e8339:	mov    rbp,QWORD PTR [rip+0xe623b8]        # 124a6f8 <memset@GLIBC_2.2.5>
  3e8340:	jmp    3e836d <fastfft::fft::FftImpl<T>::run_chunk+0xbed>
  3e8342:	xorps  xmm0,xmm0
  3e8345:	movups XMMWORD PTR [r13+0x10],xmm0
  3e834a:	movups XMMWORD PTR [r13+0x0],xmm0
  3e834f:	mov    r11,QWORD PTR [rsp+0x8]
  3e8354:	add    rbx,0xfffffffffffffffe
  3e8358:	add    r14,0xffffffffffffffc0
  3e835c:	add    r12,0xfffffffffffffffc
  3e8360:	add    r13,0x40
  3e8364:	test   rbx,rbx
  3e8367:	je     3e7db7 <fastfft::fft::FftImpl<T>::run_chunk+0x637>
  3e836d:	lea    rdi,[r13-0x20]
  3e8371:	cmp    r12,0x1
  3e8375:	jbe    3e838e <fastfft::fft::FftImpl<T>::run_chunk+0xc0e>
  3e8377:	xorps  xmm0,xmm0
  3e837a:	movups XMMWORD PTR [rdi+0x10],xmm0
  3e837e:	movups XMMWORD PTR [rdi],xmm0
  3e8381:	lea    rax,[r12-0x2]
  3e8386:	cmp    rax,0x1
  3e838a:	ja     3e8342 <fastfft::fft::FftImpl<T>::run_chunk+0xbc2>
  3e838c:	jmp    3e83a0 <fastfft::fft::FftImpl<T>::run_chunk+0xc20>
  3e838e:	xor    esi,esi
  3e8390:	mov    rdx,r14
  3e8393:	call   rbp
  3e8395:	lea    rax,[r12-0x2]
  3e839a:	cmp    rax,0x1
  3e839e:	ja     3e8342 <fastfft::fft::FftImpl<T>::run_chunk+0xbc2>
  3e83a0:	lea    rdx,[r14-0x20]
  3e83a4:	mov    rdi,r13
  3e83a7:	xor    esi,esi
  3e83a9:	call   rbp
  3e83ab:	jmp    3e834f <fastfft::fft::FftImpl<T>::run_chunk+0xbcf>
  3e83ad:	dec    rax
  3e83b0:	mov    rsi,r12
  3e83b3:	shl    rsi,0x4
  3e83b7:	xorpd  xmm0,xmm0
  3e83bb:	movupd XMMWORD PTR [r11+rsi*1],xmm0
  3e83c1:	mov    r10,rdx
  3e83c4:	cmp    r15,rdx
  3e83c7:	jne    3e8625 <fastfft::fft::FftImpl<T>::run_chunk+0xea5>
  3e83cd:	mov    r13,r9
  3e83d0:	mov    rax,QWORD PTR [r9+0x38]
  3e83d4:	mov    rsi,QWORD PTR [r9+0x40]
  3e83d8:	mov    rdx,QWORD PTR [rsi+0x10]
  3e83dc:	mov    r9,QWORD PTR [rsi+0x38]
  3e83e0:	dec    rdx
  3e83e3:	and    rdx,0xfffffffffffffff0
  3e83e7:	lea    rdi,[rax+rdx*1]
  3e83eb:	add    rdi,0x10
  3e83ef:	mov    QWORD PTR [rsp+0x28],rdi
  3e83f4:	mov    rsi,r11
  3e83f7:	mov    rdx,r15
  3e83fa:	mov    rcx,rbx
  3e83fd:	mov    r8,QWORD PTR [rsp+0x18]
  3e8402:	mov    QWORD PTR [rsp+0x8],r11
  3e8407:	mov    QWORD PTR [rsp+0x20],r9
  3e840c:	call   r9
  3e840f:	mov    rsi,QWORD PTR [rsp+0x8]
  3e8414:	test   r15,r15
  3e8417:	je     3e84ae <fastfft::fft::FftImpl<T>::run_chunk+0xd2e>
  3e841d:	mov    rax,QWORD PTR [r13+0x28]
  3e8421:	cmp    r15,0x1
  3e8425:	je     3e843e <fastfft::fft::FftImpl<T>::run_chunk+0xcbe>
  3e8427:	add    rbp,rax
  3e842a:	cmp    rsi,rbp
  3e842d:	setb   cl
  3e8430:	cmp    rax,rbx
  3e8433:	setb   dl
  3e8436:	test   cl,dl
  3e8438:	je     3e8f63 <fastfft::fft::FftImpl<T>::run_chunk+0x17e3>
  3e843e:	xor    ecx,ecx
  3e8440:	mov    rdx,r15
  3e8443:	shl    rcx,0x4
  3e8447:	or     rcx,0x8
  3e844b:	movapd xmm0,XMMWORD PTR [rip+0xffffffffffc89aed]        # 71f40 <__abi_tag+0x71c44>
  3e8453:	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  3e8460:	movsd  xmm1,QWORD PTR [rsi+rcx*1-0x8]
  3e8466:	movsd  xmm2,QWORD PTR [rsi+rcx*1]
  3e846b:	movsd  xmm3,QWORD PTR [rax+rcx*1-0x8]
  3e8471:	movsd  xmm4,QWORD PTR [rax+rcx*1]
  3e8476:	movapd xmm5,xmm2
  3e847a:	mulsd  xmm5,xmm3
  3e847e:	movapd xmm6,xmm1
  3e8482:	mulsd  xmm6,xmm4
  3e8486:	addsd  xmm6,xmm5
  3e848a:	xorpd  xmm6,xmm0
  3e848e:	mulsd  xmm1,xmm3
  3e8492:	mulsd  xmm2,xmm4
  3e8496:	subsd  xmm1,xmm2
  3e849a:	movsd  QWORD PTR [rsi+rcx*1-0x8],xmm1
  3e84a0:	movlpd QWORD PTR [rsi+rcx*1],xmm6
  3e84a5:	add    rcx,0x10
  3e84a9:	dec    rdx
  3e84ac:	jne    3e8460 <fastfft::fft::FftImpl<T>::run_chunk+0xce0>
  3e84ae:	mov    rdi,QWORD PTR [rsp+0x28]
  3e84b3:	mov    rdx,r15
  3e84b6:	mov    rcx,rbx
  3e84b9:	mov    r8,QWORD PTR [rsp+0x18]
  3e84be:	call   QWORD PTR [rsp+0x20]
  3e84c2:	mov    r8,QWORD PTR [rsp+0x8]
  3e84c7:	test   r12,r12
  3e84ca:	mov    r9,QWORD PTR [rsp+0x50]
  3e84cf:	je     3e9175 <fastfft::fft::FftImpl<T>::run_chunk+0x19f5>
  3e84d5:	cmp    r12,0x4
  3e84d9:	jae    3e8549 <fastfft::fft::FftImpl<T>::run_chunk+0xdc9>
  3e84db:	xor    eax,eax
  3e84dd:	mov    rcx,r12
  3e84e0:	shl    rax,0x4
  3e84e4:	or     rax,0x8
  3e84e8:	movapd xmm0,XMMWORD PTR [rip+0xffffffffffc89a50]        # 71f40 <__abi_tag+0x71c44>
  3e84f0:	movsd  xmm1,QWORD PTR [r14+rax*1-0x8]
  3e84f7:	movsd  xmm2,QWORD PTR [r14+rax*1]
  3e84fd:	movsd  xmm3,QWORD PTR [r8+rax*1-0x8]
  3e8504:	movsd  xmm4,QWORD PTR [r8+rax*1]
  3e850a:	movapd xmm5,xmm3
  3e850e:	mulsd  xmm5,xmm2
  3e8512:	movapd xmm6,xmm4
  3e8516:	mulsd  xmm6,xmm1
  3e851a:	subsd  xmm5,xmm6
  3e851e:	xorpd  xmm5,xmm0
  3e8522:	mulsd  xmm3,xmm1
  3e8526:	mulsd  xmm4,xmm2
  3e852a:	addsd  xmm4,xmm3
  3e852e:	movsd  QWORD PTR [r9+rax*1-0x8],xmm4
  3e8535:	movlpd QWORD PTR [r9+rax*1],xmm5
  3e853b:	add    rax,0x10
  3e853f:	dec    rcx
  3e8542:	jne    3e84f0 <fastfft::fft::FftImpl<T>::run_chunk+0xd70>
  3e8544:	jmp    3e9175 <fastfft::fft::FftImpl<T>::run_chunk+0x19f5>
  3e8549:	mov    rax,r12
  3e854c:	shl    rax,0x4
  3e8550:	lea    rdx,[r9+rax*1]
  3e8554:	lea    rcx,[r8+rax*1]
  3e8558:	add    rax,r14
  3e855b:	cmp    r9,rcx
  3e855e:	setb   sil
  3e8562:	cmp    r8,rdx
  3e8565:	setb   dil
  3e8569:	cmp    r9,rax
  3e856c:	setb   cl
  3e856f:	cmp    r14,rdx
  3e8572:	setb   dl
  3e8575:	xor    eax,eax
  3e8577:	test   sil,dil
  3e857a:	jne    3e84dd <fastfft::fft::FftImpl<T>::run_chunk+0xd5d>
  3e8580:	and    cl,dl
  3e8582:	jne    3e84dd <fastfft::fft::FftImpl<T>::run_chunk+0xd5d>
  3e8588:	mov    rax,r12
  3e858b:	and    rax,0xfffffffffffffffe
  3e858f:	mov    ecx,r12d
  3e8592:	and    ecx,0x1
  3e8595:	xor    edx,edx
  3e8597:	movapd xmm0,XMMWORD PTR [rip+0xffffffffffc899a1]        # 71f40 <__abi_tag+0x71c44>
  3e859f:	mov    rsi,rax
  3e85a2:	movupd xmm1,XMMWORD PTR [r8+rdx*1]
  3e85a8:	movupd xmm2,XMMWORD PTR [r8+rdx*1+0x10]
  3e85af:	movapd xmm3,xmm1
  3e85b3:	unpcklpd xmm3,xmm2
  3e85b7:	unpckhpd xmm1,xmm2
  3e85bb:	movupd xmm2,XMMWORD PTR [r14+rdx*1]
  3e85c1:	movupd xmm4,XMMWORD PTR [r14+rdx*1+0x10]
  3e85c8:	movapd xmm5,xmm2
  3e85cc:	unpcklpd xmm5,xmm4
  3e85d0:	unpckhpd xmm2,xmm4
  3e85d4:	movapd xmm4,xmm1
  3e85d8:	mulpd  xmm4,xmm5
  3e85dc:	mulpd  xmm5,xmm3
  3e85e0:	mulpd  xmm3,xmm2
  3e85e4:	subpd  xmm3,xmm4
  3e85e8:	xorpd  xmm3,xmm0
  3e85ec:	mulpd  xmm2,xmm1
  3e85f0:	addpd  xmm2,xmm5
  3e85f4:	movapd xmm1,xmm2
  3e85f8:	unpcklpd xmm1,xmm3
  3e85fc:	unpckhpd xmm2,xmm3
  3e8600:	movupd XMMWORD PTR [r9+rdx*1+0x10],xmm2
  3e8607:	movupd XMMWORD PTR [r9+rdx*1],xmm1
  3e860d:	add    rdx,0x20
  3e8611:	add    rsi,0xfffffffffffffffe
  3e8615:	jne    3e85a2 <fastfft::fft::FftImpl<T>::run_chunk+0xe22>
  3e8617:	cmp    r12,rax
  3e861a:	jne    3e84e0 <fastfft::fft::FftImpl<T>::run_chunk+0xd60>
  3e8620:	jmp    3e9175 <fastfft::fft::FftImpl<T>::run_chunk+0x19f5>
  3e8625:	mov    rdx,r10
  3e8628:	shl    rdx,0x4
  3e862c:	add    rdx,r11
  3e862f:	add    rdx,0x10
  3e8633:	mov    rsi,r15
  3e8636:	sub    rsi,r10
  3e8639:	xor    edi,edi
  3e863b:	xorpd  xmm0,xmm0
  3e863f:	jmp    3e8665 <fastfft::fft::FftImpl<T>::run_chunk+0xee5>
  3e8641:	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  3e8650:	add    rdi,0x2
  3e8654:	add    rdx,0x20
  3e8658:	add    r10,0x2
  3e865c:	cmp    rax,rdi
  3e865f:	je     3e83cd <fastfft::fft::FftImpl<T>::run_chunk+0xc4d>
  3e8665:	cmp    rsi,rdi
  3e8668:	je     3e866f <fastfft::fft::FftImpl<T>::run_chunk+0xeef>
  3e866a:	movupd XMMWORD PTR [rdx-0x10],xmm0
  3e866f:	lea    r8,[r10+0x1]
  3e8673:	cmp    r15,r8
  3e8676:	je     3e8650 <fastfft::fft::FftImpl<T>::run_chunk+0xed0>
  3e8678:	movupd XMMWORD PTR [rdx],xmm0
  3e867c:	jmp    3e8650 <fastfft::fft::FftImpl<T>::run_chunk+0xed0>
  3e867e:	xor    r8d,r8d
  3e8681:	mov    r15,QWORD PTR [rdx+0x50]
  3e8685:	sub    r8,r15
  3e8688:	mov    QWORD PTR [rsp+0x18],r8
  3e868d:	jb     3e9355 <fastfft::fft::FftImpl<T>::run_chunk+0x1bd5>
  3e8693:	mov    rbp,r15
  3e8696:	shl    rbp,0x4
  3e869a:	mov    r14,QWORD PTR [rdx+0x10]
  3e869e:	mov    r9,rdx
  3e86a1:	mov    r12,QWORD PTR [rdx+0x48]
  3e86a5:	test   r12,r12
  3e86a8:	je     3e8708 <fastfft::fft::FftImpl<T>::run_chunk+0xf88>
  3e86aa:	cmp    r12,0x4
  3e86ae:	jae    3e8e03 <fastfft::fft::FftImpl<T>::run_chunk+0x1683>
  3e86b4:	xor    eax,eax
  3e86b6:	mov    rcx,r12
  3e86b9:	shl    rax,0x4
  3e86bd:	nop    DWORD PTR [rax]
  3e86c0:	movupd xmm0,XMMWORD PTR [r13+rax*1+0x0]
  3e86c7:	movsd  xmm1,QWORD PTR [r14+rax*1]
  3e86cd:	movsd  xmm2,QWORD PTR [r14+rax*1+0x8]
  3e86d4:	unpcklpd xmm1,xmm1
  3e86d8:	mulpd  xmm1,xmm0
  3e86dc:	shufpd xmm0,xmm0,0x1
  3e86e1:	unpcklpd xmm2,xmm2
  3e86e5:	mulpd  xmm2,xmm0
  3e86e9:	movapd xmm0,xmm1
  3e86ed:	subpd  xmm0,xmm2
  3e86f1:	addpd  xmm2,xmm1
  3e86f5:	movsd  xmm2,xmm0
  3e86f9:	movupd XMMWORD PTR [r11+rax*1],xmm2
  3e86ff:	add    rax,0x10
  3e8703:	dec    rcx
  3e8706:	jne    3e86c0 <fastfft::fft::FftImpl<T>::run_chunk+0xf40>
  3e8708:	lea    rbx,[r11+rbp*1]
  3e870c:	mov    rax,r15
  3e870f:	sub    rax,r12
  3e8712:	jbe    3e9021 <fastfft::fft::FftImpl<T>::run_chunk+0x18a1>
  3e8718:	lea    rdx,[r12+0x1]
  3e871d:	test   al,0x1
  3e871f:	jne    3e9001 <fastfft::fft::FftImpl<T>::run_chunk+0x1881>
  3e8725:	mov    r10,r12
  3e8728:	jmp    3e9018 <fastfft::fft::FftImpl<T>::run_chunk+0x1898>
  3e872d:	xor    r8d,r8d
  3e8730:	mov    r15,QWORD PTR [rdx+0x50]
  3e8734:	sub    r8,r15
  3e8737:	jb     3e9355 <fastfft::fft::FftImpl<T>::run_chunk+0x1bd5>
  3e873d:	mov    QWORD PTR [rsp+0x18],r8
  3e8742:	mov    QWORD PTR [rsp+0x10],r15
  3e8747:	shl    r15,0x4
  3e874b:	mov    rax,QWORD PTR [rdx+0x10]
  3e874f:	mov    QWORD PTR [rsp+0x28],rax
  3e8754:	mov    rax,QWORD PTR [rdx+0x48]
  3e8758:	mov    rcx,rax
  3e875b:	and    rcx,0xfffffffffffffffe
  3e875f:	mov    QWORD PTR [rsp+0x20],rcx
  3e8764:	mov    rcx,rax
  3e8767:	shr    rcx,1
  3e876a:	mov    QWORD PTR [rsp+0x30],rax
  3e876f:	mov    QWORD PTR [rsp+0x38],rcx
  3e8774:	sub    rax,rcx
  3e8777:	mov    QWORD PTR [rsp+0x170],rax
  3e877f:	mov    QWORD PTR [rsp+0x8],r11
  3e8784:	je     3e88c7 <fastfft::fft::FftImpl<T>::run_chunk+0x1147>
  3e878a:	mov    rbx,QWORD PTR [rsp+0x38]
  3e878f:	mov    rbp,QWORD PTR [rsp+0x30]
  3e8794:	sub    rbx,rbp
  3e8797:	shl    rbp,0x4
  3e879b:	xor    r14d,r14d
  3e879e:	xor    r12d,r12d
  3e87a1:	jmp    3e881b <fastfft::fft::FftImpl<T>::run_chunk+0x109b>
  3e87a3:	movupd xmm1,XMMWORD PTR [r13+r14*1+0x0]
  3e87aa:	movupd xmm2,XMMWORD PTR [r13+r14*1+0x10]
  3e87b1:	movapd xmm0,xmm1
  3e87b5:	unpcklpd xmm0,xmm2
  3e87b9:	unpckhpd xmm1,xmm2
  3e87bd:	mov    rax,QWORD PTR [rsp+0x28]
  3e87c2:	movupd xmm2,XMMWORD PTR [rax+r14*1]
  3e87c8:	movupd xmm3,XMMWORD PTR [rax+r14*1+0x10]
  3e87cf:	movapd xmm4,xmm1
  3e87d3:	mulpd  xmm4,xmm3
  3e87d7:	movapd xmm5,xmm0
  3e87db:	mulpd  xmm5,xmm2
  3e87df:	subpd  xmm5,xmm4
  3e87e3:	mulpd  xmm1,xmm2
  3e87e7:	mulpd  xmm0,xmm3
  3e87eb:	addpd  xmm0,xmm1
  3e87ef:	movapd xmm1,xmm5
  3e87f3:	unpcklpd xmm1,xmm0
  3e87f7:	movhlps xmm0,xmm5
  3e87fa:	movupd XMMWORD PTR [r11+r14*1],xmm1
  3e8800:	movups XMMWORD PTR [r11+r14*1+0x10],xmm0
  3e8806:	add    rbp,0xffffffffffffffe0
  3e880a:	add    r14,0x20
  3e880e:	add    r12,0x2
  3e8812:	inc    rbx
  3e8815:	je     3e88c7 <fastfft::fft::FftImpl<T>::run_chunk+0x1147>
  3e881b:	cmp    r12,QWORD PTR [rsp+0x20]
  3e8820:	jb     3e87a3 <fastfft::fft::FftImpl<T>::run_chunk+0x1023>
  3e8822:	lea    rsi,[r14+r13*1]
  3e8826:	xorps  xmm0,xmm0
  3e8829:	movaps XMMWORD PTR [rsp+0x150],xmm0
  3e8831:	movaps XMMWORD PTR [rsp+0x140],xmm0
  3e8839:	movaps XMMWORD PTR [rsp+0x130],xmm0
  3e8841:	movaps XMMWORD PTR [rsp+0x120],xmm0
  3e8849:	movaps XMMWORD PTR [rsp+0x110],xmm0
  3e8851:	movaps XMMWORD PTR [rsp+0x100],xmm0
  3e8859:	movaps XMMWORD PTR [rsp+0xf0],xmm0
  3e8861:	movaps XMMWORD PTR [rsp+0xe0],xmm0
  3e8869:	movaps XMMWORD PTR [rsp+0xd0],xmm0
  3e8871:	movaps XMMWORD PTR [rsp+0xc0],xmm0
  3e8879:	movaps XMMWORD PTR [rsp+0xb0],xmm0
  3e8881:	movaps XMMWORD PTR [rsp+0xa0],xmm0
  3e8889:	movaps XMMWORD PTR [rsp+0x90],xmm0
  3e8891:	movaps XMMWORD PTR [rsp+0x80],xmm0
  3e8899:	movaps XMMWORD PTR [rsp+0x70],xmm0
  3e889e:	movaps XMMWORD PTR [rsp+0x60],xmm0
  3e88a3:	lea    rdi,[rsp+0x60]
  3e88a8:	mov    rdx,rbp
  3e88ab:	call   QWORD PTR [rip+0xe61e2f]        # 124a6e0 <memcpy@GLIBC_2.14>
  3e88b1:	mov    r11,QWORD PTR [rsp+0x8]
  3e88b6:	movapd xmm1,XMMWORD PTR [rsp+0x60]
  3e88bc:	movapd xmm2,XMMWORD PTR [rsp+0x70]
  3e88c2:	jmp    3e87b1 <fastfft::fft::FftImpl<T>::run_chunk+0x1031>
  3e88c7:	mov    rax,QWORD PTR [rsp+0x30]
  3e88cc:	mov    edi,eax
  3e88ce:	and    edi,0x1
  3e88d1:	add    rdi,rax
  3e88d4:	xor    ebx,ebx
  3e88d6:	mov    rax,QWORD PTR [rsp+0x10]
  3e88db:	sub    rax,rdi
  3e88de:	cmovae rbx,rax
  3e88e2:	lea    rax,[r11+r15*1]
  3e88e6:	mov    QWORD PTR [rsp+0x48],rax
  3e88eb:	mov    r14,rbx
  3e88ee:	shr    r14,1
  3e88f1:	sub    rbx,r14
  3e88f4:	je     3e894a <fastfft::fft::FftImpl<T>::run_chunk+0x11ca>
  3e88f6:	mov    rcx,QWORD PTR [rsp+0x10]
  3e88fb:	mov    rax,rcx
  3e88fe:	sub    rax,rdi
  3e8901:	mov    r12,rdi
  3e8904:	cmovb  r12,rcx
  3e8908:	not    r12
  3e890b:	add    r12,rcx
  3e890e:	test   bl,0x1
  3e8911:	je     3e8941 <fastfft::fft::FftImpl<T>::run_chunk+0x11c1>
  3e8913:	lea    r13,[rdi+0x2]
  3e8917:	dec    rbx
  3e891a:	shl    rdi,0x4
  3e891e:	add    rdi,r11
  3e8921:	cmp    rax,0x2
  3e8925:	mov    edx,0x2
  3e892a:	cmovb  rdx,rax
  3e892e:	shl    edx,0x4
  3e8931:	xor    esi,esi
  3e8933:	call   QWORD PTR [rip+0xe61dbf]        # 124a6f8 <memset@GLIBC_2.2.5>
  3e8939:	mov    r11,QWORD PTR [rsp+0x8]
  3e893e:	mov    rdi,r13
  3e8941:	cmp    r12,r14
  3e8944:	jne    3e8ed7 <fastfft::fft::FftImpl<T>::run_chunk+0x1757>
  3e894a:	mov    rbx,QWORD PTR [rsp+0x40]
  3e894f:	mov    rax,QWORD PTR [rbx+0x38]
  3e8953:	mov    rcx,QWORD PTR [rbx+0x40]
  3e8957:	mov    rdx,QWORD PTR [rcx+0x10]
  3e895b:	mov    r9,QWORD PTR [rcx+0x38]
  3e895f:	dec    rdx
  3e8962:	and    rdx,0xfffffffffffffff0
  3e8966:	lea    rdi,[rax+rdx*1]
  3e896a:	add    rdi,0x10
  3e896e:	mov    QWORD PTR [rsp+0x160],rdi
  3e8976:	mov    rsi,r11
  3e8979:	mov    r14,QWORD PTR [rsp+0x10]
  3e897e:	mov    rdx,r14
  3e8981:	mov    rcx,QWORD PTR [rsp+0x48]
  3e8986:	mov    r8,QWORD PTR [rsp+0x18]
  3e898b:	mov    QWORD PTR [rsp+0x168],r9
  3e8993:	call   r9
  3e8996:	mov    rsi,QWORD PTR [rsp+0x8]
  3e899b:	mov    r13,r14
  3e899e:	shr    r13,1
  3e89a1:	cmp    r14,r13
  3e89a4:	je     3e8bca <fastfft::fft::FftImpl<T>::run_chunk+0x144a>
  3e89aa:	mov    rax,QWORD PTR [rbx+0x28]
  3e89ae:	mov    QWORD PTR [rsp+0x40],rax
  3e89b3:	mov    rax,QWORD PTR [rsp+0x10]
  3e89b8:	mov    rcx,rax
  3e89bb:	and    rcx,0xfffffffffffffffe
  3e89bf:	lea    r12,[rsp+0x80]
  3e89c7:	sub    r13,rax
  3e89ca:	xor    r14d,r14d
  3e89cd:	xor    ebx,ebx
  3e89cf:	mov    QWORD PTR [rsp+0x58],rcx
  3e89d4:	jmp    3e8a98 <fastfft::fft::FftImpl<T>::run_chunk+0x1318>
  3e89d9:	xorpd  xmm2,xmm2
  3e89dd:	movapd XMMWORD PTR [r12+0xd0],xmm2
  3e89e7:	movapd XMMWORD PTR [r12+0xc0],xmm2
  3e89f1:	movapd XMMWORD PTR [r12+0xb0],xmm2
  3e89fb:	movapd XMMWORD PTR [r12+0xa0],xmm2
  3e8a05:	movapd XMMWORD PTR [r12+0x90],xmm2
  3e8a0f:	movapd XMMWORD PTR [r12+0x80],xmm2
  3e8a19:	movapd XMMWORD PTR [r12+0x70],xmm2
  3e8a20:	movapd XMMWORD PTR [r12+0x60],xmm2
  3e8a27:	movapd XMMWORD PTR [r12+0x50],xmm2
  3e8a2e:	movapd XMMWORD PTR [r12+0x40],xmm2
  3e8a35:	movapd XMMWORD PTR [r12+0x30],xmm2
  3e8a3c:	movapd XMMWORD PTR [r12+0x20],xmm2
  3e8a43:	movapd XMMWORD PTR [r12+0x10],xmm2
  3e8a4a:	movapd XMMWORD PTR [r12],xmm2
  3e8a50:	movapd xmm2,xmm1
  3e8a54:	unpcklpd xmm2,xmm0
  3e8a58:	unpckhpd xmm1,xmm0
  3e8a5c:	movapd XMMWORD PTR [rsp+0x60],xmm2
  3e8a62:	movapd XMMWORD PTR [rsp+0x70],xmm1
  3e8a68:	mov    rdi,rbp
  3e8a6b:	lea    rsi,[rsp+0x60]
  3e8a70:	mov    rdx,r15
  3e8a73:	call   QWORD PTR [rip+0xe61c67]        # 124a6e0 <memcpy@GLIBC_2.14>
  3e8a79:	mov    rcx,QWORD PTR [rsp+0x58]
  3e8a7e:	mov    rsi,QWORD PTR [rsp+0x8]
  3e8a83:	add    r15,0xffffffffffffffe0
  3e8a87:	add    r14,0x20
  3e8a8b:	add    rbx,0x2
  3e8a8f:	inc    r13
  3e8a92:	je     3e8bca <fastfft::fft::FftImpl<T>::run_chunk+0x144a>
  3e8a98:	lea    rax,[rsi+r14*1]
  3e8a9c:	cmp    rbx,rcx
  3e8a9f:	jae    3e8ab6 <fastfft::fft::FftImpl<T>::run_chunk+0x1336>
  3e8aa1:	mov    rbp,rax
  3e8aa4:	movupd xmm2,XMMWORD PTR [rsi+r14*1]
  3e8aaa:	movupd xmm1,XMMWORD PTR [rsi+r14*1+0x10]
  3e8ab1:	jmp    3e8b5d <fastfft::fft::FftImpl<T>::run_chunk+0x13dd>
  3e8ab6:	xorps  xmm0,xmm0
  3e8ab9:	movaps XMMWORD PTR [rsp+0x150],xmm0
  3e8ac1:	movaps XMMWORD PTR [rsp+0x140],xmm0
  3e8ac9:	movaps XMMWORD PTR [rsp+0x130],xmm0
  3e8ad1:	movaps XMMWORD PTR [rsp+0x120],xmm0
  3e8ad9:	movaps XMMWORD PTR [rsp+0x110],xmm0
  3e8ae1:	movaps XMMWORD PTR [rsp+0x100],xmm0
  3e8ae9:	movaps XMMWORD PTR [rsp+0xf0],xmm0
  3e8af1:	movaps XMMWORD PTR [rsp+0xe0],xmm0
  3e8af9:	movaps XMMWORD PTR [rsp+0xd0],xmm0
  3e8b01:	movaps XMMWORD PTR [rsp+0xc0],xmm0
  3e8b09:	movaps XMMWORD PTR [rsp+0xb0],xmm0
  3e8b11:	movaps XMMWORD PTR [rsp+0xa0],xmm0
  3e8b19:	movaps XMMWORD PTR [rsp+0x90],xmm0
  3e8b21:	movaps XMMWORD PTR [rsp+0x80],xmm0
  3e8b29:	movaps XMMWORD PTR [rsp+0x70],xmm0
  3e8b2e:	movaps XMMWORD PTR [rsp+0x60],xmm0
  3e8b33:	lea    rdi,[rsp+0x60]
  3e8b38:	mov    rbp,rax
  3e8b3b:	mov    rsi,rax
  3e8b3e:	mov    rdx,r15
  3e8b41:	call   QWORD PTR [rip+0xe61b99]        # 124a6e0 <memcpy@GLIBC_2.14>
  3e8b47:	mov    rcx,QWORD PTR [rsp+0x58]
  3e8b4c:	mov    rsi,QWORD PTR [rsp+0x8]
  3e8b51:	movapd xmm2,XMMWORD PTR [rsp+0x60]
  3e8b57:	movapd xmm1,XMMWORD PTR [rsp+0x70]
  3e8b5d:	movapd xmm0,xmm2
  3e8b61:	unpcklpd xmm0,xmm1
  3e8b65:	unpckhpd xmm2,xmm1
  3e8b69:	mov    rax,QWORD PTR [rsp+0x40]
  3e8b6e:	movupd xmm3,XMMWORD PTR [rax+r14*1]
  3e8b74:	movupd xmm4,XMMWORD PTR [rax+r14*1+0x10]
  3e8b7b:	movapd xmm5,xmm2
  3e8b7f:	mulpd  xmm5,xmm4
  3e8b83:	movapd xmm1,xmm0
  3e8b87:	mulpd  xmm1,xmm3
  3e8b8b:	subpd  xmm1,xmm5
  3e8b8f:	mulpd  xmm2,xmm3
  3e8b93:	mulpd  xmm0,xmm4
  3e8b97:	addpd  xmm0,xmm2
  3e8b9b:	xorpd  xmm0,XMMWORD PTR [rip+0xffffffffffc8939d]        # 71f40 <__abi_tag+0x71c44>
  3e8ba3:	cmp    rbx,rcx
  3e8ba6:	jae    3e89d9 <fastfft::fft::FftImpl<T>::run_chunk+0x1259>
  3e8bac:	movapd xmm2,xmm1
  3e8bb0:	unpcklpd xmm2,xmm0
  3e8bb4:	unpckhpd xmm1,xmm0
  3e8bb8:	movupd XMMWORD PTR [rsi+r14*1],xmm2
  3e8bbe:	movupd XMMWORD PTR [rsi+r14*1+0x10],xmm1
  3e8bc5:	jmp    3e8a83 <fastfft::fft::FftImpl<T>::run_chunk+0x1303>
  3e8bca:	mov    rdi,QWORD PTR [rsp+0x160]
  3e8bd2:	mov    rdx,QWORD PTR [rsp+0x10]
  3e8bd7:	mov    rcx,QWORD PTR [rsp+0x48]
  3e8bdc:	mov    r8,QWORD PTR [rsp+0x18]
  3e8be1:	call   QWORD PTR [rsp+0x168]
  3e8be8:	mov    rax,QWORD PTR [rsp+0x8]
  3e8bed:	cmp    QWORD PTR [rsp+0x170],0x0
  3e8bf6:	mov    rbp,QWORD PTR [rsp+0x50]
  3e8bfb:	mov    rdx,QWORD PTR [rsp+0x30]
  3e8c00:	je     3e9175 <fastfft::fft::FftImpl<T>::run_chunk+0x19f5>
  3e8c06:	lea    r12,[rsp+0x80]
  3e8c0e:	sub    QWORD PTR [rsp+0x38],rdx
  3e8c13:	shl    rdx,0x4
  3e8c17:	xor    ebx,ebx
  3e8c19:	lea    r15,[rsp+0x60]
  3e8c1e:	xor    r13d,r13d
  3e8c21:	jmp    3e8ce4 <fastfft::fft::FftImpl<T>::run_chunk+0x1564>
  3e8c26:	lea    rdi,[rbx+rbp*1]
  3e8c2a:	xorpd  xmm2,xmm2
  3e8c2e:	movapd XMMWORD PTR [r12+0xd0],xmm2
  3e8c38:	movapd XMMWORD PTR [r12+0xc0],xmm2
  3e8c42:	movapd XMMWORD PTR [r12+0xb0],xmm2
  3e8c4c:	movapd XMMWORD PTR [r12+0xa0],xmm2
  3e8c56:	movapd XMMWORD PTR [r12+0x90],xmm2
  3e8c60:	movapd XMMWORD PTR [r12+0x80],xmm2
  3e8c6a:	movapd XMMWORD PTR [r12+0x70],xmm2
  3e8c71:	movapd XMMWORD PTR [r12+0x60],xmm2
  3e8c78:	movapd XMMWORD PTR [r12+0x50],xmm2
  3e8c7f:	movapd XMMWORD PTR [r12+0x40],xmm2
  3e8c86:	movapd XMMWORD PTR [r12+0x30],xmm2
  3e8c8d:	movapd XMMWORD PTR [r12+0x20],xmm2
  3e8c94:	movapd XMMWORD PTR [r12+0x10],xmm2
  3e8c9b:	movapd XMMWORD PTR [r12],xmm2
  3e8ca1:	movapd xmm2,xmm1
  3e8ca5:	unpcklpd xmm2,xmm0
  3e8ca9:	unpckhpd xmm1,xmm0
  3e8cad:	movapd XMMWORD PTR [rsp+0x60],xmm2
  3e8cb3:	movapd XMMWORD PTR [rsp+0x70],xmm1
  3e8cb9:	mov    rsi,r15
  3e8cbc:	mov    rdx,r14
  3e8cbf:	call   QWORD PTR [rip+0xe61a1b]        # 124a6e0 <memcpy@GLIBC_2.14>
  3e8cc5:	mov    rdx,r14
  3e8cc8:	mov    rax,QWORD PTR [rsp+0x8]
  3e8ccd:	add    rdx,0xffffffffffffffe0
  3e8cd1:	add    rbx,0x20
  3e8cd5:	add    r13,0x2
  3e8cd9:	inc    QWORD PTR [rsp+0x38]
  3e8cde:	je     3e9175 <fastfft::fft::FftImpl<T>::run_chunk+0x19f5>
  3e8ce4:	cmp    r13,QWORD PTR [rsp+0x20]
  3e8ce9:	jae    3e8cfe <fastfft::fft::FftImpl<T>::run_chunk+0x157e>
  3e8ceb:	mov    r14,rdx
  3e8cee:	movupd xmm2,XMMWORD PTR [rax+rbx*1]
  3e8cf3:	movupd xmm1,XMMWORD PTR [rax+rbx*1+0x10]
  3e8cf9:	jmp    3e8d97 <fastfft::fft::FftImpl<T>::run_chunk+0x1617>
  3e8cfe:	lea    rsi,[rax+rbx*1]
  3e8d02:	xorps  xmm0,xmm0
  3e8d05:	movaps XMMWORD PTR [rsp+0x150],xmm0
  3e8d0d:	movaps XMMWORD PTR [rsp+0x140],xmm0
  3e8d15:	movaps XMMWORD PTR [rsp+0x130],xmm0
  3e8d1d:	movaps XMMWORD PTR [rsp+0x120],xmm0
  3e8d25:	movaps XMMWORD PTR [rsp+0x110],xmm0
  3e8d2d:	movaps XMMWORD PTR [rsp+0x100],xmm0
  3e8d35:	movaps XMMWORD PTR [rsp+0xf0],xmm0
  3e8d3d:	movaps XMMWORD PTR [rsp+0xe0],xmm0
  3e8d45:	movaps XMMWORD PTR [rsp+0xd0],xmm0
  3e8d4d:	movaps XMMWORD PTR [rsp+0xc0],xmm0
  3e8d55:	movaps XMMWORD PTR [rsp+0xb0],xmm0
  3e8d5d:	movaps XMMWORD PTR [rsp+0xa0],xmm0
  3e8d65:	movaps XMMWORD PTR [rsp+0x90],xmm0
  3e8d6d:	movaps XMMWORD PTR [rsp+0x80],xmm0
  3e8d75:	movaps XMMWORD PTR [rsp+0x70],xmm0
  3e8d7a:	movaps XMMWORD PTR [rsp+0x60],xmm0
  3e8d7f:	mov    rdi,r15
  3e8d82:	mov    r14,rdx
  3e8d85:	call   QWORD PTR [rip+0xe61955]        # 124a6e0 <memcpy@GLIBC_2.14>
  3e8d8b:	movapd xmm2,XMMWORD PTR [rsp+0x60]
  3e8d91:	movapd xmm1,XMMWORD PTR [rsp+0x70]
  3e8d97:	movapd xmm0,xmm2
  3e8d9b:	unpcklpd xmm0,xmm1
  3e8d9f:	unpckhpd xmm2,xmm1
  3e8da3:	mov    rax,QWORD PTR [rsp+0x28]
  3e8da8:	movupd xmm3,XMMWORD PTR [rax+rbx*1]
  3e8dad:	movupd xmm4,XMMWORD PTR [rax+rbx*1+0x10]
  3e8db3:	movapd xmm5,xmm0
  3e8db7:	mulpd  xmm5,xmm3
  3e8dbb:	movapd xmm1,xmm2
  3e8dbf:	mulpd  xmm1,xmm4
  3e8dc3:	addpd  xmm1,xmm5
  3e8dc7:	mulpd  xmm0,xmm4
  3e8dcb:	mulpd  xmm2,xmm3
  3e8dcf:	subpd  xmm0,xmm2
  3e8dd3:	cmp    r13,QWORD PTR [rsp+0x20]
  3e8dd8:	jae    3e8c26 <fastfft::fft::FftImpl<T>::run_chunk+0x14a6>
  3e8dde:	movapd xmm2,xmm1
  3e8de2:	unpcklpd xmm2,xmm0
  3e8de6:	unpckhpd xmm1,xmm0
  3e8dea:	movupd XMMWORD PTR [rbp+rbx*1+0x0],xmm2
  3e8df0:	movupd XMMWORD PTR [rbp+rbx*1+0x10],xmm1
  3e8df6:	mov    rax,QWORD PTR [rsp+0x8]
  3e8dfb:	mov    rdx,r14
  3e8dfe:	jmp    3e8ccd <fastfft::fft::FftImpl<T>::run_chunk+0x154d>
  3e8e03:	mov    rax,r12
  3e8e06:	shl    rax,0x4
  3e8e0a:	lea    rcx,[r11+rax*1]
  3e8e0e:	lea    rdx,[rax+r13*1]
  3e8e12:	add    rax,r14
  3e8e15:	cmp    r11,rdx
  3e8e18:	setb   dil
  3e8e1c:	cmp    r13,rcx
  3e8e1f:	setb   r8b
  3e8e23:	cmp    r11,rax
  3e8e26:	setb   dl
  3e8e29:	cmp    r14,rcx
  3e8e2c:	setb   sil
  3e8e30:	xor    eax,eax
  3e8e32:	mov    rcx,r12
  3e8e35:	test   dil,r8b
  3e8e38:	jne    3e86b9 <fastfft::fft::FftImpl<T>::run_chunk+0xf39>
  3e8e3e:	and    dl,sil
  3e8e41:	jne    3e86b9 <fastfft::fft::FftImpl<T>::run_chunk+0xf39>
  3e8e47:	mov    rax,r12
  3e8e4a:	and    rax,0xfffffffffffffffe
  3e8e4e:	mov    ecx,r12d
  3e8e51:	and    ecx,0x1
  3e8e54:	xor    edx,edx
  3e8e56:	mov    rsi,rax
  3e8e59:	movupd xmm0,XMMWORD PTR [r13+rdx*1+0x0]
  3e8e60:	movupd xmm1,XMMWORD PTR [r13+rdx*1+0x10]
  3e8e67:	movapd xmm2,xmm0
  3e8e6b:	unpcklpd xmm2,xmm1
  3e8e6f:	unpckhpd xmm0,xmm1
  3e8e73:	movupd xmm1,XMMWORD PTR [r14+rdx*1]
  3e8e79:	movupd xmm3,XMMWORD PTR [r14+rdx*1+0x10]
  3e8e80:	movapd xmm4,xmm1
  3e8e84:	unpcklpd xmm4,xmm3
  3e8e88:	unpckhpd xmm1,xmm3
  3e8e8c:	movapd xmm3,xmm2
  3e8e90:	mulpd  xmm3,xmm4
  3e8e94:	mulpd  xmm4,xmm0
  3e8e98:	mulpd  xmm0,xmm1
  3e8e9c:	subpd  xmm3,xmm0
  3e8ea0:	mulpd  xmm1,xmm2
  3e8ea4:	addpd  xmm1,xmm4
  3e8ea8:	movapd xmm0,xmm3
  3e8eac:	unpcklpd xmm0,xmm1
  3e8eb0:	movhlps xmm1,xmm3
  3e8eb3:	movups XMMWORD PTR [r11+rdx*1+0x10],xmm1
  3e8eb9:	movupd XMMWORD PTR [r11+rdx*1],xmm0
  3e8ebf:	add    rdx,0x20
  3e8ec3:	add    rsi,0xfffffffffffffffe
  3e8ec7:	jne    3e8e59 <fastfft::fft::FftImpl<T>::run_chunk+0x16d9>
  3e8ec9:	cmp    r12,rax
  3e8ecc:	jne    3e86b9 <fastfft::fft::FftImpl<T>::run_chunk+0xf39>
  3e8ed2:	jmp    3e8708 <fastfft::fft::FftImpl<T>::run_chunk+0xf88>
  3e8ed7:	mov    r14,QWORD PTR [rsp+0x10]
  3e8edc:	sub    r14,rdi
  3e8edf:	shl    rdi,0x4
  3e8ee3:	mov    r13,r15
  3e8ee6:	sub    r13,rdi
  3e8ee9:	lea    rbp,[rdi+r11*1]
  3e8eed:	add    rbp,0x20
  3e8ef1:	mov    r12,QWORD PTR [rip+0xe61800]        # 124a6f8 <memset@GLIBC_2.2.5>
  3e8ef8:	jmp    3e8f23 <fastfft::fft::FftImpl<T>::run_chunk+0x17a3>
  3e8efa:	xorps  xmm0,xmm0
  3e8efd:	movups XMMWORD PTR [rbp+0x10],xmm0
  3e8f01:	movups XMMWORD PTR [rbp+0x0],xmm0
  3e8f05:	mov    r11,QWORD PTR [rsp+0x8]
  3e8f0a:	add    rbx,0xfffffffffffffffe
  3e8f0e:	add    r13,0xffffffffffffffc0
  3e8f12:	add    r14,0xfffffffffffffffc
  3e8f16:	add    rbp,0x40
  3e8f1a:	test   rbx,rbx
  3e8f1d:	je     3e894a <fastfft::fft::FftImpl<T>::run_chunk+0x11ca>
  3e8f23:	lea    rdi,[rbp-0x20]
  3e8f27:	cmp    r14,0x1
  3e8f2b:	jbe    3e8f43 <fastfft::fft::FftImpl<T>::run_chunk+0x17c3>
  3e8f2d:	xorps  xmm0,xmm0
  3e8f30:	movups XMMWORD PTR [rdi+0x10],xmm0
  3e8f34:	movups XMMWORD PTR [rdi],xmm0
  3e8f37:	lea    rax,[r14-0x2]
  3e8f3b:	cmp    rax,0x1
  3e8f3f:	ja     3e8efa <fastfft::fft::FftImpl<T>::run_chunk+0x177a>
  3e8f41:	jmp    3e8f55 <fastfft::fft::FftImpl<T>::run_chunk+0x17d5>
  3e8f43:	xor    esi,esi
  3e8f45:	mov    rdx,r13
  3e8f48:	call   r12
  3e8f4b:	lea    rax,[r14-0x2]
  3e8f4f:	cmp    rax,0x1
  3e8f53:	ja     3e8efa <fastfft::fft::FftImpl<T>::run_chunk+0x177a>
  3e8f55:	lea    rdx,[r13-0x20]
  3e8f59:	mov    rdi,rbp
  3e8f5c:	xor    esi,esi
  3e8f5e:	call   r12
  3e8f61:	jmp    3e8f05 <fastfft::fft::FftImpl<T>::run_chunk+0x1785>
  3e8f63:	mov    rcx,r15
  3e8f66:	and    rcx,0xfffffffffffffffe
  3e8f6a:	mov    edx,r15d
  3e8f6d:	and    edx,0x1
  3e8f70:	xor    r8d,r8d
  3e8f73:	movapd xmm0,XMMWORD PTR [rip+0xffffffffffc88fc5]        # 71f40 <__abi_tag+0x71c44>
  3e8f7b:	mov    rdi,rcx
  3e8f7e:	movupd xmm1,XMMWORD PTR [rsi+r8*1]
  3e8f84:	movupd xmm2,XMMWORD PTR [rsi+r8*1+0x10]
  3e8f8b:	movapd xmm3,xmm1
  3e8f8f:	unpcklpd xmm3,xmm2
  3e8f93:	unpckhpd xmm1,xmm2
  3e8f97:	movupd xmm2,XMMWORD PTR [rax+r8*1]
  3e8f9d:	movupd xmm4,XMMWORD PTR [rax+r8*1+0x10]
  3e8fa4:	movapd xmm5,xmm2
  3e8fa8:	unpcklpd xmm5,xmm4
  3e8fac:	unpckhpd xmm2,xmm4
  3e8fb0:	movapd xmm4,xmm3
  3e8fb4:	mulpd  xmm4,xmm2
  3e8fb8:	mulpd  xmm2,xmm1
  3e8fbc:	mulpd  xmm1,xmm5
  3e8fc0:	addpd  xmm4,xmm1
  3e8fc4:	xorpd  xmm4,xmm0
  3e8fc8:	mulpd  xmm5,xmm3
  3e8fcc:	subpd  xmm5,xmm2
  3e8fd0:	movapd xmm1,xmm5
  3e8fd4:	unpckhpd xmm1,xmm4
  3e8fd8:	unpcklpd xmm5,xmm4
  3e8fdc:	movupd XMMWORD PTR [rsi+r8*1],xmm5
  3e8fe2:	movupd XMMWORD PTR [rsi+r8*1+0x10],xmm1
  3e8fe9:	add    r8,0x20
  3e8fed:	add    rdi,0xfffffffffffffffe
  3e8ff1:	jne    3e8f7e <fastfft::fft::FftImpl<T>::run_chunk+0x17fe>
  3e8ff3:	cmp    r15,rcx
  3e8ff6:	jne    3e8443 <fastfft::fft::FftImpl<T>::run_chunk+0xcc3>
  3e8ffc:	jmp    3e84ae <fastfft::fft::FftImpl<T>::run_chunk+0xd2e>
  3e9001:	dec    rax
  3e9004:	mov    rsi,r12
  3e9007:	shl    rsi,0x4
  3e900b:	xorpd  xmm0,xmm0
  3e900f:	movupd XMMWORD PTR [r11+rsi*1],xmm0
  3e9015:	mov    r10,rdx
  3e9018:	cmp    r15,rdx
  3e901b:	jne    3e9255 <fastfft::fft::FftImpl<T>::run_chunk+0x1ad5>
  3e9021:	mov    r13,r9
  3e9024:	mov    rax,QWORD PTR [r9+0x38]
  3e9028:	mov    rsi,QWORD PTR [r9+0x40]
  3e902c:	mov    rdx,QWORD PTR [rsi+0x10]
  3e9030:	mov    r9,QWORD PTR [rsi+0x38]
  3e9034:	dec    rdx
  3e9037:	and    rdx,0xfffffffffffffff0
  3e903b:	lea    rdi,[rax+rdx*1]
  3e903f:	add    rdi,0x10
  3e9043:	mov    QWORD PTR [rsp+0x28],rdi
  3e9048:	mov    rsi,r11
  3e904b:	mov    rdx,r15
  3e904e:	mov    rcx,rbx
  3e9051:	mov    r8,QWORD PTR [rsp+0x18]
  3e9056:	mov    QWORD PTR [rsp+0x8],r11
  3e905b:	mov    QWORD PTR [rsp+0x20],r9
  3e9060:	call   r9
  3e9063:	mov    rsi,QWORD PTR [rsp+0x8]
  3e9068:	test   r15,r15
  3e906b:	je     3e90fe <fastfft::fft::FftImpl<T>::run_chunk+0x197e>
  3e9071:	mov    rax,QWORD PTR [r13+0x28]
  3e9075:	cmp    r15,0x1
  3e9079:	je     3e9092 <fastfft::fft::FftImpl<T>::run_chunk+0x1912>
  3e907b:	add    rbp,rax
  3e907e:	cmp    rsi,rbp
  3e9081:	setb   cl
  3e9084:	cmp    rax,rbx
  3e9087:	setb   dl
  3e908a:	test   cl,dl
  3e908c:	je     3e929f <fastfft::fft::FftImpl<T>::run_chunk+0x1b1f>
  3e9092:	xor    ecx,ecx
  3e9094:	mov    rdx,r15
  3e9097:	shl    rcx,0x4
  3e909b:	or     rcx,0x8
  3e909f:	movapd xmm0,XMMWORD PTR [rip+0xffffffffffc88e99]        # 71f40 <__abi_tag+0x71c44>
  3e90a7:	nop    WORD PTR [rax+rax*1+0x0]
  3e90b0:	movsd  xmm1,QWORD PTR [rsi+rcx*1-0x8]
  3e90b6:	movsd  xmm2,QWORD PTR [rsi+rcx*1]
  3e90bb:	movsd  xmm3,QWORD PTR [rax+rcx*1-0x8]
  3e90c1:	movsd  xmm4,QWORD PTR [rax+rcx*1]
  3e90c6:	movapd xmm5,xmm2
  3e90ca:	mulsd  xmm5,xmm3
  3e90ce:	movapd xmm6,xmm1
  3e90d2:	mulsd  xmm6,xmm4
  3e90d6:	addsd  xmm6,xmm5
  3e90da:	xorpd  xmm6,xmm0
  3e90de:	mulsd  xmm1,xmm3
  3e90e2:	mulsd  xmm2,xmm4
  3e90e6:	subsd  xmm1,xmm2
  3e90ea:	movsd  QWORD PTR [rsi+rcx*1-0x8],xmm1
  3e90f0:	movlpd QWORD PTR [rsi+rcx*1],xmm6
  3e90f5:	add    rcx,0x10
  3e90f9:	dec    rdx
  3e90fc:	jne    3e90b0 <fastfft::fft::FftImpl<T>::run_chunk+0x1930>
  3e90fe:	mov    rdi,QWORD PTR [rsp+0x28]
  3e9103:	mov    rdx,r15
  3e9106:	mov    rcx,rbx
  3e9109:	mov    r8,QWORD PTR [rsp+0x18]
  3e910e:	call   QWORD PTR [rsp+0x20]
  3e9112:	mov    rbx,QWORD PTR [rsp+0x8]
  3e9117:	test   r12,r12
  3e911a:	mov    r8,QWORD PTR [rsp+0x50]
  3e911f:	je     3e9175 <fastfft::fft::FftImpl<T>::run_chunk+0x19f5>
  3e9121:	cmp    r12,0x4
  3e9125:	jae    3e9187 <fastfft::fft::FftImpl<T>::run_chunk+0x1a07>
  3e9127:	xor    eax,eax
  3e9129:	mov    rcx,r12
  3e912c:	shl    rax,0x4
  3e9130:	movupd xmm0,XMMWORD PTR [r14+rax*1]
  3e9136:	movsd  xmm1,QWORD PTR [rbx+rax*1]
  3e913b:	movsd  xmm2,QWORD PTR [rbx+rax*1+0x8]
  3e9141:	unpcklpd xmm1,xmm1
  3e9145:	mulpd  xmm1,xmm0
  3e9149:	unpcklpd xmm2,xmm2
  3e914d:	shufpd xmm0,xmm0,0x1
  3e9152:	mulpd  xmm0,xmm2
  3e9156:	movapd xmm2,xmm1
  3e915a:	addpd  xmm2,xmm0
  3e915e:	subpd  xmm1,xmm0
  3e9162:	movsd  xmm1,xmm2
  3e9166:	movupd XMMWORD PTR [r8+rax*1],xmm1
  3e916c:	add    rax,0x10
  3e9170:	dec    rcx
  3e9173:	jne    3e9130 <fastfft::fft::FftImpl<T>::run_chunk+0x19b0>
  3e9175:	add    rsp,0x178
  3e917c:	pop    rbx
  3e917d:	pop    r12
  3e917f:	pop    r13
  3e9181:	pop    r14
  3e9183:	pop    r15
  3e9185:	pop    rbp
  3e9186:	ret
  3e9187:	mov    rax,r12
  3e918a:	shl    rax,0x4
  3e918e:	lea    rdx,[r8+rax*1]
  3e9192:	lea    rcx,[rbx+rax*1]
  3e9196:	add    rax,r14
  3e9199:	cmp    r8,rcx
  3e919c:	setb   sil
  3e91a0:	cmp    rbx,rdx
  3e91a3:	setb   dil
  3e91a7:	cmp    r8,rax
  3e91aa:	setb   cl
  3e91ad:	cmp    r14,rdx
  3e91b0:	setb   dl
  3e91b3:	xor    eax,eax
  3e91b5:	test   sil,dil
  3e91b8:	jne    3e9129 <fastfft::fft::FftImpl<T>::run_chunk+0x19a9>
  3e91be:	and    cl,dl
  3e91c0:	jne    3e9129 <fastfft::fft::FftImpl<T>::run_chunk+0x19a9>
  3e91c6:	mov    rax,r12
  3e91c9:	and    rax,0xfffffffffffffffe
  3e91cd:	mov    ecx,r12d
  3e91d0:	and    ecx,0x1
  3e91d3:	xor    edx,edx
  3e91d5:	mov    rsi,rax
  3e91d8:	movupd xmm0,XMMWORD PTR [rbx+rdx*1]
  3e91dd:	movupd xmm1,XMMWORD PTR [rbx+rdx*1+0x10]
  3e91e3:	movapd xmm2,xmm0
  3e91e7:	unpcklpd xmm2,xmm1
  3e91eb:	unpckhpd xmm0,xmm1
  3e91ef:	movupd xmm1,XMMWORD PTR [r14+rdx*1]
  3e91f5:	movupd xmm3,XMMWORD PTR [r14+rdx*1+0x10]
  3e91fc:	movapd xmm4,xmm1
  3e9200:	unpcklpd xmm4,xmm3
  3e9204:	unpckhpd xmm1,xmm3
  3e9208:	movapd xmm3,xmm0
  3e920c:	mulpd  xmm3,xmm4
  3e9210:	mulpd  xmm4,xmm2
  3e9214:	mulpd  xmm2,xmm1
  3e9218:	subpd  xmm2,xmm3
  3e921c:	mulpd  xmm1,xmm0
  3e9220:	addpd  xmm1,xmm4
  3e9224:	movapd xmm0,xmm1
  3e9228:	unpcklpd xmm0,xmm2
  3e922c:	unpckhpd xmm1,xmm2
  3e9230:	movupd XMMWORD PTR [r8+rdx*1+0x10],xmm1
  3e9237:	movupd XMMWORD PTR [r8+rdx*1],xmm0
  3e923d:	add    rdx,0x20
  3e9241:	add    rsi,0xfffffffffffffffe
  3e9245:	jne    3e91d8 <fastfft::fft::FftImpl<T>::run_chunk+0x1a58>
  3e9247:	cmp    r12,rax
  3e924a:	jne    3e912c <fastfft::fft::FftImpl<T>::run_chunk+0x19ac>
  3e9250:	jmp    3e9175 <fastfft::fft::FftImpl<T>::run_chunk+0x19f5>
  3e9255:	mov    rdx,r10
  3e9258:	shl    rdx,0x4
  3e925c:	add    rdx,r11
  3e925f:	add    rdx,0x10
  3e9263:	mov    rsi,r15
  3e9266:	sub    rsi,r10
  3e9269:	xor    edi,edi
  3e926b:	xorpd  xmm0,xmm0
  3e926f:	jmp    3e9286 <fastfft::fft::FftImpl<T>::run_chunk+0x1b06>
  3e9271:	add    rdi,0x2
  3e9275:	add    rdx,0x20
  3e9279:	add    r10,0x2
  3e927d:	cmp    rax,rdi
  3e9280:	je     3e9021 <fastfft::fft::FftImpl<T>::run_chunk+0x18a1>
  3e9286:	cmp    rsi,rdi
  3e9289:	je     3e9290 <fastfft::fft::FftImpl<T>::run_chunk+0x1b10>
  3e928b:	movupd XMMWORD PTR [rdx-0x10],xmm0
  3e9290:	lea    r8,[r10+0x1]
  3e9294:	cmp    r15,r8
  3e9297:	je     3e9271 <fastfft::fft::FftImpl<T>::run_chunk+0x1af1>
  3e9299:	movupd XMMWORD PTR [rdx],xmm0
  3e929d:	jmp    3e9271 <fastfft::fft::FftImpl<T>::run_chunk+0x1af1>
  3e929f:	mov    rcx,r15
  3e92a2:	and    rcx,0xfffffffffffffffe
  3e92a6:	mov    edx,r15d
  3e92a9:	and    edx,0x1
  3e92ac:	xor    r8d,r8d
  3e92af:	movapd xmm0,XMMWORD PTR [rip+0xffffffffffc88c89]        # 71f40 <__abi_tag+0x71c44>
  3e92b7:	mov    rdi,rcx
  3e92ba:	movupd xmm1,XMMWORD PTR [rsi+r8*1]
  3e92c0:	movupd xmm2,XMMWORD PTR [rsi+r8*1+0x10]
  3e92c7:	movapd xmm3,xmm1
  3e92cb:	unpcklpd xmm3,xmm2
  3e92cf:	unpckhpd xmm1,xmm2
  3e92d3:	movupd xmm2,XMMWORD PTR [rax+r8*1]
  3e92d9:	movupd xmm4,XMMWORD PTR [rax+r8*1+0x10]
  3e92e0:	movapd xmm5,xmm2
  3e92e4:	unpcklpd xmm5,xmm4
  3e92e8:	unpckhpd xmm2,xmm4
  3e92ec:	movapd xmm4,xmm3
  3e92f0:	mulpd  xmm4,xmm2
  3e92f4:	mulpd  xmm2,xmm1
  3e92f8:	mulpd  xmm1,xmm5
  3e92fc:	addpd  xmm4,xmm1
  3e9300:	xorpd  xmm4,xmm0
  3e9304:	mulpd  xmm5,xmm3
  3e9308:	subpd  xmm5,xmm2
  3e930c:	movapd xmm1,xmm5
  3e9310:	unpckhpd xmm1,xmm4
  3e9314:	unpcklpd xmm5,xmm4
  3e9318:	movupd XMMWORD PTR [rsi+r8*1],xmm5
  3e931e:	movupd XMMWORD PTR [rsi+r8*1+0x10],xmm1
  3e9325:	add    r8,0x20
  3e9329:	add    rdi,0xfffffffffffffffe
  3e932d:	jne    3e92ba <fastfft::fft::FftImpl<T>::run_chunk+0x1b3a>
  3e932f:	cmp    r15,rcx
  3e9332:	jne    3e9097 <fastfft::fft::FftImpl<T>::run_chunk+0x1917>
  3e9338:	jmp    3e90fe <fastfft::fft::FftImpl<T>::run_chunk+0x197e>
  3e933d:	lea    rdi,[rip+0xffffffffffcdd471]        # c67b5 <crc32fast::table::CRC32_TABLE+0x8b31>
  3e9344:	lea    rdx,[rip+0xe5d14d]        # 1246498 <__frame_dummy_init_array_entry+0x31240>
  3e934b:	mov    esi,0x36
  3e9350:	call   c15a00 <core::option::expect_failed>
  3e9355:	lea    rdi,[rip+0xffffffffffce2005]        # cb361 <core::unicode::unicode_data::white_space::WHITESPACE_MAP+0x7b3>
  3e935c:	lea    rdx,[rip+0xe5cf25]        # 1246288 <__frame_dummy_init_array_entry+0x31030>
  3e9363:	mov    esi,0x13
  3e9368:	call   c11b40 <core::panicking::panic_fmt>
