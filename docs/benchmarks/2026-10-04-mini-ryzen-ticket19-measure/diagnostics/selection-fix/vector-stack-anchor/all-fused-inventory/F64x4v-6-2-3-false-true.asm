
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b87d40 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle>:
  b87d40:	48 c1 e2 05          	shl    rdx,0x5
  b87d44:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  b87d48:	c4 e2 7d 19 05 47 cd 	vbroadcastsd ymm0,QWORD PTR [rip+0xffffffffff4ecd47]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  b87d4f:	4e ff 
  b87d51:	31 d2                	xor    edx,edx
  b87d53:	c4 e2 7d 19 0d c4 ce 	vbroadcastsd ymm1,QWORD PTR [rip+0xffffffffff4ecec4]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  b87d5a:	4e ff 
  b87d5c:	c5 fd 28 15 fc ed 4e 	vmovapd ymm2,YMMWORD PTR [rip+0xffffffffff4eedfc]        # 76b60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4010>
  b87d63:	ff 
  b87d64:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  b87d6b:	00 00 00 00 00 
  b87d70:	c5 fd 10 1c 17       	vmovupd ymm3,YMMWORD PTR [rdi+rdx*1]
  b87d75:	c5 f9 10 64 17 20    	vmovupd xmm4,XMMWORD PTR [rdi+rdx*1+0x20]
  b87d7b:	c4 e3 65 06 dc 20    	vperm2f128 ymm3,ymm3,ymm4,0x20
  b87d81:	c5 f9 10 64 17 10    	vmovupd xmm4,XMMWORD PTR [rdi+rdx*1+0x10]
  b87d87:	c5 e5 14 ec          	vunpcklpd ymm5,ymm3,ymm4
  b87d8b:	c5 e5 15 dc          	vunpckhpd ymm3,ymm3,ymm4
  b87d8f:	c5 fd 10 64 17 30    	vmovupd ymm4,YMMWORD PTR [rdi+rdx*1+0x30]
  b87d95:	c5 f9 10 74 17 50    	vmovupd xmm6,XMMWORD PTR [rdi+rdx*1+0x50]
  b87d9b:	c4 e3 5d 06 e6 20    	vperm2f128 ymm4,ymm4,ymm6,0x20
  b87da1:	c5 f9 10 74 17 40    	vmovupd xmm6,XMMWORD PTR [rdi+rdx*1+0x40]
  b87da7:	c5 dd 14 fe          	vunpcklpd ymm7,ymm4,ymm6
  b87dab:	c5 dd 15 e6          	vunpckhpd ymm4,ymm4,ymm6
  b87daf:	c5 d5 58 f7          	vaddpd ymm6,ymm5,ymm7
  b87db3:	c5 65 58 c4          	vaddpd ymm8,ymm3,ymm4
  b87db7:	c5 d5 5c ef          	vsubpd ymm5,ymm5,ymm7
  b87dbb:	c5 e5 5c dc          	vsubpd ymm3,ymm3,ymm4
  b87dbf:	c5 f9 28 e6          	vmovapd xmm4,xmm6
  b87dc3:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  b87dc9:	c5 f9 28 fd          	vmovapd xmm7,xmm5
  b87dcd:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  b87dd3:	c5 cd 14 ed          	vunpcklpd ymm5,ymm6,ymm5
  b87dd7:	c5 dd 14 f7          	vunpcklpd ymm6,ymm4,ymm7
  b87ddb:	c5 dd 15 e7          	vunpckhpd ymm4,ymm4,ymm7
  b87ddf:	c5 79 29 c7          	vmovapd xmm7,xmm8
  b87de3:	c4 43 7d 19 c0 01    	vextractf128 xmm8,ymm8,0x1
  b87de9:	c5 79 28 cb          	vmovapd xmm9,xmm3
  b87ded:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  b87df3:	c5 bd 14 db          	vunpcklpd ymm3,ymm8,ymm3
  b87df7:	c4 41 45 14 c1       	vunpcklpd ymm8,ymm7,ymm9
  b87dfc:	c4 c1 45 15 f9       	vunpckhpd ymm7,ymm7,ymm9
  b87e01:	c5 7d 10 49 40       	vmovupd ymm9,YMMWORD PTR [rcx+0x40]
  b87e06:	c5 7d 10 51 60       	vmovupd ymm10,YMMWORD PTR [rcx+0x60]
  b87e0b:	c5 7d 10 99 80 00 00 	vmovupd ymm11,YMMWORD PTR [rcx+0x80]
  b87e12:	00 
  b87e13:	c5 7d 10 a1 a0 00 00 	vmovupd ymm12,YMMWORD PTR [rcx+0xa0]
  b87e1a:	00 
  b87e1b:	c5 35 59 ec          	vmulpd ymm13,ymm9,ymm4
  b87e1f:	c4 42 c5 bc ea       	vfnmadd231pd ymm13,ymm7,ymm10
  b87e24:	c5 25 59 f5          	vmulpd ymm14,ymm11,ymm5
  b87e28:	c4 42 e5 bc f4       	vfnmadd231pd ymm14,ymm3,ymm12
  b87e2d:	c4 41 15 58 fe       	vaddpd ymm15,ymm13,ymm14
  b87e32:	c5 b5 59 ff          	vmulpd ymm7,ymm9,ymm7
  b87e36:	c4 c2 dd b8 fa       	vfmadd231pd ymm7,ymm4,ymm10
  b87e3b:	c5 a5 59 db          	vmulpd ymm3,ymm11,ymm3
  b87e3f:	c4 c2 d5 b8 dc       	vfmadd231pd ymm3,ymm5,ymm12
  b87e44:	c5 c5 58 e3          	vaddpd ymm4,ymm7,ymm3
  b87e48:	c5 fd 28 e8          	vmovapd ymm5,ymm0
  b87e4c:	c4 e2 85 ac ee       	vfnmadd213pd ymm5,ymm15,ymm6
  b87e51:	c5 c5 5c db          	vsubpd ymm3,ymm7,ymm3
  b87e55:	c5 e5 59 d9          	vmulpd ymm3,ymm3,ymm1
  b87e59:	c5 d5 58 fb          	vaddpd ymm7,ymm5,ymm3
  b87e5d:	c5 7d 28 c8          	vmovapd ymm9,ymm0
  b87e61:	c4 42 dd ac c8       	vfnmadd213pd ymm9,ymm4,ymm8
  b87e66:	c4 41 15 5c d6       	vsubpd ymm10,ymm13,ymm14
  b87e6b:	c5 2d 59 d1          	vmulpd ymm10,ymm10,ymm1
  b87e6f:	c4 41 35 5c da       	vsubpd ymm11,ymm9,ymm10
  b87e74:	c5 d5 5c db          	vsubpd ymm3,ymm5,ymm3
  b87e78:	c4 c1 35 58 ea       	vaddpd ymm5,ymm9,ymm10
  b87e7d:	c5 85 58 f6          	vaddpd ymm6,ymm15,ymm6
  b87e81:	c5 bd 58 e4          	vaddpd ymm4,ymm8,ymm4
  b87e85:	62 f2 ed 28 7f f4    	vpermt2pd ymm6,ymm2,ymm4
  b87e8b:	c5 fd 11 34 16       	vmovupd YMMWORD PTR [rsi+rdx*1],ymm6
  b87e90:	62 d2 ed 28 7f fb    	vpermt2pd ymm7,ymm2,ymm11
  b87e96:	c5 fd 11 7c 16 20    	vmovupd YMMWORD PTR [rsi+rdx*1+0x20],ymm7
  b87e9c:	62 f2 ed 28 7f dd    	vpermt2pd ymm3,ymm2,ymm5
  b87ea2:	c5 fd 11 5c 16 40    	vmovupd YMMWORD PTR [rsi+rdx*1+0x40],ymm3
  b87ea8:	48 83 c2 60          	add    rdx,0x60
  b87eac:	48 39 d0             	cmp    rax,rdx
  b87eaf:	0f 85 bb fe ff ff    	jne    b87d70 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x30>
  b87eb5:	c5 f8 77             	vzeroupper
  b87eb8:	c3                   	ret
