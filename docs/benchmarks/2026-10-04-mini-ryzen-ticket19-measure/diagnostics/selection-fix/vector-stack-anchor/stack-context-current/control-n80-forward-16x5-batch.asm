
target/ticket19/selection-fix/vector-stack-anchor/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000ad4700 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  ad4700:	55                   	push   rbp
  ad4701:	48 89 e5             	mov    rbp,rsp
  ad4704:	53                   	push   rbx
  ad4705:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  ad4709:	48 81 ec 40 08 00 00 	sub    rsp,0x840
  ad4710:	31 c0                	xor    eax,eax
  ad4712:	c4 e2 7d 19 05 05 07 	vbroadcastsd ymm0,QWORD PTR [rip+0xffffffffff5a0705]        # 74e20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x22d0>
  ad4719:	5a ff 
  ad471b:	c4 e2 7d 18 25 78 0c 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff5a0c78]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  ad4722:	5a ff 
  ad4724:	c4 e2 7d 19 15 c3 03 	vbroadcastsd ymm2,QWORD PTR [rip+0xffffffffff5a03c3]        # 74af0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1fa0>
  ad472b:	5a ff 
  ad472d:	c4 e2 7d 18 1d 46 0d 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff5a0d46]        # 7547c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x292c>
  ad4734:	5a ff 
  ad4736:	c4 e2 7d 18 2d dd 0b 	vbroadcastss ymm5,DWORD PTR [rip+0xffffffffff5a0bdd]        # 7531c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x27cc>
  ad473d:	5a ff 
  ad473f:	49 89 f8             	mov    r8,rdi
  ad4742:	e9 d2 04 00 00       	jmp    ad4c19 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x519>
  ad4747:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  ad474e:	00 00 
  ad4750:	48 ff c0             	inc    rax
  ad4753:	c5 fc 28 b4 24 80 00 	vmovaps ymm6,YMMWORD PTR [rsp+0x80]
  ad475a:	00 00 
  ad475c:	c5 7c 28 8c 24 00 01 	vmovaps ymm9,YMMWORD PTR [rsp+0x100]
  ad4763:	00 00 
  ad4765:	c5 7c 28 94 24 80 01 	vmovaps ymm10,YMMWORD PTR [rsp+0x180]
  ad476c:	00 00 
  ad476e:	c5 4c c6 de b1       	vshufps ymm11,ymm6,ymm6,0xb1
  ad4773:	c5 cc 59 31          	vmulps ymm6,ymm6,YMMWORD PTR [rcx]
  ad4777:	c4 e2 25 b8 71 20    	vfmadd231ps ymm6,ymm11,YMMWORD PTR [rcx+0x20]
  ad477d:	c5 34 59 59 40       	vmulps ymm11,ymm9,YMMWORD PTR [rcx+0x40]
  ad4782:	c4 41 34 c6 c9 b1    	vshufps ymm9,ymm9,ymm9,0xb1
  ad4788:	c4 62 35 b8 59 60    	vfmadd231ps ymm11,ymm9,YMMWORD PTR [rcx+0x60]
  ad478e:	c4 41 2c c6 ca b1    	vshufps ymm9,ymm10,ymm10,0xb1
  ad4794:	c5 2c 59 91 80 00 00 	vmulps ymm10,ymm10,YMMWORD PTR [rcx+0x80]
  ad479b:	00 
  ad479c:	c4 62 35 b8 91 a0 00 	vfmadd231ps ymm10,ymm9,YMMWORD PTR [rcx+0xa0]
  ad47a3:	00 00 
  ad47a5:	c5 7c 28 0c 24       	vmovaps ymm9,YMMWORD PTR [rsp]
  ad47aa:	c5 7c 28 a4 24 00 02 	vmovaps ymm12,YMMWORD PTR [rsp+0x200]
  ad47b1:	00 00 
  ad47b3:	c5 1c 59 a9 c0 00 00 	vmulps ymm13,ymm12,YMMWORD PTR [rcx+0xc0]
  ad47ba:	00 
  ad47bb:	c4 41 1c c6 e4 b1    	vshufps ymm12,ymm12,ymm12,0xb1
  ad47c1:	c4 62 1d b8 a9 e0 00 	vfmadd231ps ymm13,ymm12,YMMWORD PTR [rcx+0xe0]
  ad47c8:	00 00 
  ad47ca:	c5 14 58 e6          	vaddps ymm12,ymm13,ymm6
  ad47ce:	c4 41 24 58 f2       	vaddps ymm14,ymm11,ymm10
  ad47d3:	c4 c1 4c 5c f5       	vsubps ymm6,ymm6,ymm13
  ad47d8:	c4 41 24 5c d2       	vsubps ymm10,ymm11,ymm10
  ad47dd:	c4 e2 7d 18 0d 02 0f 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff5a0f02]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  ad47e4:	5a ff 
  ad47e6:	c5 7c 28 d9          	vmovaps ymm11,ymm1
  ad47ea:	c4 42 1d a8 d9       	vfmadd213ps ymm11,ymm12,ymm9
  ad47ef:	c4 62 0d b8 dd       	vfmadd231ps ymm11,ymm14,ymm5
  ad47f4:	c5 7c 28 ed          	vmovaps ymm13,ymm5
  ad47f8:	c4 42 1d a8 e9       	vfmadd213ps ymm13,ymm12,ymm9
  ad47fd:	c4 62 0d b8 e9       	vfmadd231ps ymm13,ymm14,ymm1
  ad4802:	c4 e2 7d 18 3d 95 0b 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff5a0b95]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  ad4809:	5a ff 
  ad480b:	c5 4c 59 ff          	vmulps ymm15,ymm6,ymm7
  ad480f:	c4 62 7d 18 05 40 0f 	vbroadcastss ymm8,DWORD PTR [rip+0xffffffffff5a0f40]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  ad4816:	5a ff 
  ad4818:	c4 42 2d b8 f8       	vfmadd231ps ymm15,ymm10,ymm8
  ad481d:	c4 41 04 c6 ff b1    	vshufps ymm15,ymm15,ymm15,0xb1
  ad4823:	62 e1 7c 28 28 05 93 	vmovaps ymm16,YMMWORD PTR [rip+0xffffffffff5a3d93]        # 785c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5a70>
  ad482a:	3d 5a ff 
  ad482d:	62 31 04 28 57 f8    	vxorps ymm15,ymm15,ymm16
  ad4833:	c5 bc 59 f6          	vmulps ymm6,ymm8,ymm6
  ad4837:	c4 c2 45 bc f2       	vfnmadd231ps ymm6,ymm7,ymm10
  ad483c:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  ad4841:	62 b1 4c 28 57 f0    	vxorps ymm6,ymm6,ymm16
  ad4847:	c4 41 0c 58 d4       	vaddps ymm10,ymm14,ymm12
  ad484c:	c4 41 34 58 ca       	vaddps ymm9,ymm9,ymm10
  ad4851:	c4 41 24 58 d7       	vaddps ymm10,ymm11,ymm15
  ad4856:	c5 14 58 e6          	vaddps ymm12,ymm13,ymm6
  ad485a:	c5 94 5c f6          	vsubps ymm6,ymm13,ymm6
  ad485e:	c4 41 24 5c df       	vsubps ymm11,ymm11,ymm15
  ad4863:	c4 21 7c 11 0c 8e    	vmovups YMMWORD PTR [rsi+r9*4],ymm9
  ad4869:	c4 21 7c 11 94 8e 80 	vmovups YMMWORD PTR [rsi+r9*4+0x80],ymm10
  ad4870:	00 00 00 
  ad4873:	c4 21 7c 11 a4 8e 00 	vmovups YMMWORD PTR [rsi+r9*4+0x100],ymm12
  ad487a:	01 00 00 
  ad487d:	c4 a1 7c 11 b4 8e 80 	vmovups YMMWORD PTR [rsi+r9*4+0x180],ymm6
  ad4884:	01 00 00 
  ad4887:	c4 21 7c 11 9c 8e 00 	vmovups YMMWORD PTR [rsi+r9*4+0x200],ymm11
  ad488e:	02 00 00 
  ad4891:	c5 fc 28 b4 24 a0 00 	vmovaps ymm6,YMMWORD PTR [rsp+0xa0]
  ad4898:	00 00 
  ad489a:	c5 7c 28 8c 24 20 01 	vmovaps ymm9,YMMWORD PTR [rsp+0x120]
  ad48a1:	00 00 
  ad48a3:	c5 4c 59 91 00 01 00 	vmulps ymm10,ymm6,YMMWORD PTR [rcx+0x100]
  ad48aa:	00 
  ad48ab:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  ad48b0:	c4 62 4d b8 91 20 01 	vfmadd231ps ymm10,ymm6,YMMWORD PTR [rcx+0x120]
  ad48b7:	00 00 
  ad48b9:	c4 c1 34 c6 f1 b1    	vshufps ymm6,ymm9,ymm9,0xb1
  ad48bf:	c5 34 59 89 40 01 00 	vmulps ymm9,ymm9,YMMWORD PTR [rcx+0x140]
  ad48c6:	00 
  ad48c7:	c4 62 4d b8 89 60 01 	vfmadd231ps ymm9,ymm6,YMMWORD PTR [rcx+0x160]
  ad48ce:	00 00 
  ad48d0:	c5 fc 28 b4 24 a0 01 	vmovaps ymm6,YMMWORD PTR [rsp+0x1a0]
  ad48d7:	00 00 
  ad48d9:	c5 4c c6 de b1       	vshufps ymm11,ymm6,ymm6,0xb1
  ad48de:	c5 cc 59 b1 80 01 00 	vmulps ymm6,ymm6,YMMWORD PTR [rcx+0x180]
  ad48e5:	00 
  ad48e6:	c4 e2 25 b8 b1 a0 01 	vfmadd231ps ymm6,ymm11,YMMWORD PTR [rcx+0x1a0]
  ad48ed:	00 00 
  ad48ef:	c5 7c 28 9c 24 20 02 	vmovaps ymm11,YMMWORD PTR [rsp+0x220]
  ad48f6:	00 00 
  ad48f8:	c4 41 24 c6 e3 b1    	vshufps ymm12,ymm11,ymm11,0xb1
  ad48fe:	c5 24 59 99 c0 01 00 	vmulps ymm11,ymm11,YMMWORD PTR [rcx+0x1c0]
  ad4905:	00 
  ad4906:	c4 62 1d b8 99 e0 01 	vfmadd231ps ymm11,ymm12,YMMWORD PTR [rcx+0x1e0]
  ad490d:	00 00 
  ad490f:	c5 7c 28 64 24 20    	vmovaps ymm12,YMMWORD PTR [rsp+0x20]
  ad4915:	c4 41 2c 58 eb       	vaddps ymm13,ymm10,ymm11
  ad491a:	c5 34 58 f6          	vaddps ymm14,ymm9,ymm6
  ad491e:	c4 41 2c 5c d3       	vsubps ymm10,ymm10,ymm11
  ad4923:	c5 b4 5c f6          	vsubps ymm6,ymm9,ymm6
  ad4927:	c5 7c 28 c9          	vmovaps ymm9,ymm1
  ad492b:	c4 42 15 a8 cc       	vfmadd213ps ymm9,ymm13,ymm12
  ad4930:	c4 62 0d b8 cd       	vfmadd231ps ymm9,ymm14,ymm5
  ad4935:	c5 7c 28 dd          	vmovaps ymm11,ymm5
  ad4939:	c4 42 15 a8 dc       	vfmadd213ps ymm11,ymm13,ymm12
  ad493e:	c4 62 0d b8 d9       	vfmadd231ps ymm11,ymm14,ymm1
  ad4943:	c5 2c 59 ff          	vmulps ymm15,ymm10,ymm7
  ad4947:	c4 42 4d b8 f8       	vfmadd231ps ymm15,ymm6,ymm8
  ad494c:	c4 41 04 c6 ff b1    	vshufps ymm15,ymm15,ymm15,0xb1
  ad4952:	62 31 04 28 57 f8    	vxorps ymm15,ymm15,ymm16
  ad4958:	c4 41 2c 59 d0       	vmulps ymm10,ymm10,ymm8
  ad495d:	c4 62 45 bc d6       	vfnmadd231ps ymm10,ymm7,ymm6
  ad4962:	c4 c1 2c c6 f2 b1    	vshufps ymm6,ymm10,ymm10,0xb1
  ad4968:	62 b1 4c 28 57 f0    	vxorps ymm6,ymm6,ymm16
  ad496e:	c4 41 0c 58 d5       	vaddps ymm10,ymm14,ymm13
  ad4973:	c4 41 1c 58 d2       	vaddps ymm10,ymm12,ymm10
  ad4978:	c4 41 34 58 e7       	vaddps ymm12,ymm9,ymm15
  ad497d:	c5 24 58 ee          	vaddps ymm13,ymm11,ymm6
  ad4981:	c5 a4 5c f6          	vsubps ymm6,ymm11,ymm6
  ad4985:	c4 41 34 5c cf       	vsubps ymm9,ymm9,ymm15
  ad498a:	c4 21 7c 11 54 8e 20 	vmovups YMMWORD PTR [rsi+r9*4+0x20],ymm10
  ad4991:	c4 21 7c 11 a4 8e a0 	vmovups YMMWORD PTR [rsi+r9*4+0xa0],ymm12
  ad4998:	00 00 00 
  ad499b:	c4 21 7c 11 ac 8e 20 	vmovups YMMWORD PTR [rsi+r9*4+0x120],ymm13
  ad49a2:	01 00 00 
  ad49a5:	c4 a1 7c 11 b4 8e a0 	vmovups YMMWORD PTR [rsi+r9*4+0x1a0],ymm6
  ad49ac:	01 00 00 
  ad49af:	c4 21 7c 11 8c 8e 20 	vmovups YMMWORD PTR [rsi+r9*4+0x220],ymm9
  ad49b6:	02 00 00 
  ad49b9:	c5 fc 28 b4 24 c0 00 	vmovaps ymm6,YMMWORD PTR [rsp+0xc0]
  ad49c0:	00 00 
  ad49c2:	c5 7c 28 8c 24 40 01 	vmovaps ymm9,YMMWORD PTR [rsp+0x140]
  ad49c9:	00 00 
  ad49cb:	c5 7c 28 94 24 c0 01 	vmovaps ymm10,YMMWORD PTR [rsp+0x1c0]
  ad49d2:	00 00 
  ad49d4:	c5 4c c6 de b1       	vshufps ymm11,ymm6,ymm6,0xb1
  ad49d9:	c5 cc 59 b1 00 02 00 	vmulps ymm6,ymm6,YMMWORD PTR [rcx+0x200]
  ad49e0:	00 
  ad49e1:	c4 e2 25 b8 b1 20 02 	vfmadd231ps ymm6,ymm11,YMMWORD PTR [rcx+0x220]
  ad49e8:	00 00 
  ad49ea:	c5 34 59 99 40 02 00 	vmulps ymm11,ymm9,YMMWORD PTR [rcx+0x240]
  ad49f1:	00 
  ad49f2:	c4 41 34 c6 c9 b1    	vshufps ymm9,ymm9,ymm9,0xb1
  ad49f8:	c4 62 35 b8 99 60 02 	vfmadd231ps ymm11,ymm9,YMMWORD PTR [rcx+0x260]
  ad49ff:	00 00 
  ad4a01:	c4 41 2c c6 ca b1    	vshufps ymm9,ymm10,ymm10,0xb1
  ad4a07:	c5 2c 59 91 80 02 00 	vmulps ymm10,ymm10,YMMWORD PTR [rcx+0x280]
  ad4a0e:	00 
  ad4a0f:	c4 62 35 b8 91 a0 02 	vfmadd231ps ymm10,ymm9,YMMWORD PTR [rcx+0x2a0]
  ad4a16:	00 00 
  ad4a18:	c5 7c 28 4c 24 40    	vmovaps ymm9,YMMWORD PTR [rsp+0x40]
  ad4a1e:	c5 7c 28 a4 24 40 02 	vmovaps ymm12,YMMWORD PTR [rsp+0x240]
  ad4a25:	00 00 
  ad4a27:	c5 1c 59 a9 c0 02 00 	vmulps ymm13,ymm12,YMMWORD PTR [rcx+0x2c0]
  ad4a2e:	00 
  ad4a2f:	c4 41 1c c6 e4 b1    	vshufps ymm12,ymm12,ymm12,0xb1
  ad4a35:	c4 62 1d b8 a9 e0 02 	vfmadd231ps ymm13,ymm12,YMMWORD PTR [rcx+0x2e0]
  ad4a3c:	00 00 
  ad4a3e:	c5 14 58 e6          	vaddps ymm12,ymm13,ymm6
  ad4a42:	c4 41 24 58 f2       	vaddps ymm14,ymm11,ymm10
  ad4a47:	c4 c1 4c 5c f5       	vsubps ymm6,ymm6,ymm13
  ad4a4c:	c4 41 24 5c d2       	vsubps ymm10,ymm11,ymm10
  ad4a51:	c5 7c 28 d9          	vmovaps ymm11,ymm1
  ad4a55:	c4 42 1d a8 d9       	vfmadd213ps ymm11,ymm12,ymm9
  ad4a5a:	c4 62 0d b8 dd       	vfmadd231ps ymm11,ymm14,ymm5
  ad4a5f:	c5 7c 28 ed          	vmovaps ymm13,ymm5
  ad4a63:	c4 42 1d a8 e9       	vfmadd213ps ymm13,ymm12,ymm9
  ad4a68:	c4 62 0d b8 e9       	vfmadd231ps ymm13,ymm14,ymm1
  ad4a6d:	c5 4c 59 ff          	vmulps ymm15,ymm6,ymm7
  ad4a71:	c4 42 2d b8 f8       	vfmadd231ps ymm15,ymm10,ymm8
  ad4a76:	c4 41 04 c6 ff b1    	vshufps ymm15,ymm15,ymm15,0xb1
  ad4a7c:	62 31 04 28 57 f8    	vxorps ymm15,ymm15,ymm16
  ad4a82:	c5 bc 59 f6          	vmulps ymm6,ymm8,ymm6
  ad4a86:	c4 c2 45 bc f2       	vfnmadd231ps ymm6,ymm7,ymm10
  ad4a8b:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  ad4a90:	62 b1 4c 28 57 f0    	vxorps ymm6,ymm6,ymm16
  ad4a96:	c4 41 0c 58 d4       	vaddps ymm10,ymm14,ymm12
  ad4a9b:	c4 41 34 58 ca       	vaddps ymm9,ymm9,ymm10
  ad4aa0:	c4 41 24 58 d7       	vaddps ymm10,ymm11,ymm15
  ad4aa5:	c5 14 58 e6          	vaddps ymm12,ymm13,ymm6
  ad4aa9:	c5 94 5c f6          	vsubps ymm6,ymm13,ymm6
  ad4aad:	c4 41 24 5c df       	vsubps ymm11,ymm11,ymm15
  ad4ab2:	c4 21 7c 11 4c 8e 40 	vmovups YMMWORD PTR [rsi+r9*4+0x40],ymm9
  ad4ab9:	c4 21 7c 11 94 8e c0 	vmovups YMMWORD PTR [rsi+r9*4+0xc0],ymm10
  ad4ac0:	00 00 00 
  ad4ac3:	c4 21 7c 11 a4 8e 40 	vmovups YMMWORD PTR [rsi+r9*4+0x140],ymm12
  ad4aca:	01 00 00 
  ad4acd:	c4 a1 7c 11 b4 8e c0 	vmovups YMMWORD PTR [rsi+r9*4+0x1c0],ymm6
  ad4ad4:	01 00 00 
  ad4ad7:	c4 21 7c 11 9c 8e 40 	vmovups YMMWORD PTR [rsi+r9*4+0x240],ymm11
  ad4ade:	02 00 00 
  ad4ae1:	c5 fc 28 b4 24 e0 00 	vmovaps ymm6,YMMWORD PTR [rsp+0xe0]
  ad4ae8:	00 00 
  ad4aea:	c5 7c 28 8c 24 60 01 	vmovaps ymm9,YMMWORD PTR [rsp+0x160]
  ad4af1:	00 00 
  ad4af3:	c5 4c 59 91 00 03 00 	vmulps ymm10,ymm6,YMMWORD PTR [rcx+0x300]
  ad4afa:	00 
  ad4afb:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  ad4b00:	c4 62 4d b8 91 20 03 	vfmadd231ps ymm10,ymm6,YMMWORD PTR [rcx+0x320]
  ad4b07:	00 00 
  ad4b09:	c4 c1 34 c6 f1 b1    	vshufps ymm6,ymm9,ymm9,0xb1
  ad4b0f:	c5 34 59 89 40 03 00 	vmulps ymm9,ymm9,YMMWORD PTR [rcx+0x340]
  ad4b16:	00 
  ad4b17:	c4 62 4d b8 89 60 03 	vfmadd231ps ymm9,ymm6,YMMWORD PTR [rcx+0x360]
  ad4b1e:	00 00 
  ad4b20:	c5 fc 28 b4 24 e0 01 	vmovaps ymm6,YMMWORD PTR [rsp+0x1e0]
  ad4b27:	00 00 
  ad4b29:	c5 4c c6 de b1       	vshufps ymm11,ymm6,ymm6,0xb1
  ad4b2e:	c5 cc 59 b1 80 03 00 	vmulps ymm6,ymm6,YMMWORD PTR [rcx+0x380]
  ad4b35:	00 
  ad4b36:	c4 e2 25 b8 b1 a0 03 	vfmadd231ps ymm6,ymm11,YMMWORD PTR [rcx+0x3a0]
  ad4b3d:	00 00 
  ad4b3f:	c5 7c 28 9c 24 60 02 	vmovaps ymm11,YMMWORD PTR [rsp+0x260]
  ad4b46:	00 00 
  ad4b48:	c4 41 24 c6 e3 b1    	vshufps ymm12,ymm11,ymm11,0xb1
  ad4b4e:	c5 24 59 99 c0 03 00 	vmulps ymm11,ymm11,YMMWORD PTR [rcx+0x3c0]
  ad4b55:	00 
  ad4b56:	c4 62 1d b8 99 e0 03 	vfmadd231ps ymm11,ymm12,YMMWORD PTR [rcx+0x3e0]
  ad4b5d:	00 00 
  ad4b5f:	c5 7c 28 64 24 60    	vmovaps ymm12,YMMWORD PTR [rsp+0x60]
  ad4b65:	c4 41 2c 58 eb       	vaddps ymm13,ymm10,ymm11
  ad4b6a:	c5 34 58 f6          	vaddps ymm14,ymm9,ymm6
  ad4b6e:	c4 41 2c 5c d3       	vsubps ymm10,ymm10,ymm11
  ad4b73:	c5 b4 5c f6          	vsubps ymm6,ymm9,ymm6
  ad4b77:	c5 7c 28 c9          	vmovaps ymm9,ymm1
  ad4b7b:	c4 42 15 a8 cc       	vfmadd213ps ymm9,ymm13,ymm12
  ad4b80:	c4 62 0d b8 cd       	vfmadd231ps ymm9,ymm14,ymm5
  ad4b85:	c5 7c 28 dd          	vmovaps ymm11,ymm5
  ad4b89:	c4 42 15 a8 dc       	vfmadd213ps ymm11,ymm13,ymm12
  ad4b8e:	c4 62 0d b8 d9       	vfmadd231ps ymm11,ymm14,ymm1
  ad4b93:	c5 2c 59 ff          	vmulps ymm15,ymm10,ymm7
  ad4b97:	c4 42 4d b8 f8       	vfmadd231ps ymm15,ymm6,ymm8
  ad4b9c:	c4 41 04 c6 ff b1    	vshufps ymm15,ymm15,ymm15,0xb1
  ad4ba2:	62 31 04 28 57 f8    	vxorps ymm15,ymm15,ymm16
  ad4ba8:	c4 41 2c 59 d0       	vmulps ymm10,ymm10,ymm8
  ad4bad:	c4 62 45 bc d6       	vfnmadd231ps ymm10,ymm7,ymm6
  ad4bb2:	c4 c1 2c c6 f2 b1    	vshufps ymm6,ymm10,ymm10,0xb1
  ad4bb8:	62 b1 4c 28 57 f0    	vxorps ymm6,ymm6,ymm16
  ad4bbe:	c4 41 0c 58 d5       	vaddps ymm10,ymm14,ymm13
  ad4bc3:	c4 41 1c 58 d2       	vaddps ymm10,ymm12,ymm10
  ad4bc8:	c4 41 34 58 e7       	vaddps ymm12,ymm9,ymm15
  ad4bcd:	c5 24 58 ee          	vaddps ymm13,ymm11,ymm6
  ad4bd1:	c5 a4 5c f6          	vsubps ymm6,ymm11,ymm6
  ad4bd5:	c4 41 34 5c cf       	vsubps ymm9,ymm9,ymm15
  ad4bda:	c4 21 7c 11 54 8e 60 	vmovups YMMWORD PTR [rsi+r9*4+0x60],ymm10
  ad4be1:	c4 21 7c 11 a4 8e e0 	vmovups YMMWORD PTR [rsi+r9*4+0xe0],ymm12
  ad4be8:	00 00 00 
  ad4beb:	c4 21 7c 11 ac 8e 60 	vmovups YMMWORD PTR [rsi+r9*4+0x160],ymm13
  ad4bf2:	01 00 00 
  ad4bf5:	c4 a1 7c 11 b4 8e e0 	vmovups YMMWORD PTR [rsi+r9*4+0x1e0],ymm6
  ad4bfc:	01 00 00 
  ad4bff:	c4 21 7c 11 8c 8e 60 	vmovups YMMWORD PTR [rsi+r9*4+0x260],ymm9
  ad4c06:	02 00 00 
  ad4c09:	49 81 c0 80 02 00 00 	add    r8,0x280
  ad4c10:	48 39 d0             	cmp    rax,rdx
  ad4c13:	0f 84 b7 05 00 00    	je     ad51d0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0xad0>
  ad4c19:	49 89 c1             	mov    r9,rax
  ad4c1c:	49 c1 e1 05          	shl    r9,0x5
  ad4c20:	4f 8d 0c 89          	lea    r9,[r9+r9*4]
  ad4c24:	c5 7c 10 89 00 04 00 	vmovups ymm9,YMMWORD PTR [rcx+0x400]
  ad4c2b:	00 
  ad4c2c:	c5 7c 10 91 20 04 00 	vmovups ymm10,YMMWORD PTR [rcx+0x420]
  ad4c33:	00 
  ad4c34:	c5 7c 10 99 40 04 00 	vmovups ymm11,YMMWORD PTR [rcx+0x440]
  ad4c3b:	00 
  ad4c3c:	c5 7c 10 a1 60 04 00 	vmovups ymm12,YMMWORD PTR [rcx+0x460]
  ad4c43:	00 
  ad4c44:	c5 7c 10 a9 a0 04 00 	vmovups ymm13,YMMWORD PTR [rcx+0x4a0]
  ad4c4b:	00 
  ad4c4c:	c5 7c 10 b1 80 04 00 	vmovups ymm14,YMMWORD PTR [rcx+0x480]
  ad4c53:	00 
  ad4c54:	45 31 d2             	xor    r10d,r10d
  ad4c57:	4d 89 c3             	mov    r11,r8
  ad4c5a:	31 db                	xor    ebx,ebx
  ad4c5c:	eb 65                	jmp    ad4cc3 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x5c3>
  ad4c5e:	66 90                	xchg   ax,ax
  ad4c60:	62 91 44 00 16 f0    	vmovlhps xmm6,xmm23,xmm24
  ad4c66:	62 81 34 00 16 fb    	vmovlhps xmm23,xmm25,xmm27
  ad4c6c:	62 a1 7c 08 29 7c d4 	vmovaps XMMWORD PTR [rsp+r10*8+0x30],xmm23
  ad4c73:	03 
  ad4c74:	c4 a1 78 29 74 d4 20 	vmovaps XMMWORD PTR [rsp+r10*8+0x20],xmm6
  ad4c7b:	62 b1 64 00 16 f4    	vmovlhps xmm6,xmm19,xmm20
  ad4c81:	62 a1 4c 00 16 dd    	vmovlhps xmm19,xmm22,xmm21
  ad4c87:	62 a1 7c 08 29 5c d4 	vmovaps XMMWORD PTR [rsp+r10*8+0x50],xmm19
  ad4c8e:	05 
  ad4c8f:	c4 a1 78 29 74 d4 40 	vmovaps XMMWORD PTR [rsp+r10*8+0x40],xmm6
  ad4c96:	62 b1 6c 00 16 f0    	vmovlhps xmm6,xmm18,xmm16
  ad4c9c:	62 51 74 00 16 ff    	vmovlhps xmm15,xmm17,xmm15
  ad4ca2:	c4 21 78 29 7c d4 70 	vmovaps XMMWORD PTR [rsp+r10*8+0x70],xmm15
  ad4ca9:	c4 a1 78 29 74 d4 60 	vmovaps XMMWORD PTR [rsp+r10*8+0x60],xmm6
  ad4cb0:	49 83 c2 40          	add    r10,0x40
  ad4cb4:	49 83 c3 20          	add    r11,0x20
  ad4cb8:	f6 c3 01             	test   bl,0x1
  ad4cbb:	b3 01                	mov    bl,0x1
  ad4cbd:	0f 85 8d fa ff ff    	jne    ad4750 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x50>
  ad4cc3:	4d 85 d2             	test   r10,r10
  ad4cc6:	74 78                	je     ad4d40 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x640>
  ad4cc8:	62 c1 ff 08 10 23    	vmovsd xmm20,QWORD PTR [r11]
  ad4cce:	62 c1 ff 08 10 5b 05 	vmovsd xmm19,QWORD PTR [r11+0x28]
  ad4cd5:	c4 41 7b 10 7b 50    	vmovsd xmm15,QWORD PTR [r11+0x50]
  ad4cdb:	62 c1 ff 08 10 4b 0f 	vmovsd xmm17,QWORD PTR [r11+0x78]
  ad4ce2:	62 41 ff 08 10 4b 14 	vmovsd xmm25,QWORD PTR [r11+0xa0]
  ad4ce9:	62 c1 ff 08 10 73 19 	vmovsd xmm22,QWORD PTR [r11+0xc8]
  ad4cf0:	62 c1 ff 08 10 43 1e 	vmovsd xmm16,QWORD PTR [r11+0xf0]
  ad4cf7:	62 c1 ff 08 10 53 23 	vmovsd xmm18,QWORD PTR [r11+0x118]
  ad4cfe:	62 41 ff 08 10 63 28 	vmovsd xmm28,QWORD PTR [r11+0x140]
  ad4d05:	62 41 ff 08 10 53 2d 	vmovsd xmm26,QWORD PTR [r11+0x168]
  ad4d0c:	62 c1 ff 08 10 7b 32 	vmovsd xmm23,QWORD PTR [r11+0x190]
  ad4d13:	62 c1 ff 08 10 6b 37 	vmovsd xmm21,QWORD PTR [r11+0x1b8]
  ad4d1a:	62 41 ff 08 10 73 3c 	vmovsd xmm30,QWORD PTR [r11+0x1e0]
  ad4d21:	62 41 ff 08 10 6b 41 	vmovsd xmm29,QWORD PTR [r11+0x208]
  ad4d28:	62 41 ff 08 10 5b 46 	vmovsd xmm27,QWORD PTR [r11+0x230]
  ad4d2f:	62 41 ff 08 10 43 4b 	vmovsd xmm24,QWORD PTR [r11+0x258]
  ad4d36:	e9 a1 00 00 00       	jmp    ad4ddc <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x6dc>
  ad4d3b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  ad4d40:	62 c1 7c 28 10 23    	vmovups ymm20,YMMWORD PTR [r11]
  ad4d46:	62 c1 7c 28 10 8b 78 	vmovups ymm17,YMMWORD PTR [r11+0x78]
  ad4d4d:	00 00 00 
  ad4d50:	62 c1 7c 28 10 83 f0 	vmovups ymm16,YMMWORD PTR [r11+0xf0]
  ad4d57:	00 00 00 
  ad4d5a:	62 a1 7c 28 10 9c 8f 	vmovups ymm19,YMMWORD PTR [rdi+r9*4+0x28]
  ad4d61:	28 00 00 00 
  ad4d65:	c4 21 7c 10 7c 8f 50 	vmovups ymm15,YMMWORD PTR [rdi+r9*4+0x50]
  ad4d6c:	62 21 7c 28 10 4c 8f 	vmovups ymm25,YMMWORD PTR [rdi+r9*4+0xa0]
  ad4d73:	05 
  ad4d74:	62 a1 7c 28 10 b4 8f 	vmovups ymm22,YMMWORD PTR [rdi+r9*4+0xc8]
  ad4d7b:	c8 00 00 00 
  ad4d7f:	62 a1 7c 28 10 94 8f 	vmovups ymm18,YMMWORD PTR [rdi+r9*4+0x118]
  ad4d86:	18 01 00 00 
  ad4d8a:	62 21 7c 28 10 64 8f 	vmovups ymm28,YMMWORD PTR [rdi+r9*4+0x140]
  ad4d91:	0a 
  ad4d92:	62 21 7c 28 10 94 8f 	vmovups ymm26,YMMWORD PTR [rdi+r9*4+0x168]
  ad4d99:	68 01 00 00 
  ad4d9d:	62 a1 7c 28 10 bc 8f 	vmovups ymm23,YMMWORD PTR [rdi+r9*4+0x190]
  ad4da4:	90 01 00 00 
  ad4da8:	62 a1 7c 28 10 ac 8f 	vmovups ymm21,YMMWORD PTR [rdi+r9*4+0x1b8]
  ad4daf:	b8 01 00 00 
  ad4db3:	62 21 7c 28 10 74 8f 	vmovups ymm30,YMMWORD PTR [rdi+r9*4+0x1e0]
  ad4dba:	0f 
  ad4dbb:	62 21 7c 28 10 ac 8f 	vmovups ymm29,YMMWORD PTR [rdi+r9*4+0x208]
  ad4dc2:	08 02 00 00 
  ad4dc6:	62 21 7c 28 10 9c 8f 	vmovups ymm27,YMMWORD PTR [rdi+r9*4+0x230]
  ad4dcd:	30 02 00 00 
  ad4dd1:	62 21 7c 28 10 84 8f 	vmovups ymm24,YMMWORD PTR [rdi+r9*4+0x258]
  ad4dd8:	58 02 00 00 
  ad4ddc:	62 91 5c 20 58 f4    	vaddps ymm6,ymm20,ymm28
  ad4de2:	62 01 5c 20 5c fc    	vsubps ymm31,ymm20,ymm28
  ad4de8:	62 91 34 20 58 fe    	vaddps ymm7,ymm25,ymm30
  ad4dee:	62 81 34 20 5c e6    	vsubps ymm20,ymm25,ymm30
  ad4df4:	62 a1 5c 20 c6 e4 b1 	vshufps ymm20,ymm20,ymm20,0xb1
  ad4dfb:	62 61 7c 28 28 e0    	vmovaps ymm28,ymm0
  ad4e01:	62 02 5d 20 a8 e7    	vfmadd213ps ymm28,ymm20,ymm31
  ad4e07:	62 82 7d 28 ac e7    	vfnmadd213ps ymm20,ymm0,ymm31
  ad4e0d:	62 61 4c 28 58 f7    	vaddps ymm30,ymm6,ymm7
  ad4e13:	62 61 4c 28 5c cf    	vsubps ymm25,ymm6,ymm7
  ad4e19:	62 91 64 20 58 f2    	vaddps ymm6,ymm19,ymm26
  ad4e1f:	62 91 64 20 5c fa    	vsubps ymm7,ymm19,ymm26
  ad4e25:	62 01 4c 20 58 d5    	vaddps ymm26,ymm22,ymm29
  ad4e2b:	62 81 4c 20 5c dd    	vsubps ymm19,ymm22,ymm29
  ad4e31:	62 a1 64 20 c6 f3 b1 	vshufps ymm22,ymm19,ymm19,0xb1
  ad4e38:	62 61 7c 28 28 e8    	vmovaps ymm29,ymm0
  ad4e3e:	62 62 4d 20 a8 ef    	vfmadd213ps ymm29,ymm22,ymm7
  ad4e44:	62 e2 7d 28 ac f7    	vfnmadd213ps ymm22,ymm0,ymm7
  ad4e4a:	62 81 4c 28 58 da    	vaddps ymm19,ymm6,ymm26
  ad4e50:	62 91 4c 28 5c f2    	vsubps ymm6,ymm6,ymm26
  ad4e56:	62 b1 04 28 58 ff    	vaddps ymm7,ymm15,ymm23
  ad4e5c:	62 a1 04 28 5c ff    	vsubps ymm23,ymm15,ymm23
  ad4e62:	62 01 7c 20 58 d3    	vaddps ymm26,ymm16,ymm27
  ad4e68:	62 11 7c 20 5c fb    	vsubps ymm15,ymm16,ymm27
  ad4e6e:	c4 41 04 c6 ff b1    	vshufps ymm15,ymm15,ymm15,0xb1
  ad4e74:	62 e1 7c 28 28 c0    	vmovaps ymm16,ymm0
  ad4e7a:	62 a2 05 28 a8 c7    	vfmadd213ps ymm16,ymm15,ymm23
  ad4e80:	62 32 7d 28 ac ff    	vfnmadd213ps ymm15,ymm0,ymm23
  ad4e86:	62 81 44 28 58 fa    	vaddps ymm23,ymm7,ymm26
  ad4e8c:	62 91 44 28 5c fa    	vsubps ymm7,ymm7,ymm26
  ad4e92:	62 21 74 20 58 d5    	vaddps ymm26,ymm17,ymm21
  ad4e98:	62 a1 74 20 5c cd    	vsubps ymm17,ymm17,ymm21
  ad4e9e:	62 81 6c 20 58 e8    	vaddps ymm21,ymm18,ymm24
  ad4ea4:	62 81 6c 20 5c d0    	vsubps ymm18,ymm18,ymm24
  ad4eaa:	62 a1 6c 20 c6 d2 b1 	vshufps ymm18,ymm18,ymm18,0xb1
  ad4eb1:	62 61 7c 28 28 c0    	vmovaps ymm24,ymm0
  ad4eb7:	62 22 6d 20 a8 c1    	vfmadd213ps ymm24,ymm18,ymm17
  ad4ebd:	62 a2 7d 28 ac d1    	vfnmadd213ps ymm18,ymm0,ymm17
  ad4ec3:	62 21 2c 20 58 dd    	vaddps ymm27,ymm26,ymm21
  ad4ec9:	62 a1 2c 20 5c cd    	vsubps ymm17,ymm26,ymm21
  ad4ecf:	62 81 14 20 c6 ed b1 	vshufps ymm21,ymm29,ymm29,0xb1
  ad4ed6:	62 41 14 20 59 e9    	vmulps ymm29,ymm29,ymm9
  ad4edc:	62 22 2d 28 b8 ed    	vfmadd231ps ymm29,ymm10,ymm21
  ad4ee2:	62 e1 4c 28 c6 ee b1 	vshufps ymm21,ymm6,ymm6,0xb1
  ad4ee9:	c5 cc 59 f4          	vmulps ymm6,ymm6,ymm4
  ad4eed:	62 b2 6d 28 b8 f5    	vfmadd231ps ymm6,ymm2,ymm21
  ad4ef3:	62 21 4c 20 c6 d6 b1 	vshufps ymm26,ymm22,ymm22,0xb1
  ad4efa:	62 c1 4c 20 59 eb    	vmulps ymm21,ymm22,ymm11
  ad4f00:	62 82 1d 28 b8 ea    	vfmadd231ps ymm21,ymm12,ymm26
  ad4f06:	62 81 3c 20 c6 f0 b1 	vshufps ymm22,ymm24,ymm24,0xb1
  ad4f0d:	62 41 3c 20 59 c3    	vmulps ymm24,ymm24,ymm11
  ad4f13:	62 22 1d 28 b8 c6    	vfmadd231ps ymm24,ymm12,ymm22
  ad4f19:	62 a1 74 20 c6 f1 b1 	vshufps ymm22,ymm17,ymm17,0xb1
  ad4f20:	62 61 74 20 59 fb    	vmulps ymm31,ymm17,ymm3
  ad4f26:	62 22 6d 28 b8 fe    	vfmadd231ps ymm31,ymm2,ymm22
  ad4f2c:	62 a1 6c 20 c6 ca b1 	vshufps ymm17,ymm18,ymm18,0xb1
  ad4f33:	62 51 6c 20 59 c6    	vmulps ymm8,ymm18,ymm14
  ad4f39:	62 32 15 28 b8 c1    	vfmadd231ps ymm8,ymm13,ymm17
  ad4f3f:	62 a1 0c 20 58 f7    	vaddps ymm22,ymm30,ymm23
  ad4f45:	62 21 0c 20 5c d7    	vsubps ymm26,ymm30,ymm23
  ad4f4b:	62 a1 7c 20 c6 c8 b1 	vshufps ymm17,ymm16,ymm16,0xb1
  ad4f52:	62 61 7c 28 28 f4    	vmovaps ymm30,ymm4
  ad4f58:	62 02 7d 20 a8 f4    	vfmadd213ps ymm30,ymm16,ymm28
  ad4f5e:	62 62 75 20 b8 f2    	vfmadd231ps ymm30,ymm17,ymm2
  ad4f64:	62 82 5d 28 ac c4    	vfnmadd213ps ymm16,ymm4,ymm28
  ad4f6a:	62 a2 6d 28 bc c1    	vfnmadd231ps ymm16,ymm2,ymm17
  ad4f70:	62 e1 44 28 c6 cf b1 	vshufps ymm17,ymm7,ymm7,0xb1
  ad4f77:	c5 fc 28 f8          	vmovaps ymm7,ymm0
  ad4f7b:	62 92 75 20 a8 f9    	vfmadd213ps ymm7,ymm17,ymm25
  ad4f81:	62 82 7d 28 ac c9    	vfnmadd213ps ymm17,ymm0,ymm25
  ad4f87:	62 c1 04 28 c6 d7 b1 	vshufps ymm18,ymm15,ymm15,0xb1
  ad4f8e:	c5 fc 28 cc          	vmovaps ymm1,ymm4
  ad4f92:	62 b2 05 28 ac cc    	vfnmadd213ps ymm1,ymm15,ymm20
  ad4f98:	62 f2 6d 20 b8 ca    	vfmadd231ps ymm1,ymm18,ymm2
  ad4f9e:	62 32 5d 28 a8 fc    	vfmadd213ps ymm15,ymm4,ymm20
  ad4fa4:	62 32 6d 28 bc fa    	vfnmadd231ps ymm15,ymm2,ymm18
  ad4faa:	62 81 64 20 58 e3    	vaddps ymm20,ymm19,ymm27
  ad4fb0:	62 81 64 20 5c d3    	vsubps ymm18,ymm19,ymm27
  ad4fb6:	62 a1 6c 20 c6 d2 b1 	vshufps ymm18,ymm18,ymm18,0xb1
  ad4fbd:	62 e1 7c 28 28 f8    	vmovaps ymm23,ymm0
  ad4fc3:	62 82 6d 20 a8 fa    	vfmadd213ps ymm23,ymm18,ymm26
  ad4fc9:	62 82 7d 28 ac d2    	vfnmadd213ps ymm18,ymm0,ymm26
  ad4fcf:	62 21 4c 20 58 d4    	vaddps ymm26,ymm22,ymm20
  ad4fd5:	62 a1 4c 20 5c dc    	vsubps ymm19,ymm22,ymm20
  ad4fdb:	62 81 14 20 58 e0    	vaddps ymm20,ymm29,ymm24
  ad4fe1:	62 81 14 20 5c f0    	vsubps ymm22,ymm29,ymm24
  ad4fe7:	62 a1 4c 20 c6 f6 b1 	vshufps ymm22,ymm22,ymm22,0xb1
  ad4fee:	62 61 7c 28 28 c0    	vmovaps ymm24,ymm0
  ad4ff4:	62 22 4d 20 a8 c0    	vfmadd213ps ymm24,ymm22,ymm16
  ad4ffa:	62 a2 7d 28 bc c6    	vfnmadd231ps ymm16,ymm0,ymm22
  ad5000:	62 21 0c 20 58 e4    	vaddps ymm28,ymm30,ymm20
  ad5006:	62 a1 0c 20 5c e4    	vsubps ymm20,ymm30,ymm20
  ad500c:	62 81 4c 28 58 f7    	vaddps ymm22,ymm6,ymm31
  ad5012:	62 91 4c 28 5c f7    	vsubps ymm6,ymm6,ymm31
  ad5018:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  ad501d:	62 61 7c 28 28 c8    	vmovaps ymm25,ymm0
  ad5023:	62 22 4d 28 a8 c9    	vfmadd213ps ymm25,ymm6,ymm17
  ad5029:	62 e2 7d 28 bc ce    	vfnmadd231ps ymm17,ymm0,ymm6
  ad502f:	62 21 44 28 58 ee    	vaddps ymm29,ymm7,ymm22
  ad5035:	62 a1 44 28 5c f6    	vsubps ymm22,ymm7,ymm22
  ad503b:	62 d1 54 20 58 f0    	vaddps ymm6,ymm21,ymm8
  ad5041:	62 d1 54 20 5c f8    	vsubps ymm7,ymm21,ymm8
  ad5047:	c5 c4 c6 ff b1       	vshufps ymm7,ymm7,ymm7,0xb1
  ad504c:	62 61 7c 28 28 d8    	vmovaps ymm27,ymm0
  ad5052:	62 42 45 28 a8 df    	vfmadd213ps ymm27,ymm7,ymm15
  ad5058:	c4 62 7d bc ff       	vfnmadd231ps ymm15,ymm0,ymm7
  ad505d:	62 61 74 28 58 f6    	vaddps ymm30,ymm1,ymm6
  ad5063:	62 e1 74 28 5c ee    	vsubps ymm21,ymm1,ymm6
  ad5069:	62 01 ad 20 14 fc    	vunpcklpd ymm31,ymm26,ymm28
  ad506f:	62 91 95 20 14 f6    	vunpcklpd ymm6,ymm29,ymm30
  ad5075:	62 f3 05 20 18 ce 01 	vinsertf32x4 ymm1,ymm31,xmm6,0x1
  ad507c:	c4 a1 7c 29 0c d4    	vmovaps YMMWORD PTR [rsp+r10*8],ymm1
  ad5082:	49 83 fa 40          	cmp    r10,0x40
  ad5086:	0f 84 d4 fb ff ff    	je     ad4c60 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x560>
  ad508c:	62 01 ad 20 15 d4    	vunpckhpd ymm26,ymm26,ymm28
  ad5092:	62 01 95 20 15 e6    	vunpckhpd ymm28,ymm29,ymm30
  ad5098:	62 03 ad 20 23 ec 03 	vshuff64x2 ymm29,ymm26,ymm28,0x3
  ad509f:	62 f3 85 20 23 f6 03 	vshuff64x2 ymm6,ymm31,ymm6,0x3
  ad50a6:	62 03 2d 20 18 d4 01 	vinsertf32x4 ymm26,ymm26,xmm28,0x1
  ad50ad:	62 21 7c 28 29 54 d4 	vmovaps YMMWORD PTR [rsp+r10*8+0x80],ymm26
  ad50b4:	04 
  ad50b5:	c4 a1 7d 29 b4 d4 00 	vmovapd YMMWORD PTR [rsp+r10*8+0x100],ymm6
  ad50bc:	01 00 00 
  ad50bf:	62 21 fd 28 29 6c d4 	vmovapd YMMWORD PTR [rsp+r10*8+0x180],ymm29
  ad50c6:	0c 
  ad50c7:	62 91 c5 20 14 f0    	vunpcklpd ymm6,ymm23,ymm24
  ad50cd:	62 01 b5 20 14 d3    	vunpcklpd ymm26,ymm25,ymm27
  ad50d3:	62 03 4d 28 18 e2 01 	vinsertf32x4 ymm28,ymm6,xmm26,0x1
  ad50da:	62 21 7c 28 29 64 d4 	vmovaps YMMWORD PTR [rsp+r10*8+0x20],ymm28
  ad50e1:	01 
  ad50e2:	62 81 c5 20 15 f8    	vunpckhpd ymm23,ymm23,ymm24
  ad50e8:	62 01 b5 20 15 c3    	vunpckhpd ymm24,ymm25,ymm27
  ad50ee:	62 03 c5 20 23 c8 03 	vshuff64x2 ymm25,ymm23,ymm24,0x3
  ad50f5:	62 93 cd 28 23 f2 03 	vshuff64x2 ymm6,ymm6,ymm26,0x3
  ad50fc:	62 83 45 20 18 f8 01 	vinsertf32x4 ymm23,ymm23,xmm24,0x1
  ad5103:	62 a1 7c 28 29 7c d4 	vmovaps YMMWORD PTR [rsp+r10*8+0xa0],ymm23
  ad510a:	05 
  ad510b:	c4 a1 7d 29 b4 d4 20 	vmovapd YMMWORD PTR [rsp+r10*8+0x120],ymm6
  ad5112:	01 00 00 
  ad5115:	62 21 fd 28 29 4c d4 	vmovapd YMMWORD PTR [rsp+r10*8+0x1a0],ymm25
  ad511c:	0d 
  ad511d:	62 b1 e5 20 14 f4    	vunpcklpd ymm6,ymm19,ymm20
  ad5123:	62 a1 cd 20 14 fd    	vunpcklpd ymm23,ymm22,ymm21
  ad5129:	62 23 4d 28 18 c7 01 	vinsertf32x4 ymm24,ymm6,xmm23,0x1
  ad5130:	62 21 7c 28 29 44 d4 	vmovaps YMMWORD PTR [rsp+r10*8+0x40],ymm24
  ad5137:	02 
  ad5138:	62 a1 e5 20 15 dc    	vunpckhpd ymm19,ymm19,ymm20
  ad513e:	62 a1 cd 20 15 e5    	vunpckhpd ymm20,ymm22,ymm21
  ad5144:	62 a3 e5 20 23 ec 03 	vshuff64x2 ymm21,ymm19,ymm20,0x3
  ad514b:	62 b3 cd 28 23 f7 03 	vshuff64x2 ymm6,ymm6,ymm23,0x3
  ad5152:	62 a3 65 20 18 dc 01 	vinsertf32x4 ymm19,ymm19,xmm20,0x1
  ad5159:	62 a1 7c 28 29 5c d4 	vmovaps YMMWORD PTR [rsp+r10*8+0xc0],ymm19
  ad5160:	06 
  ad5161:	c4 a1 7d 29 b4 d4 40 	vmovapd YMMWORD PTR [rsp+r10*8+0x140],ymm6
  ad5168:	01 00 00 
  ad516b:	62 a1 fd 28 29 6c d4 	vmovapd YMMWORD PTR [rsp+r10*8+0x1c0],ymm21
  ad5172:	0e 
  ad5173:	62 b1 ed 20 14 f0    	vunpcklpd ymm6,ymm18,ymm16
  ad5179:	62 c1 f5 20 14 df    	vunpcklpd ymm19,ymm17,ymm15
  ad517f:	62 a3 4d 28 18 e3 01 	vinsertf32x4 ymm20,ymm6,xmm19,0x1
  ad5186:	62 a1 7c 28 29 64 d4 	vmovaps YMMWORD PTR [rsp+r10*8+0x60],ymm20
  ad518d:	03 
  ad518e:	62 a1 ed 20 15 c0    	vunpckhpd ymm16,ymm18,ymm16
  ad5194:	62 51 f5 20 15 ff    	vunpckhpd ymm15,ymm17,ymm15
  ad519a:	62 c3 fd 20 23 cf 03 	vshuff64x2 ymm17,ymm16,ymm15,0x3
  ad51a1:	62 b3 cd 28 23 f3 03 	vshuff64x2 ymm6,ymm6,ymm19,0x3
  ad51a8:	62 53 7d 20 18 ff 01 	vinsertf32x4 ymm15,ymm16,xmm15,0x1
  ad51af:	c4 21 7c 29 bc d4 e0 	vmovaps YMMWORD PTR [rsp+r10*8+0xe0],ymm15
  ad51b6:	00 00 00 
  ad51b9:	c4 a1 7d 29 b4 d4 60 	vmovapd YMMWORD PTR [rsp+r10*8+0x160],ymm6
  ad51c0:	01 00 00 
  ad51c3:	62 a1 fd 28 29 4c d4 	vmovapd YMMWORD PTR [rsp+r10*8+0x1e0],ymm17
  ad51ca:	0f 
  ad51cb:	e9 e0 fa ff ff       	jmp    ad4cb0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x5b0>
  ad51d0:	48 8d 65 f8          	lea    rsp,[rbp-0x8]
  ad51d4:	5b                   	pop    rbx
  ad51d5:	5d                   	pop    rbp
  ad51d6:	c5 f8 77             	vzeroupper
  ad51d9:	c3                   	ret
