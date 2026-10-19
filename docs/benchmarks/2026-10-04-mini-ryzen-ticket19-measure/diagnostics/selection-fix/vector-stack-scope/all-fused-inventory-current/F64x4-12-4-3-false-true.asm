
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000087ee00 <<fastfft::isa::x86::F64x4 as fastfft::engine::small::SmallVector>::rectangle>:
  87ee00:	48 c1 e2 06          	shl    rdx,0x6
  87ee04:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  87ee08:	31 d2                	xor    edx,edx
  87ee0a:	c4 e2 7d 19 05 85 5c 	vbroadcastsd ymm0,QWORD PTR [rip+0xffffffffff7f5c85]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  87ee11:	7f ff 
  87ee13:	c4 e2 7d 19 0d 04 5e 	vbroadcastsd ymm1,QWORD PTR [rip+0xffffffffff7f5e04]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  87ee1a:	7f ff 
  87ee1c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  87ee20:	c5 fd 10 14 17       	vmovupd ymm2,YMMWORD PTR [rdi+rdx*1]
  87ee25:	c4 e3 6d 18 54 17 20 	vinsertf128 ymm2,ymm2,XMMWORD PTR [rdi+rdx*1+0x20],0x1
  87ee2c:	01 
  87ee2d:	c5 f9 10 5c 17 10    	vmovupd xmm3,XMMWORD PTR [rdi+rdx*1+0x10]
  87ee33:	c5 ed 14 e3          	vunpcklpd ymm4,ymm2,ymm3
  87ee37:	c5 fd 10 6c 17 30    	vmovupd ymm5,YMMWORD PTR [rdi+rdx*1+0x30]
  87ee3d:	c4 e3 55 18 6c 17 50 	vinsertf128 ymm5,ymm5,XMMWORD PTR [rdi+rdx*1+0x50],0x1
  87ee44:	01 
  87ee45:	c5 ed 15 d3          	vunpckhpd ymm2,ymm2,ymm3
  87ee49:	c5 f9 10 5c 17 40    	vmovupd xmm3,XMMWORD PTR [rdi+rdx*1+0x40]
  87ee4f:	c5 d5 14 f3          	vunpcklpd ymm6,ymm5,ymm3
  87ee53:	c5 d5 15 db          	vunpckhpd ymm3,ymm5,ymm3
  87ee57:	c5 fd 10 6c 17 60    	vmovupd ymm5,YMMWORD PTR [rdi+rdx*1+0x60]
  87ee5d:	c4 e3 55 18 ac 17 80 	vinsertf128 ymm5,ymm5,XMMWORD PTR [rdi+rdx*1+0x80],0x1
  87ee64:	00 00 00 01 
  87ee68:	c5 f9 10 7c 17 70    	vmovupd xmm7,XMMWORD PTR [rdi+rdx*1+0x70]
  87ee6e:	c5 55 14 c7          	vunpcklpd ymm8,ymm5,ymm7
  87ee72:	c5 7d 10 8c 17 90 00 	vmovupd ymm9,YMMWORD PTR [rdi+rdx*1+0x90]
  87ee79:	00 00 
  87ee7b:	c4 63 35 18 8c 17 b0 	vinsertf128 ymm9,ymm9,XMMWORD PTR [rdi+rdx*1+0xb0],0x1
  87ee82:	00 00 00 01 
  87ee86:	c5 d5 15 ef          	vunpckhpd ymm5,ymm5,ymm7
  87ee8a:	c5 f9 10 bc 17 a0 00 	vmovupd xmm7,XMMWORD PTR [rdi+rdx*1+0xa0]
  87ee91:	00 00 
  87ee93:	c5 35 14 d7          	vunpcklpd ymm10,ymm9,ymm7
  87ee97:	c5 b5 15 ff          	vunpckhpd ymm7,ymm9,ymm7
  87ee9b:	c5 3d 58 cc          	vaddpd ymm9,ymm8,ymm4
  87ee9f:	c5 2d 58 de          	vaddpd ymm11,ymm10,ymm6
  87eea3:	c4 41 35 58 e3       	vaddpd ymm12,ymm9,ymm11
  87eea8:	c5 6d 58 ed          	vaddpd ymm13,ymm2,ymm5
  87eeac:	c5 65 58 f7          	vaddpd ymm14,ymm3,ymm7
  87eeb0:	c4 41 15 58 fe       	vaddpd ymm15,ymm13,ymm14
  87eeb5:	c4 c1 5d 5c e0       	vsubpd ymm4,ymm4,ymm8
  87eeba:	c5 e5 5c df          	vsubpd ymm3,ymm3,ymm7
  87eebe:	c5 dd 58 fb          	vaddpd ymm7,ymm4,ymm3
  87eec2:	c5 ed 5c d5          	vsubpd ymm2,ymm2,ymm5
  87eec6:	c5 ad 5c ee          	vsubpd ymm5,ymm10,ymm6
  87eeca:	c5 d5 58 f2          	vaddpd ymm6,ymm5,ymm2
  87eece:	c4 41 35 5c c3       	vsubpd ymm8,ymm9,ymm11
  87eed3:	c4 41 15 5c ce       	vsubpd ymm9,ymm13,ymm14
  87eed8:	c5 dd 5c db          	vsubpd ymm3,ymm4,ymm3
  87eedc:	c5 ed 5c e5          	vsubpd ymm4,ymm2,ymm5
  87eee0:	c4 c3 1d 18 e8 01    	vinsertf128 ymm5,ymm12,xmm8,0x1
  87eee6:	c4 c3 1d 06 d0 31    	vperm2f128 ymm2,ymm12,ymm8,0x31
  87eeec:	c4 63 45 18 c3 01    	vinsertf128 ymm8,ymm7,xmm3,0x1
  87eef2:	c4 e3 45 06 db 31    	vperm2f128 ymm3,ymm7,ymm3,0x31
  87eef8:	c5 ed 14 db          	vunpcklpd ymm3,ymm2,ymm3
  87eefc:	c4 c1 55 14 d0       	vunpcklpd ymm2,ymm5,ymm8
  87ef01:	c4 c1 55 15 e8       	vunpckhpd ymm5,ymm5,ymm8
  87ef06:	c4 c3 05 18 f9 01    	vinsertf128 ymm7,ymm15,xmm9,0x1
  87ef0c:	c4 43 05 06 c1 31    	vperm2f128 ymm8,ymm15,ymm9,0x31
  87ef12:	c4 63 4d 18 cc 01    	vinsertf128 ymm9,ymm6,xmm4,0x1
  87ef18:	c4 e3 4d 06 e4 31    	vperm2f128 ymm4,ymm6,ymm4,0x31
  87ef1e:	c5 bd 14 e4          	vunpcklpd ymm4,ymm8,ymm4
  87ef22:	c4 c1 45 14 f1       	vunpcklpd ymm6,ymm7,ymm9
  87ef27:	c4 c1 45 15 f9       	vunpckhpd ymm7,ymm7,ymm9
  87ef2c:	c5 7d 10 41 40       	vmovupd ymm8,YMMWORD PTR [rcx+0x40]
  87ef31:	c5 7d 10 49 60       	vmovupd ymm9,YMMWORD PTR [rcx+0x60]
  87ef36:	c5 7d 10 91 80 00 00 	vmovupd ymm10,YMMWORD PTR [rcx+0x80]
  87ef3d:	00 
  87ef3e:	c5 7d 10 99 a0 00 00 	vmovupd ymm11,YMMWORD PTR [rcx+0xa0]
  87ef45:	00 
  87ef46:	c5 3d 59 e7          	vmulpd ymm12,ymm8,ymm7
  87ef4a:	c4 42 d5 b8 e1       	vfmadd231pd ymm12,ymm5,ymm9
  87ef4f:	c5 2d 59 ec          	vmulpd ymm13,ymm10,ymm4
  87ef53:	c4 42 e5 b8 eb       	vfmadd231pd ymm13,ymm3,ymm11
  87ef58:	c4 41 1d 58 f5       	vaddpd ymm14,ymm12,ymm13
  87ef5d:	c5 7d 28 f8          	vmovapd ymm15,ymm0
  87ef61:	c4 62 8d ac fe       	vfnmadd213pd ymm15,ymm14,ymm6
  87ef66:	c5 bd 59 ed          	vmulpd ymm5,ymm8,ymm5
  87ef6a:	c4 c2 c5 bc e9       	vfnmadd231pd ymm5,ymm7,ymm9
  87ef6f:	c5 ad 59 db          	vmulpd ymm3,ymm10,ymm3
  87ef73:	c4 c2 dd bc db       	vfnmadd231pd ymm3,ymm4,ymm11
  87ef78:	c5 d5 5c e3          	vsubpd ymm4,ymm5,ymm3
  87ef7c:	c5 dd 59 e1          	vmulpd ymm4,ymm4,ymm1
  87ef80:	c5 85 58 fc          	vaddpd ymm7,ymm15,ymm4
  87ef84:	c5 d5 58 db          	vaddpd ymm3,ymm5,ymm3
  87ef88:	c5 fd 28 e8          	vmovapd ymm5,ymm0
  87ef8c:	c4 e2 e5 ac ea       	vfnmadd213pd ymm5,ymm3,ymm2
  87ef91:	c4 41 1d 5c c5       	vsubpd ymm8,ymm12,ymm13
  87ef96:	c5 3d 59 c1          	vmulpd ymm8,ymm8,ymm1
  87ef9a:	c4 41 55 5c c8       	vsubpd ymm9,ymm5,ymm8
  87ef9f:	c5 85 5c e4          	vsubpd ymm4,ymm15,ymm4
  87efa3:	c5 bd 58 ed          	vaddpd ymm5,ymm8,ymm5
  87efa7:	c5 8d 58 f6          	vaddpd ymm6,ymm14,ymm6
  87efab:	c5 ed 58 d3          	vaddpd ymm2,ymm2,ymm3
  87efaf:	c4 e3 fd 01 de e6    	vpermpd ymm3,ymm6,0xe6
  87efb5:	c4 63 fd 01 c2 e6    	vpermpd ymm8,ymm2,0xe6
  87efbb:	c5 bd c6 db 0c       	vshufpd ymm3,ymm8,ymm3,0xc
  87efc0:	c4 e3 fd 01 f6 60    	vpermpd ymm6,ymm6,0x60
  87efc6:	c4 e3 fd 01 d2 d4    	vpermpd ymm2,ymm2,0xd4
  87efcc:	c4 e3 6d 0d d6 0a    	vblendpd ymm2,ymm2,ymm6,0xa
  87efd2:	c5 fd 11 14 16       	vmovupd YMMWORD PTR [rsi+rdx*1],ymm2
  87efd7:	c5 fd 11 5c 16 20    	vmovupd YMMWORD PTR [rsi+rdx*1+0x20],ymm3
  87efdd:	c4 e3 fd 01 d4 e6    	vpermpd ymm2,ymm4,0xe6
  87efe3:	c4 e3 fd 01 dd e6    	vpermpd ymm3,ymm5,0xe6
  87efe9:	c5 e5 c6 d2 0c       	vshufpd ymm2,ymm3,ymm2,0xc
  87efee:	c4 e3 fd 01 dc 60    	vpermpd ymm3,ymm4,0x60
  87eff4:	c4 e3 fd 01 e5 d4    	vpermpd ymm4,ymm5,0xd4
  87effa:	c4 e3 5d 0d db 0a    	vblendpd ymm3,ymm4,ymm3,0xa
  87f000:	c5 fd 11 5c 16 40    	vmovupd YMMWORD PTR [rsi+rdx*1+0x40],ymm3
  87f006:	c5 fd 11 54 16 60    	vmovupd YMMWORD PTR [rsi+rdx*1+0x60],ymm2
  87f00c:	c4 e3 fd 01 d7 e6    	vpermpd ymm2,ymm7,0xe6
  87f012:	c4 c3 fd 01 d9 e6    	vpermpd ymm3,ymm9,0xe6
  87f018:	c5 e5 c6 d2 0c       	vshufpd ymm2,ymm3,ymm2,0xc
  87f01d:	c4 e3 fd 01 df 60    	vpermpd ymm3,ymm7,0x60
  87f023:	c4 c3 fd 01 e1 d4    	vpermpd ymm4,ymm9,0xd4
  87f029:	c4 e3 5d 0d db 0a    	vblendpd ymm3,ymm4,ymm3,0xa
  87f02f:	c5 fd 11 9c 16 80 00 	vmovupd YMMWORD PTR [rsi+rdx*1+0x80],ymm3
  87f036:	00 00 
  87f038:	c5 fd 11 94 16 a0 00 	vmovupd YMMWORD PTR [rsi+rdx*1+0xa0],ymm2
  87f03f:	00 00 
  87f041:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  87f048:	48 39 d0             	cmp    rax,rdx
  87f04b:	0f 85 cf fd ff ff    	jne    87ee20 <<fastfft::isa::x86::F64x4 as fastfft::engine::small::SmallVector>::rectangle+0x20>
  87f051:	c5 f8 77             	vzeroupper
  87f054:	c3                   	ret
