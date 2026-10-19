
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000730d80 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  730d80:	48 81 ec 88 01 00 00 	sub    rsp,0x188
  730d87:	c5 fc 10 07          	vmovups ymm0,YMMWORD PTR [rdi]
  730d8b:	c5 fc 10 4f 20       	vmovups ymm1,YMMWORD PTR [rdi+0x20]
  730d90:	c5 fc 10 57 40       	vmovups ymm2,YMMWORD PTR [rdi+0x40]
  730d95:	c5 fc 10 5f 60       	vmovups ymm3,YMMWORD PTR [rdi+0x60]
  730d9a:	c5 fc 10 a7 80 00 00 	vmovups ymm4,YMMWORD PTR [rdi+0x80]
  730da1:	00 
  730da2:	c5 fc 10 af a0 00 00 	vmovups ymm5,YMMWORD PTR [rdi+0xa0]
  730da9:	00 
  730daa:	c5 fc c6 f1 dd       	vshufps ymm6,ymm0,ymm1,0xdd
  730daf:	c4 e3 fd 01 f6 d8    	vpermpd ymm6,ymm6,0xd8
  730db5:	c5 ec c6 fb dd       	vshufps ymm7,ymm2,ymm3,0xdd
  730dba:	c4 e3 fd 01 ff d8    	vpermpd ymm7,ymm7,0xd8
  730dc0:	c5 5c c6 c5 dd       	vshufps ymm8,ymm4,ymm5,0xdd
  730dc5:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  730dcb:	c5 fc c6 c1 88       	vshufps ymm0,ymm0,ymm1,0x88
  730dd0:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  730dd6:	c5 ec c6 cb 88       	vshufps ymm1,ymm2,ymm3,0x88
  730ddb:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  730de1:	c5 dc c6 d5 88       	vshufps ymm2,ymm4,ymm5,0x88
  730de6:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  730dec:	c5 bc 58 df          	vaddps ymm3,ymm8,ymm7
  730df0:	c5 e4 58 e6          	vaddps ymm4,ymm3,ymm6
  730df4:	c5 f4 58 ea          	vaddps ymm5,ymm1,ymm2
  730df8:	c5 54 58 e8          	vaddps ymm13,ymm5,ymm0
  730dfc:	c4 62 7d 18 0d 5b 46 	vbroadcastss ymm9,DWORD PTR [rip+0xffffffffff94465b]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  730e03:	94 ff 
  730e05:	c4 e2 35 ac de       	vfnmadd213ps ymm3,ymm9,ymm6
  730e0a:	c5 f4 5c ca          	vsubps ymm1,ymm1,ymm2
  730e0e:	c4 e2 7d 18 15 bd 44 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff9444bd]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  730e15:	94 ff 
  730e17:	c5 f4 59 ca          	vmulps ymm1,ymm1,ymm2
  730e1b:	c5 64 58 e1          	vaddps ymm12,ymm3,ymm1
  730e1f:	c4 62 55 ac c8       	vfnmadd213ps ymm9,ymm5,ymm0
  730e24:	c4 c1 44 5c c0       	vsubps ymm0,ymm7,ymm8
  730e29:	c5 fc 59 c2          	vmulps ymm0,ymm0,ymm2
  730e2d:	c5 34 5c d8          	vsubps ymm11,ymm9,ymm0
  730e31:	c5 64 5c d1          	vsubps ymm10,ymm3,ymm1
  730e35:	c5 34 58 c0          	vaddps ymm8,ymm9,ymm0
  730e39:	c4 e3 7d 19 e0 01    	vextractf128 xmm0,ymm4,0x1
  730e3f:	c5 fc 11 44 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm0
  730e45:	c4 63 7d 19 e2 01    	vextractf128 xmm2,ymm12,0x1
  730e4b:	c5 fc 11 54 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm2
  730e51:	c4 63 7d 19 d1 01    	vextractf128 xmm1,ymm10,0x1
  730e57:	c5 fc 11 0c 24       	vmovups YMMWORD PTR [rsp],ymm1
  730e5c:	c5 fd 14 c9          	vunpcklpd ymm1,ymm0,ymm1
  730e60:	c5 fc 11 4c 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm1
  730e66:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  730e6a:	c4 e3 6d 0c c0 cc    	vblendps ymm0,ymm2,ymm0,0xcc
  730e70:	c5 c8 57 f6          	vxorps xmm6,xmm6,xmm6
  730e74:	c5 fc 11 44 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm0
  730e7a:	c5 f4 c6 c0 88       	vshufps ymm0,ymm1,ymm0,0x88
  730e7f:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  730e84:	c4 63 7d 19 eb 01    	vextractf128 xmm3,ymm13,0x1
  730e8a:	c4 43 7d 19 df 01    	vextractf128 xmm15,ymm11,0x1
  730e90:	c4 63 7d 19 c1 01    	vextractf128 xmm1,ymm8,0x1
  730e96:	c5 e5 14 f9          	vunpcklpd ymm7,ymm3,ymm1
  730e9a:	c5 fc 11 7c 24 20    	vmovups YMMWORD PTR [rsp+0x20],ymm7
  730ea0:	c4 e3 05 0c d6 cc    	vblendps ymm2,ymm15,ymm6,0xcc
  730ea6:	c5 fc 11 54 24 40    	vmovups YMMWORD PTR [rsp+0x40],ymm2
  730eac:	c5 c4 c6 d2 88       	vshufps ymm2,ymm7,ymm2,0x88
  730eb1:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  730eb6:	c5 7c 10 8a 00 01 00 	vmovups ymm9,YMMWORD PTR [rdx+0x100]
  730ebd:	00 
  730ebe:	c5 fc 10 ba 20 01 00 	vmovups ymm7,YMMWORD PTR [rdx+0x120]
  730ec5:	00 
  730ec6:	c5 b4 59 f0          	vmulps ymm6,ymm9,ymm0
  730eca:	c4 e2 6d bc f7       	vfnmadd231ps ymm6,ymm2,ymm7
  730ecf:	c5 fc 11 b4 24 80 00 	vmovups YMMWORD PTR [rsp+0x80],ymm6
  730ed6:	00 00 
  730ed8:	c5 b4 59 d2          	vmulps ymm2,ymm9,ymm2
  730edc:	c4 e2 7d b8 d7       	vfmadd231ps ymm2,ymm0,ymm7
  730ee1:	c5 fc 11 54 24 60    	vmovups YMMWORD PTR [rsp+0x60],ymm2
  730ee7:	c5 f8 28 c4          	vmovaps xmm0,xmm4
  730eeb:	c5 78 29 d2          	vmovaps xmm2,xmm10
  730eef:	c5 7c 29 e6          	vmovaps ymm6,ymm12
  730ef3:	c5 f8 28 e6          	vmovaps xmm4,xmm6
  730ef7:	c5 d5 73 dc 08       	vpsrldq ymm5,ymm4,0x8
  730efc:	c5 fe 7f ac 24 20 01 	vmovdqu YMMWORD PTR [rsp+0x120],ymm5
  730f03:	00 00 
  730f05:	c5 fd 15 e2          	vunpckhpd ymm4,ymm0,ymm2
  730f09:	c5 fc 11 a4 24 40 01 	vmovups YMMWORD PTR [rsp+0x140],ymm4
  730f10:	00 00 
  730f12:	c5 dc c6 e5 88       	vshufps ymm4,ymm4,ymm5,0x88
  730f17:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  730f1c:	c4 41 78 28 ed       	vmovaps xmm13,xmm13
  730f21:	c5 78 29 c7          	vmovaps xmm7,xmm8
  730f25:	c4 41 7c 28 cb       	vmovaps ymm9,ymm11
  730f2a:	c4 41 78 28 c1       	vmovaps xmm8,xmm9
  730f2f:	c4 c1 55 73 d8 08    	vpsrldq ymm5,ymm8,0x8
  730f35:	c5 15 15 c7          	vunpckhpd ymm8,ymm13,ymm7
  730f39:	c5 7c 11 84 24 00 01 	vmovups YMMWORD PTR [rsp+0x100],ymm8
  730f40:	00 00 
  730f42:	c5 3c c6 c5 88       	vshufps ymm8,ymm8,ymm5,0x88
  730f47:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  730f4d:	c5 7c 10 92 80 00 00 	vmovups ymm10,YMMWORD PTR [rdx+0x80]
  730f54:	00 
  730f55:	c5 7c 10 a2 a0 00 00 	vmovups ymm12,YMMWORD PTR [rdx+0xa0]
  730f5c:	00 
  730f5d:	c5 2c 59 dc          	vmulps ymm11,ymm10,ymm4
  730f61:	c4 42 3d bc dc       	vfnmadd231ps ymm11,ymm8,ymm12
  730f66:	c5 7c 11 9c 24 60 01 	vmovups YMMWORD PTR [rsp+0x160],ymm11
  730f6d:	00 00 
  730f6f:	c4 41 2c 59 f0       	vmulps ymm14,ymm10,ymm8
  730f74:	c4 42 5d b8 f4       	vfmadd231ps ymm14,ymm4,ymm12
  730f79:	c5 fc 10 64 24 a0    	vmovups ymm4,YMMWORD PTR [rsp-0x60]
  730f7f:	c5 dd 15 24 24       	vunpckhpd ymm4,ymm4,YMMWORD PTR [rsp]
  730f84:	c5 fc 11 24 24       	vmovups YMMWORD PTR [rsp],ymm4
  730f89:	c5 65 15 c1          	vunpckhpd ymm8,ymm3,ymm1
  730f8d:	c5 7c 11 84 24 e0 00 	vmovups YMMWORD PTR [rsp+0xe0],ymm8
  730f94:	00 00 
  730f96:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  730f9a:	c5 fc 10 5c 24 80    	vmovups ymm3,YMMWORD PTR [rsp-0x80]
  730fa0:	c5 e5 15 d9          	vunpckhpd ymm3,ymm3,ymm1
  730fa4:	c5 fc 11 5c 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm3
  730faa:	c5 05 15 d1          	vunpckhpd ymm10,ymm15,ymm1
  730fae:	c5 7c 11 54 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm10
  730fb4:	c5 dc c6 cb 88       	vshufps ymm1,ymm4,ymm3,0x88
  730fb9:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  730fbe:	c4 c1 3c c6 da 88    	vshufps ymm3,ymm8,ymm10,0x88
  730fc4:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  730fc9:	c5 fc 10 a2 80 01 00 	vmovups ymm4,YMMWORD PTR [rdx+0x180]
  730fd0:	00 
  730fd1:	c5 7c 10 92 a0 01 00 	vmovups ymm10,YMMWORD PTR [rdx+0x1a0]
  730fd8:	00 
  730fd9:	c5 5c 59 f9          	vmulps ymm15,ymm4,ymm1
  730fdd:	c4 42 65 bc fa       	vfnmadd231ps ymm15,ymm3,ymm10
  730fe2:	c5 5c 59 db          	vmulps ymm11,ymm4,ymm3
  730fe6:	c4 42 75 b8 da       	vfmadd231ps ymm11,ymm1,ymm10
  730feb:	c5 fd 14 c2          	vunpcklpd ymm0,ymm0,ymm2
  730fef:	c5 fc 11 84 24 c0 00 	vmovups YMMWORD PTR [rsp+0xc0],ymm0
  730ff6:	00 00 
  730ff8:	c5 95 14 cf          	vunpcklpd ymm1,ymm13,ymm7
  730ffc:	c5 fc 11 8c 24 a0 00 	vmovups YMMWORD PTR [rsp+0xa0],ymm1
  731003:	00 00 
  731005:	c5 7a 7e e6          	vmovq  xmm12,xmm6
  731009:	c4 c1 7c c6 c4 dd    	vshufps ymm0,ymm0,ymm12,0xdd
  73100f:	c5 fc c6 d8 d8       	vshufps ymm3,ymm0,ymm0,0xd8
  731014:	c4 41 7a 7e e9       	vmovq  xmm13,xmm9
  731019:	c4 c1 74 c6 cd dd    	vshufps ymm1,ymm1,ymm13,0xdd
  73101f:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  731024:	c5 fc 10 52 40       	vmovups ymm2,YMMWORD PTR [rdx+0x40]
  731029:	c5 fc 10 42 60       	vmovups ymm0,YMMWORD PTR [rdx+0x60]
  73102e:	c5 6c 59 d3          	vmulps ymm10,ymm2,ymm3
  731032:	c4 62 75 bc d0       	vfnmadd231ps ymm10,ymm1,ymm0
  731037:	c5 6c 59 c9          	vmulps ymm9,ymm2,ymm1
  73103b:	c4 62 65 b8 c8       	vfmadd231ps ymm9,ymm3,ymm0
  731040:	c5 fc 10 44 24 c0    	vmovups ymm0,YMMWORD PTR [rsp-0x40]
  731046:	c5 fc c6 44 24 e0 dd 	vshufps ymm0,ymm0,YMMWORD PTR [rsp-0x20],0xdd
  73104d:	c5 fc 10 4c 24 20    	vmovups ymm1,YMMWORD PTR [rsp+0x20]
  731053:	c5 f4 c6 4c 24 40 dd 	vshufps ymm1,ymm1,YMMWORD PTR [rsp+0x40],0xdd
  73105a:	c5 fc c6 d0 d8       	vshufps ymm2,ymm0,ymm0,0xd8
  73105f:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  731064:	c5 fc 10 9a 40 01 00 	vmovups ymm3,YMMWORD PTR [rdx+0x140]
  73106b:	00 
  73106c:	c5 fc 10 82 60 01 00 	vmovups ymm0,YMMWORD PTR [rdx+0x160]
  731073:	00 
  731074:	c5 64 59 c2          	vmulps ymm8,ymm3,ymm2
  731078:	c4 62 75 bc c0       	vfnmadd231ps ymm8,ymm1,ymm0
  73107d:	c5 e4 59 f9          	vmulps ymm7,ymm3,ymm1
  731081:	c4 e2 6d b8 f8       	vfmadd231ps ymm7,ymm2,ymm0
  731086:	c5 fc 10 84 24 40 01 	vmovups ymm0,YMMWORD PTR [rsp+0x140]
  73108d:	00 00 
  73108f:	c5 fc c6 84 24 20 01 	vshufps ymm0,ymm0,YMMWORD PTR [rsp+0x120],0xdd
  731096:	00 00 dd 
  731099:	c5 fc 10 8c 24 00 01 	vmovups ymm1,YMMWORD PTR [rsp+0x100]
  7310a0:	00 00 
  7310a2:	c5 f4 c6 d5 dd       	vshufps ymm2,ymm1,ymm5,0xdd
  7310a7:	c5 fc c6 d8 d8       	vshufps ymm3,ymm0,ymm0,0xd8
  7310ac:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  7310b1:	c5 fc 10 82 c0 00 00 	vmovups ymm0,YMMWORD PTR [rdx+0xc0]
  7310b8:	00 
  7310b9:	c5 fc 10 8a e0 00 00 	vmovups ymm1,YMMWORD PTR [rdx+0xe0]
  7310c0:	00 
  7310c1:	c5 fc 59 f3          	vmulps ymm6,ymm0,ymm3
  7310c5:	c4 e2 6d bc f1       	vfnmadd231ps ymm6,ymm2,ymm1
  7310ca:	c5 fc 59 ea          	vmulps ymm5,ymm0,ymm2
  7310ce:	c4 e2 65 b8 e9       	vfmadd231ps ymm5,ymm3,ymm1
  7310d3:	c5 fc 10 04 24       	vmovups ymm0,YMMWORD PTR [rsp]
  7310d8:	c5 fc c6 4c 24 a0 dd 	vshufps ymm1,ymm0,YMMWORD PTR [rsp-0x60],0xdd
  7310df:	c5 fc 10 84 24 e0 00 	vmovups ymm0,YMMWORD PTR [rsp+0xe0]
  7310e6:	00 00 
  7310e8:	c5 fc c6 54 24 80 dd 	vshufps ymm2,ymm0,YMMWORD PTR [rsp-0x80],0xdd
  7310ef:	c5 f4 c6 e1 d8       	vshufps ymm4,ymm1,ymm1,0xd8
  7310f4:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  7310f9:	c5 fc 10 9a c0 01 00 	vmovups ymm3,YMMWORD PTR [rdx+0x1c0]
  731100:	00 
  731101:	c5 fc 10 82 e0 01 00 	vmovups ymm0,YMMWORD PTR [rdx+0x1e0]
  731108:	00 
  731109:	c5 e4 59 cc          	vmulps ymm1,ymm3,ymm4
  73110d:	c4 e2 6d bc c8       	vfnmadd231ps ymm1,ymm2,ymm0
  731112:	c5 e4 59 da          	vmulps ymm3,ymm3,ymm2
  731116:	c4 e2 5d b8 d8       	vfmadd231ps ymm3,ymm4,ymm0
  73111b:	c5 fc 10 84 24 c0 00 	vmovups ymm0,YMMWORD PTR [rsp+0xc0]
  731122:	00 00 
  731124:	c4 c1 7c c6 c4 88    	vshufps ymm0,ymm0,ymm12,0x88
  73112a:	c5 fc 10 94 24 a0 00 	vmovups ymm2,YMMWORD PTR [rsp+0xa0]
  731131:	00 00 
  731133:	c4 c1 6c c6 d5 88    	vshufps ymm2,ymm2,ymm13,0x88
  731139:	c5 fc c6 e0 d8       	vshufps ymm4,ymm0,ymm0,0xd8
  73113e:	c5 fc 10 84 24 80 00 	vmovups ymm0,YMMWORD PTR [rsp+0x80]
  731145:	00 00 
  731147:	c5 7c 58 e4          	vaddps ymm12,ymm0,ymm4
  73114b:	c5 7c 11 64 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm12
  731151:	c5 dc 5c c0          	vsubps ymm0,ymm4,ymm0
  731155:	c5 fc 11 44 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm0
  73115b:	c4 41 0c 58 eb       	vaddps ymm13,ymm14,ymm11
  731160:	c4 c1 0c 5c c3       	vsubps ymm0,ymm14,ymm11
  731165:	c5 fc 11 44 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm0
  73116b:	c4 41 2c 58 f0       	vaddps ymm14,ymm10,ymm8
  731170:	c4 41 2c 5c c0       	vsubps ymm8,ymm10,ymm8
  731175:	c5 34 58 e7          	vaddps ymm12,ymm9,ymm7
  731179:	c5 b4 5c ff          	vsubps ymm7,ymm9,ymm7
  73117d:	c5 54 58 db          	vaddps ymm11,ymm5,ymm3
  731181:	c5 d4 5c db          	vsubps ymm3,ymm5,ymm3
  731185:	c5 4c 58 d1          	vaddps ymm10,ymm6,ymm1
  731189:	c5 cc 5c c9          	vsubps ymm1,ymm6,ymm1
  73118d:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  731192:	c5 fc 10 44 24 60    	vmovups ymm0,YMMWORD PTR [rsp+0x60]
  731198:	c5 fc 58 f2          	vaddps ymm6,ymm0,ymm2
  73119c:	c5 ec 5c e8          	vsubps ymm5,ymm2,ymm0
  7311a0:	c5 fc 10 84 24 60 01 	vmovups ymm0,YMMWORD PTR [rsp+0x160]
  7311a7:	00 00 
  7311a9:	c5 84 58 d0          	vaddps ymm2,ymm15,ymm0
  7311ad:	c5 04 5c f8          	vsubps ymm15,ymm15,ymm0
  7311b1:	c5 3c 58 cf          	vaddps ymm9,ymm8,ymm7
  7311b5:	c4 c1 44 5c f8       	vsubps ymm7,ymm7,ymm8
  7311ba:	c5 64 5c c1          	vsubps ymm8,ymm3,ymm1
  7311be:	c5 f4 58 c3          	vaddps ymm0,ymm1,ymm3
  7311c2:	c4 e2 7d 18 1d d1 41 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff9441d1]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  7311c9:	94 ff 
  7311cb:	c5 b4 59 e3          	vmulps ymm4,ymm9,ymm3
  7311cf:	c5 bc 59 cb          	vmulps ymm1,ymm8,ymm3
  7311d3:	c5 c4 59 fb          	vmulps ymm7,ymm7,ymm3
  7311d7:	c5 fc 59 c3          	vmulps ymm0,ymm0,ymm3
  7311db:	c5 fc 10 5c 24 80    	vmovups ymm3,YMMWORD PTR [rsp-0x80]
  7311e1:	c5 64 58 c2          	vaddps ymm8,ymm3,ymm2
  7311e5:	c5 7c 11 44 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm8
  7311eb:	c5 e4 5c d2          	vsubps ymm2,ymm3,ymm2
  7311ef:	c5 fc 11 54 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm2
  7311f5:	c4 41 1c 58 cb       	vaddps ymm9,ymm12,ymm11
  7311fa:	c5 7c 11 4c 24 60    	vmovups YMMWORD PTR [rsp+0x60],ymm9
  731200:	c4 c1 1c 5c d3       	vsubps ymm2,ymm12,ymm11
  731205:	c5 fc 11 54 24 40    	vmovups YMMWORD PTR [rsp+0x40],ymm2
  73120b:	c5 14 58 de          	vaddps ymm11,ymm13,ymm6
  73120f:	c4 c1 4c 5c dd       	vsubps ymm3,ymm6,ymm13
  731214:	c4 c1 0c 58 d2       	vaddps ymm2,ymm14,ymm10
  731219:	c4 41 2c 5c f6       	vsubps ymm14,ymm10,ymm14
  73121e:	c5 7c 10 64 24 e0    	vmovups ymm12,YMMWORD PTR [rsp-0x20]
  731224:	c5 7c 10 6c 24 c0    	vmovups ymm13,YMMWORD PTR [rsp-0x40]
  73122a:	c4 c1 1c 58 f5       	vaddps ymm6,ymm12,ymm13
  73122f:	c5 fc 11 74 24 20    	vmovups YMMWORD PTR [rsp+0x20],ymm6
  731235:	c4 41 1c 5c e5       	vsubps ymm12,ymm12,ymm13
  73123a:	c5 7c 11 64 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm12
  731240:	c5 44 5c e0          	vsubps ymm12,ymm7,ymm0
  731244:	c5 c4 58 c0          	vaddps ymm0,ymm7,ymm0
  731248:	c5 fc 11 44 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm0
  73124e:	c5 04 58 ed          	vaddps ymm13,ymm15,ymm5
  731252:	c4 c1 54 5c ef       	vsubps ymm5,ymm5,ymm15
  731257:	c5 5c 58 f9          	vaddps ymm15,ymm4,ymm1
  73125b:	c5 f4 5c c4          	vsubps ymm0,ymm1,ymm4
  73125f:	c5 fc 11 84 24 80 00 	vmovups YMMWORD PTR [rsp+0x80],ymm0
  731266:	00 00 
  731268:	c5 b8 58 c2          	vaddps xmm0,xmm8,xmm2
  73126c:	c4 c1 20 58 c9       	vaddps xmm1,xmm11,xmm9
  731271:	c5 f0 14 e0          	vunpcklps xmm4,xmm1,xmm0
  731275:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  731279:	c5 f8 13 46 10       	vmovlps QWORD PTR [rsi+0x10],xmm0
  73127e:	c5 f8 11 26          	vmovups XMMWORD PTR [rsi],xmm4
  731282:	c5 80 58 c6          	vaddps xmm0,xmm15,xmm6
  731286:	c4 c1 10 58 cc       	vaddps xmm1,xmm13,xmm12
  73128b:	c5 f0 14 e0          	vunpcklps xmm4,xmm1,xmm0
  73128f:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  731293:	c5 f8 13 46 28       	vmovlps QWORD PTR [rsi+0x28],xmm0
  731298:	c5 f8 11 66 18       	vmovups XMMWORD PTR [rsi+0x18],xmm4
  73129d:	c5 7c 10 4c 24 80    	vmovups ymm9,YMMWORD PTR [rsp-0x80]
  7312a3:	c5 7c 10 44 24 40    	vmovups ymm8,YMMWORD PTR [rsp+0x40]
  7312a9:	c4 c1 30 58 c0       	vaddps xmm0,xmm9,xmm8
  7312ae:	c5 88 58 cb          	vaddps xmm1,xmm14,xmm3
  7312b2:	c5 7c 28 d3          	vmovaps ymm10,ymm3
  7312b6:	c5 f0 14 e0          	vunpcklps xmm4,xmm1,xmm0
  7312ba:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  7312be:	c5 f8 13 46 40       	vmovlps QWORD PTR [rsi+0x40],xmm0
  7312c3:	c5 f8 11 66 30       	vmovups XMMWORD PTR [rsi+0x30],xmm4
  7312c8:	c5 fc 10 7c 24 e0    	vmovups ymm7,YMMWORD PTR [rsp-0x20]
  7312ce:	c5 fc 10 74 24 c0    	vmovups ymm6,YMMWORD PTR [rsp-0x40]
  7312d4:	c5 c0 58 c6          	vaddps xmm0,xmm7,xmm6
  7312d8:	c5 fc 10 9c 24 80 00 	vmovups ymm3,YMMWORD PTR [rsp+0x80]
  7312df:	00 00 
  7312e1:	c5 d0 58 cb          	vaddps xmm1,xmm5,xmm3
  7312e5:	c5 f0 14 e0          	vunpcklps xmm4,xmm1,xmm0
  7312e9:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  7312ed:	c5 f8 13 46 58       	vmovlps QWORD PTR [rsi+0x58],xmm0
  7312f2:	c5 f8 11 66 48       	vmovups XMMWORD PTR [rsi+0x48],xmm4
  7312f7:	c5 fc 10 44 24 a0    	vmovups ymm0,YMMWORD PTR [rsp-0x60]
  7312fd:	c5 f8 5c c2          	vsubps xmm0,xmm0,xmm2
  731301:	c5 a0 5c 4c 24 60    	vsubps xmm1,xmm11,XMMWORD PTR [rsp+0x60]
  731307:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  73130b:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  73130f:	c5 f8 13 46 70       	vmovlps QWORD PTR [rsi+0x70],xmm0
  731314:	c5 f8 11 56 60       	vmovups XMMWORD PTR [rsi+0x60],xmm2
  731319:	c5 fc 10 44 24 20    	vmovups ymm0,YMMWORD PTR [rsp+0x20]
  73131f:	c4 c1 78 5c c7       	vsubps xmm0,xmm0,xmm15
  731324:	c4 c1 10 5c cc       	vsubps xmm1,xmm13,xmm12
  731329:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  73132d:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  731331:	c5 f8 13 86 88 00 00 	vmovlps QWORD PTR [rsi+0x88],xmm0
  731338:	00 
  731339:	c5 f8 11 56 78       	vmovups XMMWORD PTR [rsi+0x78],xmm2
  73133e:	c4 c1 30 5c c0       	vsubps xmm0,xmm9,xmm8
  731343:	c4 c1 28 5c ce       	vsubps xmm1,xmm10,xmm14
  731348:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  73134c:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  731350:	c5 f8 13 86 a0 00 00 	vmovlps QWORD PTR [rsi+0xa0],xmm0
  731357:	00 
  731358:	c5 f8 11 96 90 00 00 	vmovups XMMWORD PTR [rsi+0x90],xmm2
  73135f:	00 
  731360:	c5 c0 5c c6          	vsubps xmm0,xmm7,xmm6
  731364:	c5 d0 5c cb          	vsubps xmm1,xmm5,xmm3
  731368:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  73136c:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  731370:	c5 f8 13 86 b8 00 00 	vmovlps QWORD PTR [rsi+0xb8],xmm0
  731377:	00 
  731378:	c5 f8 11 96 a8 00 00 	vmovups XMMWORD PTR [rsi+0xa8],xmm2
  73137f:	00 
  731380:	48 81 c4 88 01 00 00 	add    rsp,0x188
  731387:	c5 f8 77             	vzeroupper
  73138a:	c3                   	ret
