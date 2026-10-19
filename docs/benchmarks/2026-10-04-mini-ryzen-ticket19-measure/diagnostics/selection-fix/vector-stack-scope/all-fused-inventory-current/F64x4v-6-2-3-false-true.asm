
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b89b00 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle>:
  b89b00:	48 c1 e2 05          	shl    rdx,0x5
  b89b04:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  b89b08:	c4 e2 7d 19 05 87 af 	vbroadcastsd ymm0,QWORD PTR [rip+0xffffffffff4eaf87]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  b89b0f:	4e ff 
  b89b11:	31 d2                	xor    edx,edx
  b89b13:	c4 e2 7d 19 0d 04 b1 	vbroadcastsd ymm1,QWORD PTR [rip+0xffffffffff4eb104]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  b89b1a:	4e ff 
  b89b1c:	c5 fd 28 15 3c d0 4e 	vmovapd ymm2,YMMWORD PTR [rip+0xffffffffff4ed03c]        # 76b60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4010>
  b89b23:	ff 
  b89b24:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  b89b2b:	00 00 00 00 00 
  b89b30:	c5 fd 10 1c 17       	vmovupd ymm3,YMMWORD PTR [rdi+rdx*1]
  b89b35:	c5 f9 10 64 17 20    	vmovupd xmm4,XMMWORD PTR [rdi+rdx*1+0x20]
  b89b3b:	c4 e3 65 06 dc 20    	vperm2f128 ymm3,ymm3,ymm4,0x20
  b89b41:	c5 f9 10 64 17 10    	vmovupd xmm4,XMMWORD PTR [rdi+rdx*1+0x10]
  b89b47:	c5 e5 14 ec          	vunpcklpd ymm5,ymm3,ymm4
  b89b4b:	c5 e5 15 dc          	vunpckhpd ymm3,ymm3,ymm4
  b89b4f:	c5 fd 10 64 17 30    	vmovupd ymm4,YMMWORD PTR [rdi+rdx*1+0x30]
  b89b55:	c5 f9 10 74 17 50    	vmovupd xmm6,XMMWORD PTR [rdi+rdx*1+0x50]
  b89b5b:	c4 e3 5d 06 e6 20    	vperm2f128 ymm4,ymm4,ymm6,0x20
  b89b61:	c5 f9 10 74 17 40    	vmovupd xmm6,XMMWORD PTR [rdi+rdx*1+0x40]
  b89b67:	c5 dd 14 fe          	vunpcklpd ymm7,ymm4,ymm6
  b89b6b:	c5 dd 15 e6          	vunpckhpd ymm4,ymm4,ymm6
  b89b6f:	c5 d5 58 f7          	vaddpd ymm6,ymm5,ymm7
  b89b73:	c5 65 58 c4          	vaddpd ymm8,ymm3,ymm4
  b89b77:	c5 d5 5c ef          	vsubpd ymm5,ymm5,ymm7
  b89b7b:	c5 e5 5c dc          	vsubpd ymm3,ymm3,ymm4
  b89b7f:	c5 f9 28 e6          	vmovapd xmm4,xmm6
  b89b83:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  b89b89:	c5 f9 28 fd          	vmovapd xmm7,xmm5
  b89b8d:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  b89b93:	c5 cd 14 ed          	vunpcklpd ymm5,ymm6,ymm5
  b89b97:	c5 dd 14 f7          	vunpcklpd ymm6,ymm4,ymm7
  b89b9b:	c5 dd 15 e7          	vunpckhpd ymm4,ymm4,ymm7
  b89b9f:	c5 79 29 c7          	vmovapd xmm7,xmm8
  b89ba3:	c4 43 7d 19 c0 01    	vextractf128 xmm8,ymm8,0x1
  b89ba9:	c5 79 28 cb          	vmovapd xmm9,xmm3
  b89bad:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  b89bb3:	c5 bd 14 db          	vunpcklpd ymm3,ymm8,ymm3
  b89bb7:	c4 41 45 14 c1       	vunpcklpd ymm8,ymm7,ymm9
  b89bbc:	c4 c1 45 15 f9       	vunpckhpd ymm7,ymm7,ymm9
  b89bc1:	c5 7d 10 49 40       	vmovupd ymm9,YMMWORD PTR [rcx+0x40]
  b89bc6:	c5 7d 10 51 60       	vmovupd ymm10,YMMWORD PTR [rcx+0x60]
  b89bcb:	c5 7d 10 99 80 00 00 	vmovupd ymm11,YMMWORD PTR [rcx+0x80]
  b89bd2:	00 
  b89bd3:	c5 7d 10 a1 a0 00 00 	vmovupd ymm12,YMMWORD PTR [rcx+0xa0]
  b89bda:	00 
  b89bdb:	c5 35 59 ec          	vmulpd ymm13,ymm9,ymm4
  b89bdf:	c4 42 c5 bc ea       	vfnmadd231pd ymm13,ymm7,ymm10
  b89be4:	c5 25 59 f5          	vmulpd ymm14,ymm11,ymm5
  b89be8:	c4 42 e5 bc f4       	vfnmadd231pd ymm14,ymm3,ymm12
  b89bed:	c4 41 15 58 fe       	vaddpd ymm15,ymm13,ymm14
  b89bf2:	c5 b5 59 ff          	vmulpd ymm7,ymm9,ymm7
  b89bf6:	c4 c2 dd b8 fa       	vfmadd231pd ymm7,ymm4,ymm10
  b89bfb:	c5 a5 59 db          	vmulpd ymm3,ymm11,ymm3
  b89bff:	c4 c2 d5 b8 dc       	vfmadd231pd ymm3,ymm5,ymm12
  b89c04:	c5 c5 58 e3          	vaddpd ymm4,ymm7,ymm3
  b89c08:	c5 fd 28 e8          	vmovapd ymm5,ymm0
  b89c0c:	c4 e2 85 ac ee       	vfnmadd213pd ymm5,ymm15,ymm6
  b89c11:	c5 c5 5c db          	vsubpd ymm3,ymm7,ymm3
  b89c15:	c5 e5 59 d9          	vmulpd ymm3,ymm3,ymm1
  b89c19:	c5 d5 58 fb          	vaddpd ymm7,ymm5,ymm3
  b89c1d:	c5 7d 28 c8          	vmovapd ymm9,ymm0
  b89c21:	c4 42 dd ac c8       	vfnmadd213pd ymm9,ymm4,ymm8
  b89c26:	c4 41 15 5c d6       	vsubpd ymm10,ymm13,ymm14
  b89c2b:	c5 2d 59 d1          	vmulpd ymm10,ymm10,ymm1
  b89c2f:	c4 41 35 5c da       	vsubpd ymm11,ymm9,ymm10
  b89c34:	c5 d5 5c db          	vsubpd ymm3,ymm5,ymm3
  b89c38:	c4 c1 35 58 ea       	vaddpd ymm5,ymm9,ymm10
  b89c3d:	c5 85 58 f6          	vaddpd ymm6,ymm15,ymm6
  b89c41:	c5 bd 58 e4          	vaddpd ymm4,ymm8,ymm4
  b89c45:	62 f2 ed 28 7f f4    	vpermt2pd ymm6,ymm2,ymm4
  b89c4b:	c5 fd 11 34 16       	vmovupd YMMWORD PTR [rsi+rdx*1],ymm6
  b89c50:	62 d2 ed 28 7f fb    	vpermt2pd ymm7,ymm2,ymm11
  b89c56:	c5 fd 11 7c 16 20    	vmovupd YMMWORD PTR [rsi+rdx*1+0x20],ymm7
  b89c5c:	62 f2 ed 28 7f dd    	vpermt2pd ymm3,ymm2,ymm5
  b89c62:	c5 fd 11 5c 16 40    	vmovupd YMMWORD PTR [rsi+rdx*1+0x40],ymm3
  b89c68:	48 83 c2 60          	add    rdx,0x60
  b89c6c:	48 39 d0             	cmp    rax,rdx
  b89c6f:	0f 85 bb fe ff ff    	jne    b89b30 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x30>
  b89c75:	c5 f8 77             	vzeroupper
  b89c78:	c3                   	ret
