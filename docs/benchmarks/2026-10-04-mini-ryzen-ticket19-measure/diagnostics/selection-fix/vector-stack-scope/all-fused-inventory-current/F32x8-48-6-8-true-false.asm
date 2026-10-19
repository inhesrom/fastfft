
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000070cc40 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  70cc40:	55                   	push   rbp
  70cc41:	48 89 e5             	mov    rbp,rsp
  70cc44:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  70cc48:	48 81 ec c0 02 00 00 	sub    rsp,0x2c0
  70cc4f:	c6 84 24 40 02 00 00 	mov    BYTE PTR [rsp+0x240],0x0
  70cc56:	00 
  70cc57:	48 8d 84 24 40 02 00 	lea    rax,[rsp+0x240]
  70cc5e:	00 
  70cc5f:	48 89 84 24 98 00 00 	mov    QWORD PTR [rsp+0x98],rax
  70cc66:	00 
  70cc67:	48 8d 84 24 98 00 00 	lea    rax,[rsp+0x98]
  70cc6e:	00 
  70cc6f:	c5 fc 10 1f          	vmovups ymm3,YMMWORD PTR [rdi]
  70cc73:	c5 fc 10 67 20       	vmovups ymm4,YMMWORD PTR [rdi+0x20]
  70cc78:	c5 fc 10 4f 40       	vmovups ymm1,YMMWORD PTR [rdi+0x40]
  70cc7d:	c5 fc 10 47 60       	vmovups ymm0,YMMWORD PTR [rdi+0x60]
  70cc82:	c5 fc 10 b7 80 00 00 	vmovups ymm6,YMMWORD PTR [rdi+0x80]
  70cc89:	00 
  70cc8a:	c5 7c 10 87 a0 00 00 	vmovups ymm8,YMMWORD PTR [rdi+0xa0]
  70cc91:	00 
  70cc92:	c5 7c 10 af c0 00 00 	vmovups ymm13,YMMWORD PTR [rdi+0xc0]
  70cc99:	00 
  70cc9a:	c5 7c 10 b7 e0 00 00 	vmovups ymm14,YMMWORD PTR [rdi+0xe0]
  70cca1:	00 
  70cca2:	c5 7c 10 97 00 01 00 	vmovups ymm10,YMMWORD PTR [rdi+0x100]
  70cca9:	00 
  70ccaa:	c5 7c 10 bf 20 01 00 	vmovups ymm15,YMMWORD PTR [rdi+0x120]
  70ccb1:	00 
  70ccb2:	c5 7c 10 a7 40 01 00 	vmovups ymm12,YMMWORD PTR [rdi+0x140]
  70ccb9:	00 
  70ccba:	c5 7c 10 9f 60 01 00 	vmovups ymm11,YMMWORD PTR [rdi+0x160]
  70ccc1:	00 
  70ccc2:	c5 e4 c6 fc dd       	vshufps ymm7,ymm3,ymm4,0xdd
  70ccc7:	c4 e3 fd 01 d7 d8    	vpermpd ymm2,ymm7,0xd8
  70cccd:	c5 fc 29 54 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm2
  70ccd3:	c4 41 4c c6 c8 dd    	vshufps ymm9,ymm6,ymm8,0xdd
  70ccd9:	c4 c3 fd 01 f9 d8    	vpermpd ymm7,ymm9,0xd8
  70ccdf:	c5 fc 29 bc 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm7
  70cce6:	00 00 
  70cce8:	c4 41 2c c6 cf dd    	vshufps ymm9,ymm10,ymm15,0xdd
  70ccee:	c4 c3 fd 01 e9 d8    	vpermpd ymm5,ymm9,0xd8
  70ccf4:	c5 fc 29 ac 24 e0 00 	vmovaps YMMWORD PTR [rsp+0xe0],ymm5
  70ccfb:	00 00 
  70ccfd:	c4 41 14 c6 ce dd    	vshufps ymm9,ymm13,ymm14,0xdd
  70cd03:	c4 c3 fd 01 d1 d8    	vpermpd ymm2,ymm9,0xd8
  70cd09:	c5 fc 29 54 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm2
  70cd0f:	c5 64 c6 cc 88       	vshufps ymm9,ymm3,ymm4,0x88
  70cd14:	c4 c1 1c c6 db dd    	vshufps ymm3,ymm12,ymm11,0xdd
  70cd1a:	c4 e3 fd 01 d3 d8    	vpermpd ymm2,ymm3,0xd8
  70cd20:	c5 fc 29 54 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm2
  70cd26:	c4 c1 4c c6 f0 88    	vshufps ymm6,ymm6,ymm8,0x88
  70cd2c:	c5 f4 c6 e0 dd       	vshufps ymm4,ymm1,ymm0,0xdd
  70cd31:	c4 63 fd 01 c4 d8    	vpermpd ymm8,ymm4,0xd8
  70cd37:	c5 7c 29 04 24       	vmovaps YMMWORD PTR [rsp],ymm8
  70cd3c:	c4 c3 fd 01 d9 d8    	vpermpd ymm3,ymm9,0xd8
  70cd42:	c4 63 fd 01 ce d8    	vpermpd ymm9,ymm6,0xd8
  70cd48:	c4 c1 2c c6 f7 88    	vshufps ymm6,ymm10,ymm15,0x88
  70cd4e:	c4 63 fd 01 d6 d8    	vpermpd ymm10,ymm6,0xd8
  70cd54:	c4 41 14 c6 ee 88    	vshufps ymm13,ymm13,ymm14,0x88
  70cd5a:	c4 41 1c c6 fb 88    	vshufps ymm15,ymm12,ymm11,0x88
  70cd60:	c5 74 c6 f0 88       	vshufps ymm14,ymm1,ymm0,0x88
  70cd65:	c5 c4 58 ed          	vaddps ymm5,ymm7,ymm5
  70cd69:	c5 fc 28 44 24 20    	vmovaps ymm0,YMMWORD PTR [rsp+0x20]
  70cd6f:	c5 d4 58 e0          	vaddps ymm4,ymm5,ymm0
  70cd73:	c5 fc 29 a4 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm4
  70cd7a:	00 00 
  70cd7c:	c5 bc 58 f2          	vaddps ymm6,ymm8,ymm2
  70cd80:	c4 62 7d 18 05 d7 86 	vbroadcastss ymm8,DWORD PTR [rip+0xffffffffff9686d7]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  70cd87:	96 ff 
  70cd89:	c4 e2 3d ac e8       	vfnmadd213ps ymm5,ymm8,ymm0
  70cd8e:	c5 fc 28 44 24 40    	vmovaps ymm0,YMMWORD PTR [rsp+0x40]
  70cd94:	c5 cc 58 d0          	vaddps ymm2,ymm6,ymm0
  70cd98:	c4 e2 3d ac f0       	vfnmadd213ps ymm6,ymm8,ymm0
  70cd9d:	c4 41 34 58 e2       	vaddps ymm12,ymm9,ymm10
  70cda2:	c5 1c 58 db          	vaddps ymm11,ymm12,ymm3
  70cda6:	c4 62 3d ac e3       	vfnmadd213ps ymm12,ymm8,ymm3
  70cdab:	c4 c3 fd 01 cd d8    	vpermpd ymm1,ymm13,0xd8
  70cdb1:	c4 43 fd 01 ef d8    	vpermpd ymm13,ymm15,0xd8
  70cdb7:	c4 c3 fd 01 c6 d8    	vpermpd ymm0,ymm14,0xd8
  70cdbd:	c5 14 58 f0          	vaddps ymm14,ymm13,ymm0
  70cdc1:	c4 62 0d ac c1       	vfnmadd213ps ymm8,ymm14,ymm1
  70cdc6:	c5 8c 58 f9          	vaddps ymm7,ymm14,ymm1
  70cdca:	c4 41 34 5c ca       	vsubps ymm9,ymm9,ymm10
  70cdcf:	c5 5c 58 fa          	vaddps ymm15,ymm4,ymm2
  70cdd3:	c5 7c 29 7c 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm15
  70cdd9:	c5 94 5c c0          	vsubps ymm0,ymm13,ymm0
  70cddd:	c4 62 7d 18 15 ee 84 	vbroadcastss ymm10,DWORD PTR [rip+0xffffffffff9684ee]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  70cde4:	96 ff 
  70cde6:	c5 fc 28 8c 24 c0 00 	vmovaps ymm1,YMMWORD PTR [rsp+0xc0]
  70cded:	00 00 
  70cdef:	c5 74 5c ac 24 e0 00 	vsubps ymm13,ymm1,YMMWORD PTR [rsp+0xe0]
  70cdf6:	00 00 
  70cdf8:	c5 a4 58 cf          	vaddps ymm1,ymm11,ymm7
  70cdfc:	c5 fc 29 8c 24 00 01 	vmovaps YMMWORD PTR [rsp+0x100],ymm1
  70ce03:	00 00 
  70ce05:	c4 41 34 59 ca       	vmulps ymm9,ymm9,ymm10
  70ce0a:	c5 fc 28 4c 24 60    	vmovaps ymm1,YMMWORD PTR [rsp+0x60]
  70ce10:	c5 f4 5c 1c 24       	vsubps ymm3,ymm1,YMMWORD PTR [rsp]
  70ce15:	c5 34 58 f5          	vaddps ymm14,ymm9,ymm5
  70ce19:	c5 ac 59 c0          	vmulps ymm0,ymm10,ymm0
  70ce1d:	c4 c1 14 59 e2       	vmulps ymm4,ymm13,ymm10
  70ce22:	c5 ac 59 db          	vmulps ymm3,ymm10,ymm3
  70ce26:	c5 4c 58 d0          	vaddps ymm10,ymm6,ymm0
  70ce2a:	c4 c1 54 5c e9       	vsubps ymm5,ymm5,ymm9
  70ce2f:	c4 c1 0c 5c ca       	vsubps ymm1,ymm14,ymm10
  70ce34:	c5 cc 5c c0          	vsubps ymm0,ymm6,ymm0
  70ce38:	c5 9c 5c f4          	vsubps ymm6,ymm12,ymm4
  70ce3c:	c5 1c 58 cc          	vaddps ymm9,ymm12,ymm4
  70ce40:	c5 3c 5c e3          	vsubps ymm12,ymm8,ymm3
  70ce44:	c5 bc 58 db          	vaddps ymm3,ymm8,ymm3
  70ce48:	c4 c1 4c 5c e4       	vsubps ymm4,ymm6,ymm12
  70ce4d:	c5 fc 29 24 24       	vmovaps YMMWORD PTR [rsp],ymm4
  70ce52:	c5 fc 28 a4 24 a0 00 	vmovaps ymm4,YMMWORD PTR [rsp+0xa0]
  70ce59:	00 00 
  70ce5b:	c5 5c 5c c2          	vsubps ymm8,ymm4,ymm2
  70ce5f:	c5 d4 58 d0          	vaddps ymm2,ymm5,ymm0
  70ce63:	c5 fc 29 94 24 60 01 	vmovaps YMMWORD PTR [rsp+0x160],ymm2
  70ce6a:	00 00 
  70ce6c:	c5 24 5c ef          	vsubps ymm13,ymm11,ymm7
  70ce70:	c5 b4 58 fb          	vaddps ymm7,ymm9,ymm3
  70ce74:	c4 41 0c 58 f2       	vaddps ymm14,ymm14,ymm10
  70ce79:	c5 9c 58 f6          	vaddps ymm6,ymm12,ymm6
  70ce7d:	c5 d4 5c e8          	vsubps ymm5,ymm5,ymm0
  70ce81:	c5 34 5c d3          	vsubps ymm10,ymm9,ymm3
  70ce85:	c4 c3 05 06 c6 31    	vperm2f128 ymm0,ymm15,ymm14,0x31
  70ce8b:	c5 fc 29 44 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm0
  70ce91:	c4 e3 75 06 dd 31    	vperm2f128 ymm3,ymm1,ymm5,0x31
  70ce97:	c5 fc 29 9c 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm3
  70ce9e:	00 00 
  70cea0:	c5 7c 28 e1          	vmovaps ymm12,ymm1
  70cea4:	c4 e3 7d 19 d1 01    	vextractf128 xmm1,ymm2,0x1
  70ceaa:	c5 fc 29 8c 24 a0 01 	vmovaps YMMWORD PTR [rsp+0x1a0],ymm1
  70ceb1:	00 00 
  70ceb3:	c4 63 7d 19 c2 01    	vextractf128 xmm2,ymm8,0x1
  70ceb9:	c5 fc 29 94 24 80 01 	vmovaps YMMWORD PTR [rsp+0x180],ymm2
  70cec0:	00 00 
  70cec2:	c4 41 7c 28 c8       	vmovaps ymm9,ymm8
  70cec7:	c5 fc 14 c3          	vunpcklps ymm0,ymm0,ymm3
  70cecb:	c5 fc 29 84 24 e0 00 	vmovaps YMMWORD PTR [rsp+0xe0],ymm0
  70ced2:	00 00 
  70ced4:	c5 f4 14 da          	vunpcklps ymm3,ymm1,ymm2
  70ced8:	c5 fc 29 5c 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm3
  70cede:	c5 fd 14 e3          	vunpcklpd ymm4,ymm0,ymm3
  70cee2:	c5 7c 28 9c 24 00 01 	vmovaps ymm11,YMMWORD PTR [rsp+0x100]
  70cee9:	00 00 
  70ceeb:	c4 e3 25 06 c6 31    	vperm2f128 ymm0,ymm11,ymm6,0x31
  70cef1:	c5 fc 29 84 24 40 01 	vmovaps YMMWORD PTR [rsp+0x140],ymm0
  70cef8:	00 00 
  70cefa:	c5 7c 28 fe          	vmovaps ymm15,ymm6
  70cefe:	c4 63 2d 06 04 24 13 	vperm2f128 ymm8,ymm10,YMMWORD PTR [rsp],0x13
  70cf05:	c5 7c 29 84 24 20 01 	vmovaps YMMWORD PTR [rsp+0x120],ymm8
  70cf0c:	00 00 
  70cf0e:	c4 e3 7d 19 fe 01    	vextractf128 xmm6,ymm7,0x1
  70cf14:	c5 fc 28 d7          	vmovaps ymm2,ymm7
  70cf18:	c5 7c 29 e9          	vmovaps ymm1,ymm13
  70cf1c:	c4 63 7d 19 eb 01    	vextractf128 xmm3,ymm13,0x1
  70cf22:	c4 c1 7c 14 f8       	vunpcklps ymm7,ymm0,ymm8
  70cf27:	c5 fc 29 bc 24 00 02 	vmovaps YMMWORD PTR [rsp+0x200],ymm7
  70cf2e:	00 00 
  70cf30:	c5 cc 14 c3          	vunpcklps ymm0,ymm6,ymm3
  70cf34:	c5 fc 29 84 24 20 02 	vmovaps YMMWORD PTR [rsp+0x220],ymm0
  70cf3b:	00 00 
  70cf3d:	c5 c5 14 c0          	vunpcklpd ymm0,ymm7,ymm0
  70cf41:	c5 7c 10 82 00 01 00 	vmovups ymm8,YMMWORD PTR [rdx+0x100]
  70cf48:	00 
  70cf49:	c5 fc 10 ba 20 01 00 	vmovups ymm7,YMMWORD PTR [rdx+0x120]
  70cf50:	00 
  70cf51:	c5 3c 59 ec          	vmulps ymm13,ymm8,ymm4
  70cf55:	c4 62 7d bc ef       	vfnmadd231ps ymm13,ymm0,ymm7
  70cf5a:	c5 7c 29 ac 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm13
  70cf61:	00 00 
  70cf63:	c5 bc 59 c0          	vmulps ymm0,ymm8,ymm0
  70cf67:	c4 e2 5d b8 c7       	vfmadd231ps ymm0,ymm4,ymm7
  70cf6c:	c5 fc 29 84 24 e0 01 	vmovaps YMMWORD PTR [rsp+0x1e0],ymm0
  70cf73:	00 00 
  70cf75:	c5 fc 28 44 24 20    	vmovaps ymm0,YMMWORD PTR [rsp+0x20]
  70cf7b:	c4 43 7d 18 f6 01    	vinsertf128 ymm14,ymm0,xmm14,0x1
  70cf81:	c4 63 1d 18 e5 01    	vinsertf128 ymm12,ymm12,xmm5,0x1
  70cf87:	c4 43 25 18 ef 01    	vinsertf128 ymm13,ymm11,xmm15,0x1
  70cf8d:	c5 fc 28 04 24       	vmovaps ymm0,YMMWORD PTR [rsp]
  70cf92:	c4 43 7d 18 d2 01    	vinsertf128 ymm10,ymm0,xmm10,0x1
  70cf98:	c5 78 28 9c 24 60 01 	vmovaps xmm11,XMMWORD PTR [rsp+0x160]
  70cf9f:	00 00 
  70cfa1:	c5 78 29 cc          	vmovaps xmm4,xmm9
  70cfa5:	c5 78 28 c2          	vmovaps xmm8,xmm2
  70cfa9:	c5 f8 28 f9          	vmovaps xmm7,xmm1
  70cfad:	c4 c1 0c 15 c4       	vunpckhps ymm0,ymm14,ymm12
  70cfb2:	c5 fc 29 84 24 60 01 	vmovaps YMMWORD PTR [rsp+0x160],ymm0
  70cfb9:	00 00 
  70cfbb:	c5 a4 15 cc          	vunpckhps ymm1,ymm11,ymm4
  70cfbf:	c5 fc 29 4c 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm1
  70cfc5:	c5 fd 14 d1          	vunpcklpd ymm2,ymm0,ymm1
  70cfc9:	c4 c1 14 15 c2       	vunpckhps ymm0,ymm13,ymm10
  70cfce:	c5 fc 29 84 24 00 01 	vmovaps YMMWORD PTR [rsp+0x100],ymm0
  70cfd5:	00 00 
  70cfd7:	c5 3c 15 ff          	vunpckhps ymm15,ymm8,ymm7
  70cfdb:	c4 c1 7d 14 ef       	vunpcklpd ymm5,ymm0,ymm15
  70cfe0:	c5 fc 10 82 80 00 00 	vmovups ymm0,YMMWORD PTR [rdx+0x80]
  70cfe7:	00 
  70cfe8:	c5 fc 10 8a a0 00 00 	vmovups ymm1,YMMWORD PTR [rdx+0xa0]
  70cfef:	00 
  70cff0:	c5 7c 59 ca          	vmulps ymm9,ymm0,ymm2
  70cff4:	c4 62 55 bc c9       	vfnmadd231ps ymm9,ymm5,ymm1
  70cff9:	c5 7c 29 0c 24       	vmovaps YMMWORD PTR [rsp],ymm9
  70cffe:	c5 7c 59 cd          	vmulps ymm9,ymm0,ymm5
  70d002:	c4 62 6d b8 c9       	vfmadd231ps ymm9,ymm2,ymm1
  70d007:	c5 fc 28 44 24 40    	vmovaps ymm0,YMMWORD PTR [rsp+0x40]
  70d00d:	c5 fc 15 8c 24 a0 00 	vunpckhps ymm1,ymm0,YMMWORD PTR [rsp+0xa0]
  70d014:	00 00 
  70d016:	c5 fc 29 8c 24 c0 01 	vmovaps YMMWORD PTR [rsp+0x1c0],ymm1
  70d01d:	00 00 
  70d01f:	c5 fc 28 84 24 a0 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x1a0]
  70d026:	00 00 
  70d028:	c5 fc 15 94 24 80 01 	vunpckhps ymm2,ymm0,YMMWORD PTR [rsp+0x180]
  70d02f:	00 00 
  70d031:	c5 fc 29 94 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm2
  70d038:	00 00 
  70d03a:	c5 fc 28 84 24 40 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x140]
  70d041:	00 00 
  70d043:	c5 fc 15 84 24 20 01 	vunpckhps ymm0,ymm0,YMMWORD PTR [rsp+0x120]
  70d04a:	00 00 
  70d04c:	c5 fc 29 84 24 80 01 	vmovaps YMMWORD PTR [rsp+0x180],ymm0
  70d053:	00 00 
  70d055:	c5 cc 15 eb          	vunpckhps ymm5,ymm6,ymm3
  70d059:	c5 fc 29 ac 24 a0 01 	vmovaps YMMWORD PTR [rsp+0x1a0],ymm5
  70d060:	00 00 
  70d062:	c5 f5 14 da          	vunpcklpd ymm3,ymm1,ymm2
  70d066:	c5 fd 14 cd          	vunpcklpd ymm1,ymm0,ymm5
  70d06a:	c5 fc 10 92 80 01 00 	vmovups ymm2,YMMWORD PTR [rdx+0x180]
  70d071:	00 
  70d072:	c5 fc 10 82 a0 01 00 	vmovups ymm0,YMMWORD PTR [rdx+0x1a0]
  70d079:	00 
  70d07a:	c5 ec 59 eb          	vmulps ymm5,ymm2,ymm3
  70d07e:	c4 e2 75 bc e8       	vfnmadd231ps ymm5,ymm1,ymm0
  70d083:	c5 fc 29 6c 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm5
  70d089:	c5 ec 59 f1          	vmulps ymm6,ymm2,ymm1
  70d08d:	c4 e2 65 b8 f0       	vfmadd231ps ymm6,ymm3,ymm0
  70d092:	c4 c1 0c 14 cc       	vunpcklps ymm1,ymm14,ymm12
  70d097:	c5 fc 29 8c 24 20 01 	vmovaps YMMWORD PTR [rsp+0x120],ymm1
  70d09e:	00 00 
  70d0a0:	c5 a4 14 c4          	vunpcklps ymm0,ymm11,ymm4
  70d0a4:	c5 fc 29 84 24 40 01 	vmovaps YMMWORD PTR [rsp+0x140],ymm0
  70d0ab:	00 00 
  70d0ad:	c4 41 14 14 f2       	vunpcklps ymm14,ymm13,ymm10
  70d0b2:	c5 3c 14 df          	vunpcklps ymm11,ymm8,ymm7
  70d0b6:	c5 f5 15 c0          	vunpckhpd ymm0,ymm1,ymm0
  70d0ba:	c4 c1 0d 15 cb       	vunpckhpd ymm1,ymm14,ymm11
  70d0bf:	c5 fc 10 52 40       	vmovups ymm2,YMMWORD PTR [rdx+0x40]
  70d0c4:	c5 fc 10 7a 60       	vmovups ymm7,YMMWORD PTR [rdx+0x60]
  70d0c9:	c5 ec 59 e8          	vmulps ymm5,ymm2,ymm0
  70d0cd:	c4 e2 75 bc ef       	vfnmadd231ps ymm5,ymm1,ymm7
  70d0d2:	c5 ec 59 e1          	vmulps ymm4,ymm2,ymm1
  70d0d6:	c4 e2 7d b8 e7       	vfmadd231ps ymm4,ymm0,ymm7
  70d0db:	c5 fc 28 84 24 e0 00 	vmovaps ymm0,YMMWORD PTR [rsp+0xe0]
  70d0e2:	00 00 
  70d0e4:	c5 fd 15 7c 24 60    	vunpckhpd ymm7,ymm0,YMMWORD PTR [rsp+0x60]
  70d0ea:	c5 fc 28 84 24 00 02 	vmovaps ymm0,YMMWORD PTR [rsp+0x200]
  70d0f1:	00 00 
  70d0f3:	c5 fd 15 8c 24 20 02 	vunpckhpd ymm1,ymm0,YMMWORD PTR [rsp+0x220]
  70d0fa:	00 00 
  70d0fc:	c5 7c 10 82 40 01 00 	vmovups ymm8,YMMWORD PTR [rdx+0x140]
  70d103:	00 
  70d104:	c5 7c 10 92 60 01 00 	vmovups ymm10,YMMWORD PTR [rdx+0x160]
  70d10b:	00 
  70d10c:	c5 bc 59 d7          	vmulps ymm2,ymm8,ymm7
  70d110:	c4 c2 75 bc d2       	vfnmadd231ps ymm2,ymm1,ymm10
  70d115:	c5 bc 59 d9          	vmulps ymm3,ymm8,ymm1
  70d119:	c4 c2 45 b8 da       	vfmadd231ps ymm3,ymm7,ymm10
  70d11e:	c5 fc 28 84 24 60 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x160]
  70d125:	00 00 
  70d127:	c5 fd 15 7c 24 20    	vunpckhpd ymm7,ymm0,YMMWORD PTR [rsp+0x20]
  70d12d:	c5 fc 28 84 24 00 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x100]
  70d134:	00 00 
  70d136:	c4 41 7d 15 c7       	vunpckhpd ymm8,ymm0,ymm15
  70d13b:	c5 7c 10 92 c0 00 00 	vmovups ymm10,YMMWORD PTR [rdx+0xc0]
  70d142:	00 
  70d143:	c5 7c 10 aa e0 00 00 	vmovups ymm13,YMMWORD PTR [rdx+0xe0]
  70d14a:	00 
  70d14b:	c5 2c 59 ff          	vmulps ymm15,ymm10,ymm7
  70d14f:	c4 42 3d bc fd       	vfnmadd231ps ymm15,ymm8,ymm13
  70d154:	c4 41 2c 59 c0       	vmulps ymm8,ymm10,ymm8
  70d159:	c4 42 45 b8 c5       	vfmadd231ps ymm8,ymm7,ymm13
  70d15e:	c5 fc 28 84 24 c0 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x1c0]
  70d165:	00 00 
  70d167:	c5 fd 15 bc 24 a0 00 	vunpckhpd ymm7,ymm0,YMMWORD PTR [rsp+0xa0]
  70d16e:	00 00 
  70d170:	c5 fc 28 84 24 80 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x180]
  70d177:	00 00 
  70d179:	c5 7d 15 94 24 a0 01 	vunpckhpd ymm10,ymm0,YMMWORD PTR [rsp+0x1a0]
  70d180:	00 00 
  70d182:	c5 7c 10 aa c0 01 00 	vmovups ymm13,YMMWORD PTR [rdx+0x1c0]
  70d189:	00 
  70d18a:	c5 fc 10 8a e0 01 00 	vmovups ymm1,YMMWORD PTR [rdx+0x1e0]
  70d191:	00 
  70d192:	c5 94 59 c7          	vmulps ymm0,ymm13,ymm7
  70d196:	c4 e2 2d bc c1       	vfnmadd231ps ymm0,ymm10,ymm1
  70d19b:	c4 41 14 59 e2       	vmulps ymm12,ymm13,ymm10
  70d1a0:	c4 62 45 b8 e1       	vfmadd231ps ymm12,ymm7,ymm1
  70d1a5:	c5 fc 28 8c 24 20 01 	vmovaps ymm1,YMMWORD PTR [rsp+0x120]
  70d1ac:	00 00 
  70d1ae:	c5 f5 14 8c 24 40 01 	vunpcklpd ymm1,ymm1,YMMWORD PTR [rsp+0x140]
  70d1b5:	00 00 
  70d1b7:	c4 41 0d 14 eb       	vunpcklpd ymm13,ymm14,ymm11
  70d1bc:	c5 fc 28 bc 24 c0 00 	vmovaps ymm7,YMMWORD PTR [rsp+0xc0]
  70d1c3:	00 00 
  70d1c5:	c5 44 58 d1          	vaddps ymm10,ymm7,ymm1
  70d1c9:	c5 f4 5c cf          	vsubps ymm1,ymm1,ymm7
  70d1cd:	c5 fc 29 4c 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm1
  70d1d3:	c5 34 58 de          	vaddps ymm11,ymm9,ymm6
  70d1d7:	c5 b4 5c ce          	vsubps ymm1,ymm9,ymm6
  70d1db:	c5 fc 29 8c 24 e0 00 	vmovaps YMMWORD PTR [rsp+0xe0],ymm1
  70d1e2:	00 00 
  70d1e4:	c5 d4 58 ca          	vaddps ymm1,ymm5,ymm2
  70d1e8:	c5 fc 29 8c 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm1
  70d1ef:	00 00 
  70d1f1:	c5 d4 5c ea          	vsubps ymm5,ymm5,ymm2
  70d1f5:	c5 dc 58 fb          	vaddps ymm7,ymm4,ymm3
  70d1f9:	c5 dc 5c db          	vsubps ymm3,ymm4,ymm3
  70d1fd:	c4 c1 3c 58 f4       	vaddps ymm6,ymm8,ymm12
  70d202:	c4 41 3c 5c c4       	vsubps ymm8,ymm8,ymm12
  70d207:	c5 04 58 c8          	vaddps ymm9,ymm15,ymm0
  70d20b:	c5 84 5c c0          	vsubps ymm0,ymm15,ymm0
  70d20f:	c5 fc 28 8c 24 e0 01 	vmovaps ymm1,YMMWORD PTR [rsp+0x1e0]
  70d216:	00 00 
  70d218:	c5 14 58 e1          	vaddps ymm12,ymm13,ymm1
  70d21c:	c5 14 5c e9          	vsubps ymm13,ymm13,ymm1
  70d220:	c5 fc 28 0c 24       	vmovaps ymm1,YMMWORD PTR [rsp]
  70d225:	c5 fc 28 54 24 40    	vmovaps ymm2,YMMWORD PTR [rsp+0x40]
  70d22b:	c5 74 58 f2          	vaddps ymm14,ymm1,ymm2
  70d22f:	c5 6c 5c f9          	vsubps ymm15,ymm2,ymm1
  70d233:	c5 d4 58 cb          	vaddps ymm1,ymm5,ymm3
  70d237:	c5 e4 5c dd          	vsubps ymm3,ymm3,ymm5
  70d23b:	c5 bc 5c e8          	vsubps ymm5,ymm8,ymm0
  70d23f:	c5 bc 58 c0          	vaddps ymm0,ymm8,ymm0
  70d243:	c4 62 7d 18 05 50 81 	vbroadcastss ymm8,DWORD PTR [rip+0xffffffffff968150]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  70d24a:	96 ff 
  70d24c:	c5 bc 59 e1          	vmulps ymm4,ymm8,ymm1
  70d250:	c5 bc 59 d5          	vmulps ymm2,ymm8,ymm5
  70d254:	c5 bc 59 db          	vmulps ymm3,ymm8,ymm3
  70d258:	c5 bc 59 c8          	vmulps ymm1,ymm8,ymm0
  70d25c:	c4 c1 2c 58 c6       	vaddps ymm0,ymm10,ymm14
  70d261:	c5 fc 29 44 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm0
  70d267:	c4 41 2c 5c f6       	vsubps ymm14,ymm10,ymm14
  70d26c:	c5 c4 58 c6          	vaddps ymm0,ymm7,ymm6
  70d270:	c5 fc 29 44 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm0
  70d276:	c5 c4 5c fe          	vsubps ymm7,ymm7,ymm6
  70d27a:	c4 41 24 58 c4       	vaddps ymm8,ymm11,ymm12
  70d27f:	c4 41 1c 5c e3       	vsubps ymm12,ymm12,ymm11
  70d284:	c5 fc 28 84 24 c0 00 	vmovaps ymm0,YMMWORD PTR [rsp+0xc0]
  70d28b:	00 00 
  70d28d:	c5 34 58 d8          	vaddps ymm11,ymm9,ymm0
  70d291:	c5 b4 5c f0          	vsubps ymm6,ymm9,ymm0
  70d295:	c5 fc 28 44 24 60    	vmovaps ymm0,YMMWORD PTR [rsp+0x60]
  70d29b:	c5 fc 28 ac 24 e0 00 	vmovaps ymm5,YMMWORD PTR [rsp+0xe0]
  70d2a2:	00 00 
  70d2a4:	c5 7c 58 cd          	vaddps ymm9,ymm0,ymm5
  70d2a8:	c5 7c 5c d5          	vsubps ymm10,ymm0,ymm5
  70d2ac:	c5 e4 5c c1          	vsubps ymm0,ymm3,ymm1
  70d2b0:	c5 e4 58 e9          	vaddps ymm5,ymm3,ymm1
  70d2b4:	c4 c1 04 58 dd       	vaddps ymm3,ymm15,ymm13
  70d2b9:	c4 41 14 5c ff       	vsubps ymm15,ymm13,ymm15
  70d2be:	c5 5c 58 ea          	vaddps ymm13,ymm4,ymm2
  70d2c2:	c5 ec 5c e4          	vsubps ymm4,ymm2,ymm4
  70d2c6:	c4 c1 34 58 cd       	vaddps ymm1,ymm9,ymm13
  70d2cb:	c4 41 34 5c ed       	vsubps ymm13,ymm9,ymm13
  70d2d0:	c5 64 58 c8          	vaddps ymm9,ymm3,ymm0
  70d2d4:	c5 e4 5c d8          	vsubps ymm3,ymm3,ymm0
  70d2d8:	c5 8c 58 d7          	vaddps ymm2,ymm14,ymm7
  70d2dc:	c5 8c 5c c7          	vsubps ymm0,ymm14,ymm7
  70d2e0:	c5 fc 29 44 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm0
  70d2e6:	c5 9c 58 fe          	vaddps ymm7,ymm12,ymm6
  70d2ea:	c5 1c 5c f6          	vsubps ymm14,ymm12,ymm6
  70d2ee:	c5 2c 58 e5          	vaddps ymm12,ymm10,ymm5
  70d2f2:	c5 ac 5c c5          	vsubps ymm0,ymm10,ymm5
  70d2f6:	c5 fc 29 04 24       	vmovaps YMMWORD PTR [rsp],ymm0
  70d2fb:	c5 04 58 d4          	vaddps ymm10,ymm15,ymm4
  70d2ff:	c5 84 5c e4          	vsubps ymm4,ymm15,ymm4
  70d303:	c5 fc 28 44 24 20    	vmovaps ymm0,YMMWORD PTR [rsp+0x20]
  70d309:	c5 bc 5c f0          	vsubps ymm6,ymm8,ymm0
  70d30d:	c5 3c 58 f8          	vaddps ymm15,ymm8,ymm0
  70d311:	c5 fc 28 44 24 40    	vmovaps ymm0,YMMWORD PTR [rsp+0x40]
  70d317:	c4 41 7c 5c c3       	vsubps ymm8,ymm0,ymm11
  70d31c:	c5 24 58 d8          	vaddps ymm11,ymm11,ymm0
  70d320:	c4 c1 04 14 eb       	vunpcklps ymm5,ymm15,ymm11
  70d325:	c4 c1 00 14 c3       	vunpcklps xmm0,xmm15,xmm11
  70d32a:	c4 41 00 15 db       	vunpckhps xmm11,xmm15,xmm11
  70d32f:	c5 78 11 5e 10       	vmovups XMMWORD PTR [rsi+0x10],xmm11
  70d334:	c5 f8 11 06          	vmovups XMMWORD PTR [rsi],xmm0
  70d338:	c4 e3 7d 19 6e 20 01 	vextractf128 XMMWORD PTR [rsi+0x20],ymm5,0x1
  70d33f:	c5 b4 14 c1          	vunpcklps ymm0,ymm9,ymm1
  70d343:	c5 b0 14 e9          	vunpcklps xmm5,xmm9,xmm1
  70d347:	c5 b0 15 c9          	vunpckhps xmm1,xmm9,xmm1
  70d34b:	c5 f8 11 4e 40       	vmovups XMMWORD PTR [rsi+0x40],xmm1
  70d350:	c5 f8 11 6e 30       	vmovups XMMWORD PTR [rsi+0x30],xmm5
  70d355:	c4 e3 7d 19 46 50 01 	vextractf128 XMMWORD PTR [rsi+0x50],ymm0,0x1
  70d35c:	c5 c4 14 c2          	vunpcklps ymm0,ymm7,ymm2
  70d360:	c5 c0 14 ca          	vunpcklps xmm1,xmm7,xmm2
  70d364:	c5 c0 15 d2          	vunpckhps xmm2,xmm7,xmm2
  70d368:	c5 f8 11 56 70       	vmovups XMMWORD PTR [rsi+0x70],xmm2
  70d36d:	c5 f8 11 4e 60       	vmovups XMMWORD PTR [rsi+0x60],xmm1
  70d372:	c4 e3 7d 19 86 80 00 	vextractf128 XMMWORD PTR [rsi+0x80],ymm0,0x1
  70d379:	00 00 01 
  70d37c:	c4 c1 2c 14 c4       	vunpcklps ymm0,ymm10,ymm12
  70d381:	c4 c1 28 14 cc       	vunpcklps xmm1,xmm10,xmm12
  70d386:	c4 c1 28 15 d4       	vunpckhps xmm2,xmm10,xmm12
  70d38b:	c5 f8 11 96 a0 00 00 	vmovups XMMWORD PTR [rsi+0xa0],xmm2
  70d392:	00 
  70d393:	c5 f8 11 8e 90 00 00 	vmovups XMMWORD PTR [rsi+0x90],xmm1
  70d39a:	00 
  70d39b:	c4 e3 7d 19 86 b0 00 	vextractf128 XMMWORD PTR [rsi+0xb0],ymm0,0x1
  70d3a2:	00 00 01 
  70d3a5:	c4 c1 4c 14 c0       	vunpcklps ymm0,ymm6,ymm8
  70d3aa:	c4 c1 48 14 c8       	vunpcklps xmm1,xmm6,xmm8
  70d3af:	c4 c1 48 15 d0       	vunpckhps xmm2,xmm6,xmm8
  70d3b4:	c5 f8 11 96 d0 00 00 	vmovups XMMWORD PTR [rsi+0xd0],xmm2
  70d3bb:	00 
  70d3bc:	c5 f8 11 8e c0 00 00 	vmovups XMMWORD PTR [rsi+0xc0],xmm1
  70d3c3:	00 
  70d3c4:	c4 e3 7d 19 86 e0 00 	vextractf128 XMMWORD PTR [rsi+0xe0],ymm0,0x1
  70d3cb:	00 00 01 
  70d3ce:	c4 c1 64 14 c5       	vunpcklps ymm0,ymm3,ymm13
  70d3d3:	c4 c1 60 14 cd       	vunpcklps xmm1,xmm3,xmm13
  70d3d8:	c4 c1 60 15 d5       	vunpckhps xmm2,xmm3,xmm13
  70d3dd:	c5 f8 11 96 00 01 00 	vmovups XMMWORD PTR [rsi+0x100],xmm2
  70d3e4:	00 
  70d3e5:	c5 f8 11 8e f0 00 00 	vmovups XMMWORD PTR [rsi+0xf0],xmm1
  70d3ec:	00 
  70d3ed:	c4 e3 7d 19 86 10 01 	vextractf128 XMMWORD PTR [rsi+0x110],ymm0,0x1
  70d3f4:	00 00 01 
  70d3f7:	c5 fc 28 54 24 60    	vmovaps ymm2,YMMWORD PTR [rsp+0x60]
  70d3fd:	c5 8c 14 c2          	vunpcklps ymm0,ymm14,ymm2
  70d401:	c5 88 14 ca          	vunpcklps xmm1,xmm14,xmm2
  70d405:	c5 88 15 d2          	vunpckhps xmm2,xmm14,xmm2
  70d409:	c5 f8 11 96 30 01 00 	vmovups XMMWORD PTR [rsi+0x130],xmm2
  70d410:	00 
  70d411:	c5 f8 11 8e 20 01 00 	vmovups XMMWORD PTR [rsi+0x120],xmm1
  70d418:	00 
  70d419:	c4 e3 7d 19 86 40 01 	vextractf128 XMMWORD PTR [rsi+0x140],ymm0,0x1
  70d420:	00 00 01 
  70d423:	c5 fc 28 14 24       	vmovaps ymm2,YMMWORD PTR [rsp]
  70d428:	c5 dc 14 c2          	vunpcklps ymm0,ymm4,ymm2
  70d42c:	c5 d8 14 ca          	vunpcklps xmm1,xmm4,xmm2
  70d430:	c5 d8 15 d2          	vunpckhps xmm2,xmm4,xmm2
  70d434:	c5 f8 11 96 60 01 00 	vmovups XMMWORD PTR [rsi+0x160],xmm2
  70d43b:	00 
  70d43c:	c5 f8 11 8e 50 01 00 	vmovups XMMWORD PTR [rsi+0x150],xmm1
  70d443:	00 
  70d444:	c4 e3 7d 19 86 70 01 	vextractf128 XMMWORD PTR [rsi+0x170],ymm0,0x1
  70d44b:	00 00 01 
  70d44e:	48 89 ec             	mov    rsp,rbp
  70d451:	5d                   	pop    rbp
  70d452:	c5 f8 77             	vzeroupper
  70d455:	c3                   	ret
