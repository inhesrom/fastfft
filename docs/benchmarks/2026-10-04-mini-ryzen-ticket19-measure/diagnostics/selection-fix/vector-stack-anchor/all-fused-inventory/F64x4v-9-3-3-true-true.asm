
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b8eec0 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle>:
  b8eec0:	48 c1 e2 04          	shl    rdx,0x4
  b8eec4:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  b8eec8:	c4 e2 7d 19 05 c7 5b 	vbroadcastsd ymm0,QWORD PTR [rip+0xffffffffff4e5bc7]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  b8eecf:	4e ff 
  b8eed1:	31 d2                	xor    edx,edx
  b8eed3:	c4 e2 7d 19 0d 44 5d 	vbroadcastsd ymm1,QWORD PTR [rip+0xffffffffff4e5d44]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  b8eeda:	4e ff 
  b8eedc:	c5 fd 28 15 7c 7c 4e 	vmovapd ymm2,YMMWORD PTR [rip+0xffffffffff4e7c7c]        # 76b60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4010>
  b8eee3:	ff 
  b8eee4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  b8eeeb:	00 00 00 00 00 
  b8eef0:	c5 fd 10 1c 17       	vmovupd ymm3,YMMWORD PTR [rdi+rdx*1]
  b8eef5:	c5 f9 10 64 17 20    	vmovupd xmm4,XMMWORD PTR [rdi+rdx*1+0x20]
  b8eefb:	c4 e3 65 06 dc 20    	vperm2f128 ymm3,ymm3,ymm4,0x20
  b8ef01:	c5 f9 10 64 17 10    	vmovupd xmm4,XMMWORD PTR [rdi+rdx*1+0x10]
  b8ef07:	c5 e5 14 ec          	vunpcklpd ymm5,ymm3,ymm4
  b8ef0b:	c5 e5 15 dc          	vunpckhpd ymm3,ymm3,ymm4
  b8ef0f:	c5 fd 10 64 17 30    	vmovupd ymm4,YMMWORD PTR [rdi+rdx*1+0x30]
  b8ef15:	c5 f9 10 74 17 50    	vmovupd xmm6,XMMWORD PTR [rdi+rdx*1+0x50]
  b8ef1b:	c4 e3 5d 06 e6 20    	vperm2f128 ymm4,ymm4,ymm6,0x20
  b8ef21:	c5 f9 10 74 17 40    	vmovupd xmm6,XMMWORD PTR [rdi+rdx*1+0x40]
  b8ef27:	c5 dd 14 fe          	vunpcklpd ymm7,ymm4,ymm6
  b8ef2b:	c5 dd 15 e6          	vunpckhpd ymm4,ymm4,ymm6
  b8ef2f:	c5 fd 10 74 17 60    	vmovupd ymm6,YMMWORD PTR [rdi+rdx*1+0x60]
  b8ef35:	c5 79 10 84 17 80 00 	vmovupd xmm8,XMMWORD PTR [rdi+rdx*1+0x80]
  b8ef3c:	00 00 
  b8ef3e:	c4 c3 4d 06 f0 20    	vperm2f128 ymm6,ymm6,ymm8,0x20
  b8ef44:	c5 79 10 44 17 70    	vmovupd xmm8,XMMWORD PTR [rdi+rdx*1+0x70]
  b8ef4a:	c4 41 4d 14 c8       	vunpcklpd ymm9,ymm6,ymm8
  b8ef4f:	c4 c1 4d 15 f0       	vunpckhpd ymm6,ymm6,ymm8
  b8ef54:	c5 5d 58 c6          	vaddpd ymm8,ymm4,ymm6
  b8ef58:	c5 3d 58 d3          	vaddpd ymm10,ymm8,ymm3
  b8ef5c:	c5 35 58 df          	vaddpd ymm11,ymm9,ymm7
  b8ef60:	c5 25 58 e5          	vaddpd ymm12,ymm11,ymm5
  b8ef64:	c4 62 fd ac c3       	vfnmadd213pd ymm8,ymm0,ymm3
  b8ef69:	c4 c1 45 5c d9       	vsubpd ymm3,ymm7,ymm9
  b8ef6e:	c5 e5 59 d9          	vmulpd ymm3,ymm3,ymm1
  b8ef72:	c5 bd 58 fb          	vaddpd ymm7,ymm8,ymm3
  b8ef76:	c4 62 fd ac dd       	vfnmadd213pd ymm11,ymm0,ymm5
  b8ef7b:	c5 dd 5c e6          	vsubpd ymm4,ymm4,ymm6
  b8ef7f:	c5 dd 59 e1          	vmulpd ymm4,ymm4,ymm1
  b8ef83:	c5 a5 5c ec          	vsubpd ymm5,ymm11,ymm4
  b8ef87:	c5 bd 5c db          	vsubpd ymm3,ymm8,ymm3
  b8ef8b:	c5 a5 58 e4          	vaddpd ymm4,ymm11,ymm4
  b8ef8f:	c4 e3 2d 18 f3 01    	vinsertf128 ymm6,ymm10,xmm3,0x1
  b8ef95:	c4 e3 2d 06 db 31    	vperm2f128 ymm3,ymm10,ymm3,0x31
  b8ef9b:	c5 79 28 c7          	vmovapd xmm8,xmm7
  b8ef9f:	c4 e3 7d 19 ff 01    	vextractf128 xmm7,ymm7,0x1
  b8efa5:	c5 e5 14 df          	vunpcklpd ymm3,ymm3,ymm7
  b8efa9:	c4 c1 4d 14 f8       	vunpcklpd ymm7,ymm6,ymm8
  b8efae:	c4 c1 4d 15 f0       	vunpckhpd ymm6,ymm6,ymm8
  b8efb3:	c4 63 1d 18 c4 01    	vinsertf128 ymm8,ymm12,xmm4,0x1
  b8efb9:	c4 e3 1d 06 e4 31    	vperm2f128 ymm4,ymm12,ymm4,0x31
  b8efbf:	c5 79 28 cd          	vmovapd xmm9,xmm5
  b8efc3:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  b8efc9:	c5 dd 14 e5          	vunpcklpd ymm4,ymm4,ymm5
  b8efcd:	c4 c1 3d 14 e9       	vunpcklpd ymm5,ymm8,ymm9
  b8efd2:	c4 41 3d 15 c1       	vunpckhpd ymm8,ymm8,ymm9
  b8efd7:	c5 7d 10 49 40       	vmovupd ymm9,YMMWORD PTR [rcx+0x40]
  b8efdc:	c5 7d 10 51 60       	vmovupd ymm10,YMMWORD PTR [rcx+0x60]
  b8efe1:	c5 7d 10 99 80 00 00 	vmovupd ymm11,YMMWORD PTR [rcx+0x80]
  b8efe8:	00 
  b8efe9:	c5 7d 10 a1 a0 00 00 	vmovupd ymm12,YMMWORD PTR [rcx+0xa0]
  b8eff0:	00 
  b8eff1:	c5 35 59 ee          	vmulpd ymm13,ymm9,ymm6
  b8eff5:	c4 42 bd bc ea       	vfnmadd231pd ymm13,ymm8,ymm10
  b8effa:	c5 25 59 f3          	vmulpd ymm14,ymm11,ymm3
  b8effe:	c4 42 dd bc f4       	vfnmadd231pd ymm14,ymm4,ymm12
  b8f003:	c4 41 15 58 fe       	vaddpd ymm15,ymm13,ymm14
  b8f008:	c4 41 3d 59 c1       	vmulpd ymm8,ymm8,ymm9
  b8f00d:	c4 42 cd b8 c2       	vfmadd231pd ymm8,ymm6,ymm10
  b8f012:	c5 a5 59 e4          	vmulpd ymm4,ymm11,ymm4
  b8f016:	c4 c2 e5 b8 e4       	vfmadd231pd ymm4,ymm3,ymm12
  b8f01b:	c5 bd 58 dc          	vaddpd ymm3,ymm8,ymm4
  b8f01f:	c5 fd 28 f0          	vmovapd ymm6,ymm0
  b8f023:	c4 e2 85 ac f7       	vfnmadd213pd ymm6,ymm15,ymm7
  b8f028:	c5 bd 5c e4          	vsubpd ymm4,ymm8,ymm4
  b8f02c:	c5 dd 59 e1          	vmulpd ymm4,ymm4,ymm1
  b8f030:	c5 4d 58 c4          	vaddpd ymm8,ymm6,ymm4
  b8f034:	c5 7d 28 c8          	vmovapd ymm9,ymm0
  b8f038:	c4 62 e5 ac cd       	vfnmadd213pd ymm9,ymm3,ymm5
  b8f03d:	c4 41 15 5c d6       	vsubpd ymm10,ymm13,ymm14
  b8f042:	c5 2d 59 d1          	vmulpd ymm10,ymm10,ymm1
  b8f046:	c4 41 35 5c da       	vsubpd ymm11,ymm9,ymm10
  b8f04b:	c5 cd 5c e4          	vsubpd ymm4,ymm6,ymm4
  b8f04f:	c4 c1 35 58 f2       	vaddpd ymm6,ymm9,ymm10
  b8f054:	c5 d5 58 db          	vaddpd ymm3,ymm5,ymm3
  b8f058:	c5 85 58 ef          	vaddpd ymm5,ymm15,ymm7
  b8f05c:	c4 e3 7d 19 df 01    	vextractf128 xmm7,ymm3,0x1
  b8f062:	62 f2 ed 28 7f dd    	vpermt2pd ymm3,ymm2,ymm5
  b8f068:	c5 fd 11 1c 16       	vmovupd YMMWORD PTR [rsi+rdx*1],ymm3
  b8f06d:	c4 e3 7d 19 eb 01    	vextractf128 xmm3,ymm5,0x1
  b8f073:	c5 c1 14 db          	vunpcklpd xmm3,xmm7,xmm3
  b8f077:	c5 f9 11 5c 16 20    	vmovupd XMMWORD PTR [rsi+rdx*1+0x20],xmm3
  b8f07d:	c4 63 7d 19 db 01    	vextractf128 xmm3,ymm11,0x1
  b8f083:	62 52 ed 28 7f d8    	vpermt2pd ymm11,ymm2,ymm8
  b8f089:	c5 7d 11 5c 16 30    	vmovupd YMMWORD PTR [rsi+rdx*1+0x30],ymm11
  b8f08f:	c4 63 7d 19 c5 01    	vextractf128 xmm5,ymm8,0x1
  b8f095:	c5 e1 14 dd          	vunpcklpd xmm3,xmm3,xmm5
  b8f099:	c5 f9 11 5c 16 50    	vmovupd XMMWORD PTR [rsi+rdx*1+0x50],xmm3
  b8f09f:	c4 e3 7d 19 f3 01    	vextractf128 xmm3,ymm6,0x1
  b8f0a5:	62 f2 ed 28 7f f4    	vpermt2pd ymm6,ymm2,ymm4
  b8f0ab:	c5 fd 11 74 16 60    	vmovupd YMMWORD PTR [rsi+rdx*1+0x60],ymm6
  b8f0b1:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  b8f0b7:	c5 e1 14 dc          	vunpcklpd xmm3,xmm3,xmm4
  b8f0bb:	c5 f9 11 9c 16 80 00 	vmovupd XMMWORD PTR [rsi+rdx*1+0x80],xmm3
  b8f0c2:	00 00 
  b8f0c4:	48 81 c2 90 00 00 00 	add    rdx,0x90
  b8f0cb:	48 39 d0             	cmp    rax,rdx
  b8f0ce:	0f 85 1c fe ff ff    	jne    b8eef0 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x30>
  b8f0d4:	c5 f8 77             	vzeroupper
  b8f0d7:	c3                   	ret
