
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000bb7540 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle>:
  bb7540:	push   rbp
  bb7541:	mov    rbp,rsp
  bb7544:	push   r14
  bb7546:	push   rbx
  bb7547:	and    rsp,0xffffffffffffffc0
  bb754b:	sub    rsp,0xfc0
  bb7552:	mov    QWORD PTR [rsp],0x0
  bb755a:	sub    rsp,0xb80
  bb7561:	lea    rax,[rsp+0x4c0]
  bb7569:	lea    rcx,[rsp+0x2c0]
  bb7571:	mov    BYTE PTR [rsp+0xac0],0x0
  bb7579:	lea    r8,[rsp+0xac0]
  bb7581:	mov    QWORD PTR [rsp+0xb00],r8
  bb7589:	lea    r8,[rsp+0xb00]
  bb7591:	lea    r8,[rsp+0xe60]
  bb7599:	add    rdi,0xc50
  bb75a0:	xor    r9d,r9d
  bb75a3:	jmp    bb75c9 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x89>
  bb75a5:	data16 cs nop WORD PTR [rax+rax*1+0x0]
  bb75b0:	add    r9,0x4
  bb75b4:	add    r8,0x380
  bb75bb:	add    rdi,0x40
  bb75bf:	cmp    r9,0x10
  bb75c3:	je     bb83ed <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0xead>
  bb75c9:	cmp    r9,0xc
  bb75cd:	jae    bb7800 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x2c0>
  bb75d3:	vmovupd ymm0,YMMWORD PTR [rdi-0xc50]
  bb75db:	vmovupd ymm1,YMMWORD PTR [rdi-0xc30]
  bb75e3:	vmovupd ymm2,YMMWORD PTR [rdi-0xb60]
  bb75eb:	vmovupd ymm3,YMMWORD PTR [rdi-0xb40]
  bb75f3:	vperm2f128 ymm4,ymm0,ymm1,0x31
  bb75f9:	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb75ff:	vunpcklpd ymm1,ymm0,ymm4
  bb7603:	vmovapd YMMWORD PTR [rsp+0x60],ymm1
  bb7609:	vunpckhpd ymm11,ymm0,ymm4
  bb760d:	vperm2f128 ymm0,ymm2,ymm3,0x31
  bb7613:	vperm2f128 ymm1,ymm2,ymm3,0x20
  bb7619:	vunpcklpd ymm26,ymm1,ymm0
  bb761f:	vunpckhpd ymm0,ymm1,ymm0
  bb7623:	vmovapd YMMWORD PTR [rsp+0x120],ymm0
  bb762c:	vmovupd ymm0,YMMWORD PTR [rdi-0xa70]
  bb7634:	vmovupd ymm1,YMMWORD PTR [rdi-0xa50]
  bb763c:	vperm2f128 ymm2,ymm0,ymm1,0x31
  bb7642:	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb7648:	vunpcklpd ymm10,ymm0,ymm2
  bb764c:	vunpckhpd ymm16,ymm0,ymm2
  bb7652:	vmovupd ymm0,YMMWORD PTR [rdi-0x980]
  bb765a:	vmovupd ymm1,YMMWORD PTR [rdi-0x960]
  bb7662:	vperm2f128 ymm2,ymm0,ymm1,0x31
  bb7668:	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb766e:	vunpcklpd ymm30,ymm0,ymm2
  bb7674:	vunpckhpd ymm0,ymm0,ymm2
  bb7678:	vmovapd YMMWORD PTR [rsp+0x100],ymm0
  bb7681:	vmovupd ymm0,YMMWORD PTR [rdi-0x890]
  bb7689:	vmovupd ymm1,YMMWORD PTR [rdi-0x870]
  bb7691:	vperm2f128 ymm2,ymm0,ymm1,0x31
  bb7697:	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb769d:	vunpcklpd ymm5,ymm0,ymm2
  bb76a1:	vunpckhpd ymm21,ymm0,ymm2
  bb76a7:	vmovupd ymm0,YMMWORD PTR [rdi-0x7a0]
  bb76af:	vmovupd ymm1,YMMWORD PTR [rdi-0x780]
  bb76b7:	vperm2f128 ymm2,ymm0,ymm1,0x31
  bb76bd:	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb76c3:	vunpcklpd ymm20,ymm0,ymm2
  bb76c9:	vunpckhpd ymm0,ymm0,ymm2
  bb76cd:	vmovapd YMMWORD PTR [rsp+0x40],ymm0
  bb76d3:	vmovupd ymm0,YMMWORD PTR [rdi-0x6b0]
  bb76db:	vmovupd ymm1,YMMWORD PTR [rdi-0x690]
  bb76e3:	vperm2f128 ymm2,ymm0,ymm1,0x31
  bb76e9:	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb76ef:	vunpcklpd ymm19,ymm0,ymm2
  bb76f5:	vunpckhpd ymm24,ymm0,ymm2
  bb76fb:	vmovupd ymm0,YMMWORD PTR [rdi-0x5c0]
  bb7703:	vmovupd ymm1,YMMWORD PTR [rdi-0x5a0]
  bb770b:	vperm2f128 ymm2,ymm0,ymm1,0x31
  bb7711:	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb7717:	vunpcklpd ymm1,ymm0,ymm2
  bb771b:	vmovapd YMMWORD PTR [rsp],ymm1
  bb7720:	vunpckhpd ymm0,ymm0,ymm2
  bb7724:	vmovapd YMMWORD PTR [rsp+0x20],ymm0
  bb772a:	vmovupd ymm0,YMMWORD PTR [rdi-0x4d0]
  bb7732:	vmovupd ymm1,YMMWORD PTR [rdi-0x4b0]
  bb773a:	vperm2f128 ymm2,ymm0,ymm1,0x31
  bb7740:	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb7746:	vunpcklpd ymm8,ymm0,ymm2
  bb774a:	vunpckhpd ymm14,ymm0,ymm2
  bb774e:	vmovupd ymm0,YMMWORD PTR [rdi-0x3e0]
  bb7756:	vmovupd ymm1,YMMWORD PTR [rdi-0x3c0]
  bb775e:	vperm2f128 ymm2,ymm0,ymm1,0x31
  bb7764:	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb776a:	vunpcklpd ymm9,ymm0,ymm2
  bb776e:	vunpckhpd ymm23,ymm0,ymm2
  bb7774:	vmovupd ymm0,YMMWORD PTR [rdi-0x2f0]
  bb777c:	vmovupd ymm1,YMMWORD PTR [rdi-0x2d0]
  bb7784:	vperm2f128 ymm2,ymm0,ymm1,0x31
  bb778a:	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb7790:	vunpcklpd ymm7,ymm0,ymm2
  bb7794:	vunpckhpd ymm13,ymm0,ymm2
  bb7798:	vmovupd ymm0,YMMWORD PTR [rdi-0x200]
  bb77a0:	vmovupd ymm1,YMMWORD PTR [rdi-0x1e0]
  bb77a8:	vperm2f128 ymm2,ymm0,ymm1,0x31
  bb77ae:	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb77b4:	vunpcklpd ymm6,ymm0,ymm2
  bb77b8:	vunpckhpd ymm17,ymm0,ymm2
  bb77be:	vmovupd ymm0,YMMWORD PTR [rdi-0x110]
  bb77c6:	vmovupd ymm1,YMMWORD PTR [rdi-0xf0]
  bb77ce:	vperm2f128 ymm2,ymm0,ymm1,0x31
  bb77d4:	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb77da:	vunpcklpd ymm1,ymm0,ymm2
  bb77de:	vunpckhpd ymm15,ymm0,ymm2
  bb77e2:	vmovupd ymm0,YMMWORD PTR [rdi-0x20]
  bb77e7:	vmovupd ymm2,YMMWORD PTR [rdi]
  bb77eb:	vperm2f128 ymm3,ymm0,ymm2,0x31
  bb77f1:	vperm2f128 ymm2,ymm0,ymm2,0x20
  bb77f7:	jmp    bb7a3d <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x4fd>
  bb77fc:	nop    DWORD PTR [rax+0x0]
  bb7800:	vmovupd ymm0,YMMWORD PTR [rdi-0xc50]
  bb7808:	vmovupd xmm1,XMMWORD PTR [rdi-0xc30]
  bb7810:	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb7816:	vmovupd xmm1,XMMWORD PTR [rdi-0xc40]
  bb781e:	vunpcklpd ymm2,ymm0,ymm1
  bb7822:	vmovapd YMMWORD PTR [rsp+0x60],ymm2
  bb7828:	vunpckhpd ymm11,ymm0,ymm1
  bb782c:	vmovupd ymm0,YMMWORD PTR [rdi-0xb60]
  bb7834:	vmovupd xmm1,XMMWORD PTR [rdi-0xb40]
  bb783c:	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb7842:	vmovupd xmm1,XMMWORD PTR [rdi-0xb50]
  bb784a:	vunpcklpd ymm26,ymm0,ymm1
  bb7850:	vunpckhpd ymm0,ymm0,ymm1
  bb7854:	vmovapd YMMWORD PTR [rsp+0x120],ymm0
  bb785d:	vmovupd ymm0,YMMWORD PTR [rdi-0xa70]
  bb7865:	vmovupd xmm1,XMMWORD PTR [rdi-0xa50]
  bb786d:	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb7873:	vmovupd xmm1,XMMWORD PTR [rdi-0xa60]
  bb787b:	vunpcklpd ymm10,ymm0,ymm1
  bb787f:	vunpckhpd ymm16,ymm0,ymm1
  bb7885:	vmovupd ymm0,YMMWORD PTR [rdi-0x980]
  bb788d:	vmovupd xmm1,XMMWORD PTR [rdi-0x960]
  bb7895:	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb789b:	vmovupd xmm1,XMMWORD PTR [rdi-0x970]
  bb78a3:	vunpcklpd ymm30,ymm0,ymm1
  bb78a9:	vunpckhpd ymm0,ymm0,ymm1
  bb78ad:	vmovapd YMMWORD PTR [rsp+0x100],ymm0
  bb78b6:	vmovupd ymm0,YMMWORD PTR [rdi-0x890]
  bb78be:	vmovupd xmm1,XMMWORD PTR [rdi-0x870]
  bb78c6:	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb78cc:	vmovupd xmm1,XMMWORD PTR [rdi-0x880]
  bb78d4:	vunpcklpd ymm5,ymm0,ymm1
  bb78d8:	vunpckhpd ymm21,ymm0,ymm1
  bb78de:	vmovupd ymm0,YMMWORD PTR [rdi-0x7a0]
  bb78e6:	vmovupd xmm1,XMMWORD PTR [rdi-0x780]
  bb78ee:	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb78f4:	vmovupd xmm1,XMMWORD PTR [rdi-0x790]
  bb78fc:	vunpcklpd ymm20,ymm0,ymm1
  bb7902:	vunpckhpd ymm0,ymm0,ymm1
  bb7906:	vmovapd YMMWORD PTR [rsp+0x40],ymm0
  bb790c:	vmovupd ymm0,YMMWORD PTR [rdi-0x6b0]
  bb7914:	vmovupd xmm1,XMMWORD PTR [rdi-0x690]
  bb791c:	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb7922:	vmovupd xmm1,XMMWORD PTR [rdi-0x6a0]
  bb792a:	vunpcklpd ymm19,ymm0,ymm1
  bb7930:	vunpckhpd ymm24,ymm0,ymm1
  bb7936:	vmovupd ymm0,YMMWORD PTR [rdi-0x5c0]
  bb793e:	vmovupd xmm1,XMMWORD PTR [rdi-0x5a0]
  bb7946:	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb794c:	vmovupd xmm1,XMMWORD PTR [rdi-0x5b0]
  bb7954:	vunpcklpd ymm2,ymm0,ymm1
  bb7958:	vmovapd YMMWORD PTR [rsp],ymm2
  bb795d:	vunpckhpd ymm0,ymm0,ymm1
  bb7961:	vmovapd YMMWORD PTR [rsp+0x20],ymm0
  bb7967:	vmovupd ymm0,YMMWORD PTR [rdi-0x4d0]
  bb796f:	vmovupd xmm1,XMMWORD PTR [rdi-0x4b0]
  bb7977:	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb797d:	vmovupd xmm1,XMMWORD PTR [rdi-0x4c0]
  bb7985:	vunpcklpd ymm8,ymm0,ymm1
  bb7989:	vunpckhpd ymm14,ymm0,ymm1
  bb798d:	vmovupd ymm0,YMMWORD PTR [rdi-0x3e0]
  bb7995:	vmovupd xmm1,XMMWORD PTR [rdi-0x3c0]
  bb799d:	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb79a3:	vmovupd xmm1,XMMWORD PTR [rdi-0x3d0]
  bb79ab:	vunpcklpd ymm9,ymm0,ymm1
  bb79af:	vunpckhpd ymm23,ymm0,ymm1
  bb79b5:	vmovupd ymm0,YMMWORD PTR [rdi-0x2f0]
  bb79bd:	vmovupd xmm1,XMMWORD PTR [rdi-0x2d0]
  bb79c5:	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb79cb:	vmovupd xmm1,XMMWORD PTR [rdi-0x2e0]
  bb79d3:	vunpcklpd ymm7,ymm0,ymm1
  bb79d7:	vunpckhpd ymm13,ymm0,ymm1
  bb79db:	vmovupd ymm0,YMMWORD PTR [rdi-0x200]
  bb79e3:	vmovupd xmm1,XMMWORD PTR [rdi-0x1e0]
  bb79eb:	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb79f1:	vmovupd xmm1,XMMWORD PTR [rdi-0x1f0]
  bb79f9:	vunpcklpd ymm6,ymm0,ymm1
  bb79fd:	vunpckhpd ymm17,ymm0,ymm1
  bb7a03:	vmovupd ymm0,YMMWORD PTR [rdi-0x110]
  bb7a0b:	vmovupd xmm1,XMMWORD PTR [rdi-0xf0]
  bb7a13:	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb7a19:	vmovupd xmm2,XMMWORD PTR [rdi-0x100]
  bb7a21:	vunpcklpd ymm1,ymm0,ymm2
  bb7a25:	vunpckhpd ymm15,ymm0,ymm2
  bb7a29:	vmovupd ymm0,YMMWORD PTR [rdi-0x20]
  bb7a2e:	vmovupd xmm2,XMMWORD PTR [rdi]
  bb7a32:	vperm2f128 ymm2,ymm0,ymm2,0x20
  bb7a38:	vmovupd xmm3,XMMWORD PTR [rdi-0x10]
  bb7a3d:	vunpcklpd ymm0,ymm2,ymm3
  bb7a41:	vunpckhpd ymm4,ymm2,ymm3
  bb7a45:	vaddpd ymm31,ymm16,ymm15
  bb7a4b:	vaddpd ymm3,ymm11,ymm31
  bb7a51:	vaddpd ymm2,ymm21,ymm13
  bb7a57:	vaddpd ymm27,ymm3,ymm2
  bb7a5d:	vaddpd ymm3,ymm19,ymm8
  bb7a63:	vmovapd YMMWORD PTR [rsp+0xe0],ymm3
  bb7a6c:	vsubpd ymm18,ymm19,ymm8
  bb7a72:	vaddpd ymm12,ymm10,ymm1
  bb7a76:	vsubpd ymm29,ymm10,ymm1
  bb7a7c:	vaddpd ymm25,ymm5,ymm7
  bb7a82:	vsubpd ymm10,ymm5,ymm7
  bb7a86:	vaddpd ymm3,ymm0,ymm26
  bb7a8c:	vmovapd YMMWORD PTR [rsp+0x240],ymm3
  bb7a95:	vsubpd ymm28,ymm0,ymm26
  bb7a9b:	vaddpd ymm5,ymm9,ymm20
  bb7aa1:	vsubpd ymm3,ymm9,ymm20
  bb7aa7:	vaddpd ymm0,ymm6,ymm30
  bb7aad:	vmovapd YMMWORD PTR [rsp+0x220],ymm0
  bb7ab6:	vsubpd ymm26,ymm6,ymm30
  bb7abc:	vaddpd ymm6,ymm24,ymm14
  bb7ac2:	vaddpd ymm19,ymm27,ymm6
  bb7ac8:	vsubpd ymm0,ymm24,ymm14
  bb7ace:	vmovapd YMMWORD PTR [rsp+0xc0],ymm0
  bb7ad7:	vmovapd ymm24,YMMWORD PTR [rsp+0x40]
  bb7adf:	vaddpd ymm1,ymm23,ymm24
  bb7ae5:	vsubpd ymm0,ymm16,ymm15
  bb7aeb:	vmovapd YMMWORD PTR [rsp+0x1c0],ymm0
  bb7af4:	vmovapd ymm0,YMMWORD PTR [rsp+0x20]
  bb7afa:	vaddpd ymm8,ymm0,ymm1
  bb7afe:	vsubpd ymm7,ymm21,ymm13
  bb7b04:	vmovapd YMMWORD PTR [rsp+0xa0],ymm7
  bb7b0d:	vmovapd ymm15,YMMWORD PTR [rsp+0x120]
  bb7b16:	vaddpd ymm14,ymm15,ymm4
  bb7b1a:	vsubpd ymm4,ymm4,ymm15
  bb7b1f:	vmovapd YMMWORD PTR [rsp+0x200],ymm4
  bb7b28:	vmovapd ymm15,YMMWORD PTR [rsp+0x100]
  bb7b31:	vaddpd ymm13,ymm17,ymm15
  bb7b37:	vaddpd ymm4,ymm8,ymm13
  bb7b3c:	vaddpd ymm4,ymm14,ymm4
  bb7b40:	vsubpd ymm7,ymm23,ymm24
  bb7b46:	vmovapd YMMWORD PTR [rsp+0x40],ymm7
  bb7b4c:	vbroadcastsd ymm8,QWORD PTR [rip+0xffffffffff4bd64b]        # 751a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2650>
  bb7b55:	vmovapd ymm24,ymm8
  bb7b5b:	vfmadd213pd ymm24,ymm31,ymm11
  bb7b61:	vsubpd ymm7,ymm17,ymm15
  bb7b67:	vmovapd YMMWORD PTR [rsp+0x1e0],ymm7
  bb7b70:	vbroadcastsd ymm30,QWORD PTR [rip+0xffffffffff4bd2fe]        # 74e78 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2328>
  bb7b7a:	vmovapd ymm15,ymm30
  bb7b80:	vfnmadd213pd ymm15,ymm31,ymm11
  bb7b86:	vbroadcastsd ymm17,QWORD PTR [rip+0xffffffffff4bd250]        # 74de0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2290>
  bb7b90:	vfnmadd213pd ymm31,ymm17,ymm11
  bb7b96:	vmovapd YMMWORD PTR [rsp+0x120],ymm19
  bb7b9e:	vmovapd YMMWORD PTR [rsp+0x100],ymm4
  bb7ba7:	vaddpd ymm4,ymm19,ymm4
  bb7bad:	vmovapd YMMWORD PTR [rsp+0x80],ymm4
  bb7bb6:	vfnmadd231pd ymm24,ymm2,ymm30
  bb7bbc:	vfnmadd231pd ymm24,ymm6,ymm17
  bb7bc2:	vfnmadd231pd ymm15,ymm2,ymm17
  bb7bc8:	vfmadd231pd ymm31,ymm8,ymm2
  bb7bce:	vbroadcastsd ymm16,QWORD PTR [rip+0xffffffffff4bd000]        # 74bd8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2088>
  bb7bd8:	vmulpd ymm20,ymm10,ymm16
  bb7bde:	vbroadcastsd ymm11,QWORD PTR [rip+0xffffffffff4bd2e9]        # 74ed0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2380>
  bb7be7:	vfmadd231pd ymm20,ymm29,ymm11
  bb7bed:	vbroadcastsd ymm19,QWORD PTR [rip+0xffffffffff4bcb51]        # 74748 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1bf8>
  bb7bf7:	vfmadd231pd ymm20,ymm18,ymm19
  bb7bfd:	vfmadd231pd ymm15,ymm6,ymm8
  bb7c02:	vfnmadd231pd ymm31,ymm30,ymm6
  bb7c08:	vmulpd ymm23,ymm29,ymm16
  bb7c0e:	vfnmadd231pd ymm23,ymm10,ymm19
  bb7c14:	vmulpd ymm4,ymm29,ymm19
  bb7c1a:	vfnmadd231pd ymm4,ymm11,ymm10
  bb7c1f:	vmovapd ymm9,ymm8
  bb7c24:	vfmadd213pd ymm9,ymm1,ymm0
  bb7c29:	vfnmadd231pd ymm23,ymm18,ymm11
  bb7c2f:	vfmadd231pd ymm4,ymm16,ymm18
  bb7c35:	vmovapd ymm7,ymm30
  bb7c3b:	vfnmadd213pd ymm7,ymm1,ymm0
  bb7c40:	vfnmadd213pd ymm1,ymm17,ymm0
  bb7c46:	vmovapd ymm6,YMMWORD PTR [rsp+0x60]
  bb7c4c:	vaddpd ymm2,ymm12,ymm6
  bb7c50:	vaddpd ymm2,ymm2,ymm25
  bb7c56:	vmovapd ymm22,YMMWORD PTR [rsp+0xe0]
  bb7c5e:	vaddpd ymm0,ymm2,ymm22
  bb7c64:	vmovapd YMMWORD PTR [rsp+0x2a0],ymm0
  bb7c6d:	vfnmadd231pd ymm9,ymm13,ymm30
  bb7c73:	vfnmadd231pd ymm9,ymm14,ymm17
  bb7c79:	vfnmadd231pd ymm7,ymm13,ymm17
  bb7c7f:	vfmadd231pd ymm1,ymm8,ymm13
  bb7c84:	vmulpd ymm27,ymm26,ymm16
  bb7c8a:	vfmadd231pd ymm27,ymm3,ymm11
  bb7c90:	vfmadd231pd ymm27,ymm28,ymm19
  bb7c96:	vfmadd231pd ymm7,ymm14,ymm8
  bb7c9b:	vfnmadd231pd ymm1,ymm30,ymm14
  bb7ca1:	vmulpd ymm29,ymm3,ymm16
  bb7ca7:	vfnmadd231pd ymm29,ymm26,ymm19
  bb7cad:	vmulpd ymm21,ymm3,ymm19
  bb7cb3:	vfnmadd231pd ymm21,ymm11,ymm26
  bb7cb9:	vmovapd ymm13,ymm8
  bb7cbe:	vfmadd213pd ymm13,ymm12,ymm6
  bb7cc3:	vfnmadd231pd ymm29,ymm28,ymm11
  bb7cc9:	vfmadd231pd ymm21,ymm16,ymm28
  bb7ccf:	vmovapd ymm18,ymm30
  bb7cd5:	vfnmadd213pd ymm18,ymm12,ymm6
  bb7cdb:	vfnmadd213pd ymm12,ymm17,ymm6
  bb7ce1:	vmovapd ymm3,YMMWORD PTR [rsp]
  bb7ce6:	vaddpd ymm0,ymm3,ymm5
  bb7cea:	vmovapd ymm26,YMMWORD PTR [rsp+0x220]
  bb7cf2:	vaddpd ymm0,ymm0,ymm26
  bb7cf8:	vmovapd ymm10,YMMWORD PTR [rsp+0x240]
  bb7d01:	vaddpd ymm0,ymm10,ymm0
  bb7d05:	vmovapd YMMWORD PTR [rsp+0x60],ymm0
  bb7d0b:	vfnmadd231pd ymm13,ymm25,ymm30
  bb7d11:	vmovapd ymm2,ymm22
  bb7d17:	vfnmadd231pd ymm13,ymm22,ymm17
  bb7d1d:	vfnmadd231pd ymm18,ymm25,ymm17
  bb7d23:	vfmadd231pd ymm12,ymm8,ymm25
  bb7d29:	vmovapd ymm25,YMMWORD PTR [rsp+0xa0]
  bb7d31:	vmulpd ymm14,ymm25,ymm16
  bb7d37:	vmovapd ymm22,YMMWORD PTR [rsp+0x1c0]
  bb7d3f:	vfmadd231pd ymm14,ymm22,ymm11
  bb7d45:	vmovapd ymm0,YMMWORD PTR [rsp+0xc0]
  bb7d4e:	vfmadd231pd ymm14,ymm0,ymm19
  bb7d54:	vfmadd231pd ymm18,ymm2,ymm8
  bb7d5a:	vfnmadd231pd ymm12,ymm30,ymm2
  bb7d60:	vmulpd ymm6,ymm22,ymm16
  bb7d66:	vfnmadd231pd ymm6,ymm25,ymm19
  bb7d6c:	vmulpd ymm2,ymm22,ymm19
  bb7d72:	vfnmadd231pd ymm2,ymm11,ymm25
  bb7d78:	vmovapd ymm28,ymm8
  bb7d7e:	vfmadd213pd ymm28,ymm5,ymm3
  bb7d84:	vfnmadd231pd ymm28,ymm26,ymm30
  bb7d8a:	vmovapd ymm22,ymm26
  bb7d90:	vfnmadd231pd ymm28,ymm10,ymm17
  bb7d96:	vfnmadd231pd ymm6,ymm0,ymm11
  bb7d9b:	vfmadd231pd ymm2,ymm16,ymm0
  bb7da1:	vmovapd ymm0,ymm30
  bb7da7:	vfnmadd213pd ymm0,ymm5,ymm3
  bb7dac:	vfnmadd213pd ymm5,ymm17,ymm3
  bb7db2:	vmovapd ymm26,YMMWORD PTR [rsp+0x1e0]
  bb7dba:	vmulpd ymm3,ymm26,ymm16
  bb7dc0:	vmovapd ymm25,YMMWORD PTR [rsp+0x40]
  bb7dc8:	vfmadd231pd ymm3,ymm25,ymm11
  bb7dce:	vmovapd ymm30,YMMWORD PTR [rsp+0x200]
  bb7dd6:	vfmadd231pd ymm3,ymm30,ymm19
  bb7ddc:	vfnmadd231pd ymm0,ymm22,ymm17
  bb7de2:	vfmadd231pd ymm5,ymm8,ymm22
  bb7de8:	vmovapd ymm17,ymm9
  bb7dee:	vmovapd YMMWORD PTR [rsp],ymm15
  bb7df3:	vmovapd YMMWORD PTR [rsp+0x20],ymm23
  bb7dfb:	vaddpd ymm15,ymm15,ymm23
  bb7e01:	vmovapd ymm23,ymm4
  bb7e07:	vfmadd231pd ymm0,ymm10,ymm8
  bb7e0c:	vfnmadd231pd ymm5,ymm10,QWORD BCST [rip+0xffffffffff4bd062]        # 74e78 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2328>
  bb7e16:	vmulpd ymm22,ymm25,ymm16
  bb7e1c:	vfnmadd231pd ymm22,ymm26,ymm19
  bb7e22:	vmulpd ymm9,ymm25,ymm19
  bb7e28:	vmovapd ymm19,ymm24
  bb7e2e:	vfnmadd231pd ymm9,ymm11,ymm26
  bb7e34:	vmovapd YMMWORD PTR [rsp+0xe0],ymm29
  bb7e3c:	vmovapd YMMWORD PTR [rsp+0x1c0],ymm7
  bb7e45:	vaddpd ymm8,ymm7,ymm29
  bb7e4b:	vfnmadd231pd ymm22,ymm30,ymm11
  bb7e51:	vmovapd ymm11,ymm31
  bb7e57:	vfmadd231pd ymm9,ymm16,ymm30
  bb7e5d:	vmovapd ymm16,ymm5
  bb7e63:	vmovapd ymm4,ymm12
  bb7e67:	vmovapd YMMWORD PTR [rsp+0x240],ymm8
  bb7e70:	vmovapd YMMWORD PTR [rsp+0x220],ymm15
  bb7e79:	vaddpd ymm5,ymm15,ymm8
  bb7e7e:	vmovapd ymm7,YMMWORD PTR [rsp+0x80]
  bb7e87:	vinsertf32x4 ymm25,ymm7,xmm5,0x1
  bb7e8e:	vperm2f128 ymm15,ymm7,ymm5,0x31
  bb7e94:	vmovapd YMMWORD PTR [rsp+0x40],ymm20
  bb7e9c:	vaddpd ymm5,ymm24,ymm20
  bb7ea2:	vmovapd ymm20,YMMWORD PTR [rsp+0x2a0]
  bb7eaa:	vmovapd YMMWORD PTR [rsp+0x80],ymm17
  bb7eb2:	vaddpd ymm8,ymm17,ymm27
  bb7eb8:	vmovapd YMMWORD PTR [rsp+0xc0],ymm5
  bb7ec1:	vmovapd YMMWORD PTR [rsp+0xa0],ymm8
  bb7eca:	vsubpd ymm10,ymm5,ymm8
  bb7ecf:	vaddpd ymm5,ymm31,ymm23
  bb7ed5:	vmovapd ymm29,ymm21
  bb7edb:	vaddpd ymm8,ymm1,ymm21
  bb7ee1:	vmovapd YMMWORD PTR [rsp+0x200],ymm5
  bb7eea:	vmovapd YMMWORD PTR [rsp+0x1e0],ymm8
  bb7ef3:	vsubpd ymm12,ymm5,ymm8
  bb7ef8:	vinsertf32x4 ymm26,ymm10,xmm12,0x1
  bb7eff:	vshuff64x2 ymm21,ymm10,ymm12,0x3
  bb7f06:	vaddpd ymm12,ymm20,YMMWORD PTR [rsp+0x60]
  bb7f0e:	vsubpd ymm5,ymm18,ymm6
  bb7f14:	vsubpd ymm7,ymm0,ymm22
  bb7f1a:	vmovapd YMMWORD PTR [rsp+0x1a0],ymm5
  bb7f23:	vmovapd YMMWORD PTR [rsp+0x180],ymm7
  bb7f2c:	vaddpd ymm24,ymm5,ymm7
  bb7f32:	vinsertf32x4 ymm30,ymm12,xmm24,0x1
  bb7f39:	vshuff64x2 ymm12,ymm12,ymm24,0x3
  bb7f40:	vsubpd ymm5,ymm13,ymm14
  bb7f45:	vsubpd ymm7,ymm28,ymm3
  bb7f4b:	vmovapd YMMWORD PTR [rsp+0x140],ymm5
  bb7f54:	vmovapd YMMWORD PTR [rsp+0x260],ymm7
  bb7f5d:	vsubpd ymm24,ymm5,ymm7
  bb7f63:	vsubpd ymm5,ymm4,ymm2
  bb7f67:	vsubpd ymm7,ymm16,ymm9
  bb7f6d:	vmovapd YMMWORD PTR [rsp+0x160],ymm5
  bb7f76:	vmovapd YMMWORD PTR [rsp+0x280],ymm7
  bb7f7f:	vsubpd ymm31,ymm5,ymm7
  bb7f85:	vmovapd ymm7,ymm15
  bb7f89:	vinsertf32x4 ymm5,ymm24,xmm31,0x1
  bb7f90:	vshuff64x2 ymm24,ymm24,ymm31,0x3
  bb7f97:	vunpcklpd ymm31,ymm25,ymm26
  bb7f9d:	vunpcklpd ymm17,ymm30,ymm5
  bb7fa3:	vmovapd ymm8,ymm31
  bb7fa9:	vmovapd ymm15,YMMWORD PTR [rip+0xffffffffff4bebaf]        # 76b60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4010>
  bb7fb1:	vpermt2pd ymm8,ymm15,ymm17
  bb7fb7:	vmovapd ymm10,YMMWORD PTR [rip+0xffffffffff4bf681]        # 77640 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4af0>
  bb7fbf:	vpermt2pd ymm31,ymm10,ymm17
  bb7fc5:	vmovapd YMMWORD PTR [r8-0x360],ymm8
  bb7fce:	vmovapd YMMWORD PTR [r8-0x340],ymm31
  bb7fd5:	vunpckhpd ymm5,ymm30,ymm5
  bb7fdb:	vunpckhpd ymm8,ymm25,ymm26
  bb7fe1:	vmovapd ymm26,ymm10
  bb7fe7:	vmovapd ymm25,ymm15
  bb7fed:	vmovapd ymm17,ymm8
  bb7ff3:	vpermt2pd ymm17,ymm15,ymm5
  bb7ff9:	vpermt2pd ymm8,ymm10,ymm5
  bb7fff:	vmovapd YMMWORD PTR [r8-0x280],ymm17
  bb8006:	vmovapd YMMWORD PTR [r8-0x260],ymm8
  bb800f:	vunpcklpd ymm5,ymm7,ymm21
  bb8015:	vunpcklpd ymm8,ymm12,ymm24
  bb801b:	vmovapd ymm17,ymm5
  bb8021:	vpermt2pd ymm17,ymm15,ymm8
  bb8027:	vpermt2pd ymm5,ymm10,ymm8
  bb802d:	vmovapd YMMWORD PTR [r8-0x1a0],ymm17
  bb8034:	vmovapd YMMWORD PTR [r8-0x180],ymm5
  bb803d:	cmp    r9,0xc
  bb8041:	je     bb8072 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0xb32>
  bb8043:	vunpckhpd ymm5,ymm12,ymm24
  bb8049:	vunpckhpd ymm8,ymm7,ymm21
  bb804f:	vmovapd ymm10,ymm8
  bb8054:	vpermt2pd ymm10,ymm25,ymm5
  bb805a:	vpermt2pd ymm8,ymm26,ymm5
  bb8060:	vmovapd YMMWORD PTR [r8-0xc0],ymm10
  bb8069:	vmovapd YMMWORD PTR [r8-0xa0],ymm8
  bb8072:	vsubpd ymm30,ymm11,ymm23
  bb8078:	vsubpd ymm23,ymm1,ymm29
  bb807e:	vaddpd ymm5,ymm30,ymm23
  bb8084:	vaddpd ymm1,ymm2,ymm4
  bb8088:	vaddpd ymm9,ymm9,ymm16
  bb808e:	vaddpd ymm10,ymm9,ymm1
  bb8092:	vmovapd ymm8,YMMWORD PTR [rsp]
  bb8097:	vsubpd ymm11,ymm8,YMMWORD PTR [rsp+0x20]
  bb809d:	vmovapd ymm2,YMMWORD PTR [rsp+0x1c0]
  bb80a6:	vsubpd ymm15,ymm2,YMMWORD PTR [rsp+0xe0]
  bb80af:	vsubpd ymm12,ymm11,ymm15
  bb80b4:	vaddpd ymm16,ymm6,ymm18
  bb80ba:	vaddpd ymm6,ymm22,ymm0
  bb80c0:	vsubpd ymm7,ymm16,ymm6
  bb80c6:	vsubpd ymm8,ymm19,YMMWORD PTR [rsp+0x40]
  bb80ce:	vmovapd ymm0,YMMWORD PTR [rsp+0x80]
  bb80d7:	vsubpd ymm2,ymm0,ymm27
  bb80dd:	vaddpd ymm0,ymm8,ymm2
  bb80e1:	vaddpd ymm4,ymm14,ymm13
  bb80e6:	vaddpd ymm13,ymm3,ymm28
  bb80ec:	vaddpd ymm14,ymm13,ymm4
  bb80f0:	vmovapd ymm3,YMMWORD PTR [rsp+0x120]
  bb80f9:	vsubpd ymm3,ymm3,YMMWORD PTR [rsp+0x100]
  bb8102:	vsubpd ymm17,ymm20,YMMWORD PTR [rsp+0x60]
  bb810a:	vinsertf32x4 ymm18,ymm5,xmm0,0x1
  bb8111:	vperm2f128 ymm0,ymm5,ymm0,0x31
  bb8117:	vinsertf32x4 ymm19,ymm12,xmm3,0x1
  bb811e:	vperm2f128 ymm3,ymm12,ymm3,0x31
  bb8124:	vunpcklpd ymm12,ymm18,ymm19
  bb812a:	vunpcklpd ymm21,ymm0,ymm3
  bb8130:	vinsertf32x4 ymm22,ymm10,xmm14,0x1
  bb8137:	vperm2f128 ymm5,ymm10,ymm14,0x31
  bb813d:	vinsertf32x4 ymm10,ymm7,xmm17,0x1
  bb8144:	vshuff64x2 ymm7,ymm7,ymm17,0x3
  bb814b:	vunpcklpd ymm14,ymm22,ymm10
  bb8151:	vunpcklpd ymm17,ymm5,ymm7
  bb8157:	vmovapd ymm24,ymm12
  bb815d:	vpermt2pd ymm24,ymm25,ymm14
  bb8163:	vpermt2pd ymm12,ymm26,ymm14
  bb8169:	vmovapd YMMWORD PTR [r8-0x320],ymm24
  bb8170:	vmovapd YMMWORD PTR [r8-0x300],ymm12
  bb8179:	vunpckhpd ymm10,ymm22,ymm10
  bb817f:	vunpckhpd ymm12,ymm18,ymm19
  bb8185:	vmovapd ymm14,ymm12
  bb818a:	vpermt2pd ymm14,ymm25,ymm10
  bb8190:	vpermt2pd ymm12,ymm26,ymm10
  bb8196:	vmovapd YMMWORD PTR [r8-0x240],ymm14
  bb819f:	vmovapd YMMWORD PTR [r8-0x220],ymm12
  bb81a8:	vmovapd ymm10,ymm21
  bb81ae:	vpermt2pd ymm10,ymm25,ymm17
  bb81b4:	vpermt2pd ymm21,ymm26,ymm17
  bb81ba:	vmovapd YMMWORD PTR [r8-0x160],ymm10
  bb81c3:	vmovapd YMMWORD PTR [r8-0x140],ymm21
  bb81ca:	cmp    r9,0xc
  bb81ce:	je     bb81f4 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0xcb4>
  bb81d0:	vunpckhpd ymm5,ymm5,ymm7
  bb81d4:	vunpckhpd ymm0,ymm0,ymm3
  bb81d8:	vmovapd ymm3,ymm0
  bb81dc:	vpermt2pd ymm3,ymm25,ymm5
  bb81e2:	vpermt2pd ymm0,ymm26,ymm5
  bb81e8:	vmovapd YMMWORD PTR [r8-0x80],ymm3
  bb81ee:	vmovapd YMMWORD PTR [r8-0x60],ymm0
  bb81f4:	vmovapd ymm0,YMMWORD PTR [rsp+0xa0]
  bb81fd:	vaddpd ymm0,ymm0,YMMWORD PTR [rsp+0xc0]
  bb8206:	vmovapd ymm3,YMMWORD PTR [rsp+0x260]
  bb820f:	vaddpd ymm3,ymm3,YMMWORD PTR [rsp+0x140]
  bb8218:	vmovapd ymm5,YMMWORD PTR [rsp+0x220]
  bb8221:	vsubpd ymm5,ymm5,YMMWORD PTR [rsp+0x240]
  bb822a:	vmovapd ymm7,YMMWORD PTR [rsp+0x1a0]
  bb8233:	vsubpd ymm7,ymm7,YMMWORD PTR [rsp+0x180]
  bb823c:	vmovapd ymm10,YMMWORD PTR [rsp+0x1e0]
  bb8245:	vaddpd ymm10,ymm10,YMMWORD PTR [rsp+0x200]
  bb824e:	vmovapd ymm12,YMMWORD PTR [rsp+0x280]
  bb8257:	vaddpd ymm12,ymm12,YMMWORD PTR [rsp+0x160]
  bb8260:	vsubpd ymm14,ymm30,ymm23
  bb8266:	vsubpd ymm9,ymm1,ymm9
  bb826b:	vinsertf32x4 ymm17,ymm0,xmm10,0x1
  bb8272:	vperm2f128 ymm0,ymm0,ymm10,0x31
  bb8278:	vinsertf128 ymm10,ymm5,xmm14,0x1
  bb827e:	vperm2f128 ymm1,ymm5,ymm14,0x31
  bb8284:	vunpcklpd ymm14,ymm17,ymm10
  bb828a:	vunpcklpd ymm18,ymm0,ymm1
  bb8290:	vinsertf32x4 ymm19,ymm3,xmm12,0x1
  bb8297:	vperm2f128 ymm3,ymm3,ymm12,0x31
  bb829d:	vinsertf128 ymm12,ymm7,xmm9,0x1
  bb82a3:	vperm2f128 ymm5,ymm7,ymm9,0x31
  bb82a9:	vunpcklpd ymm7,ymm19,ymm12
  bb82af:	vunpcklpd ymm9,ymm3,ymm5
  bb82b3:	vmovapd ymm20,ymm14
  bb82b9:	vpermt2pd ymm20,ymm25,ymm7
  bb82bf:	vpermt2pd ymm14,ymm26,ymm7
  bb82c5:	vmovapd YMMWORD PTR [r8-0x2e0],ymm20
  bb82cc:	vmovapd YMMWORD PTR [r8-0x2c0],ymm14
  bb82d5:	vunpckhpd ymm7,ymm19,ymm12
  bb82db:	vunpckhpd ymm10,ymm17,ymm10
  bb82e1:	vmovapd ymm12,ymm10
  bb82e6:	vpermt2pd ymm12,ymm25,ymm7
  bb82ec:	vpermt2pd ymm10,ymm26,ymm7
  bb82f2:	vmovapd YMMWORD PTR [r8-0x200],ymm12
  bb82fb:	vmovapd YMMWORD PTR [r8-0x1e0],ymm10
  bb8304:	vmovapd ymm7,ymm18
  bb830a:	vpermt2pd ymm7,ymm25,ymm9
  bb8310:	vpermt2pd ymm18,ymm26,ymm9
  bb8316:	vmovapd YMMWORD PTR [r8-0x120],ymm7
  bb831f:	vmovapd YMMWORD PTR [r8-0x100],ymm18
  bb8326:	cmp    r9,0xc
  bb832a:	je     bb8350 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0xe10>
  bb832c:	vunpckhpd ymm3,ymm3,ymm5
  bb8330:	vunpckhpd ymm0,ymm0,ymm1
  bb8334:	vmovapd ymm1,ymm0
  bb8338:	vpermt2pd ymm1,ymm25,ymm3
  bb833e:	vpermt2pd ymm0,ymm26,ymm3
  bb8344:	vmovapd YMMWORD PTR [r8-0x40],ymm1
  bb834a:	vmovapd YMMWORD PTR [r8-0x20],ymm0
  bb8350:	vaddpd ymm0,ymm11,ymm15
  bb8355:	vaddpd ymm1,ymm16,ymm6
  bb835b:	vsubpd ymm2,ymm8,ymm2
  bb835f:	vsubpd ymm3,ymm4,ymm13
  bb8364:	vunpcklpd xmm4,xmm0,xmm1
  bb8368:	vunpcklpd xmm5,xmm2,xmm3
  bb836c:	vmovapd XMMWORD PTR [r8-0x290],xmm5
  bb8375:	vmovapd XMMWORD PTR [r8-0x2a0],xmm4
  bb837e:	vunpckhpd xmm4,xmm0,xmm1
  bb8382:	vunpckhpd xmm5,xmm2,xmm3
  bb8386:	vmovapd XMMWORD PTR [r8-0x1b0],xmm5
  bb838f:	vmovapd XMMWORD PTR [r8-0x1c0],xmm4
  bb8398:	vmovapd ymm4,ymm1
  bb839c:	vmovapd ymm5,YMMWORD PTR [rip+0xffffffffff4bd6bc]        # 75a60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2f10>
  bb83a4:	vpermt2pd ymm4,ymm5,ymm3
  bb83aa:	vperm2f128 ymm5,ymm0,ymm2,0x31
  bb83b0:	vblendpd ymm4,ymm5,ymm4,0xa
  bb83b6:	vmovapd YMMWORD PTR [r8-0xe0],ymm4
  bb83bf:	cmp    r9,0xc
  bb83c3:	je     bb75b0 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x70>
  bb83c9:	vmovapd ymm4,YMMWORD PTR [rip+0xffffffffff4bf06f]        # 77440 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x48f0>
  bb83d1:	vpermt2pd ymm2,ymm4,ymm0
  bb83d7:	vperm2f128 ymm0,ymm1,ymm3,0x31
  bb83dd:	vblendpd ymm0,ymm2,ymm0,0xa
  bb83e3:	vmovapd YMMWORD PTR [r8],ymm0
  bb83e8:	jmp    bb75b0 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x70>
  bb83ed:	lea    rdi,[rsp+0xc00]
  bb83f5:	add    rdx,0x60
  bb83f9:	mov    r8d,0x4
  bb83ff:	xor    r11d,r11d
  bb8402:	vmovapd ymm4,YMMWORD PTR [rip+0xffffffffff4c02d6]        # 786e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5b90>
  bb840a:	vmovapd ymm5,YMMWORD PTR [rip+0xffffffffff4bf8ee]        # 77d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x51b0>
  bb8412:	jmp    bb860d <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x10cd>
  bb8417:	nop    WORD PTR [rax+rax*1+0x0]
  bb8420:	vmovapd ymm23,ymm4
  bb8426:	vmovapd ymm2,YMMWORD PTR [rip+0xffffffffff4bf212]        # 77640 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4af0>
  bb842e:	vmovapd ymm9,YMMWORD PTR [rsp+0x240]
  bb8437:	vpermt2pd ymm9,ymm2,YMMWORD PTR [rsp+0x120]
  bb843f:	vmovupd YMMWORD PTR [rsi+r9*1],ymm10
  bb8445:	vmovupd YMMWORD PTR [rsi+r9*1+0x20],ymm9
  bb844c:	vpermt2pd ymm18,ymm2,YMMWORD PTR [rsp+0x260]
  bb8454:	vmovupd YMMWORD PTR [rsi+r9*1+0xe0],ymm28
  bb845c:	vmovupd YMMWORD PTR [rsi+r9*1+0x100],ymm18
  bb8464:	vmovapd ymm4,YMMWORD PTR [rsp+0x1c0]
  bb846d:	vpermt2pd ymm4,ymm2,YMMWORD PTR [rsp+0x100]
  bb8475:	vmovupd YMMWORD PTR [rsi+r9*1+0x1c0],ymm24
  bb847d:	vmovupd YMMWORD PTR [rsi+r9*1+0x1e0],ymm4
  bb8487:	vmovapd ymm4,YMMWORD PTR [rsp+0x80]
  bb8490:	vpermt2pd ymm4,ymm2,ymm5
  bb8496:	vmovupd YMMWORD PTR [rsi+r9*1+0x2a0],ymm7
  bb84a0:	vmovupd YMMWORD PTR [rsi+r9*1+0x2c0],ymm4
  bb84aa:	vpermt2pd ymm22,ymm2,YMMWORD PTR [rsp+0x280]
  bb84b2:	vmovupd YMMWORD PTR [rsi+r9*1+0x380],ymm29
  bb84ba:	vmovupd YMMWORD PTR [rsi+r9*1+0x3a0],ymm22
  bb84c2:	vmovapd ymm4,YMMWORD PTR [rsp+0x180]
  bb84cb:	vpermt2pd ymm4,ymm2,YMMWORD PTR [rsp+0x1a0]
  bb84d3:	vmovupd YMMWORD PTR [rsi+r9*1+0x460],ymm8
  bb84dd:	vmovupd YMMWORD PTR [rsi+r9*1+0x480],ymm4
  bb84e7:	vmovapd ymm4,YMMWORD PTR [rsp]
  bb84ec:	vpermt2pd ymm4,ymm2,YMMWORD PTR [rsp+0x60]
  bb84f4:	vmovupd YMMWORD PTR [rsi+r9*1+0x540],ymm12
  bb84fe:	vmovupd YMMWORD PTR [rsi+r9*1+0x560],ymm4
  bb8508:	vpermt2pd ymm26,ymm2,ymm21
  bb850e:	vmovupd YMMWORD PTR [rsi+r9*1+0x620],ymm14
  bb8518:	vmovupd YMMWORD PTR [rsi+r9*1+0x640],ymm26
  bb8520:	vpermt2pd ymm23,ymm2,YMMWORD PTR [rsp+0x160]
  bb8528:	vmovupd YMMWORD PTR [rsi+r9*1+0x700],ymm3
  bb8532:	vmovupd YMMWORD PTR [rsi+r9*1+0x720],ymm23
  bb853a:	vmovapd ymm1,YMMWORD PTR [rsp+0x20]
  bb8540:	vpermt2pd ymm1,ymm2,ymm13
  bb8546:	vmovupd YMMWORD PTR [rsi+r9*1+0x7e0],ymm15
  bb8550:	vmovupd YMMWORD PTR [rsi+r9*1+0x800],ymm1
  bb855a:	vmovapd ymm1,YMMWORD PTR [rsp+0xe0]
  bb8563:	vpermt2pd ymm1,ymm2,YMMWORD PTR [rsp+0x140]
  bb856b:	vmovupd YMMWORD PTR [rsi+r9*1+0x8c0],ymm17
  bb8573:	vmovupd YMMWORD PTR [rsi+r9*1+0x8e0],ymm1
  bb857d:	vmovapd ymm1,YMMWORD PTR [rsp+0xa0]
  bb8586:	vpermt2pd ymm1,ymm2,YMMWORD PTR [rsp+0xc0]
  bb858e:	vmovupd YMMWORD PTR [rsi+r9*1+0x9a0],ymm6
  bb8598:	vmovupd YMMWORD PTR [rsi+r9*1+0x9c0],ymm1
  bb85a2:	vpermt2pd ymm11,ymm2,ymm0
  bb85a8:	vmovupd YMMWORD PTR [rsi+r9*1+0xa80],ymm20
  bb85b0:	vmovupd YMMWORD PTR [rsi+r9*1+0xaa0],ymm11
  bb85ba:	vpermt2pd ymm25,ymm2,ymm16
  bb85c0:	vmovupd YMMWORD PTR [rsi+r9*1+0xb60],ymm31
  bb85c8:	vmovupd YMMWORD PTR [rsi+r9*1+0xb80],ymm25
  bb85d0:	vpermt2pd ymm19,ymm2,ymm27
  bb85d6:	vmovupd YMMWORD PTR [rsi+r9*1+0xc40],ymm30
  bb85de:	vmovupd YMMWORD PTR [rsi+r9*1+0xc60],ymm19
  bb85e6:	add    rdi,0x40
  bb85ea:	add    rdx,0x3c0
  bb85f1:	mov    r11,r10
  bb85f4:	dec    r8
  bb85f7:	vmovapd ymm4,YMMWORD PTR [rip+0xffffffffff4c00e1]        # 786e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5b90>
  bb85ff:	vmovapd ymm5,YMMWORD PTR [rip+0xffffffffff4bf6f9]        # 77d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x51b0>
  bb8607:	je     bb9460 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x1f20>
  bb860d:	vxorpd xmm0,xmm0,xmm0
  bb8611:	vmovupd ZMMWORD PTR [rsp+0x460],zmm0
  bb861c:	vmovapd ZMMWORD PTR [rsp+0x440],zmm0
  bb8624:	vmovapd ZMMWORD PTR [rsp+0x400],zmm0
  bb862c:	vmovapd ZMMWORD PTR [rsp+0x3c0],zmm0
  bb8634:	vmovapd ZMMWORD PTR [rsp+0x380],zmm0
  bb863c:	vmovapd ZMMWORD PTR [rsp+0x340],zmm0
  bb8644:	vmovapd ZMMWORD PTR [rsp+0x300],zmm0
  bb864c:	vmovapd ZMMWORD PTR [rsp+0x2c0],zmm0
  bb8654:	vmovupd ZMMWORD PTR [rsp+0x660],zmm0
  bb865f:	vmovapd ZMMWORD PTR [rsp+0x640],zmm0
  bb8667:	vmovapd ZMMWORD PTR [rsp+0x600],zmm0
  bb866f:	vmovapd ZMMWORD PTR [rsp+0x5c0],zmm0
  bb8677:	vmovapd ZMMWORD PTR [rsp+0x580],zmm0
  bb867f:	vmovapd ZMMWORD PTR [rsp+0x540],zmm0
  bb8687:	vmovapd ZMMWORD PTR [rsp+0x500],zmm0
  bb868f:	vmovapd ZMMWORD PTR [rsp+0x4c0],zmm0
  bb8697:	vmovupd ZMMWORD PTR [rsp+0x860],zmm0
  bb86a2:	vmovapd ZMMWORD PTR [rsp+0x840],zmm0
  bb86aa:	vmovapd ZMMWORD PTR [rsp+0x800],zmm0
  bb86b2:	vmovapd ZMMWORD PTR [rsp+0x7c0],zmm0
  bb86ba:	vmovapd ZMMWORD PTR [rsp+0x780],zmm0
  bb86c2:	vmovapd ZMMWORD PTR [rsp+0x740],zmm0
  bb86ca:	vmovapd ZMMWORD PTR [rsp+0x700],zmm0
  bb86d2:	vmovapd ZMMWORD PTR [rsp+0x6c0],zmm0
  bb86da:	vmovupd ZMMWORD PTR [rsp+0xa60],zmm0
  bb86e5:	vmovapd ZMMWORD PTR [rsp+0xa40],zmm0
  bb86ed:	vmovapd ZMMWORD PTR [rsp+0xa00],zmm0
  bb86f5:	vmovapd ZMMWORD PTR [rsp+0x9c0],zmm0
  bb86fd:	vmovapd ZMMWORD PTR [rsp+0x980],zmm0
  bb8705:	vmovapd ZMMWORD PTR [rsp+0x940],zmm0
  bb870d:	vmovapd ZMMWORD PTR [rsp+0x900],zmm0
  bb8715:	vmovapd ZMMWORD PTR [rsp+0x8c0],zmm0
  bb871d:	mov    r9,r11
  bb8720:	shl    r9,0x4
  bb8724:	vxorpd xmm0,xmm0,xmm0
  bb8728:	cmp    r11,0xa
  bb872c:	ja     bb8738 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x11f8>
  bb872e:	vmovapd ymm0,YMMWORD PTR [rsp+r9*1+0xb20]
  bb8738:	lea    r10,[r11+0x4]
  bb873c:	vmovapd ymm6,YMMWORD PTR [rsp+r9*1+0xb00]
  bb8746:	mov    rbx,rdi
  bb8749:	xor    r14d,r14d
  bb874c:	jmp    bb87ae <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x126e>
  bb874e:	xchg   ax,ax
  bb8750:	vmovapd ymm2,YMMWORD PTR [rbx-0x20]
  bb8755:	vmovapd ymm3,ymm2
  bb8759:	vpermt2pd ymm3,ymm4,ymm1
  bb875f:	vpermt2pd ymm2,ymm5,ymm1
  bb8765:	vmovapd YMMWORD PTR [rsp+r14*1+0x2e0],ymm3
  bb876f:	vmovapd YMMWORD PTR [rsp+r14*1+0x4e0],ymm2
  bb8779:	vmovups ymm1,YMMWORD PTR [rdx+r14*2-0x20]
  bb8780:	vmovaps YMMWORD PTR [rsp+r14*1+0x6e0],ymm1
  bb878a:	vmovupd ymm1,YMMWORD PTR [rdx+r14*2]
  bb8790:	vmovapd YMMWORD PTR [rsp+r14*1+0x8e0],ymm1
  bb879a:	add    r14,0x20
  bb879e:	add    rbx,0xe0
  bb87a5:	cmp    r14,0x1c0
  bb87ac:	je     bb87c0 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x1280>
  bb87ae:	vxorpd xmm1,xmm1,xmm1
  bb87b2:	cmp    r11,0xa
  bb87b6:	ja     bb8750 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x1210>
  bb87b8:	vmovapd ymm1,YMMWORD PTR [rbx]
  bb87bc:	jmp    bb8750 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x1210>
  bb87be:	xchg   ax,ax
  bb87c0:	vmovapd ymm1,ymm6
  bb87c4:	vpermt2pd ymm1,ymm4,ymm0
  bb87ca:	vmovapd YMMWORD PTR [rsp],ymm1
  bb87cf:	vpermt2pd ymm6,ymm5,ymm0
  bb87d5:	vmovapd YMMWORD PTR [rsp+0x60],ymm6
  bb87db:	vmovapd ymm15,YMMWORD PTR [rsp+0x6e0]
  bb87e4:	vmovapd ymm17,YMMWORD PTR [rsp+0x700]
  bb87ec:	vmovapd ymm5,YMMWORD PTR [rsp+0x720]
  bb87f5:	vmovapd ymm12,YMMWORD PTR [rsp+0x740]
  bb87fe:	vmovapd ymm20,YMMWORD PTR [rsp+0x2e0]
  bb8806:	vmovapd ymm24,YMMWORD PTR [rsp+0x300]
  bb880e:	vmovapd ymm6,YMMWORD PTR [rsp+0x320]
  bb8817:	vmovapd ymm28,YMMWORD PTR [rsp+0x900]
  bb881f:	vmovapd ymm3,YMMWORD PTR [rsp+0x920]
  bb8828:	vmovapd ymm31,YMMWORD PTR [rsp+0x500]
  bb8830:	vmovapd ymm7,YMMWORD PTR [rsp+0x520]
  bb8839:	vmovapd ymm30,YMMWORD PTR [rsp+0x7a0]
  bb8841:	vmovapd ymm4,YMMWORD PTR [rsp+0x3a0]
  bb884a:	vmovapd ymm26,YMMWORD PTR [rsp+0x860]
  bb8852:	vmovapd ymm11,YMMWORD PTR [rsp+0x460]
  bb885b:	vmovapd ymm16,YMMWORD PTR [rsp+0x800]
  bb8863:	vmovapd ymm27,YMMWORD PTR [rsp+0x400]
  bb886b:	vmovapd ymm1,YMMWORD PTR [rsp+0x880]
  bb8874:	vmovapd ymm29,YMMWORD PTR [rsp+0x480]
  bb887c:	vmovapd ymm0,YMMWORD PTR [rsp+0x7c0]
  bb8885:	vmovapd ymm8,YMMWORD PTR [rsp+0x3c0]
  bb888e:	vmovapd ymm13,YMMWORD PTR [rsp+0x760]
  bb8897:	vmovapd ymm2,YMMWORD PTR [rsp+0x360]
  bb88a0:	vmovapd ymm18,YMMWORD PTR [rsp+0x7e0]
  bb88a8:	vmovapd ymm14,YMMWORD PTR [rsp+0x3e0]
  bb88b1:	vmovapd ymm25,YMMWORD PTR [rsp+0x780]
  bb88b9:	vmovapd ymm19,YMMWORD PTR [rsp+0x380]
  bb88c1:	vmovapd ymm9,YMMWORD PTR [rsp+0x840]
  bb88ca:	vmovapd ymm23,YMMWORD PTR [rsp+0x440]
  bb88d2:	vmulpd ymm10,ymm6,ymm5
  bb88d6:	vfnmadd231pd ymm10,ymm7,ymm3
  bb88db:	vmovapd YMMWORD PTR [rsp+0x120],ymm10
  bb88e4:	vmulpd ymm10,ymm7,ymm5
  bb88e8:	vmovapd ymm5,YMMWORD PTR [rsp+0xa40]
  bb88f1:	vfmadd231pd ymm10,ymm6,ymm3
  bb88f6:	vmovapd ymm3,YMMWORD PTR [rsp+0x640]
  bb88ff:	vmulpd ymm22,ymm23,ymm9
  bb8905:	vfnmadd231pd ymm22,ymm3,ymm5
  bb890b:	vmulpd ymm9,ymm9,ymm3
  bb890f:	vmovapd ymm3,YMMWORD PTR [rsp+0x980]
  bb8918:	vfmadd231pd ymm9,ymm23,ymm5
  bb891e:	vmovapd ymm5,YMMWORD PTR [rsp+0x580]
  bb8927:	vmulpd ymm23,ymm19,ymm25
  bb892d:	vfnmadd231pd ymm23,ymm5,ymm3
  bb8933:	vmulpd ymm6,ymm5,ymm25
  bb8939:	vmovapd ymm5,YMMWORD PTR [rsp+0x9e0]
  bb8942:	vfmadd231pd ymm6,ymm19,ymm3
  bb8948:	vmovapd ymm3,YMMWORD PTR [rsp+0x5e0]
  bb8951:	vmulpd ymm25,ymm14,ymm18
  bb8957:	vfnmadd231pd ymm25,ymm3,ymm5
  bb895d:	vmulpd ymm7,ymm3,ymm18
  bb8963:	vmovapd ymm3,YMMWORD PTR [rsp+0x960]
  bb896c:	vfmadd231pd ymm7,ymm14,ymm5
  bb8971:	vmovapd ymm5,YMMWORD PTR [rsp+0x560]
  bb897a:	vmulpd ymm14,ymm13,ymm2
  bb897e:	vfnmadd231pd ymm14,ymm5,ymm3
  bb8983:	vmulpd ymm21,ymm5,ymm13
  bb8989:	vmovapd ymm19,YMMWORD PTR [rsp+0x9c0]
  bb8991:	vfmadd231pd ymm21,ymm2,ymm3
  bb8997:	vmovapd ymm2,YMMWORD PTR [rsp+0x5c0]
  bb89a0:	vmulpd ymm13,ymm8,ymm0
  bb89a4:	vfnmadd231pd ymm13,ymm2,ymm19
  bb89aa:	vmulpd ymm18,ymm2,ymm0
  bb89b0:	vmovapd ymm2,YMMWORD PTR [rsp+0x820]
  bb89b9:	vfmadd231pd ymm18,ymm8,ymm19
  bb89bf:	vmovapd ymm3,YMMWORD PTR [rsp+0x420]
  bb89c8:	vmulpd ymm0,ymm24,ymm17
  bb89ce:	vfnmadd231pd ymm0,ymm31,ymm28
  bb89d4:	vmulpd ymm31,ymm31,ymm17
  bb89da:	vmovapd ymm17,YMMWORD PTR [rsp+0xa20]
  bb89e2:	vfmadd231pd ymm31,ymm24,ymm28
  bb89e8:	vmovapd ymm19,YMMWORD PTR [rsp+0x620]
  bb89f0:	vmulpd ymm8,ymm3,ymm2
  bb89f4:	vfnmadd231pd ymm8,ymm19,ymm17
  bb89fa:	vmulpd ymm24,ymm19,ymm2
  bb8a00:	vmovapd ymm19,YMMWORD PTR [rsp+0xa80]
  bb8a08:	vfmadd231pd ymm24,ymm3,ymm17
  bb8a0e:	vmovapd ymm3,YMMWORD PTR [rsp+0x680]
  bb8a17:	vmulpd ymm2,ymm29,ymm1
  bb8a1d:	vfnmadd231pd ymm2,ymm3,ymm19
  bb8a23:	vmulpd ymm28,ymm3,ymm1
  bb8a29:	vmovapd ymm1,YMMWORD PTR [rsp+0xa00]
  bb8a32:	vfmadd231pd ymm28,ymm29,ymm19
  bb8a38:	vmovapd ymm3,YMMWORD PTR [rsp+0x600]
  bb8a41:	vmulpd ymm17,ymm27,ymm16
  bb8a47:	vfnmadd231pd ymm17,ymm3,ymm1
  bb8a4d:	vmulpd ymm16,ymm3,ymm16
  bb8a53:	vmovapd ymm19,YMMWORD PTR [rsp+0xa60]
  bb8a5b:	vfmadd231pd ymm16,ymm27,ymm1
  bb8a61:	vmovapd ymm1,YMMWORD PTR [rsp+0x660]
  bb8a6a:	vmulpd ymm3,ymm11,ymm26
  bb8a70:	vfnmadd231pd ymm3,ymm1,ymm19
  bb8a76:	vmulpd ymm29,ymm1,ymm26
  bb8a7c:	vmovapd ymm1,YMMWORD PTR [rsp+0x9a0]
  bb8a85:	vfmadd231pd ymm29,ymm11,ymm19
  bb8a8b:	vmovapd ymm11,YMMWORD PTR [rsp+0x5a0]
  bb8a94:	vmulpd ymm26,ymm4,ymm30
  bb8a9a:	vfnmadd231pd ymm26,ymm11,ymm1
  bb8aa0:	vmulpd ymm30,ymm11,ymm30
  bb8aa6:	vmovapd ymm19,YMMWORD PTR [rsp+0x8e0]
  bb8aae:	vfmadd231pd ymm30,ymm4,ymm1
  bb8ab4:	vmovapd ymm1,YMMWORD PTR [rsp+0x4e0]
  bb8abd:	vmulpd ymm11,ymm20,ymm15
  bb8ac3:	vfnmadd231pd ymm11,ymm1,ymm19
  bb8ac9:	vmulpd ymm15,ymm15,ymm1
  bb8acd:	vmovapd ymm1,YMMWORD PTR [rsp+0x340]
  bb8ad6:	vfmadd231pd ymm15,ymm20,ymm19
  bb8adc:	vmovapd ymm4,YMMWORD PTR [rsp+0x940]
  bb8ae5:	vmovapd ymm19,YMMWORD PTR [rsp+0x540]
  bb8aed:	vmulpd ymm27,ymm1,ymm12
  bb8af3:	vfnmadd231pd ymm27,ymm19,ymm4
  bb8af9:	vmulpd ymm20,ymm19,ymm12
  bb8aff:	vfmadd231pd ymm20,ymm1,ymm4
  bb8b05:	vaddpd ymm4,ymm13,ymm0
  bb8b09:	vaddpd ymm19,ymm18,ymm31
  bb8b0f:	vmovapd YMMWORD PTR [rsp+0x280],ymm19
  bb8b17:	vsubpd ymm1,ymm18,ymm31
  bb8b1d:	vmovapd YMMWORD PTR [rsp+0x80],ymm1
  bb8b26:	vaddpd ymm5,ymm24,ymm28
  bb8b2c:	vmovapd YMMWORD PTR [rsp+0x140],ymm5
  bb8b35:	vsubpd ymm1,ymm24,ymm28
  bb8b3b:	vmovapd YMMWORD PTR [rsp+0x260],ymm1
  bb8b44:	vaddpd ymm18,ymm29,ymm30
  bb8b4a:	vmovapd YMMWORD PTR [rsp+0x160],ymm18
  bb8b52:	vsubpd ymm1,ymm29,ymm30
  bb8b58:	vmovapd YMMWORD PTR [rsp+0x2a0],ymm1
  bb8b61:	vaddpd ymm31,ymm15,ymm20
  bb8b67:	vsubpd ymm15,ymm15,ymm20
  bb8b6d:	vaddpd ymm12,ymm10,ymm9
  bb8b72:	vmovapd YMMWORD PTR [rsp+0x20],ymm12
  bb8b78:	vsubpd ymm1,ymm10,ymm9
  bb8b7d:	vmovapd YMMWORD PTR [rsp+0xc0],ymm1
  bb8b86:	vaddpd ymm9,ymm6,ymm7
  bb8b8a:	vmovapd YMMWORD PTR [rsp+0xe0],ymm9
  bb8b93:	vsubpd ymm1,ymm6,ymm7
  bb8b97:	vmovapd YMMWORD PTR [rsp+0xa0],ymm1
  bb8ba0:	vaddpd ymm24,ymm8,ymm2
  bb8ba6:	vsubpd ymm10,ymm13,ymm0
  bb8baa:	vaddpd ymm29,ymm3,ymm26
  bb8bb0:	vsubpd ymm0,ymm8,ymm2
  bb8bb4:	vmovapd YMMWORD PTR [rsp+0x180],ymm0
  bb8bbd:	vaddpd ymm28,ymm11,ymm27
  bb8bc3:	vsubpd ymm2,ymm3,ymm26
  bb8bc9:	vmovapd YMMWORD PTR [rsp+0x1a0],ymm2
  bb8bd2:	vbroadcastsd ymm20,QWORD PTR [rip+0xffffffffff4bbe7c]        # 74a58 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f08>
  bb8bdc:	vmovapd ymm13,ymm20
  bb8be2:	vfmadd213pd ymm13,ymm19,ymm21
  bb8be8:	vbroadcastsd ymm8,QWORD PTR [rip+0xffffffffff4bc427]        # 75018 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x24c8>
  bb8bf1:	vfnmadd231pd ymm13,ymm5,ymm8
  bb8bf6:	vsubpd ymm3,ymm11,ymm27
  bb8bfc:	vbroadcastsd ymm9,QWORD PTR [rip+0xffffffffff4bbbc3]        # 747c8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c78>
  bb8c05:	vmulpd ymm0,ymm9,ymm0
  bb8c09:	vbroadcastsd ymm12,QWORD PTR [rip+0xffffffffff4bbfbe]        # 74bd0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2080>
  bb8c12:	vfmadd231pd ymm0,ymm10,ymm12
  bb8c17:	vmovapd YMMWORD PTR [rsp+0x220],ymm0
  bb8c20:	vmovapd ymm27,ymm20
  bb8c26:	vfmadd213pd ymm27,ymm18,ymm16
  bb8c2c:	vfnmadd231pd ymm27,ymm31,ymm8
  bb8c32:	vmulpd ymm1,ymm9,ymm3
  bb8c36:	vfmadd231pd ymm1,ymm2,ymm12
  bb8c3b:	vmovapd YMMWORD PTR [rsp+0x1e0],ymm1
  bb8c44:	vsubpd ymm5,ymm13,ymm0
  bb8c48:	vsubpd ymm6,ymm27,ymm1
  bb8c4e:	vsubpd ymm0,ymm5,ymm6
  bb8c52:	vmovapd YMMWORD PTR [rsp+0x40],ymm0
  bb8c58:	vaddpd ymm0,ymm5,ymm6
  bb8c5c:	vmovapd YMMWORD PTR [rsp+0x100],ymm0
  bb8c65:	vmovapd ymm0,YMMWORD PTR [rsp+0x120]
  bb8c6e:	vaddpd ymm30,ymm0,ymm22
  bb8c74:	vsubpd ymm18,ymm0,ymm22
  bb8c7a:	vaddpd ymm22,ymm23,ymm25
  bb8c80:	vsubpd ymm23,ymm23,ymm25
  bb8c86:	vmovapd ymm6,ymm20
  bb8c8c:	vfmadd213pd ymm6,ymm4,ymm14
  bb8c91:	vfnmadd231pd ymm6,ymm24,ymm8
  bb8c97:	vmovapd ymm1,YMMWORD PTR [rsp+0x260]
  bb8ca0:	vmulpd ymm26,ymm1,ymm9
  bb8ca6:	vmovapd ymm5,YMMWORD PTR [rsp+0x80]
  bb8caf:	vfmadd231pd ymm26,ymm5,ymm12
  bb8cb5:	vmovapd ymm7,ymm20
  bb8cbb:	vfmadd213pd ymm7,ymm29,ymm17
  bb8cc1:	vfnmadd231pd ymm7,ymm28,ymm8
  bb8cc7:	vmulpd ymm19,ymm15,ymm9
  bb8ccd:	vmovapd ymm2,YMMWORD PTR [rsp+0x2a0]
  bb8cd6:	vfmadd231pd ymm19,ymm2,ymm12
  bb8cdc:	vaddpd ymm11,ymm6,ymm26
  bb8ce2:	vaddpd ymm25,ymm7,ymm19
  bb8ce8:	vaddpd ymm0,ymm11,ymm25
  bb8cee:	vmovapd YMMWORD PTR [rsp+0x200],ymm0
  bb8cf7:	vsubpd ymm0,ymm11,ymm25
  bb8cfd:	vmovapd YMMWORD PTR [rsp+0x240],ymm0
  bb8d06:	vaddpd ymm11,ymm14,ymm4
  bb8d0a:	vfnmadd231pd ymm14,ymm8,ymm4
  bb8d0f:	vaddpd ymm0,ymm11,ymm24
  bb8d15:	vmovapd YMMWORD PTR [rsp+0x1c0],ymm0
  bb8d1e:	vfmadd231pd ymm14,ymm20,ymm24
  bb8d24:	vmulpd ymm11,ymm9,ymm5
  bb8d28:	vfnmadd231pd ymm11,ymm12,ymm1
  bb8d2d:	vaddpd ymm1,ymm17,ymm29
  bb8d33:	vfnmadd231pd ymm17,ymm8,ymm29
  bb8d39:	vaddpd ymm0,ymm1,ymm28
  bb8d3f:	vmovapd YMMWORD PTR [rsp+0x80],ymm0
  bb8d48:	vfmadd231pd ymm17,ymm20,ymm28
  bb8d4e:	vmulpd ymm24,ymm2,ymm9
  bb8d54:	vfnmadd231pd ymm24,ymm12,ymm15
  bb8d5a:	vmovapd ymm4,ymm20
  bb8d60:	vmovapd ymm0,YMMWORD PTR [rsp]
  bb8d65:	vfmadd213pd ymm4,ymm30,ymm0
  bb8d6b:	vaddpd ymm1,ymm0,ymm30
  bb8d71:	vfnmadd231pd ymm0,ymm8,ymm30
  bb8d77:	vaddpd ymm1,ymm1,ymm22
  bb8d7d:	vmovapd YMMWORD PTR [rsp],ymm1
  bb8d82:	vfnmadd231pd ymm4,ymm22,ymm8
  bb8d88:	vfmadd231pd ymm0,ymm20,ymm22
  bb8d8e:	vmovapd ymm29,ymm0
  bb8d94:	vmovapd ymm1,YMMWORD PTR [rsp+0xa0]
  bb8d9d:	vmulpd ymm28,ymm1,ymm9
  bb8da3:	vmovapd ymm0,YMMWORD PTR [rsp+0xc0]
  bb8dac:	vfmadd231pd ymm28,ymm0,ymm12
  bb8db2:	vmulpd ymm5,ymm9,ymm0
  bb8db6:	vfnmadd231pd ymm5,ymm12,ymm1
  bb8dbb:	vmovapd ymm0,YMMWORD PTR [rsp+0x280]
  bb8dc4:	vaddpd ymm22,ymm21,ymm0
  bb8dca:	vfnmadd231pd ymm21,ymm8,ymm0
  bb8dd0:	vmovapd ymm0,YMMWORD PTR [rsp+0x140]
  bb8dd9:	vaddpd ymm25,ymm22,ymm0
  bb8ddf:	vfmadd231pd ymm21,ymm20,ymm0
  bb8de5:	vmulpd ymm22,ymm10,ymm9
  bb8deb:	vfnmadd231pd ymm22,ymm12,YMMWORD PTR [rsp+0x180]
  bb8df3:	vmovapd ymm0,YMMWORD PTR [rsp+0x160]
  bb8dfc:	vaddpd ymm10,ymm16,ymm0
  bb8e02:	vfnmadd231pd ymm16,ymm8,ymm0
  bb8e08:	vaddpd ymm10,ymm10,ymm31
  bb8e0e:	vfmadd231pd ymm16,ymm20,ymm31
  bb8e14:	vmulpd ymm31,ymm9,YMMWORD PTR [rsp+0x1a0]
  bb8e1c:	vfnmadd231pd ymm31,ymm12,ymm3
  bb8e22:	vsubpd ymm2,ymm21,ymm22
  bb8e28:	vsubpd ymm3,ymm16,ymm31
  bb8e2e:	vsubpd ymm0,ymm2,ymm3
  bb8e32:	vmovapd YMMWORD PTR [rsp+0xa0],ymm0
  bb8e3b:	vaddpd ymm0,ymm2,ymm3
  bb8e3f:	vmovapd YMMWORD PTR [rsp+0xc0],ymm0
  bb8e48:	vmovapd ymm0,ymm20
  bb8e4e:	vmovapd ymm1,YMMWORD PTR [rsp+0x60]
  bb8e54:	vmovapd ymm3,YMMWORD PTR [rsp+0x20]
  bb8e5a:	vfmadd213pd ymm0,ymm3,ymm1
  bb8e5f:	vaddpd ymm2,ymm3,ymm1
  bb8e63:	vfnmadd231pd ymm1,ymm8,ymm3
  bb8e68:	vmovapd ymm3,YMMWORD PTR [rsp+0xe0]
  bb8e71:	vaddpd ymm2,ymm3,ymm2
  bb8e75:	vfnmadd231pd ymm0,ymm3,ymm8
  bb8e7a:	vfmadd231pd ymm1,ymm20,ymm3
  bb8e80:	vmovapd ymm8,ymm1
  bb8e84:	vmulpd ymm1,ymm23,ymm9
  bb8e8a:	vfmadd231pd ymm1,ymm18,ymm12
  bb8e90:	vmulpd ymm18,ymm18,ymm9
  bb8e96:	vfnmadd231pd ymm18,ymm12,ymm23
  bb8e9c:	vaddpd ymm23,ymm14,ymm11
  bb8ea2:	vaddpd ymm30,ymm17,ymm24
  bb8ea8:	vaddpd ymm3,ymm23,ymm30
  bb8eae:	vmovapd YMMWORD PTR [rsp+0x180],ymm3
  bb8eb7:	vsubpd ymm3,ymm23,ymm30
  bb8ebd:	vmovapd YMMWORD PTR [rsp+0x1a0],ymm3
  bb8ec6:	vaddpd ymm3,ymm29,ymm5
  bb8ecc:	vmovapd YMMWORD PTR [rsp+0x160],ymm3
  bb8ed5:	vsubpd ymm23,ymm29,ymm5
  bb8edb:	vsubpd ymm29,ymm14,ymm11
  bb8ee1:	vsubpd ymm11,ymm17,ymm24
  bb8ee7:	vsubpd ymm5,ymm8,ymm18
  bb8eed:	vmovapd YMMWORD PTR [rsp+0x140],ymm5
  bb8ef6:	vaddpd ymm17,ymm18,ymm8
  bb8efc:	vaddpd ymm21,ymm21,ymm22
  bb8f02:	vaddpd ymm14,ymm16,ymm31
  bb8f08:	vsubpd ymm6,ymm6,ymm26
  bb8f0e:	vsubpd ymm7,ymm7,ymm19
  bb8f14:	vaddpd ymm9,ymm4,ymm28
  bb8f1a:	vsubpd ymm15,ymm4,ymm28
  bb8f20:	vaddpd ymm18,ymm13,YMMWORD PTR [rsp+0x220]
  bb8f28:	vmovapd ymm3,YMMWORD PTR [rsp+0x1c0]
  bb8f31:	vmovapd ymm4,YMMWORD PTR [rsp+0x80]
  bb8f3a:	vaddpd ymm8,ymm3,ymm4
  bb8f3e:	vaddpd ymm12,ymm27,YMMWORD PTR [rsp+0x1e0]
  bb8f46:	vsubpd ymm13,ymm18,ymm12
  bb8f4c:	vmovapd YMMWORD PTR [rsp+0x20],ymm13
  bb8f52:	vaddpd ymm12,ymm18,ymm12
  bb8f58:	vsubpd ymm18,ymm0,ymm1
  bb8f5e:	vaddpd ymm0,ymm1,ymm0
  bb8f62:	vaddpd ymm20,ymm6,ymm7
  bb8f68:	vsubpd ymm1,ymm6,ymm7
  bb8f6c:	vmovapd YMMWORD PTR [rsp+0xe0],ymm1
  bb8f75:	vmovapd ymm1,YMMWORD PTR [rsp]
  bb8f7a:	vaddpd ymm6,ymm8,ymm1
  bb8f7e:	vmovapd YMMWORD PTR [rsp+0x120],ymm6
  bb8f87:	vbroadcastsd ymm13,QWORD PTR [rip+0xffffffffff4bbb08]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  bb8f90:	vfnmadd213pd ymm8,ymm13,ymm1
  bb8f95:	vaddpd ymm7,ymm25,ymm10
  bb8f9b:	vsubpd ymm27,ymm25,ymm10
  bb8fa1:	vaddpd ymm10,ymm2,ymm7
  bb8fa5:	vfnmadd213pd ymm7,ymm13,ymm2
  bb8faa:	vmovapd ymm2,ymm13
  bb8fae:	vmovapd ymm1,YMMWORD PTR [rsp+0x200]
  bb8fb7:	vfnmadd213pd ymm2,ymm1,ymm9
  bb8fbc:	vsubpd ymm6,ymm3,ymm4
  bb8fc0:	vmovapd ymm22,ymm13
  bb8fc6:	vmovapd ymm24,YMMWORD PTR [rsp+0x100]
  bb8fce:	vfnmadd213pd ymm22,ymm24,ymm18
  bb8fd4:	vaddpd ymm1,ymm9,ymm1
  bb8fd8:	vmovapd YMMWORD PTR [rsp+0x60],ymm1
  bb8fde:	vmovapd ymm9,ymm13
  bb8fe3:	vmovapd ymm30,YMMWORD PTR [rsp+0x180]
  bb8feb:	vmovapd ymm3,YMMWORD PTR [rsp+0x160]
  bb8ff4:	vfnmadd213pd ymm9,ymm30,ymm3
  bb8ffa:	vbroadcastsd ymm31,QWORD PTR [rip+0xffffffffff4bbc1c]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  bb9004:	vmulpd ymm19,ymm31,YMMWORD PTR [rsp+0xa0]
  bb900c:	vaddpd ymm1,ymm18,ymm24
  bb9012:	vmovapd YMMWORD PTR [rsp],ymm1
  bb9017:	vsubpd ymm1,ymm9,ymm19
  bb901d:	vmovapd YMMWORD PTR [rsp+0x100],ymm1
  bb9026:	vaddpd ymm1,ymm9,ymm19
  bb902c:	vmovapd YMMWORD PTR [rsp+0x220],ymm1
  bb9035:	vmovapd ymm9,ymm13
  bb903a:	vmovapd ymm1,YMMWORD PTR [rsp+0xc0]
  bb9043:	vfnmadd213pd ymm9,ymm1,ymm5
  bb9048:	vmulpd ymm18,ymm31,YMMWORD PTR [rsp+0x1a0]
  bb9050:	vaddpd ymm26,ymm9,ymm18
  bb9056:	vsubpd ymm4,ymm9,ymm18
  bb905c:	vmovapd YMMWORD PTR [rsp+0x200],ymm4
  bb9065:	vmovapd ymm4,ymm29
  bb906b:	vaddpd ymm24,ymm29,ymm11
  bb9071:	vaddpd ymm5,ymm23,ymm24
  bb9077:	vfnmadd213pd ymm24,ymm13,ymm23
  bb907d:	vaddpd ymm25,ymm21,ymm14
  bb9083:	vsubpd ymm14,ymm21,ymm14
  bb9089:	vaddpd ymm29,ymm17,ymm25
  bb908f:	vfnmadd213pd ymm25,ymm13,ymm17
  bb9095:	vsubpd ymm4,ymm4,ymm11
  bb909a:	vmovapd ymm28,ymm13
  bb90a0:	vfnmadd213pd ymm28,ymm20,ymm15
  bb90a6:	vaddpd ymm9,ymm15,ymm20
  bb90ac:	vmovapd YMMWORD PTR [rsp+0x1e0],ymm9
  bb90b5:	vmovapd ymm20,ymm13
  bb90bb:	vfnmadd213pd ymm20,ymm12,ymm0
  bb90c1:	vaddpd ymm15,ymm12,ymm0
  bb90c5:	vmulpd ymm0,ymm27,ymm31
  bb90cb:	vsubpd ymm23,ymm8,ymm0
  bb90d1:	vaddpd ymm16,ymm8,ymm0
  bb90d7:	vmulpd ymm0,ymm6,ymm31
  bb90dd:	vaddpd ymm13,ymm7,ymm0
  bb90e1:	vsubpd ymm17,ymm7,ymm0
  bb90e7:	vmulpd ymm0,ymm31,YMMWORD PTR [rsp+0x40]
  bb90ef:	vaddpd ymm19,ymm2,ymm0
  bb90f5:	vsubpd ymm9,ymm2,ymm0
  bb90f9:	vmulpd ymm0,ymm31,YMMWORD PTR [rsp+0x240]
  bb9101:	vsubpd ymm18,ymm22,ymm0
  bb9107:	vaddpd ymm27,ymm22,ymm0
  bb910d:	vmulpd ymm7,ymm31,YMMWORD PTR [rsp+0x20]
  bb9115:	vaddpd ymm2,ymm3,ymm30
  bb911b:	vmovapd YMMWORD PTR [rsp+0x40],ymm2
  bb9121:	vaddpd ymm21,ymm28,ymm7
  bb9127:	vmulpd ymm3,ymm31,YMMWORD PTR [rsp+0xe0]
  bb912f:	vmulpd ymm6,ymm14,ymm31
  bb9135:	vaddpd ymm11,ymm1,YMMWORD PTR [rsp+0x140]
  bb913e:	vsubpd ymm1,ymm24,ymm6
  bb9144:	vmulpd ymm8,ymm4,ymm31
  bb914a:	vaddpd ymm31,ymm24,ymm6
  bb9150:	vaddpd ymm4,ymm25,ymm8
  bb9156:	vsubpd ymm30,ymm25,ymm8
  bb915c:	vsubpd ymm22,ymm20,ymm3
  bb9162:	vsubpd ymm25,ymm28,ymm7
  bb9168:	vaddpd ymm20,ymm20,ymm3
  bb916e:	vmovapd ymm3,YMMWORD PTR [rsp+0x120]
  bb9177:	vmovapd YMMWORD PTR [rcx],ymm3
  bb917b:	vmovapd YMMWORD PTR [rax],ymm10
  bb917f:	vmovapd YMMWORD PTR [rsp+0x2e0],ymm19
  bb9187:	vmovapd YMMWORD PTR [rsp+0x4e0],ymm18
  bb918f:	vmovapd ymm8,YMMWORD PTR [rsp+0x100]
  bb9198:	vmovapd YMMWORD PTR [rsp+0x300],ymm8
  bb91a1:	vmovapd ymm24,ymm26
  bb91a7:	vmovapd YMMWORD PTR [rsp+0x500],ymm26
  bb91af:	vmovapd YMMWORD PTR [rsp+0x320],ymm5
  bb91b8:	vmovapd YMMWORD PTR [rsp+0x520],ymm29
  bb91c0:	vmovapd YMMWORD PTR [rsp+0x340],ymm21
  bb91c8:	vmovapd YMMWORD PTR [rsp+0x540],ymm22
  bb91d0:	vmovapd YMMWORD PTR [rsp+0x360],ymm23
  bb91d8:	vmovapd YMMWORD PTR [rsp+0x560],ymm13
  bb91e1:	vmovapd ymm6,YMMWORD PTR [rsp+0x60]
  bb91e7:	vmovapd YMMWORD PTR [rsp+0x380],ymm6
  bb91f0:	vmovapd ymm12,YMMWORD PTR [rsp]
  bb91f5:	vmovapd YMMWORD PTR [rsp+0x580],ymm12
  bb91fe:	vmovapd ymm14,YMMWORD PTR [rsp+0x220]
  bb9207:	vmovapd YMMWORD PTR [rsp+0x3a0],ymm14
  bb9210:	vmovapd ymm26,YMMWORD PTR [rsp+0x200]
  bb9218:	vmovapd YMMWORD PTR [rsp+0x5a0],ymm26
  bb9220:	vmovapd YMMWORD PTR [rsp+0x3c0],ymm1
  bb9229:	vmovapd YMMWORD PTR [rsp+0x5c0],ymm4
  bb9232:	vmovapd ymm0,YMMWORD PTR [rsp+0x1e0]
  bb923b:	vmovapd YMMWORD PTR [rsp+0x3e0],ymm0
  bb9244:	vmovapd YMMWORD PTR [rsp+0x5e0],ymm15
  bb924d:	vmovapd YMMWORD PTR [rsp+0x400],ymm16
  bb9255:	vmovapd YMMWORD PTR [rsp+0x600],ymm17
  bb925d:	vmovapd YMMWORD PTR [rsp+0x420],ymm9
  bb9266:	vmovapd YMMWORD PTR [rsp+0x620],ymm27
  bb926e:	vmovapd YMMWORD PTR [rsp+0x440],ymm2
  bb9277:	vmovapd YMMWORD PTR [rsp+0x640],ymm11
  bb9280:	vmovapd YMMWORD PTR [rsp+0x460],ymm31
  bb9288:	vmovapd YMMWORD PTR [rsp+0x660],ymm30
  bb9290:	vmovapd YMMWORD PTR [rsp+0x480],ymm25
  bb9298:	vmovapd YMMWORD PTR [rsp+0x680],ymm20
  bb92a0:	vmovapd YMMWORD PTR [rsp+0x240],ymm10
  bb92a9:	vmovapd ymm2,YMMWORD PTR [rip+0xffffffffff4bd8af]        # 76b60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4010>
  bb92b1:	vpermt2pd ymm10,ymm2,ymm3
  bb92b7:	vmovapd ymm28,ymm18
  bb92bd:	vmovapd YMMWORD PTR [rsp+0x260],ymm19
  bb92c5:	vpermt2pd ymm28,ymm2,ymm19
  bb92cb:	vmovapd YMMWORD PTR [rsp+0x1c0],ymm24
  bb92d3:	vpermt2pd ymm24,ymm2,ymm8
  bb92d9:	vmovapd YMMWORD PTR [rsp+0x80],ymm29
  bb92e1:	vmovapd ymm7,ymm29
  bb92e7:	vpermt2pd ymm7,ymm2,ymm5
  bb92ed:	vmovapd ymm29,ymm22
  bb92f3:	vmovapd YMMWORD PTR [rsp+0x280],ymm21
  bb92fb:	vpermt2pd ymm29,ymm2,ymm21
  bb9301:	vmovapd YMMWORD PTR [rsp+0x180],ymm13
  bb930a:	vmovapd ymm8,ymm13
  bb930f:	vmovapd YMMWORD PTR [rsp+0x1a0],ymm23
  bb9317:	vpermt2pd ymm8,ymm2,ymm23
  bb931d:	vpermt2pd ymm12,ymm2,ymm6
  bb9323:	vmovapd ymm21,ymm14
  bb9329:	vmovapd ymm14,ymm26
  bb932f:	vpermt2pd ymm14,ymm2,ymm21
  bb9335:	vmovapd ymm3,ymm4
  bb9339:	vmovapd YMMWORD PTR [rsp+0x160],ymm1
  bb9342:	vpermt2pd ymm3,ymm2,ymm1
  bb9348:	vmovapd YMMWORD PTR [rsp+0x20],ymm15
  bb934e:	vmovapd ymm13,ymm0
  bb9352:	vpermt2pd ymm15,ymm2,ymm0
  bb9358:	vmovapd YMMWORD PTR [rsp+0xe0],ymm17
  bb9360:	vmovapd YMMWORD PTR [rsp+0x140],ymm16
  bb9368:	vpermt2pd ymm17,ymm2,ymm16
  bb936e:	vmovapd YMMWORD PTR [rsp+0xa0],ymm27
  bb9376:	vmovapd ymm6,ymm27
  bb937c:	vmovapd ymm27,ymm25
  bb9382:	vmovapd ymm25,ymm30
  bb9388:	vmovapd ymm19,ymm20
  bb938e:	vmovapd YMMWORD PTR [rsp+0xc0],ymm9
  bb9397:	vpermt2pd ymm6,ymm2,ymm9
  bb939d:	vmovapd ymm16,ymm31
  bb93a3:	vmovapd ymm0,YMMWORD PTR [rsp+0x40]
  bb93a9:	vmovapd ymm20,ymm11
  bb93af:	vpermt2pd ymm20,ymm2,ymm0
  bb93b5:	vmovapd ymm31,ymm30
  bb93bb:	vpermt2pd ymm31,ymm2,ymm16
  bb93c1:	vmovapd ymm30,ymm19
  bb93c7:	vpermt2pd ymm30,ymm2,ymm27
  bb93cd:	cmp    r11,0xb
  bb93d1:	jb     bb8420 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0xee0>
  bb93d7:	vmovupd YMMWORD PTR [rsi+r9*1],ymm10
  bb93dd:	vmovupd YMMWORD PTR [rsi+r9*1+0xe0],ymm28
  bb93e5:	vmovupd YMMWORD PTR [rsi+r9*1+0x1c0],ymm24
  bb93ed:	vmovupd YMMWORD PTR [rsi+r9*1+0x2a0],ymm7
  bb93f7:	vmovupd YMMWORD PTR [rsi+r9*1+0x380],ymm29
  bb93ff:	vmovupd YMMWORD PTR [rsi+r9*1+0x460],ymm8
  bb9409:	vmovupd YMMWORD PTR [rsi+r9*1+0x540],ymm12
  bb9413:	vmovupd YMMWORD PTR [rsi+r9*1+0x620],ymm14
  bb941d:	vmovupd YMMWORD PTR [rsi+r9*1+0x700],ymm3
  bb9427:	vmovupd YMMWORD PTR [rsi+r9*1+0x7e0],ymm15
  bb9431:	vmovupd YMMWORD PTR [rsi+r9*1+0x8c0],ymm17
  bb9439:	vmovupd YMMWORD PTR [rsi+r9*1+0x9a0],ymm6
  bb9443:	vmovupd YMMWORD PTR [rsi+r9*1+0xa80],ymm20
  bb944b:	vmovupd YMMWORD PTR [rsi+r9*1+0xb60],ymm31
  bb9453:	vmovupd YMMWORD PTR [rsi+r9*1+0xc40],ymm30
  bb945b:	jmp    bb85e6 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x10a6>
  bb9460:	lea    rsp,[rbp-0x10]
  bb9464:	pop    rbx
  bb9465:	pop    r14
  bb9467:	pop    rbp
  bb9468:	vzeroupper
  bb946b:	ret
