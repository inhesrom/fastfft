
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000089ee80 <<fastfft::isa::x86::F64x4 as fastfft::engine::small::SmallVector>::rectangle>:
  89ee80:	48 c1 e2 04          	shl    rdx,0x4
  89ee84:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  89ee88:	31 d2                	xor    edx,edx
  89ee8a:	c4 e2 7d 19 05 05 5c 	vbroadcastsd ymm0,QWORD PTR [rip+0xffffffffff7d5c05]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  89ee91:	7d ff 
  89ee93:	c4 e2 7d 19 0d 84 5d 	vbroadcastsd ymm1,QWORD PTR [rip+0xffffffffff7d5d84]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  89ee9a:	7d ff 
  89ee9c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  89eea0:	c5 fd 10 14 17       	vmovupd ymm2,YMMWORD PTR [rdi+rdx*1]
  89eea5:	c4 e3 6d 18 54 17 20 	vinsertf128 ymm2,ymm2,XMMWORD PTR [rdi+rdx*1+0x20],0x1
  89eeac:	01 
  89eead:	c5 f9 10 5c 17 10    	vmovupd xmm3,XMMWORD PTR [rdi+rdx*1+0x10]
  89eeb3:	c5 ed 14 e3          	vunpcklpd ymm4,ymm2,ymm3
  89eeb7:	c5 fd 10 6c 17 30    	vmovupd ymm5,YMMWORD PTR [rdi+rdx*1+0x30]
  89eebd:	c4 e3 55 18 6c 17 50 	vinsertf128 ymm5,ymm5,XMMWORD PTR [rdi+rdx*1+0x50],0x1
  89eec4:	01 
  89eec5:	c5 ed 15 d3          	vunpckhpd ymm2,ymm2,ymm3
  89eec9:	c5 f9 10 5c 17 40    	vmovupd xmm3,XMMWORD PTR [rdi+rdx*1+0x40]
  89eecf:	c5 d5 14 f3          	vunpcklpd ymm6,ymm5,ymm3
  89eed3:	c5 d5 15 db          	vunpckhpd ymm3,ymm5,ymm3
  89eed7:	c5 fd 10 6c 17 60    	vmovupd ymm5,YMMWORD PTR [rdi+rdx*1+0x60]
  89eedd:	c4 e3 55 18 ac 17 80 	vinsertf128 ymm5,ymm5,XMMWORD PTR [rdi+rdx*1+0x80],0x1
  89eee4:	00 00 00 01 
  89eee8:	c5 f9 10 7c 17 70    	vmovupd xmm7,XMMWORD PTR [rdi+rdx*1+0x70]
  89eeee:	c5 55 14 c7          	vunpcklpd ymm8,ymm5,ymm7
  89eef2:	c5 d5 15 ef          	vunpckhpd ymm5,ymm5,ymm7
  89eef6:	c5 bd 58 fe          	vaddpd ymm7,ymm8,ymm6
  89eefa:	c5 45 58 cc          	vaddpd ymm9,ymm7,ymm4
  89eefe:	c5 65 58 d5          	vaddpd ymm10,ymm3,ymm5
  89ef02:	c5 2d 58 da          	vaddpd ymm11,ymm10,ymm2
  89ef06:	c4 e2 fd ac fc       	vfnmadd213pd ymm7,ymm0,ymm4
  89ef0b:	c5 e5 5c dd          	vsubpd ymm3,ymm3,ymm5
  89ef0f:	c5 e5 59 d9          	vmulpd ymm3,ymm3,ymm1
  89ef13:	c5 c5 58 e3          	vaddpd ymm4,ymm7,ymm3
  89ef17:	c4 62 fd ac d2       	vfnmadd213pd ymm10,ymm0,ymm2
  89ef1c:	c4 c1 4d 5c d0       	vsubpd ymm2,ymm6,ymm8
  89ef21:	c5 ed 59 d1          	vmulpd ymm2,ymm2,ymm1
  89ef25:	c5 ad 5c ea          	vsubpd ymm5,ymm10,ymm2
  89ef29:	c5 c5 5c db          	vsubpd ymm3,ymm7,ymm3
  89ef2d:	c5 ad 58 f2          	vaddpd ymm6,ymm10,ymm2
  89ef31:	c4 e3 35 18 fb 01    	vinsertf128 ymm7,ymm9,xmm3,0x1
  89ef37:	c4 e3 35 06 d3 31    	vperm2f128 ymm2,ymm9,ymm3,0x31
  89ef3d:	c5 f9 28 dc          	vmovapd xmm3,xmm4
  89ef41:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  89ef47:	c5 ed 14 e4          	vunpcklpd ymm4,ymm2,ymm4
  89ef4b:	c5 c5 14 d3          	vunpcklpd ymm2,ymm7,ymm3
  89ef4f:	c5 c5 15 fb          	vunpckhpd ymm7,ymm7,ymm3
  89ef53:	c4 63 25 18 c6 01    	vinsertf128 ymm8,ymm11,xmm6,0x1
  89ef59:	c4 e3 25 06 de 31    	vperm2f128 ymm3,ymm11,ymm6,0x31
  89ef5f:	c5 f9 28 f5          	vmovapd xmm6,xmm5
  89ef63:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  89ef69:	c5 e5 14 ed          	vunpcklpd ymm5,ymm3,ymm5
  89ef6d:	c5 bd 14 de          	vunpcklpd ymm3,ymm8,ymm6
  89ef71:	c5 bd 15 f6          	vunpckhpd ymm6,ymm8,ymm6
  89ef75:	c5 7d 10 41 40       	vmovupd ymm8,YMMWORD PTR [rcx+0x40]
  89ef7a:	c5 7d 10 49 60       	vmovupd ymm9,YMMWORD PTR [rcx+0x60]
  89ef7f:	c5 7d 10 91 80 00 00 	vmovupd ymm10,YMMWORD PTR [rcx+0x80]
  89ef86:	00 
  89ef87:	c5 7d 10 99 a0 00 00 	vmovupd ymm11,YMMWORD PTR [rcx+0xa0]
  89ef8e:	00 
  89ef8f:	c5 3d 59 e7          	vmulpd ymm12,ymm8,ymm7
  89ef93:	c4 42 cd bc e1       	vfnmadd231pd ymm12,ymm6,ymm9
  89ef98:	c5 2d 59 ec          	vmulpd ymm13,ymm10,ymm4
  89ef9c:	c4 42 d5 bc eb       	vfnmadd231pd ymm13,ymm5,ymm11
  89efa1:	c4 41 1d 58 f5       	vaddpd ymm14,ymm12,ymm13
  89efa6:	c5 bd 59 f6          	vmulpd ymm6,ymm8,ymm6
  89efaa:	c4 c2 c5 b8 f1       	vfmadd231pd ymm6,ymm7,ymm9
  89efaf:	c5 ad 59 ed          	vmulpd ymm5,ymm10,ymm5
  89efb3:	c4 c2 dd b8 eb       	vfmadd231pd ymm5,ymm4,ymm11
  89efb8:	c5 cd 58 e5          	vaddpd ymm4,ymm6,ymm5
  89efbc:	c5 fd 28 f8          	vmovapd ymm7,ymm0
  89efc0:	c4 e2 8d ac fa       	vfnmadd213pd ymm7,ymm14,ymm2
  89efc5:	c5 cd 5c ed          	vsubpd ymm5,ymm6,ymm5
  89efc9:	c5 d5 59 e9          	vmulpd ymm5,ymm5,ymm1
  89efcd:	c5 c5 58 f5          	vaddpd ymm6,ymm7,ymm5
  89efd1:	c5 7d 28 c0          	vmovapd ymm8,ymm0
  89efd5:	c4 62 dd ac c3       	vfnmadd213pd ymm8,ymm4,ymm3
  89efda:	c4 41 1d 5c cd       	vsubpd ymm9,ymm12,ymm13
  89efdf:	c5 35 59 c9          	vmulpd ymm9,ymm9,ymm1
  89efe3:	c4 41 3d 5c d1       	vsubpd ymm10,ymm8,ymm9
  89efe8:	c5 c5 5c ed          	vsubpd ymm5,ymm7,ymm5
  89efec:	c4 c1 3d 58 f9       	vaddpd ymm7,ymm8,ymm9
  89eff1:	c5 8d 58 d2          	vaddpd ymm2,ymm14,ymm2
  89eff5:	c5 e5 58 dc          	vaddpd ymm3,ymm3,ymm4
  89eff9:	c4 e3 fd 01 e3 60    	vpermpd ymm4,ymm3,0x60
  89efff:	c4 63 fd 01 c2 d4    	vpermpd ymm8,ymm2,0xd4
  89f005:	c4 e3 3d 0d e4 0a    	vblendpd ymm4,ymm8,ymm4,0xa
  89f00b:	c5 fd 11 24 16       	vmovupd YMMWORD PTR [rsi+rdx*1],ymm4
  89f010:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  89f016:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  89f01c:	c5 e9 14 d3          	vunpcklpd xmm2,xmm2,xmm3
  89f020:	c5 f9 11 54 16 20    	vmovupd XMMWORD PTR [rsi+rdx*1+0x20],xmm2
  89f026:	c4 c3 fd 01 d2 60    	vpermpd ymm2,ymm10,0x60
  89f02c:	c4 e3 fd 01 de d4    	vpermpd ymm3,ymm6,0xd4
  89f032:	c4 e3 65 0d d2 0a    	vblendpd ymm2,ymm3,ymm2,0xa
  89f038:	c5 fd 11 54 16 30    	vmovupd YMMWORD PTR [rsi+rdx*1+0x30],ymm2
  89f03e:	c4 63 7d 19 d2 01    	vextractf128 xmm2,ymm10,0x1
  89f044:	c4 e3 7d 19 f3 01    	vextractf128 xmm3,ymm6,0x1
  89f04a:	c5 e1 14 d2          	vunpcklpd xmm2,xmm3,xmm2
  89f04e:	c5 f9 11 54 16 50    	vmovupd XMMWORD PTR [rsi+rdx*1+0x50],xmm2
  89f054:	c4 e3 fd 01 d7 60    	vpermpd ymm2,ymm7,0x60
  89f05a:	c4 e3 fd 01 dd d4    	vpermpd ymm3,ymm5,0xd4
  89f060:	c4 e3 65 0d d2 0a    	vblendpd ymm2,ymm3,ymm2,0xa
  89f066:	c5 fd 11 54 16 60    	vmovupd YMMWORD PTR [rsi+rdx*1+0x60],ymm2
  89f06c:	c4 e3 7d 19 fa 01    	vextractf128 xmm2,ymm7,0x1
  89f072:	c4 e3 7d 19 eb 01    	vextractf128 xmm3,ymm5,0x1
  89f078:	c5 e1 14 d2          	vunpcklpd xmm2,xmm3,xmm2
  89f07c:	c5 f9 11 94 16 80 00 	vmovupd XMMWORD PTR [rsi+rdx*1+0x80],xmm2
  89f083:	00 00 
  89f085:	48 81 c2 90 00 00 00 	add    rdx,0x90
  89f08c:	48 39 d0             	cmp    rax,rdx
  89f08f:	0f 85 0b fe ff ff    	jne    89eea0 <<fastfft::isa::x86::F64x4 as fastfft::engine::small::SmallVector>::rectangle+0x20>
  89f095:	c5 f8 77             	vzeroupper
  89f098:	c3                   	ret
