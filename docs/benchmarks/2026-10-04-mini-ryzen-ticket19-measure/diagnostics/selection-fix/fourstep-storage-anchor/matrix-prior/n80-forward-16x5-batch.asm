
target/ticket19/selection-fix/canonical-storage/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000ab9f80 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  ab9f80:	53                   	push   rbx
  ab9f81:	48 81 ec 80 07 00 00 	sub    rsp,0x780
  ab9f88:	31 c0                	xor    eax,eax
  ab9f8a:	c4 e2 7d 19 05 2d ad 	vbroadcastsd ymm0,QWORD PTR [rip+0xffffffffff5bad2d]        # 74cc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x22c0>
  ab9f91:	5b ff 
  ab9f93:	c4 e2 7d 18 25 a0 b2 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff5bb2a0]        # 7523c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x283c>
  ab9f9a:	5b ff 
  ab9f9c:	c4 e2 7d 19 15 eb a9 	vbroadcastsd ymm2,QWORD PTR [rip+0xffffffffff5ba9eb]        # 74990 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f90>
  ab9fa3:	5b ff 
  ab9fa5:	c4 e2 7d 18 1d 6e b3 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff5bb36e]        # 7531c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x291c>
  ab9fac:	5b ff 
  ab9fae:	c4 e2 7d 18 2d 05 b2 	vbroadcastss ymm5,DWORD PTR [rip+0xffffffffff5bb205]        # 751bc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x27bc>
  ab9fb5:	5b ff 
  ab9fb7:	49 89 f8             	mov    r8,rdi
  ab9fba:	e9 be 04 00 00       	jmp    aba47d <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x4fd>
  ab9fbf:	90                   	nop
  ab9fc0:	48 ff c0             	inc    rax
  ab9fc3:	c5 fc 10 34 24       	vmovups ymm6,YMMWORD PTR [rsp]
  ab9fc8:	c5 7c 10 8c 24 80 00 	vmovups ymm9,YMMWORD PTR [rsp+0x80]
  ab9fcf:	00 00 
  ab9fd1:	c5 7c 10 94 24 00 01 	vmovups ymm10,YMMWORD PTR [rsp+0x100]
  ab9fd8:	00 00 
  ab9fda:	c5 4c c6 de b1       	vshufps ymm11,ymm6,ymm6,0xb1
  ab9fdf:	c5 cc 59 31          	vmulps ymm6,ymm6,YMMWORD PTR [rcx]
  ab9fe3:	c4 e2 25 b8 71 20    	vfmadd231ps ymm6,ymm11,YMMWORD PTR [rcx+0x20]
  ab9fe9:	c5 34 59 59 40       	vmulps ymm11,ymm9,YMMWORD PTR [rcx+0x40]
  ab9fee:	c4 41 34 c6 c9 b1    	vshufps ymm9,ymm9,ymm9,0xb1
  ab9ff4:	c4 62 35 b8 59 60    	vfmadd231ps ymm11,ymm9,YMMWORD PTR [rcx+0x60]
  ab9ffa:	c4 41 2c c6 ca b1    	vshufps ymm9,ymm10,ymm10,0xb1
  aba000:	c5 2c 59 91 80 00 00 	vmulps ymm10,ymm10,YMMWORD PTR [rcx+0x80]
  aba007:	00 
  aba008:	c4 62 35 b8 91 a0 00 	vfmadd231ps ymm10,ymm9,YMMWORD PTR [rcx+0xa0]
  aba00f:	00 00 
  aba011:	c5 7c 10 4c 24 80    	vmovups ymm9,YMMWORD PTR [rsp-0x80]
  aba017:	c5 7c 10 a4 24 80 01 	vmovups ymm12,YMMWORD PTR [rsp+0x180]
  aba01e:	00 00 
  aba020:	c5 1c 59 a9 c0 00 00 	vmulps ymm13,ymm12,YMMWORD PTR [rcx+0xc0]
  aba027:	00 
  aba028:	c4 41 1c c6 e4 b1    	vshufps ymm12,ymm12,ymm12,0xb1
  aba02e:	c4 62 1d b8 a9 e0 00 	vfmadd231ps ymm13,ymm12,YMMWORD PTR [rcx+0xe0]
  aba035:	00 00 
  aba037:	c5 14 58 e6          	vaddps ymm12,ymm13,ymm6
  aba03b:	c4 41 24 58 f2       	vaddps ymm14,ymm11,ymm10
  aba040:	c4 c1 4c 5c f5       	vsubps ymm6,ymm6,ymm13
  aba045:	c4 41 24 5c d2       	vsubps ymm10,ymm11,ymm10
  aba04a:	c4 e2 7d 18 0d 35 b5 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff5bb535]        # 75588 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b88>
  aba051:	5b ff 
  aba053:	c5 7c 28 d9          	vmovaps ymm11,ymm1
  aba057:	c4 42 1d a8 d9       	vfmadd213ps ymm11,ymm12,ymm9
  aba05c:	c4 62 0d b8 dd       	vfmadd231ps ymm11,ymm14,ymm5
  aba061:	c5 7c 28 ed          	vmovaps ymm13,ymm5
  aba065:	c4 42 1d a8 e9       	vfmadd213ps ymm13,ymm12,ymm9
  aba06a:	c4 62 0d b8 e9       	vfmadd231ps ymm13,ymm14,ymm1
  aba06f:	c4 e2 7d 18 3d c8 b1 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff5bb1c8]        # 75240 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2840>
  aba076:	5b ff 
  aba078:	c5 4c 59 ff          	vmulps ymm15,ymm6,ymm7
  aba07c:	c4 62 7d 18 05 73 b5 	vbroadcastss ymm8,DWORD PTR [rip+0xffffffffff5bb573]        # 755f8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bf8>
  aba083:	5b ff 
  aba085:	c4 42 2d b8 f8       	vfmadd231ps ymm15,ymm10,ymm8
  aba08a:	c4 41 04 c6 ff b1    	vshufps ymm15,ymm15,ymm15,0xb1
  aba090:	62 e1 7c 28 28 05 c6 	vmovaps ymm16,YMMWORD PTR [rip+0xffffffffff5be3c6]        # 78460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5a60>
  aba097:	e3 5b ff 
  aba09a:	62 31 04 28 57 f8    	vxorps ymm15,ymm15,ymm16
  aba0a0:	c5 bc 59 f6          	vmulps ymm6,ymm8,ymm6
  aba0a4:	c4 c2 45 bc f2       	vfnmadd231ps ymm6,ymm7,ymm10
  aba0a9:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  aba0ae:	62 b1 4c 28 57 f0    	vxorps ymm6,ymm6,ymm16
  aba0b4:	c4 41 0c 58 d4       	vaddps ymm10,ymm14,ymm12
  aba0b9:	c4 41 34 58 ca       	vaddps ymm9,ymm9,ymm10
  aba0be:	c4 41 24 58 d7       	vaddps ymm10,ymm11,ymm15
  aba0c3:	c5 14 58 e6          	vaddps ymm12,ymm13,ymm6
  aba0c7:	c5 94 5c f6          	vsubps ymm6,ymm13,ymm6
  aba0cb:	c4 41 24 5c df       	vsubps ymm11,ymm11,ymm15
  aba0d0:	c4 21 7c 11 0c 8e    	vmovups YMMWORD PTR [rsi+r9*4],ymm9
  aba0d6:	c4 21 7c 11 94 8e 80 	vmovups YMMWORD PTR [rsi+r9*4+0x80],ymm10
  aba0dd:	00 00 00 
  aba0e0:	c4 21 7c 11 a4 8e 00 	vmovups YMMWORD PTR [rsi+r9*4+0x100],ymm12
  aba0e7:	01 00 00 
  aba0ea:	c4 a1 7c 11 b4 8e 80 	vmovups YMMWORD PTR [rsi+r9*4+0x180],ymm6
  aba0f1:	01 00 00 
  aba0f4:	c4 21 7c 11 9c 8e 00 	vmovups YMMWORD PTR [rsi+r9*4+0x200],ymm11
  aba0fb:	02 00 00 
  aba0fe:	c5 fc 10 74 24 20    	vmovups ymm6,YMMWORD PTR [rsp+0x20]
  aba104:	c5 7c 10 8c 24 a0 00 	vmovups ymm9,YMMWORD PTR [rsp+0xa0]
  aba10b:	00 00 
  aba10d:	c5 4c 59 91 00 01 00 	vmulps ymm10,ymm6,YMMWORD PTR [rcx+0x100]
  aba114:	00 
  aba115:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  aba11a:	c4 62 4d b8 91 20 01 	vfmadd231ps ymm10,ymm6,YMMWORD PTR [rcx+0x120]
  aba121:	00 00 
  aba123:	c4 c1 34 c6 f1 b1    	vshufps ymm6,ymm9,ymm9,0xb1
  aba129:	c5 34 59 89 40 01 00 	vmulps ymm9,ymm9,YMMWORD PTR [rcx+0x140]
  aba130:	00 
  aba131:	c4 62 4d b8 89 60 01 	vfmadd231ps ymm9,ymm6,YMMWORD PTR [rcx+0x160]
  aba138:	00 00 
  aba13a:	c5 fc 10 b4 24 20 01 	vmovups ymm6,YMMWORD PTR [rsp+0x120]
  aba141:	00 00 
  aba143:	c5 4c c6 de b1       	vshufps ymm11,ymm6,ymm6,0xb1
  aba148:	c5 cc 59 b1 80 01 00 	vmulps ymm6,ymm6,YMMWORD PTR [rcx+0x180]
  aba14f:	00 
  aba150:	c4 e2 25 b8 b1 a0 01 	vfmadd231ps ymm6,ymm11,YMMWORD PTR [rcx+0x1a0]
  aba157:	00 00 
  aba159:	c5 7c 10 9c 24 a0 01 	vmovups ymm11,YMMWORD PTR [rsp+0x1a0]
  aba160:	00 00 
  aba162:	c4 41 24 c6 e3 b1    	vshufps ymm12,ymm11,ymm11,0xb1
  aba168:	c5 24 59 99 c0 01 00 	vmulps ymm11,ymm11,YMMWORD PTR [rcx+0x1c0]
  aba16f:	00 
  aba170:	c4 62 1d b8 99 e0 01 	vfmadd231ps ymm11,ymm12,YMMWORD PTR [rcx+0x1e0]
  aba177:	00 00 
  aba179:	c5 7c 10 64 24 a0    	vmovups ymm12,YMMWORD PTR [rsp-0x60]
  aba17f:	c4 41 2c 58 eb       	vaddps ymm13,ymm10,ymm11
  aba184:	c5 34 58 f6          	vaddps ymm14,ymm9,ymm6
  aba188:	c4 41 2c 5c d3       	vsubps ymm10,ymm10,ymm11
  aba18d:	c5 b4 5c f6          	vsubps ymm6,ymm9,ymm6
  aba191:	c5 7c 28 c9          	vmovaps ymm9,ymm1
  aba195:	c4 42 15 a8 cc       	vfmadd213ps ymm9,ymm13,ymm12
  aba19a:	c4 62 0d b8 cd       	vfmadd231ps ymm9,ymm14,ymm5
  aba19f:	c5 7c 28 dd          	vmovaps ymm11,ymm5
  aba1a3:	c4 42 15 a8 dc       	vfmadd213ps ymm11,ymm13,ymm12
  aba1a8:	c4 62 0d b8 d9       	vfmadd231ps ymm11,ymm14,ymm1
  aba1ad:	c5 2c 59 ff          	vmulps ymm15,ymm10,ymm7
  aba1b1:	c4 42 4d b8 f8       	vfmadd231ps ymm15,ymm6,ymm8
  aba1b6:	c4 41 04 c6 ff b1    	vshufps ymm15,ymm15,ymm15,0xb1
  aba1bc:	62 31 04 28 57 f8    	vxorps ymm15,ymm15,ymm16
  aba1c2:	c4 41 2c 59 d0       	vmulps ymm10,ymm10,ymm8
  aba1c7:	c4 62 45 bc d6       	vfnmadd231ps ymm10,ymm7,ymm6
  aba1cc:	c4 c1 2c c6 f2 b1    	vshufps ymm6,ymm10,ymm10,0xb1
  aba1d2:	62 b1 4c 28 57 f0    	vxorps ymm6,ymm6,ymm16
  aba1d8:	c4 41 0c 58 d5       	vaddps ymm10,ymm14,ymm13
  aba1dd:	c4 41 1c 58 d2       	vaddps ymm10,ymm12,ymm10
  aba1e2:	c4 41 34 58 e7       	vaddps ymm12,ymm9,ymm15
  aba1e7:	c5 24 58 ee          	vaddps ymm13,ymm11,ymm6
  aba1eb:	c5 a4 5c f6          	vsubps ymm6,ymm11,ymm6
  aba1ef:	c4 41 34 5c cf       	vsubps ymm9,ymm9,ymm15
  aba1f4:	c4 21 7c 11 54 8e 20 	vmovups YMMWORD PTR [rsi+r9*4+0x20],ymm10
  aba1fb:	c4 21 7c 11 a4 8e a0 	vmovups YMMWORD PTR [rsi+r9*4+0xa0],ymm12
  aba202:	00 00 00 
  aba205:	c4 21 7c 11 ac 8e 20 	vmovups YMMWORD PTR [rsi+r9*4+0x120],ymm13
  aba20c:	01 00 00 
  aba20f:	c4 a1 7c 11 b4 8e a0 	vmovups YMMWORD PTR [rsi+r9*4+0x1a0],ymm6
  aba216:	01 00 00 
  aba219:	c4 21 7c 11 8c 8e 20 	vmovups YMMWORD PTR [rsi+r9*4+0x220],ymm9
  aba220:	02 00 00 
  aba223:	c5 fc 10 74 24 40    	vmovups ymm6,YMMWORD PTR [rsp+0x40]
  aba229:	c5 7c 10 8c 24 c0 00 	vmovups ymm9,YMMWORD PTR [rsp+0xc0]
  aba230:	00 00 
  aba232:	c5 7c 10 94 24 40 01 	vmovups ymm10,YMMWORD PTR [rsp+0x140]
  aba239:	00 00 
  aba23b:	c5 4c c6 de b1       	vshufps ymm11,ymm6,ymm6,0xb1
  aba240:	c5 cc 59 b1 00 02 00 	vmulps ymm6,ymm6,YMMWORD PTR [rcx+0x200]
  aba247:	00 
  aba248:	c4 e2 25 b8 b1 20 02 	vfmadd231ps ymm6,ymm11,YMMWORD PTR [rcx+0x220]
  aba24f:	00 00 
  aba251:	c5 34 59 99 40 02 00 	vmulps ymm11,ymm9,YMMWORD PTR [rcx+0x240]
  aba258:	00 
  aba259:	c4 41 34 c6 c9 b1    	vshufps ymm9,ymm9,ymm9,0xb1
  aba25f:	c4 62 35 b8 99 60 02 	vfmadd231ps ymm11,ymm9,YMMWORD PTR [rcx+0x260]
  aba266:	00 00 
  aba268:	c4 41 2c c6 ca b1    	vshufps ymm9,ymm10,ymm10,0xb1
  aba26e:	c5 2c 59 91 80 02 00 	vmulps ymm10,ymm10,YMMWORD PTR [rcx+0x280]
  aba275:	00 
  aba276:	c4 62 35 b8 91 a0 02 	vfmadd231ps ymm10,ymm9,YMMWORD PTR [rcx+0x2a0]
  aba27d:	00 00 
  aba27f:	c5 7c 10 4c 24 c0    	vmovups ymm9,YMMWORD PTR [rsp-0x40]
  aba285:	c5 7c 10 a4 24 c0 01 	vmovups ymm12,YMMWORD PTR [rsp+0x1c0]
  aba28c:	00 00 
  aba28e:	c5 1c 59 a9 c0 02 00 	vmulps ymm13,ymm12,YMMWORD PTR [rcx+0x2c0]
  aba295:	00 
  aba296:	c4 41 1c c6 e4 b1    	vshufps ymm12,ymm12,ymm12,0xb1
  aba29c:	c4 62 1d b8 a9 e0 02 	vfmadd231ps ymm13,ymm12,YMMWORD PTR [rcx+0x2e0]
  aba2a3:	00 00 
  aba2a5:	c5 14 58 e6          	vaddps ymm12,ymm13,ymm6
  aba2a9:	c4 41 24 58 f2       	vaddps ymm14,ymm11,ymm10
  aba2ae:	c4 c1 4c 5c f5       	vsubps ymm6,ymm6,ymm13
  aba2b3:	c4 41 24 5c d2       	vsubps ymm10,ymm11,ymm10
  aba2b8:	c5 7c 28 d9          	vmovaps ymm11,ymm1
  aba2bc:	c4 42 1d a8 d9       	vfmadd213ps ymm11,ymm12,ymm9
  aba2c1:	c4 62 0d b8 dd       	vfmadd231ps ymm11,ymm14,ymm5
  aba2c6:	c5 7c 28 ed          	vmovaps ymm13,ymm5
  aba2ca:	c4 42 1d a8 e9       	vfmadd213ps ymm13,ymm12,ymm9
  aba2cf:	c4 62 0d b8 e9       	vfmadd231ps ymm13,ymm14,ymm1
  aba2d4:	c5 4c 59 ff          	vmulps ymm15,ymm6,ymm7
  aba2d8:	c4 42 2d b8 f8       	vfmadd231ps ymm15,ymm10,ymm8
  aba2dd:	c4 41 04 c6 ff b1    	vshufps ymm15,ymm15,ymm15,0xb1
  aba2e3:	62 31 04 28 57 f8    	vxorps ymm15,ymm15,ymm16
  aba2e9:	c5 bc 59 f6          	vmulps ymm6,ymm8,ymm6
  aba2ed:	c4 c2 45 bc f2       	vfnmadd231ps ymm6,ymm7,ymm10
  aba2f2:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  aba2f7:	62 b1 4c 28 57 f0    	vxorps ymm6,ymm6,ymm16
  aba2fd:	c4 41 0c 58 d4       	vaddps ymm10,ymm14,ymm12
  aba302:	c4 41 34 58 ca       	vaddps ymm9,ymm9,ymm10
  aba307:	c4 41 24 58 d7       	vaddps ymm10,ymm11,ymm15
  aba30c:	c5 14 58 e6          	vaddps ymm12,ymm13,ymm6
  aba310:	c5 94 5c f6          	vsubps ymm6,ymm13,ymm6
  aba314:	c4 41 24 5c df       	vsubps ymm11,ymm11,ymm15
  aba319:	c4 21 7c 11 4c 8e 40 	vmovups YMMWORD PTR [rsi+r9*4+0x40],ymm9
  aba320:	c4 21 7c 11 94 8e c0 	vmovups YMMWORD PTR [rsi+r9*4+0xc0],ymm10
  aba327:	00 00 00 
  aba32a:	c4 21 7c 11 a4 8e 40 	vmovups YMMWORD PTR [rsi+r9*4+0x140],ymm12
  aba331:	01 00 00 
  aba334:	c4 a1 7c 11 b4 8e c0 	vmovups YMMWORD PTR [rsi+r9*4+0x1c0],ymm6
  aba33b:	01 00 00 
  aba33e:	c4 21 7c 11 9c 8e 40 	vmovups YMMWORD PTR [rsi+r9*4+0x240],ymm11
  aba345:	02 00 00 
  aba348:	c5 fc 10 74 24 60    	vmovups ymm6,YMMWORD PTR [rsp+0x60]
  aba34e:	c5 7c 10 8c 24 e0 00 	vmovups ymm9,YMMWORD PTR [rsp+0xe0]
  aba355:	00 00 
  aba357:	c5 4c 59 91 00 03 00 	vmulps ymm10,ymm6,YMMWORD PTR [rcx+0x300]
  aba35e:	00 
  aba35f:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  aba364:	c4 62 4d b8 91 20 03 	vfmadd231ps ymm10,ymm6,YMMWORD PTR [rcx+0x320]
  aba36b:	00 00 
  aba36d:	c4 c1 34 c6 f1 b1    	vshufps ymm6,ymm9,ymm9,0xb1
  aba373:	c5 34 59 89 40 03 00 	vmulps ymm9,ymm9,YMMWORD PTR [rcx+0x340]
  aba37a:	00 
  aba37b:	c4 62 4d b8 89 60 03 	vfmadd231ps ymm9,ymm6,YMMWORD PTR [rcx+0x360]
  aba382:	00 00 
  aba384:	c5 fc 10 b4 24 60 01 	vmovups ymm6,YMMWORD PTR [rsp+0x160]
  aba38b:	00 00 
  aba38d:	c5 4c c6 de b1       	vshufps ymm11,ymm6,ymm6,0xb1
  aba392:	c5 cc 59 b1 80 03 00 	vmulps ymm6,ymm6,YMMWORD PTR [rcx+0x380]
  aba399:	00 
  aba39a:	c4 e2 25 b8 b1 a0 03 	vfmadd231ps ymm6,ymm11,YMMWORD PTR [rcx+0x3a0]
  aba3a1:	00 00 
  aba3a3:	c5 7c 10 9c 24 e0 01 	vmovups ymm11,YMMWORD PTR [rsp+0x1e0]
  aba3aa:	00 00 
  aba3ac:	c4 41 24 c6 e3 b1    	vshufps ymm12,ymm11,ymm11,0xb1
  aba3b2:	c5 24 59 99 c0 03 00 	vmulps ymm11,ymm11,YMMWORD PTR [rcx+0x3c0]
  aba3b9:	00 
  aba3ba:	c4 62 1d b8 99 e0 03 	vfmadd231ps ymm11,ymm12,YMMWORD PTR [rcx+0x3e0]
  aba3c1:	00 00 
  aba3c3:	c5 7c 10 64 24 e0    	vmovups ymm12,YMMWORD PTR [rsp-0x20]
  aba3c9:	c4 41 2c 58 eb       	vaddps ymm13,ymm10,ymm11
  aba3ce:	c5 34 58 f6          	vaddps ymm14,ymm9,ymm6
  aba3d2:	c4 41 2c 5c d3       	vsubps ymm10,ymm10,ymm11
  aba3d7:	c5 b4 5c f6          	vsubps ymm6,ymm9,ymm6
  aba3db:	c5 7c 28 c9          	vmovaps ymm9,ymm1
  aba3df:	c4 42 15 a8 cc       	vfmadd213ps ymm9,ymm13,ymm12
  aba3e4:	c4 62 0d b8 cd       	vfmadd231ps ymm9,ymm14,ymm5
  aba3e9:	c5 7c 28 dd          	vmovaps ymm11,ymm5
  aba3ed:	c4 42 15 a8 dc       	vfmadd213ps ymm11,ymm13,ymm12
  aba3f2:	c4 62 0d b8 d9       	vfmadd231ps ymm11,ymm14,ymm1
  aba3f7:	c5 2c 59 ff          	vmulps ymm15,ymm10,ymm7
  aba3fb:	c4 42 4d b8 f8       	vfmadd231ps ymm15,ymm6,ymm8
  aba400:	c4 41 04 c6 ff b1    	vshufps ymm15,ymm15,ymm15,0xb1
  aba406:	62 31 04 28 57 f8    	vxorps ymm15,ymm15,ymm16
  aba40c:	c4 41 2c 59 d0       	vmulps ymm10,ymm10,ymm8
  aba411:	c4 62 45 bc d6       	vfnmadd231ps ymm10,ymm7,ymm6
  aba416:	c4 c1 2c c6 f2 b1    	vshufps ymm6,ymm10,ymm10,0xb1
  aba41c:	62 b1 4c 28 57 f0    	vxorps ymm6,ymm6,ymm16
  aba422:	c4 41 0c 58 d5       	vaddps ymm10,ymm14,ymm13
  aba427:	c4 41 1c 58 d2       	vaddps ymm10,ymm12,ymm10
  aba42c:	c4 41 34 58 e7       	vaddps ymm12,ymm9,ymm15
  aba431:	c5 24 58 ee          	vaddps ymm13,ymm11,ymm6
  aba435:	c5 a4 5c f6          	vsubps ymm6,ymm11,ymm6
  aba439:	c4 41 34 5c cf       	vsubps ymm9,ymm9,ymm15
  aba43e:	c4 21 7c 11 54 8e 60 	vmovups YMMWORD PTR [rsi+r9*4+0x60],ymm10
  aba445:	c4 21 7c 11 a4 8e e0 	vmovups YMMWORD PTR [rsi+r9*4+0xe0],ymm12
  aba44c:	00 00 00 
  aba44f:	c4 21 7c 11 ac 8e 60 	vmovups YMMWORD PTR [rsi+r9*4+0x160],ymm13
  aba456:	01 00 00 
  aba459:	c4 a1 7c 11 b4 8e e0 	vmovups YMMWORD PTR [rsi+r9*4+0x1e0],ymm6
  aba460:	01 00 00 
  aba463:	c4 21 7c 11 8c 8e 60 	vmovups YMMWORD PTR [rsi+r9*4+0x260],ymm9
  aba46a:	02 00 00 
  aba46d:	49 81 c0 80 02 00 00 	add    r8,0x280
  aba474:	48 39 d0             	cmp    rax,rdx
  aba477:	0f 84 c0 05 00 00    	je     abaa3d <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0xabd>
  aba47d:	49 89 c1             	mov    r9,rax
  aba480:	49 c1 e1 05          	shl    r9,0x5
  aba484:	4f 8d 0c 89          	lea    r9,[r9+r9*4]
  aba488:	c5 7c 10 89 00 04 00 	vmovups ymm9,YMMWORD PTR [rcx+0x400]
  aba48f:	00 
  aba490:	c5 7c 10 91 20 04 00 	vmovups ymm10,YMMWORD PTR [rcx+0x420]
  aba497:	00 
  aba498:	c5 7c 10 99 40 04 00 	vmovups ymm11,YMMWORD PTR [rcx+0x440]
  aba49f:	00 
  aba4a0:	c5 7c 10 a1 60 04 00 	vmovups ymm12,YMMWORD PTR [rcx+0x460]
  aba4a7:	00 
  aba4a8:	c5 7c 10 a9 a0 04 00 	vmovups ymm13,YMMWORD PTR [rcx+0x4a0]
  aba4af:	00 
  aba4b0:	c5 7c 10 b1 80 04 00 	vmovups ymm14,YMMWORD PTR [rcx+0x480]
  aba4b7:	00 
  aba4b8:	45 31 d2             	xor    r10d,r10d
  aba4bb:	4d 89 c3             	mov    r11,r8
  aba4be:	31 db                	xor    ebx,ebx
  aba4c0:	eb 71                	jmp    aba533 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x5b3>
  aba4c2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  aba4c9:	1f 84 00 00 00 00 00 
  aba4d0:	62 91 44 00 16 f0    	vmovlhps xmm6,xmm23,xmm24
  aba4d6:	62 81 34 00 16 fb    	vmovlhps xmm23,xmm25,xmm27
  aba4dc:	62 a1 7c 08 11 7c d4 	vmovups XMMWORD PTR [rsp+r10*8-0x50],xmm23
  aba4e3:	fb 
  aba4e4:	c4 a1 78 11 74 d4 a0 	vmovups XMMWORD PTR [rsp+r10*8-0x60],xmm6
  aba4eb:	62 b1 64 00 16 f4    	vmovlhps xmm6,xmm19,xmm20
  aba4f1:	62 a1 4c 00 16 dd    	vmovlhps xmm19,xmm22,xmm21
  aba4f7:	62 a1 7c 08 11 5c d4 	vmovups XMMWORD PTR [rsp+r10*8-0x30],xmm19
  aba4fe:	fd 
  aba4ff:	c4 a1 78 11 74 d4 c0 	vmovups XMMWORD PTR [rsp+r10*8-0x40],xmm6
  aba506:	62 b1 6c 00 16 f0    	vmovlhps xmm6,xmm18,xmm16
  aba50c:	62 51 74 00 16 ff    	vmovlhps xmm15,xmm17,xmm15
  aba512:	c4 21 78 11 7c d4 f0 	vmovups XMMWORD PTR [rsp+r10*8-0x10],xmm15
  aba519:	c4 a1 78 11 74 d4 e0 	vmovups XMMWORD PTR [rsp+r10*8-0x20],xmm6
  aba520:	49 83 c2 40          	add    r10,0x40
  aba524:	49 83 c3 20          	add    r11,0x20
  aba528:	f6 c3 01             	test   bl,0x1
  aba52b:	b3 01                	mov    bl,0x1
  aba52d:	0f 85 8d fa ff ff    	jne    ab9fc0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x40>
  aba533:	4d 85 d2             	test   r10,r10
  aba536:	74 78                	je     aba5b0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x630>
  aba538:	62 c1 ff 08 10 23    	vmovsd xmm20,QWORD PTR [r11]
  aba53e:	62 c1 ff 08 10 5b 05 	vmovsd xmm19,QWORD PTR [r11+0x28]
  aba545:	c4 41 7b 10 7b 50    	vmovsd xmm15,QWORD PTR [r11+0x50]
  aba54b:	62 c1 ff 08 10 4b 0f 	vmovsd xmm17,QWORD PTR [r11+0x78]
  aba552:	62 41 ff 08 10 4b 14 	vmovsd xmm25,QWORD PTR [r11+0xa0]
  aba559:	62 c1 ff 08 10 73 19 	vmovsd xmm22,QWORD PTR [r11+0xc8]
  aba560:	62 c1 ff 08 10 43 1e 	vmovsd xmm16,QWORD PTR [r11+0xf0]
  aba567:	62 c1 ff 08 10 53 23 	vmovsd xmm18,QWORD PTR [r11+0x118]
  aba56e:	62 41 ff 08 10 63 28 	vmovsd xmm28,QWORD PTR [r11+0x140]
  aba575:	62 41 ff 08 10 53 2d 	vmovsd xmm26,QWORD PTR [r11+0x168]
  aba57c:	62 c1 ff 08 10 7b 32 	vmovsd xmm23,QWORD PTR [r11+0x190]
  aba583:	62 c1 ff 08 10 6b 37 	vmovsd xmm21,QWORD PTR [r11+0x1b8]
  aba58a:	62 41 ff 08 10 73 3c 	vmovsd xmm30,QWORD PTR [r11+0x1e0]
  aba591:	62 41 ff 08 10 6b 41 	vmovsd xmm29,QWORD PTR [r11+0x208]
  aba598:	62 41 ff 08 10 5b 46 	vmovsd xmm27,QWORD PTR [r11+0x230]
  aba59f:	62 41 ff 08 10 43 4b 	vmovsd xmm24,QWORD PTR [r11+0x258]
  aba5a6:	e9 a1 00 00 00       	jmp    aba64c <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x6cc>
  aba5ab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  aba5b0:	62 c1 7c 28 10 23    	vmovups ymm20,YMMWORD PTR [r11]
  aba5b6:	62 c1 7c 28 10 8b 78 	vmovups ymm17,YMMWORD PTR [r11+0x78]
  aba5bd:	00 00 00 
  aba5c0:	62 c1 7c 28 10 83 f0 	vmovups ymm16,YMMWORD PTR [r11+0xf0]
  aba5c7:	00 00 00 
  aba5ca:	62 a1 7c 28 10 9c 8f 	vmovups ymm19,YMMWORD PTR [rdi+r9*4+0x28]
  aba5d1:	28 00 00 00 
  aba5d5:	c4 21 7c 10 7c 8f 50 	vmovups ymm15,YMMWORD PTR [rdi+r9*4+0x50]
  aba5dc:	62 21 7c 28 10 4c 8f 	vmovups ymm25,YMMWORD PTR [rdi+r9*4+0xa0]
  aba5e3:	05 
  aba5e4:	62 a1 7c 28 10 b4 8f 	vmovups ymm22,YMMWORD PTR [rdi+r9*4+0xc8]
  aba5eb:	c8 00 00 00 
  aba5ef:	62 a1 7c 28 10 94 8f 	vmovups ymm18,YMMWORD PTR [rdi+r9*4+0x118]
  aba5f6:	18 01 00 00 
  aba5fa:	62 21 7c 28 10 64 8f 	vmovups ymm28,YMMWORD PTR [rdi+r9*4+0x140]
  aba601:	0a 
  aba602:	62 21 7c 28 10 94 8f 	vmovups ymm26,YMMWORD PTR [rdi+r9*4+0x168]
  aba609:	68 01 00 00 
  aba60d:	62 a1 7c 28 10 bc 8f 	vmovups ymm23,YMMWORD PTR [rdi+r9*4+0x190]
  aba614:	90 01 00 00 
  aba618:	62 a1 7c 28 10 ac 8f 	vmovups ymm21,YMMWORD PTR [rdi+r9*4+0x1b8]
  aba61f:	b8 01 00 00 
  aba623:	62 21 7c 28 10 74 8f 	vmovups ymm30,YMMWORD PTR [rdi+r9*4+0x1e0]
  aba62a:	0f 
  aba62b:	62 21 7c 28 10 ac 8f 	vmovups ymm29,YMMWORD PTR [rdi+r9*4+0x208]
  aba632:	08 02 00 00 
  aba636:	62 21 7c 28 10 9c 8f 	vmovups ymm27,YMMWORD PTR [rdi+r9*4+0x230]
  aba63d:	30 02 00 00 
  aba641:	62 21 7c 28 10 84 8f 	vmovups ymm24,YMMWORD PTR [rdi+r9*4+0x258]
  aba648:	58 02 00 00 
  aba64c:	62 91 5c 20 58 f4    	vaddps ymm6,ymm20,ymm28
  aba652:	62 01 5c 20 5c fc    	vsubps ymm31,ymm20,ymm28
  aba658:	62 91 34 20 58 fe    	vaddps ymm7,ymm25,ymm30
  aba65e:	62 81 34 20 5c e6    	vsubps ymm20,ymm25,ymm30
  aba664:	62 a1 5c 20 c6 e4 b1 	vshufps ymm20,ymm20,ymm20,0xb1
  aba66b:	62 61 7c 28 28 e0    	vmovaps ymm28,ymm0
  aba671:	62 02 5d 20 a8 e7    	vfmadd213ps ymm28,ymm20,ymm31
  aba677:	62 82 7d 28 ac e7    	vfnmadd213ps ymm20,ymm0,ymm31
  aba67d:	62 61 4c 28 58 f7    	vaddps ymm30,ymm6,ymm7
  aba683:	62 61 4c 28 5c cf    	vsubps ymm25,ymm6,ymm7
  aba689:	62 91 64 20 58 f2    	vaddps ymm6,ymm19,ymm26
  aba68f:	62 91 64 20 5c fa    	vsubps ymm7,ymm19,ymm26
  aba695:	62 01 4c 20 58 d5    	vaddps ymm26,ymm22,ymm29
  aba69b:	62 81 4c 20 5c dd    	vsubps ymm19,ymm22,ymm29
  aba6a1:	62 a1 64 20 c6 f3 b1 	vshufps ymm22,ymm19,ymm19,0xb1
  aba6a8:	62 61 7c 28 28 e8    	vmovaps ymm29,ymm0
  aba6ae:	62 62 4d 20 a8 ef    	vfmadd213ps ymm29,ymm22,ymm7
  aba6b4:	62 e2 7d 28 ac f7    	vfnmadd213ps ymm22,ymm0,ymm7
  aba6ba:	62 81 4c 28 58 da    	vaddps ymm19,ymm6,ymm26
  aba6c0:	62 91 4c 28 5c f2    	vsubps ymm6,ymm6,ymm26
  aba6c6:	62 b1 04 28 58 ff    	vaddps ymm7,ymm15,ymm23
  aba6cc:	62 a1 04 28 5c ff    	vsubps ymm23,ymm15,ymm23
  aba6d2:	62 01 7c 20 58 d3    	vaddps ymm26,ymm16,ymm27
  aba6d8:	62 11 7c 20 5c fb    	vsubps ymm15,ymm16,ymm27
  aba6de:	c4 41 04 c6 ff b1    	vshufps ymm15,ymm15,ymm15,0xb1
  aba6e4:	62 e1 7c 28 28 c0    	vmovaps ymm16,ymm0
  aba6ea:	62 a2 05 28 a8 c7    	vfmadd213ps ymm16,ymm15,ymm23
  aba6f0:	62 32 7d 28 ac ff    	vfnmadd213ps ymm15,ymm0,ymm23
  aba6f6:	62 81 44 28 58 fa    	vaddps ymm23,ymm7,ymm26
  aba6fc:	62 91 44 28 5c fa    	vsubps ymm7,ymm7,ymm26
  aba702:	62 21 74 20 58 d5    	vaddps ymm26,ymm17,ymm21
  aba708:	62 a1 74 20 5c cd    	vsubps ymm17,ymm17,ymm21
  aba70e:	62 81 6c 20 58 e8    	vaddps ymm21,ymm18,ymm24
  aba714:	62 81 6c 20 5c d0    	vsubps ymm18,ymm18,ymm24
  aba71a:	62 a1 6c 20 c6 d2 b1 	vshufps ymm18,ymm18,ymm18,0xb1
  aba721:	62 61 7c 28 28 c0    	vmovaps ymm24,ymm0
  aba727:	62 22 6d 20 a8 c1    	vfmadd213ps ymm24,ymm18,ymm17
  aba72d:	62 a2 7d 28 ac d1    	vfnmadd213ps ymm18,ymm0,ymm17
  aba733:	62 21 2c 20 58 dd    	vaddps ymm27,ymm26,ymm21
  aba739:	62 a1 2c 20 5c cd    	vsubps ymm17,ymm26,ymm21
  aba73f:	62 81 14 20 c6 ed b1 	vshufps ymm21,ymm29,ymm29,0xb1
  aba746:	62 41 14 20 59 e9    	vmulps ymm29,ymm29,ymm9
  aba74c:	62 22 2d 28 b8 ed    	vfmadd231ps ymm29,ymm10,ymm21
  aba752:	62 e1 4c 28 c6 ee b1 	vshufps ymm21,ymm6,ymm6,0xb1
  aba759:	c5 cc 59 f4          	vmulps ymm6,ymm6,ymm4
  aba75d:	62 b2 6d 28 b8 f5    	vfmadd231ps ymm6,ymm2,ymm21
  aba763:	62 21 4c 20 c6 d6 b1 	vshufps ymm26,ymm22,ymm22,0xb1
  aba76a:	62 c1 4c 20 59 eb    	vmulps ymm21,ymm22,ymm11
  aba770:	62 82 1d 28 b8 ea    	vfmadd231ps ymm21,ymm12,ymm26
  aba776:	62 81 3c 20 c6 f0 b1 	vshufps ymm22,ymm24,ymm24,0xb1
  aba77d:	62 41 3c 20 59 c3    	vmulps ymm24,ymm24,ymm11
  aba783:	62 22 1d 28 b8 c6    	vfmadd231ps ymm24,ymm12,ymm22
  aba789:	62 a1 74 20 c6 f1 b1 	vshufps ymm22,ymm17,ymm17,0xb1
  aba790:	62 61 74 20 59 fb    	vmulps ymm31,ymm17,ymm3
  aba796:	62 22 6d 28 b8 fe    	vfmadd231ps ymm31,ymm2,ymm22
  aba79c:	62 a1 6c 20 c6 ca b1 	vshufps ymm17,ymm18,ymm18,0xb1
  aba7a3:	62 51 6c 20 59 c6    	vmulps ymm8,ymm18,ymm14
  aba7a9:	62 32 15 28 b8 c1    	vfmadd231ps ymm8,ymm13,ymm17
  aba7af:	62 a1 0c 20 58 f7    	vaddps ymm22,ymm30,ymm23
  aba7b5:	62 21 0c 20 5c d7    	vsubps ymm26,ymm30,ymm23
  aba7bb:	62 a1 7c 20 c6 c8 b1 	vshufps ymm17,ymm16,ymm16,0xb1
  aba7c2:	62 61 7c 28 28 f4    	vmovaps ymm30,ymm4
  aba7c8:	62 02 7d 20 a8 f4    	vfmadd213ps ymm30,ymm16,ymm28
  aba7ce:	62 62 75 20 b8 f2    	vfmadd231ps ymm30,ymm17,ymm2
  aba7d4:	62 82 5d 28 ac c4    	vfnmadd213ps ymm16,ymm4,ymm28
  aba7da:	62 a2 6d 28 bc c1    	vfnmadd231ps ymm16,ymm2,ymm17
  aba7e0:	62 e1 44 28 c6 cf b1 	vshufps ymm17,ymm7,ymm7,0xb1
  aba7e7:	c5 fc 28 f8          	vmovaps ymm7,ymm0
  aba7eb:	62 92 75 20 a8 f9    	vfmadd213ps ymm7,ymm17,ymm25
  aba7f1:	62 82 7d 28 ac c9    	vfnmadd213ps ymm17,ymm0,ymm25
  aba7f7:	62 c1 04 28 c6 d7 b1 	vshufps ymm18,ymm15,ymm15,0xb1
  aba7fe:	c5 fc 28 cc          	vmovaps ymm1,ymm4
  aba802:	62 b2 05 28 ac cc    	vfnmadd213ps ymm1,ymm15,ymm20
  aba808:	62 f2 6d 20 b8 ca    	vfmadd231ps ymm1,ymm18,ymm2
  aba80e:	62 32 5d 28 a8 fc    	vfmadd213ps ymm15,ymm4,ymm20
  aba814:	62 32 6d 28 bc fa    	vfnmadd231ps ymm15,ymm2,ymm18
  aba81a:	62 81 64 20 58 e3    	vaddps ymm20,ymm19,ymm27
  aba820:	62 81 64 20 5c d3    	vsubps ymm18,ymm19,ymm27
  aba826:	62 a1 6c 20 c6 d2 b1 	vshufps ymm18,ymm18,ymm18,0xb1
  aba82d:	62 e1 7c 28 28 f8    	vmovaps ymm23,ymm0
  aba833:	62 82 6d 20 a8 fa    	vfmadd213ps ymm23,ymm18,ymm26
  aba839:	62 82 7d 28 ac d2    	vfnmadd213ps ymm18,ymm0,ymm26
  aba83f:	62 21 4c 20 58 d4    	vaddps ymm26,ymm22,ymm20
  aba845:	62 a1 4c 20 5c dc    	vsubps ymm19,ymm22,ymm20
  aba84b:	62 81 14 20 58 e0    	vaddps ymm20,ymm29,ymm24
  aba851:	62 81 14 20 5c f0    	vsubps ymm22,ymm29,ymm24
  aba857:	62 a1 4c 20 c6 f6 b1 	vshufps ymm22,ymm22,ymm22,0xb1
  aba85e:	62 61 7c 28 28 c0    	vmovaps ymm24,ymm0
  aba864:	62 22 4d 20 a8 c0    	vfmadd213ps ymm24,ymm22,ymm16
  aba86a:	62 a2 7d 28 bc c6    	vfnmadd231ps ymm16,ymm0,ymm22
  aba870:	62 21 0c 20 58 e4    	vaddps ymm28,ymm30,ymm20
  aba876:	62 a1 0c 20 5c e4    	vsubps ymm20,ymm30,ymm20
  aba87c:	62 81 4c 28 58 f7    	vaddps ymm22,ymm6,ymm31
  aba882:	62 91 4c 28 5c f7    	vsubps ymm6,ymm6,ymm31
  aba888:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  aba88d:	62 61 7c 28 28 c8    	vmovaps ymm25,ymm0
  aba893:	62 22 4d 28 a8 c9    	vfmadd213ps ymm25,ymm6,ymm17
  aba899:	62 e2 7d 28 bc ce    	vfnmadd231ps ymm17,ymm0,ymm6
  aba89f:	62 21 44 28 58 ee    	vaddps ymm29,ymm7,ymm22
  aba8a5:	62 a1 44 28 5c f6    	vsubps ymm22,ymm7,ymm22
  aba8ab:	62 d1 54 20 58 f0    	vaddps ymm6,ymm21,ymm8
  aba8b1:	62 d1 54 20 5c f8    	vsubps ymm7,ymm21,ymm8
  aba8b7:	c5 c4 c6 ff b1       	vshufps ymm7,ymm7,ymm7,0xb1
  aba8bc:	62 61 7c 28 28 d8    	vmovaps ymm27,ymm0
  aba8c2:	62 42 45 28 a8 df    	vfmadd213ps ymm27,ymm7,ymm15
  aba8c8:	c4 62 7d bc ff       	vfnmadd231ps ymm15,ymm0,ymm7
  aba8cd:	62 61 74 28 58 f6    	vaddps ymm30,ymm1,ymm6
  aba8d3:	62 e1 74 28 5c ee    	vsubps ymm21,ymm1,ymm6
  aba8d9:	62 01 ad 20 14 fc    	vunpcklpd ymm31,ymm26,ymm28
  aba8df:	62 91 95 20 14 f6    	vunpcklpd ymm6,ymm29,ymm30
  aba8e5:	62 f3 05 20 18 ce 01 	vinsertf32x4 ymm1,ymm31,xmm6,0x1
  aba8ec:	c4 a1 7c 11 4c d4 80 	vmovups YMMWORD PTR [rsp+r10*8-0x80],ymm1
  aba8f3:	49 83 fa 40          	cmp    r10,0x40
  aba8f7:	0f 84 d3 fb ff ff    	je     aba4d0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x550>
  aba8fd:	62 01 ad 20 15 d4    	vunpckhpd ymm26,ymm26,ymm28
  aba903:	62 01 95 20 15 e6    	vunpckhpd ymm28,ymm29,ymm30
  aba909:	62 03 ad 20 23 ec 03 	vshuff64x2 ymm29,ymm26,ymm28,0x3
  aba910:	62 f3 85 20 23 f6 03 	vshuff64x2 ymm6,ymm31,ymm6,0x3
  aba917:	62 03 2d 20 18 d4 01 	vinsertf32x4 ymm26,ymm26,xmm28,0x1
  aba91e:	62 21 7c 28 11 14 d4 	vmovups YMMWORD PTR [rsp+r10*8],ymm26
  aba925:	c4 a1 7d 11 b4 d4 80 	vmovupd YMMWORD PTR [rsp+r10*8+0x80],ymm6
  aba92c:	00 00 00 
  aba92f:	62 21 fd 28 11 6c d4 	vmovupd YMMWORD PTR [rsp+r10*8+0x100],ymm29
  aba936:	08 
  aba937:	62 91 c5 20 14 f0    	vunpcklpd ymm6,ymm23,ymm24
  aba93d:	62 01 b5 20 14 d3    	vunpcklpd ymm26,ymm25,ymm27
  aba943:	62 03 4d 28 18 e2 01 	vinsertf32x4 ymm28,ymm6,xmm26,0x1
  aba94a:	62 21 7c 28 11 64 d4 	vmovups YMMWORD PTR [rsp+r10*8-0x60],ymm28
  aba951:	fd 
  aba952:	62 81 c5 20 15 f8    	vunpckhpd ymm23,ymm23,ymm24
  aba958:	62 01 b5 20 15 c3    	vunpckhpd ymm24,ymm25,ymm27
  aba95e:	62 03 c5 20 23 c8 03 	vshuff64x2 ymm25,ymm23,ymm24,0x3
  aba965:	62 93 cd 28 23 f2 03 	vshuff64x2 ymm6,ymm6,ymm26,0x3
  aba96c:	62 83 45 20 18 f8 01 	vinsertf32x4 ymm23,ymm23,xmm24,0x1
  aba973:	62 a1 7c 28 11 7c d4 	vmovups YMMWORD PTR [rsp+r10*8+0x20],ymm23
  aba97a:	01 
  aba97b:	c4 a1 7d 11 b4 d4 a0 	vmovupd YMMWORD PTR [rsp+r10*8+0xa0],ymm6
  aba982:	00 00 00 
  aba985:	62 21 fd 28 11 4c d4 	vmovupd YMMWORD PTR [rsp+r10*8+0x120],ymm25
  aba98c:	09 
  aba98d:	62 b1 e5 20 14 f4    	vunpcklpd ymm6,ymm19,ymm20
  aba993:	62 a1 cd 20 14 fd    	vunpcklpd ymm23,ymm22,ymm21
  aba999:	62 23 4d 28 18 c7 01 	vinsertf32x4 ymm24,ymm6,xmm23,0x1
  aba9a0:	62 21 7c 28 11 44 d4 	vmovups YMMWORD PTR [rsp+r10*8-0x40],ymm24
  aba9a7:	fe 
  aba9a8:	62 a1 e5 20 15 dc    	vunpckhpd ymm19,ymm19,ymm20
  aba9ae:	62 a1 cd 20 15 e5    	vunpckhpd ymm20,ymm22,ymm21
  aba9b4:	62 a3 e5 20 23 ec 03 	vshuff64x2 ymm21,ymm19,ymm20,0x3
  aba9bb:	62 b3 cd 28 23 f7 03 	vshuff64x2 ymm6,ymm6,ymm23,0x3
  aba9c2:	62 a3 65 20 18 dc 01 	vinsertf32x4 ymm19,ymm19,xmm20,0x1
  aba9c9:	62 a1 7c 28 11 5c d4 	vmovups YMMWORD PTR [rsp+r10*8+0x40],ymm19
  aba9d0:	02 
  aba9d1:	c4 a1 7d 11 b4 d4 c0 	vmovupd YMMWORD PTR [rsp+r10*8+0xc0],ymm6
  aba9d8:	00 00 00 
  aba9db:	62 a1 fd 28 11 6c d4 	vmovupd YMMWORD PTR [rsp+r10*8+0x140],ymm21
  aba9e2:	0a 
  aba9e3:	62 b1 ed 20 14 f0    	vunpcklpd ymm6,ymm18,ymm16
  aba9e9:	62 c1 f5 20 14 df    	vunpcklpd ymm19,ymm17,ymm15
  aba9ef:	62 a3 4d 28 18 e3 01 	vinsertf32x4 ymm20,ymm6,xmm19,0x1
  aba9f6:	62 a1 7c 28 11 64 d4 	vmovups YMMWORD PTR [rsp+r10*8-0x20],ymm20
  aba9fd:	ff 
  aba9fe:	62 a1 ed 20 15 c0    	vunpckhpd ymm16,ymm18,ymm16
  abaa04:	62 51 f5 20 15 ff    	vunpckhpd ymm15,ymm17,ymm15
  abaa0a:	62 c3 fd 20 23 cf 03 	vshuff64x2 ymm17,ymm16,ymm15,0x3
  abaa11:	62 b3 cd 28 23 f3 03 	vshuff64x2 ymm6,ymm6,ymm19,0x3
  abaa18:	62 53 7d 20 18 ff 01 	vinsertf32x4 ymm15,ymm16,xmm15,0x1
  abaa1f:	c4 21 7c 11 7c d4 60 	vmovups YMMWORD PTR [rsp+r10*8+0x60],ymm15
  abaa26:	c4 a1 7d 11 b4 d4 e0 	vmovupd YMMWORD PTR [rsp+r10*8+0xe0],ymm6
  abaa2d:	00 00 00 
  abaa30:	62 a1 fd 28 11 4c d4 	vmovupd YMMWORD PTR [rsp+r10*8+0x160],ymm17
  abaa37:	0b 
  abaa38:	e9 e3 fa ff ff       	jmp    aba520 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x5a0>
  abaa3d:	48 81 c4 80 07 00 00 	add    rsp,0x780
  abaa44:	5b                   	pop    rbx
  abaa45:	c5 f8 77             	vzeroupper
  abaa48:	c3                   	ret
  abaa49:	cc                   	int3
  abaa4a:	cc                   	int3
  abaa4b:	cc                   	int3
  abaa4c:	cc                   	int3
  abaa4d:	cc                   	int3
  abaa4e:	cc                   	int3
  abaa4f:	cc                   	int3
  abaa50:	cc                   	int3
  abaa51:	cc                   	int3
  abaa52:	cc                   	int3
  abaa53:	cc                   	int3
  abaa54:	cc                   	int3
  abaa55:	cc                   	int3
  abaa56:	cc                   	int3
  abaa57:	cc                   	int3
  abaa58:	cc                   	int3
  abaa59:	cc                   	int3
  abaa5a:	cc                   	int3
  abaa5b:	cc                   	int3
  abaa5c:	cc                   	int3
  abaa5d:	cc                   	int3
  abaa5e:	cc                   	int3
  abaa5f:	cc                   	int3
  abaa60:	cc                   	int3
  abaa61:	cc                   	int3
  abaa62:	cc                   	int3
  abaa63:	cc                   	int3
  abaa64:	cc                   	int3
  abaa65:	cc                   	int3
  abaa66:	cc                   	int3
  abaa67:	cc                   	int3
  abaa68:	cc                   	int3
  abaa69:	cc                   	int3
  abaa6a:	cc                   	int3
  abaa6b:	cc                   	int3
  abaa6c:	cc                   	int3
  abaa6d:	cc                   	int3
  abaa6e:	cc                   	int3
  abaa6f:	cc                   	int3
  abaa70:	cc                   	int3
  abaa71:	cc                   	int3
  abaa72:	cc                   	int3
  abaa73:	cc                   	int3
  abaa74:	cc                   	int3
  abaa75:	cc                   	int3
  abaa76:	cc                   	int3
  abaa77:	cc                   	int3
  abaa78:	cc                   	int3
  abaa79:	cc                   	int3
  abaa7a:	cc                   	int3
  abaa7b:	cc                   	int3
  abaa7c:	cc                   	int3
  abaa7d:	cc                   	int3
  abaa7e:	cc                   	int3
  abaa7f:	cc                   	int3
