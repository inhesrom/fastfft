
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a37f00 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a37f00:	48 81 ec 48 04 00 00 	sub    rsp,0x448
  a37f07:	48 c1 e2 07          	shl    rdx,0x7
  a37f0b:	48 8d 04 92          	lea    rax,[rdx+rdx*4]
  a37f0f:	31 d2                	xor    edx,edx
  a37f11:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  a37f18:	0f 1f 84 00 00 00 00 
  a37f1f:	00 
  a37f20:	c5 fb 10 44 17 20    	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x20]
  a37f26:	c5 fc 10 0c 17       	vmovups ymm1,YMMWORD PTR [rdi+rdx*1]
  a37f2b:	c5 fc 10 54 17 28    	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0x28]
  a37f31:	c5 fc 10 5c 17 50    	vmovups ymm3,YMMWORD PTR [rdi+rdx*1+0x50]
  a37f37:	c5 fc 10 6c 17 78    	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0x78]
  a37f3d:	62 73 f5 48 1a e8 01 	vinsertf64x4 zmm13,zmm1,ymm0,0x1
  a37f44:	62 71 7c 48 11 2c 24 	vmovups ZMMWORD PTR [rsp],zmm13
  a37f4b:	c5 d8 57 e4          	vxorps xmm4,xmm4,xmm4
  a37f4f:	62 e1 7c 48 28 1d 67 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff659367]        # 912c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e770>
  a37f56:	93 65 ff 
  a37f59:	62 72 65 40 7f ec    	vpermt2ps zmm13,zmm19,zmm4
  a37f5f:	c5 fb 10 44 17 48    	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x48]
  a37f65:	62 e3 ed 48 1a f8 01 	vinsertf64x4 zmm23,zmm2,ymm0,0x1
  a37f6c:	62 b1 7c 48 28 c7    	vmovaps zmm0,zmm23
  a37f72:	62 f2 65 40 7f c4    	vpermt2ps zmm0,zmm19,zmm4
  a37f78:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a37f7f:	01 
  a37f80:	62 71 7c 48 28 1d 76 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff659376]        # 91300 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e7b0>
  a37f87:	93 65 ff 
  a37f8a:	62 e2 25 48 7f fc    	vpermt2ps zmm23,zmm11,zmm4
  a37f90:	c5 fb 10 44 17 70    	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x70]
  a37f96:	62 63 e5 48 1a c0 01 	vinsertf64x4 zmm24,zmm3,ymm0,0x1
  a37f9d:	62 81 7c 48 28 f0    	vmovaps zmm22,zmm24
  a37fa3:	62 e2 65 40 7f f4    	vpermt2ps zmm22,zmm19,zmm4
  a37fa9:	62 62 25 48 7f c4    	vpermt2ps zmm24,zmm11,zmm4
  a37faf:	c5 fb 10 84 17 98 00 	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x98]
  a37fb6:	00 00 
  a37fb8:	62 63 d5 48 1a c8 01 	vinsertf64x4 zmm25,zmm5,ymm0,0x1
  a37fbf:	62 91 7c 48 28 c1    	vmovaps zmm0,zmm25
  a37fc5:	62 f2 65 40 7f c4    	vpermt2ps zmm0,zmm19,zmm4
  a37fcb:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a37fd2:	fe 
  a37fd3:	c5 fb 10 84 17 c0 00 	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0xc0]
  a37fda:	00 00 
  a37fdc:	c5 fc 10 8c 17 a0 00 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0xa0]
  a37fe3:	00 00 
  a37fe5:	62 63 f5 48 1a f8 01 	vinsertf64x4 zmm31,zmm1,ymm0,0x1
  a37fec:	62 61 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm31
  a37ff3:	ff 
  a37ff4:	62 62 25 48 7f fc    	vpermt2ps zmm31,zmm11,zmm4
  a37ffa:	c5 fb 10 84 17 e8 00 	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0xe8]
  a38001:	00 00 
  a38003:	c5 fc 10 8c 17 c8 00 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0xc8]
  a3800a:	00 00 
  a3800c:	62 63 f5 48 1a e8 01 	vinsertf64x4 zmm29,zmm1,ymm0,0x1
  a38013:	62 01 7c 48 28 e5    	vmovaps zmm28,zmm29
  a38019:	62 62 65 40 7f e4    	vpermt2ps zmm28,zmm19,zmm4
  a3801f:	62 62 25 48 7f ec    	vpermt2ps zmm29,zmm11,zmm4
  a38025:	c5 fb 10 84 17 10 01 	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x110]
  a3802c:	00 00 
  a3802e:	c5 fc 10 8c 17 f0 00 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0xf0]
  a38035:	00 00 
  a38037:	62 e3 f5 48 1a d0 01 	vinsertf64x4 zmm18,zmm1,ymm0,0x1
  a3803e:	62 a1 7c 48 28 ea    	vmovaps zmm21,zmm18
  a38044:	62 e2 65 40 7f ec    	vpermt2ps zmm21,zmm19,zmm4
  a3804a:	62 e2 25 48 7f d4    	vpermt2ps zmm18,zmm11,zmm4
  a38050:	c5 fb 10 84 17 38 01 	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x138]
  a38057:	00 00 
  a38059:	c5 fc 10 8c 17 18 01 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x118]
  a38060:	00 00 
  a38062:	62 63 f5 48 1a f0 01 	vinsertf64x4 zmm30,zmm1,ymm0,0x1
  a38069:	62 01 7c 48 28 de    	vmovaps zmm27,zmm30
  a3806f:	62 62 25 48 7f f4    	vpermt2ps zmm30,zmm11,zmm4
  a38075:	c5 fb 10 84 17 60 01 	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x160]
  a3807c:	00 00 
  a3807e:	c5 fc 10 8c 17 40 01 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x140]
  a38085:	00 00 
  a38087:	62 e3 f5 48 1a e0 01 	vinsertf64x4 zmm20,zmm1,ymm0,0x1
  a3808e:	62 21 7c 48 28 d4    	vmovaps zmm26,zmm20
  a38094:	62 62 65 40 7f d4    	vpermt2ps zmm26,zmm19,zmm4
  a3809a:	c5 fb 10 84 17 88 01 	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x188]
  a380a1:	00 00 
  a380a3:	c5 fc 10 94 17 68 01 	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0x168]
  a380aa:	00 00 
  a380ac:	62 73 ed 48 1a e0 01 	vinsertf64x4 zmm12,zmm2,ymm0,0x1
  a380b3:	62 c1 7c 48 28 c4    	vmovaps zmm16,zmm12
  a380b9:	62 e2 65 40 7f c4    	vpermt2ps zmm16,zmm19,zmm4
  a380bf:	62 72 25 48 7f e4    	vpermt2ps zmm12,zmm11,zmm4
  a380c5:	c5 fb 10 84 17 b0 01 	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x1b0]
  a380cc:	00 00 
  a380ce:	c5 fc 10 94 17 90 01 	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0x190]
  a380d5:	00 00 
  a380d7:	62 73 ed 48 1a c0 01 	vinsertf64x4 zmm8,zmm2,ymm0,0x1
  a380de:	62 51 7c 48 28 c8    	vmovaps zmm9,zmm8
  a380e4:	62 72 65 40 7f cc    	vpermt2ps zmm9,zmm19,zmm4
  a380ea:	62 72 25 48 7f c4    	vpermt2ps zmm8,zmm11,zmm4
  a380f0:	c5 fb 10 84 17 d8 01 	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x1d8]
  a380f7:	00 00 
  a380f9:	c5 fc 10 94 17 b8 01 	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0x1b8]
  a38100:	00 00 
  a38102:	62 73 ed 48 1a f8 01 	vinsertf64x4 zmm15,zmm2,ymm0,0x1
  a38109:	62 d1 7c 48 28 d7    	vmovaps zmm2,zmm15
  a3810f:	62 f2 65 40 7f d4    	vpermt2ps zmm2,zmm19,zmm4
  a38115:	c5 fb 10 84 17 00 02 	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x200]
  a3811c:	00 00 
  a3811e:	c5 fc 10 9c 17 e0 01 	vmovups ymm3,YMMWORD PTR [rdi+rdx*1+0x1e0]
  a38125:	00 00 
  a38127:	62 f3 e5 48 1a c0 01 	vinsertf64x4 zmm0,zmm3,ymm0,0x1
  a3812e:	62 e1 7c 48 28 c8    	vmovaps zmm17,zmm0
  a38134:	62 f2 25 48 7f c4    	vpermt2ps zmm0,zmm11,zmm4
  a3813a:	c5 fb 10 9c 17 28 02 	vmovsd xmm3,QWORD PTR [rdi+rdx*1+0x228]
  a38141:	00 00 
  a38143:	c5 fc 10 ac 17 08 02 	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0x208]
  a3814a:	00 00 
  a3814c:	62 73 d5 48 1a d3 01 	vinsertf64x4 zmm10,zmm5,ymm3,0x1
  a38153:	62 d1 7c 48 28 f2    	vmovaps zmm6,zmm10
  a38159:	62 f2 65 40 7f f4    	vpermt2ps zmm6,zmm19,zmm4
  a3815f:	62 72 25 48 7f d4    	vpermt2ps zmm10,zmm11,zmm4
  a38165:	c5 fb 10 9c 17 50 02 	vmovsd xmm3,QWORD PTR [rdi+rdx*1+0x250]
  a3816c:	00 00 
  a3816e:	c5 fc 10 ac 17 30 02 	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0x230]
  a38175:	00 00 
  a38177:	62 f3 d5 48 1a fb 01 	vinsertf64x4 zmm7,zmm5,ymm3,0x1
  a3817e:	62 f1 7c 48 28 cf    	vmovaps zmm1,zmm7
  a38184:	62 f2 65 40 7f cc    	vpermt2ps zmm1,zmm19,zmm4
  a3818a:	62 f2 25 48 7f fc    	vpermt2ps zmm7,zmm11,zmm4
  a38190:	c5 fb 10 9c 17 78 02 	vmovsd xmm3,QWORD PTR [rdi+rdx*1+0x278]
  a38197:	00 00 
  a38199:	c5 fc 10 ac 17 58 02 	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0x258]
  a381a0:	00 00 
  a381a2:	62 f3 d5 48 1a eb 01 	vinsertf64x4 zmm5,zmm5,ymm3,0x1
  a381a9:	62 91 14 48 58 da    	vaddps zmm3,zmm13,zmm26
  a381af:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm3
  a381b6:	06 
  a381b7:	62 91 14 48 5c da    	vsubps zmm3,zmm13,zmm26
  a381bd:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm3
  a381c4:	07 
  a381c5:	62 f1 04 40 58 d8    	vaddps zmm3,zmm31,zmm0
  a381cb:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm3
  a381d2:	03 
  a381d3:	62 f1 04 40 5c c0    	vsubps zmm0,zmm31,zmm0
  a381d9:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm0
  a381e0:	05 
  a381e1:	62 d1 4c 40 58 c1    	vaddps zmm0,zmm22,zmm9
  a381e7:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm0
  a381ee:	04 
  a381ef:	62 51 4c 40 5c f1    	vsubps zmm14,zmm22,zmm9
  a381f5:	62 d1 3c 40 58 c0    	vaddps zmm0,zmm24,zmm8
  a381fb:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm0
  a38202:	10 
  a38203:	62 51 3c 40 5c e8    	vsubps zmm13,zmm24,zmm8
  a38209:	62 61 6c 40 58 ff    	vaddps zmm31,zmm18,zmm7
  a3820f:	62 71 6c 40 5c cf    	vsubps zmm9,zmm18,zmm7
  a38215:	62 f1 54 40 58 c1    	vaddps zmm0,zmm21,zmm1
  a3821b:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a38222:	02 
  a38223:	62 f1 54 40 5c c1    	vsubps zmm0,zmm21,zmm1
  a38229:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x40]
  a38230:	01 
  a38231:	62 21 74 48 58 d0    	vaddps zmm26,zmm1,zmm16
  a38237:	62 31 74 48 5c c0    	vsubps zmm8,zmm1,zmm16
  a3823d:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm8
  a38244:	0c 
  a38245:	62 41 14 40 58 c2    	vaddps zmm24,zmm29,zmm10
  a3824b:	62 d1 14 40 5c da    	vsubps zmm3,zmm29,zmm10
  a38251:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm3
  a38258:	0e 
  a38259:	62 c1 44 40 58 ec    	vaddps zmm21,zmm23,zmm12
  a3825f:	62 51 44 40 5c e4    	vsubps zmm12,zmm23,zmm12
  a38265:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm12
  a3826c:	0b 
  a3826d:	62 e1 1c 40 58 d6    	vaddps zmm18,zmm28,zmm6
  a38273:	62 81 4c 48 5c fc    	vsubps zmm23,zmm6,zmm28
  a38279:	62 e1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm23
  a38280:	0d 
  a38281:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a38288:	fe 
  a38289:	62 e1 74 48 58 f2    	vaddps zmm22,zmm1,zmm2
  a3828f:	62 61 74 48 5c e2    	vsubps zmm28,zmm1,zmm2
  a38295:	62 f1 7c 48 28 f5    	vmovaps zmm6,zmm5
  a3829b:	62 f2 25 48 7f ec    	vpermt2ps zmm5,zmm11,zmm4
  a382a1:	62 61 0c 40 58 ed    	vaddps zmm29,zmm30,zmm5
  a382a7:	62 f1 0c 40 5c fd    	vsubps zmm7,zmm30,zmm5
  a382ad:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm7
  a382b4:	09 
  a382b5:	62 62 25 48 7f cc    	vpermt2ps zmm25,zmm11,zmm4
  a382bb:	62 72 25 48 7f fc    	vpermt2ps zmm15,zmm11,zmm4
  a382c1:	62 c1 34 40 58 c7    	vaddps zmm16,zmm25,zmm15
  a382c7:	62 41 34 40 5c cf    	vsubps zmm25,zmm25,zmm15
  a382cd:	62 61 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm25
  a382d4:	08 
  a382d5:	62 62 65 40 7f dc    	vpermt2ps zmm27,zmm19,zmm4
  a382db:	62 f2 65 40 7f f4    	vpermt2ps zmm6,zmm19,zmm4
  a382e1:	62 71 24 40 58 d6    	vaddps zmm10,zmm27,zmm6
  a382e7:	62 91 4c 48 5c cb    	vsubps zmm1,zmm6,zmm27
  a382ed:	62 f1 7c 48 10 14 24 	vmovups zmm2,ZMMWORD PTR [rsp]
  a382f4:	62 f2 25 48 7f d4    	vpermt2ps zmm2,zmm11,zmm4
  a382fa:	62 e2 25 48 7f e4    	vpermt2ps zmm20,zmm11,zmm4
  a38300:	62 b1 6c 48 58 f4    	vaddps zmm6,zmm2,zmm20
  a38306:	62 b1 6c 48 5c d4    	vsubps zmm2,zmm2,zmm20
  a3830c:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm2
  a38313:	0f 
  a38314:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp-0x40]
  a3831b:	ff 
  a3831c:	62 f2 65 40 7f d4    	vpermt2ps zmm2,zmm19,zmm4
  a38322:	62 e2 65 40 7f cc    	vpermt2ps zmm17,zmm19,zmm4
  a38328:	62 31 6c 48 58 d9    	vaddps zmm11,zmm2,zmm17
  a3832e:	62 61 74 40 5c da    	vsubps zmm27,zmm17,zmm2
  a38334:	62 d1 0c 48 58 d5    	vaddps zmm2,zmm14,zmm13
  a3833a:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm2
  a38341:	fe 
  a38342:	62 d1 14 48 5c d6    	vsubps zmm2,zmm13,zmm14
  a38348:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm2
  a3834f:	0a 
  a38350:	62 f1 34 48 5c d0    	vsubps zmm2,zmm9,zmm0
  a38356:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm2
  a3835d:	01 
  a3835e:	62 41 7c 48 58 f1    	vaddps zmm30,zmm0,zmm9
  a38364:	62 f1 3c 48 58 c3    	vaddps zmm0,zmm8,zmm3
  a3836a:	62 d1 44 40 58 dc    	vaddps zmm3,zmm23,zmm12
  a38370:	62 f2 7d 48 18 15 ea 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff63d2ea]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a38377:	d2 63 ff 
  a3837a:	62 71 64 48 59 e2    	vmulps zmm12,zmm3,zmm2
  a38380:	62 f2 7d 48 18 2d 76 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff63d376]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a38387:	d3 63 ff 
  a3838a:	62 72 7d 48 b8 e5    	vfmadd231ps zmm12,zmm0,zmm5
  a38390:	62 71 64 48 59 fd    	vmulps zmm15,zmm3,zmm5
  a38396:	62 72 6d 48 bc f8    	vfnmadd231ps zmm15,zmm2,zmm0
  a3839c:	62 f1 1c 40 58 c7    	vaddps zmm0,zmm28,zmm7
  a383a2:	62 81 7c 48 28 dc    	vmovaps zmm19,zmm28
  a383a8:	62 91 74 48 58 d9    	vaddps zmm3,zmm1,zmm25
  a383ae:	62 e1 7c 48 28 e1    	vmovaps zmm20,zmm1
  a383b4:	62 71 64 48 59 f5    	vmulps zmm14,zmm3,zmm5
  a383ba:	62 72 7d 48 b8 f2    	vfmadd231ps zmm14,zmm0,zmm2
  a383c0:	62 e1 64 48 59 ca    	vmulps zmm17,zmm3,zmm2
  a383c6:	62 e2 55 48 bc c8    	vfnmadd231ps zmm17,zmm5,zmm0
  a383cc:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x180]
  a383d3:	06 
  a383d4:	62 51 7c 48 58 cb    	vaddps zmm9,zmm0,zmm11
  a383da:	62 d1 7c 48 5c c3    	vsubps zmm0,zmm0,zmm11
  a383e0:	62 f1 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm0
  a383e7:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x400]
  a383ee:	10 
  a383ef:	62 01 7c 48 58 e7    	vaddps zmm28,zmm0,zmm31
  a383f5:	62 91 7c 48 5c c7    	vsubps zmm0,zmm0,zmm31
  a383fb:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a38402:	ff 
  a38403:	62 a1 2c 40 58 fa    	vaddps zmm23,zmm26,zmm18
  a38409:	62 b1 2c 40 5c fa    	vsubps zmm7,zmm26,zmm18
  a3840f:	62 01 54 40 58 c8    	vaddps zmm25,zmm21,zmm24
  a38415:	62 11 54 40 5c e8    	vsubps zmm13,zmm21,zmm24
  a3841b:	62 81 7c 40 58 d5    	vaddps zmm18,zmm16,zmm29
  a38421:	62 91 7c 40 5c e5    	vsubps zmm4,zmm16,zmm29
  a38427:	62 51 4c 40 58 da    	vaddps zmm11,zmm22,zmm10
  a3842d:	62 51 4c 40 5c d2    	vsubps zmm10,zmm22,zmm10
  a38433:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a3843a:	03 
  a3843b:	62 f1 4c 48 58 d8    	vaddps zmm3,zmm6,zmm0
  a38441:	62 f1 4c 48 5c c0    	vsubps zmm0,zmm6,zmm0
  a38447:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a3844e:	03 
  a3844f:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x100]
  a38456:	04 
  a38457:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x80]
  a3845e:	02 
  a3845f:	62 f1 7c 48 58 f1    	vaddps zmm6,zmm0,zmm1
  a38465:	62 61 74 48 5c c0    	vsubps zmm24,zmm1,zmm0
  a3846b:	62 d1 44 48 58 c5    	vaddps zmm0,zmm7,zmm13
  a38471:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm0
  a38478:	06 
  a38479:	62 e1 14 48 5c ef    	vsubps zmm21,zmm13,zmm7
  a3847f:	62 d1 5c 48 5c c2    	vsubps zmm0,zmm4,zmm10
  a38485:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm0
  a3848c:	04 
  a3848d:	62 f1 2c 48 58 e4    	vaddps zmm4,zmm10,zmm4
  a38493:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x1c0]
  a3849a:	07 
  a3849b:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x140]
  a384a2:	05 
  a384a3:	62 f1 7c 48 58 f9    	vaddps zmm7,zmm0,zmm1
  a384a9:	62 f1 7c 48 5c c1    	vsubps zmm0,zmm0,zmm1
  a384af:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm0
  a384b6:	07 
  a384b7:	62 f2 7d 48 18 0d db 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff63cedb]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a384be:	ce 63 ff 
  a384c1:	62 71 74 48 59 54 24 	vmulps zmm10,zmm1,ZMMWORD PTR [rsp+0x280]
  a384c8:	0a 
  a384c9:	62 71 0c 40 59 c1    	vmulps zmm8,zmm30,zmm1
  a384cf:	62 41 2c 48 5c f0    	vsubps zmm30,zmm10,zmm8
  a384d5:	62 d1 2c 48 58 c0    	vaddps zmm0,zmm10,zmm8
  a384db:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm0
  a384e2:	05 
  a384e3:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x300]
  a384ea:	0c 
  a384eb:	62 71 7c 48 5c 44 24 	vsubps zmm8,zmm0,ZMMWORD PTR [rsp+0x380]
  a384f2:	0e 
  a384f3:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x2c0]
  a384fa:	0b 
  a384fb:	62 61 7c 48 5c 7c 24 	vsubps zmm31,zmm0,ZMMWORD PTR [rsp+0x340]
  a38502:	0d 
  a38503:	62 e1 64 40 5c 44 24 	vsubps zmm16,zmm19,ZMMWORD PTR [rsp+0x240]
  a3850a:	09 
  a3850b:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x200]
  a38512:	08 
  a38513:	62 a1 7c 48 5c dc    	vsubps zmm19,zmm0,zmm20
  a38519:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x3c0]
  a38520:	0f 
  a38521:	62 e1 24 40 58 e0    	vaddps zmm20,zmm27,zmm0
  a38527:	62 81 7c 48 5c f3    	vsubps zmm22,zmm0,zmm27
  a3852d:	62 61 74 48 59 54 24 	vmulps zmm26,zmm1,ZMMWORD PTR [rsp-0x80]
  a38534:	fe 
  a38535:	62 61 74 48 59 5c 24 	vmulps zmm27,zmm1,ZMMWORD PTR [rsp+0x40]
  a3853c:	01 
  a3853d:	62 91 2c 40 58 c3    	vaddps zmm0,zmm26,zmm27
  a38543:	62 01 24 40 5c d2    	vsubps zmm26,zmm27,zmm26
  a38549:	62 61 04 40 59 dd    	vmulps zmm27,zmm31,zmm5
  a3854f:	62 62 3d 48 b8 da    	vfmadd231ps zmm27,zmm8,zmm2
  a38555:	62 61 04 40 59 fa    	vmulps zmm31,zmm31,zmm2
  a3855b:	62 42 55 48 bc f8    	vfnmadd231ps zmm31,zmm5,zmm8
  a38561:	62 71 64 40 59 c2    	vmulps zmm8,zmm19,zmm2
  a38567:	62 72 7d 40 b8 c5    	vfmadd231ps zmm8,zmm16,zmm5
  a3856d:	62 e1 7c 40 59 c2    	vmulps zmm16,zmm16,zmm2
  a38573:	62 a2 55 48 bc c3    	vfnmadd231ps zmm16,zmm5,zmm19
  a38579:	62 e1 34 48 58 de    	vaddps zmm19,zmm9,zmm6
  a3857f:	62 f1 34 48 5c d6    	vsubps zmm2,zmm9,zmm6
  a38585:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm2
  a3858c:	fe 
  a3858d:	62 21 34 40 58 ea    	vaddps zmm29,zmm25,zmm18
  a38593:	62 31 34 40 5c ca    	vsubps zmm9,zmm25,zmm18
  a38599:	62 01 64 48 58 cc    	vaddps zmm25,zmm3,zmm28
  a3859f:	62 91 64 48 5c d4    	vsubps zmm2,zmm3,zmm28
  a385a5:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm2
  a385ac:	02 
  a385ad:	62 d1 44 40 58 f3    	vaddps zmm6,zmm23,zmm11
  a385b3:	62 21 24 48 5c e7    	vsubps zmm28,zmm11,zmm23
  a385b9:	62 e1 44 48 58 f8    	vaddps zmm23,zmm7,zmm0
  a385bf:	62 e1 44 48 5c d0    	vsubps zmm18,zmm7,zmm0
  a385c5:	62 b1 04 48 58 f9    	vaddps zmm7,zmm15,zmm17
  a385cb:	62 31 04 48 5c f9    	vsubps zmm15,zmm15,zmm17
  a385d1:	62 81 5c 40 58 ce    	vaddps zmm17,zmm20,zmm30
  a385d7:	62 01 5c 40 5c f6    	vsubps zmm30,zmm20,zmm30
  a385dd:	62 c1 1c 48 58 e6    	vaddps zmm20,zmm12,zmm14
  a385e3:	62 51 0c 48 5c f4    	vsubps zmm14,zmm14,zmm12
  a385e9:	62 f1 7c 48 10 04 24 	vmovups zmm0,ZMMWORD PTR [rsp]
  a385f0:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp-0x40]
  a385f7:	ff 
  a385f8:	62 f1 7c 48 58 da    	vaddps zmm3,zmm0,zmm2
  a385fe:	62 71 7c 48 5c ea    	vsubps zmm13,zmm0,zmm2
  a38604:	62 71 54 40 59 e1    	vmulps zmm12,zmm21,zmm1
  a3860a:	62 f1 5c 48 59 e1    	vmulps zmm4,zmm4,zmm1
  a38610:	62 e1 1c 48 5c ec    	vsubps zmm21,zmm12,zmm4
  a38616:	62 71 1c 48 58 dc    	vaddps zmm11,zmm12,zmm4
  a3861c:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a38623:	03 
  a38624:	62 f1 3c 40 58 d0    	vaddps zmm2,zmm24,zmm0
  a3862a:	62 01 7c 48 5c c0    	vsubps zmm24,zmm0,zmm24
  a38630:	62 f1 74 48 59 64 24 	vmulps zmm4,zmm1,ZMMWORD PTR [rsp+0x180]
  a38637:	06 
  a38638:	62 71 74 48 59 64 24 	vmulps zmm12,zmm1,ZMMWORD PTR [rsp+0x100]
  a3863f:	04 
  a38640:	62 d1 5c 48 58 cc    	vaddps zmm1,zmm4,zmm12
  a38646:	62 71 1c 48 5c d4    	vsubps zmm10,zmm12,zmm4
  a3864c:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x1c0]
  a38653:	07 
  a38654:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x140]
  a3865b:	05 
  a3865c:	62 f1 7c 48 58 e5    	vaddps zmm4,zmm0,zmm5
  a38662:	62 f1 7c 48 5c ed    	vsubps zmm5,zmm0,zmm5
  a38668:	62 31 04 40 58 e0    	vaddps zmm12,zmm31,zmm16
  a3866e:	62 21 04 40 5c f8    	vsubps zmm31,zmm31,zmm16
  a38674:	62 81 4c 40 58 c2    	vaddps zmm16,zmm22,zmm26
  a3867a:	62 81 4c 40 5c f2    	vsubps zmm22,zmm22,zmm26
  a38680:	62 41 24 40 5c d0    	vsubps zmm26,zmm27,zmm8
  a38686:	62 51 24 40 58 c0    	vaddps zmm8,zmm27,zmm8
  a3868c:	62 f1 64 40 58 c6    	vaddps zmm0,zmm19,zmm6
  a38692:	62 f1 64 40 5c f6    	vsubps zmm6,zmm19,zmm6
  a38698:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm6
  a3869f:	ff 
  a386a0:	62 01 34 40 58 dd    	vaddps zmm27,zmm25,zmm29
  a386a6:	62 91 34 40 5c f5    	vsubps zmm6,zmm25,zmm29
  a386ac:	62 f1 7c 48 11 34 24 	vmovups ZMMWORD PTR [rsp],zmm6
  a386b3:	62 21 44 40 58 ec    	vaddps zmm29,zmm23,zmm20
  a386b9:	62 a1 44 40 5c dc    	vsubps zmm19,zmm23,zmm20
  a386bf:	62 e1 74 40 58 ff    	vaddps zmm23,zmm17,zmm7
  a386c5:	62 61 74 40 5c cf    	vsubps zmm25,zmm17,zmm7
  a386cb:	62 e1 64 48 58 c9    	vaddps zmm17,zmm3,zmm1
  a386d1:	62 f1 64 48 5c f9    	vsubps zmm7,zmm3,zmm1
  a386d7:	62 b1 6c 48 58 dd    	vaddps zmm3,zmm2,zmm21
  a386dd:	62 a1 6c 48 5c e5    	vsubps zmm20,zmm2,zmm21
  a386e3:	62 81 5c 48 58 ea    	vaddps zmm21,zmm4,zmm26
  a386e9:	62 01 5c 48 5c d2    	vsubps zmm26,zmm4,zmm26
  a386ef:	62 d1 7c 40 58 d4    	vaddps zmm2,zmm16,zmm12
  a386f5:	62 51 7c 40 5c e4    	vsubps zmm12,zmm16,zmm12
  a386fb:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a38702:	fe 
  a38703:	62 d1 74 48 58 e1    	vaddps zmm4,zmm1,zmm9
  a38709:	62 d1 74 48 5c f1    	vsubps zmm6,zmm1,zmm9
  a3870f:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x80]
  a38716:	02 
  a38717:	62 71 1c 40 58 c9    	vaddps zmm9,zmm28,zmm1
  a3871d:	62 01 74 48 5c e4    	vsubps zmm28,zmm1,zmm28
  a38723:	62 c1 6c 40 58 c7    	vaddps zmm16,zmm18,zmm15
  a38729:	62 d1 6c 40 5c cf    	vsubps zmm1,zmm18,zmm15
  a3872f:	62 51 0c 40 58 fe    	vaddps zmm15,zmm30,zmm14
  a38735:	62 c1 0c 40 5c d6    	vsubps zmm18,zmm30,zmm14
  a3873b:	62 51 14 48 58 f3    	vaddps zmm14,zmm13,zmm11
  a38741:	62 51 14 48 5c db    	vsubps zmm11,zmm13,zmm11
  a38747:	62 41 3c 40 58 f2    	vaddps zmm30,zmm24,zmm10
  a3874d:	62 51 3c 40 5c d2    	vsubps zmm10,zmm24,zmm10
  a38753:	62 11 54 48 58 ef    	vaddps zmm13,zmm5,zmm31
  a38759:	62 01 54 48 5c c7    	vsubps zmm24,zmm5,zmm31
  a3875f:	62 d1 4c 40 5c e8    	vsubps zmm5,zmm22,zmm8
  a38765:	62 51 4c 40 58 c0    	vaddps zmm8,zmm22,zmm8
  a3876b:	62 e1 7c 48 28 35 0b 	vmovaps zmm22,ZMMWORD PTR [rip+0xffffffffff68e80b]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a38772:	e8 68 ff 
  a38775:	62 f2 4d 40 7f 44 24 	vpermt2ps zmm0,zmm22,ZMMWORD PTR [rsp-0x40]
  a3877c:	ff 
  a3877d:	62 22 4d 40 7f eb    	vpermt2ps zmm29,zmm22,zmm19
  a38783:	62 e2 4d 40 7f cf    	vpermt2ps zmm17,zmm22,zmm7
  a38789:	62 82 4d 40 7f ea    	vpermt2ps zmm21,zmm22,zmm26
  a3878f:	62 f2 4d 40 7f e6    	vpermt2ps zmm4,zmm22,zmm6
  a38795:	62 e2 4d 40 7f c1    	vpermt2ps zmm16,zmm22,zmm1
  a3879b:	62 52 4d 40 7f f3    	vpermt2ps zmm14,zmm22,zmm11
  a387a1:	62 12 4d 40 7f e8    	vpermt2ps zmm13,zmm22,zmm24
  a387a7:	62 f1 7c 48 28 f0    	vmovaps zmm6,zmm0
  a387ad:	62 e1 7c 48 28 1d 49 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff68e749]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a387b4:	e7 68 ff 
  a387b7:	62 f2 65 40 7f f4    	vpermt2ps zmm6,zmm19,zmm4
  a387bd:	62 61 7c 48 28 05 79 	vmovaps zmm24,ZMMWORD PTR [rip+0xffffffffff68e779]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a387c4:	e7 68 ff 
  a387c7:	62 f2 3d 40 7f c4    	vpermt2ps zmm0,zmm24,zmm4
  a387cd:	62 91 7c 48 28 e5    	vmovaps zmm4,zmm29
  a387d3:	62 b2 65 40 7f e0    	vpermt2ps zmm4,zmm19,zmm16
  a387d9:	62 22 3d 40 7f e8    	vpermt2ps zmm29,zmm24,zmm16
  a387df:	62 b1 7c 48 28 f9    	vmovaps zmm7,zmm17
  a387e5:	62 d2 65 40 7f fe    	vpermt2ps zmm7,zmm19,zmm14
  a387eb:	62 c2 3d 40 7f ce    	vpermt2ps zmm17,zmm24,zmm14
  a387f1:	62 b1 fd 48 14 c9    	vunpcklpd zmm1,zmm0,zmm17
  a387f7:	62 b1 7c 48 28 c5    	vmovaps zmm0,zmm21
  a387fd:	62 d2 65 40 7f c5    	vpermt2ps zmm0,zmm19,zmm13
  a38803:	62 c2 3d 40 7f ed    	vpermt2ps zmm21,zmm24,zmm13
  a38809:	62 a1 95 40 14 c5    	vunpcklpd zmm16,zmm29,zmm21
  a3880f:	62 71 cd 48 14 f7    	vunpcklpd zmm14,zmm6,zmm7
  a38815:	62 71 cd 48 15 df    	vunpckhpd zmm11,zmm6,zmm7
  a3881b:	62 f1 dd 48 14 f0    	vunpcklpd zmm6,zmm4,zmm0
  a38821:	62 f1 dd 48 15 c0    	vunpckhpd zmm0,zmm4,zmm0
  a38827:	62 c1 7c 48 28 ce    	vmovaps zmm17,zmm14
  a3882d:	62 e1 7c 48 28 2d c9 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff68e5c9]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a38834:	e5 68 ff 
  a38837:	62 e2 55 40 7f ce    	vpermt2ps zmm17,zmm21,zmm6
  a3883d:	62 61 7c 48 28 15 f9 	vmovaps zmm26,ZMMWORD PTR [rip+0xffffffffff68e5f9]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a38844:	e5 68 ff 
  a38847:	62 72 2d 40 7f f6    	vpermt2ps zmm14,zmm26,zmm6
  a3884d:	62 51 7c 48 28 eb    	vmovaps zmm13,zmm11
  a38853:	62 72 55 40 7f e8    	vpermt2ps zmm13,zmm21,zmm0
  a38859:	62 72 2d 40 7f d8    	vpermt2ps zmm11,zmm26,zmm0
  a3885f:	62 b2 55 40 7f c8    	vpermt2ps zmm1,zmm21,zmm16
  a38865:	62 62 4d 40 7f 1c 24 	vpermt2ps zmm27,zmm22,ZMMWORD PTR [rsp]
  a3886c:	62 82 4d 40 7f f9    	vpermt2ps zmm23,zmm22,zmm25
  a38872:	62 b2 4d 40 7f dc    	vpermt2ps zmm3,zmm22,zmm20
  a38878:	62 d2 4d 40 7f d4    	vpermt2ps zmm2,zmm22,zmm12
  a3887e:	62 12 4d 40 7f cc    	vpermt2ps zmm9,zmm22,zmm28
  a38884:	62 32 4d 40 7f fa    	vpermt2ps zmm15,zmm22,zmm18
  a3888a:	62 42 4d 40 7f f2    	vpermt2ps zmm30,zmm22,zmm10
  a38890:	62 d2 4d 40 7f e8    	vpermt2ps zmm5,zmm22,zmm8
  a38896:	62 91 7c 48 28 c3    	vmovaps zmm0,zmm27
  a3889c:	62 d2 65 40 7f c1    	vpermt2ps zmm0,zmm19,zmm9
  a388a2:	62 42 3d 40 7f d9    	vpermt2ps zmm27,zmm24,zmm9
  a388a8:	62 b1 7c 48 28 e7    	vmovaps zmm4,zmm23
  a388ae:	62 d2 65 40 7f e7    	vpermt2ps zmm4,zmm19,zmm15
  a388b4:	62 c2 3d 40 7f ff    	vpermt2ps zmm23,zmm24,zmm15
  a388ba:	62 f1 7c 48 28 f3    	vmovaps zmm6,zmm3
  a388c0:	62 92 65 40 7f f6    	vpermt2ps zmm6,zmm19,zmm30
  a388c6:	62 92 3d 40 7f de    	vpermt2ps zmm3,zmm24,zmm30
  a388cc:	62 f1 a5 40 14 db    	vunpcklpd zmm3,zmm27,zmm3
  a388d2:	62 f1 7c 48 28 fa    	vmovaps zmm7,zmm2
  a388d8:	62 f2 65 40 7f fd    	vpermt2ps zmm7,zmm19,zmm5
  a388de:	62 f2 3d 40 7f d5    	vpermt2ps zmm2,zmm24,zmm5
  a388e4:	62 f1 c5 40 14 d2    	vunpcklpd zmm2,zmm23,zmm2
  a388ea:	62 f1 fd 48 14 ee    	vunpcklpd zmm5,zmm0,zmm6
  a388f0:	62 f1 fd 48 15 c6    	vunpckhpd zmm0,zmm0,zmm6
  a388f6:	62 f1 dd 48 14 f7    	vunpcklpd zmm6,zmm4,zmm7
  a388fc:	62 f1 dd 48 15 ff    	vunpckhpd zmm7,zmm4,zmm7
  a38902:	62 f1 7c 48 28 e5    	vmovaps zmm4,zmm5
  a38908:	62 f2 55 40 7f e6    	vpermt2ps zmm4,zmm21,zmm6
  a3890e:	62 f2 2d 40 7f ee    	vpermt2ps zmm5,zmm26,zmm6
  a38914:	62 f1 7c 48 28 f0    	vmovaps zmm6,zmm0
  a3891a:	62 f2 55 40 7f f7    	vpermt2ps zmm6,zmm21,zmm7
  a38920:	62 f2 2d 40 7f c7    	vpermt2ps zmm0,zmm26,zmm7
  a38926:	62 f2 55 40 7f da    	vpermt2ps zmm3,zmm21,zmm2
  a3892c:	62 f1 7c 48 10 51 02 	vmovups zmm2,ZMMWORD PTR [rcx+0x80]
  a38933:	62 f1 7c 48 10 79 03 	vmovups zmm7,ZMMWORD PTR [rcx+0xc0]
  a3893a:	62 71 7c 48 10 41 04 	vmovups zmm8,ZMMWORD PTR [rcx+0x100]
  a38941:	62 71 7c 48 10 49 05 	vmovups zmm9,ZMMWORD PTR [rcx+0x140]
  a38948:	62 71 54 48 59 d2    	vmulps zmm10,zmm5,zmm2
  a3894e:	62 72 0d 48 b8 d7    	vfmadd231ps zmm10,zmm14,zmm7
  a38954:	62 f1 0c 48 59 d2    	vmulps zmm2,zmm14,zmm2
  a3895a:	62 71 7c 48 10 61 09 	vmovups zmm12,ZMMWORD PTR [rcx+0x240]
  a38961:	62 f2 45 48 bc d5    	vfnmadd231ps zmm2,zmm7,zmm5
  a38967:	62 f1 7c 48 10 69 08 	vmovups zmm5,ZMMWORD PTR [rcx+0x200]
  a3896e:	62 f1 64 48 59 fd    	vmulps zmm7,zmm3,zmm5
  a38974:	62 d2 75 48 b8 fc    	vfmadd231ps zmm7,zmm1,zmm12
  a3897a:	62 f1 74 48 59 cd    	vmulps zmm1,zmm1,zmm5
  a38980:	62 d1 4c 48 59 e8    	vmulps zmm5,zmm6,zmm8
  a38986:	62 d2 15 48 b8 e9    	vfmadd231ps zmm5,zmm13,zmm9
  a3898c:	62 f2 1d 48 bc cb    	vfnmadd231ps zmm1,zmm12,zmm3
  a38992:	62 f1 7c 48 10 59 07 	vmovups zmm3,ZMMWORD PTR [rcx+0x1c0]
  a38999:	62 71 7c 48 10 61 06 	vmovups zmm12,ZMMWORD PTR [rcx+0x180]
  a389a0:	62 51 14 48 59 c0    	vmulps zmm8,zmm13,zmm8
  a389a6:	62 51 7c 48 59 ec    	vmulps zmm13,zmm0,zmm12
  a389ac:	62 72 25 48 b8 eb    	vfmadd231ps zmm13,zmm11,zmm3
  a389b2:	62 72 35 48 bc c6    	vfnmadd231ps zmm8,zmm9,zmm6
  a389b8:	62 d1 54 48 58 f5    	vaddps zmm6,zmm5,zmm13
  a389be:	62 71 2c 48 58 cf    	vaddps zmm9,zmm10,zmm7
  a389c4:	62 51 24 48 59 dc    	vmulps zmm11,zmm11,zmm12
  a389ca:	62 72 7d 48 18 3d 14 	vbroadcastss zmm15,DWORD PTR [rip+0xffffffffff63cd14]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a389d1:	cd 63 ff 
  a389d4:	62 51 7c 48 28 e7    	vmovaps zmm12,zmm15
  a389da:	62 72 35 48 a8 e4    	vfmadd213ps zmm12,zmm9,zmm4
  a389e0:	62 e2 7d 48 18 05 5a 	vbroadcastss zmm16,DWORD PTR [rip+0xffffffffff63cc5a]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a389e7:	cc 63 ff 
  a389ea:	62 32 4d 48 bc e0    	vfnmadd231ps zmm12,zmm6,zmm16
  a389f0:	62 72 65 48 bc d8    	vfnmadd231ps zmm11,zmm3,zmm0
  a389f6:	62 f1 6c 48 5c d9    	vsubps zmm3,zmm2,zmm1
  a389fc:	62 51 3c 48 5c f3    	vsubps zmm14,zmm8,zmm11
  a38a02:	62 51 3c 48 58 c3    	vaddps zmm8,zmm8,zmm11
  a38a08:	62 e2 7d 48 18 15 46 	vbroadcastss zmm18,DWORD PTR [rip+0xffffffffff63cd46]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a38a0f:	cd 63 ff 
  a38a12:	62 31 0c 48 59 da    	vmulps zmm11,zmm14,zmm18
  a38a18:	62 e2 7d 48 18 1d 7e 	vbroadcastss zmm19,DWORD PTR [rip+0xffffffffff63c97e]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a38a1f:	c9 63 ff 
  a38a22:	62 32 65 48 b8 db    	vfmadd231ps zmm11,zmm3,zmm19
  a38a28:	62 f1 6c 48 58 c9    	vaddps zmm1,zmm2,zmm1
  a38a2e:	62 d1 1c 48 58 c3    	vaddps zmm0,zmm12,zmm11
  a38a34:	62 f1 2c 48 5c d7    	vsubps zmm2,zmm10,zmm7
  a38a3a:	62 d1 54 48 5c ed    	vsubps zmm5,zmm5,zmm13
  a38a40:	62 b1 54 48 59 fa    	vmulps zmm7,zmm5,zmm18
  a38a46:	62 b2 6d 48 b8 fb    	vfmadd231ps zmm7,zmm2,zmm19
  a38a4c:	62 31 7c 48 28 d0    	vmovaps zmm10,zmm16
  a38a52:	62 72 35 48 ac d4    	vfnmadd213ps zmm10,zmm9,zmm4
  a38a58:	62 52 4d 48 b8 d7    	vfmadd231ps zmm10,zmm6,zmm15
  a38a5e:	62 b1 64 48 59 da    	vmulps zmm3,zmm3,zmm18
  a38a64:	62 d2 65 40 bc de    	vfnmadd231ps zmm3,zmm19,zmm14
  a38a6a:	62 71 2c 48 58 eb    	vaddps zmm13,zmm10,zmm3
  a38a70:	62 b1 6c 48 59 d2    	vmulps zmm2,zmm2,zmm18
  a38a76:	62 f2 65 40 bc d5    	vfnmadd231ps zmm2,zmm19,zmm5
  a38a7c:	62 b1 7c 48 28 e8    	vmovaps zmm5,zmm16
  a38a82:	62 b2 75 48 ac e9    	vfnmadd213ps zmm5,zmm1,zmm17
  a38a88:	62 d2 3d 48 b8 ef    	vfmadd231ps zmm5,zmm8,zmm15
  a38a8e:	62 f1 2c 48 5c db    	vsubps zmm3,zmm10,zmm3
  a38a94:	62 71 54 48 5c d2    	vsubps zmm10,zmm5,zmm2
  a38a9a:	62 f1 54 48 58 d2    	vaddps zmm2,zmm5,zmm2
  a38aa0:	62 d1 7c 48 28 ef    	vmovaps zmm5,zmm15
  a38aa6:	62 b2 75 48 a8 e9    	vfmadd213ps zmm5,zmm1,zmm17
  a38aac:	62 b2 3d 48 bc e8    	vfnmadd231ps zmm5,zmm8,zmm16
  a38ab2:	62 51 1c 48 5c db    	vsubps zmm11,zmm12,zmm11
  a38ab8:	62 71 54 48 5c e7    	vsubps zmm12,zmm5,zmm7
  a38abe:	62 f1 54 48 58 ef    	vaddps zmm5,zmm5,zmm7
  a38ac4:	62 f1 34 48 58 e4    	vaddps zmm4,zmm9,zmm4
  a38aca:	62 f1 5c 48 58 e6    	vaddps zmm4,zmm4,zmm6
  a38ad0:	62 f1 74 40 58 c9    	vaddps zmm1,zmm17,zmm1
  a38ad6:	62 d1 74 48 58 c8    	vaddps zmm1,zmm1,zmm8
  a38adc:	62 f1 7c 48 28 f1    	vmovaps zmm6,zmm1
  a38ae2:	62 f1 7c 48 28 3d 54 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff658854]        # 91340 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e7f0>
  a38ae9:	88 65 ff 
  a38aec:	62 f2 45 48 7f f4    	vpermt2ps zmm6,zmm7,zmm4
  a38af2:	62 71 7c 48 28 05 84 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff658884]        # 91380 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e830>
  a38af9:	88 65 ff 
  a38afc:	62 f2 3d 48 7f cc    	vpermt2ps zmm1,zmm8,zmm4
  a38b02:	62 f1 7c 48 11 0c 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm1
  a38b09:	62 f1 7c 48 11 74 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x40],zmm6
  a38b10:	01 
  a38b11:	62 f1 7c 48 28 cd    	vmovaps zmm1,zmm5
  a38b17:	62 d2 45 48 7f cb    	vpermt2ps zmm1,zmm7,zmm11
  a38b1d:	62 d2 3d 48 7f eb    	vpermt2ps zmm5,zmm8,zmm11
  a38b23:	62 f1 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x80],zmm5
  a38b2a:	02 
  a38b2b:	62 f1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xc0],zmm1
  a38b32:	03 
  a38b33:	62 f1 7c 48 28 ca    	vmovaps zmm1,zmm2
  a38b39:	62 f2 45 48 7f cb    	vpermt2ps zmm1,zmm7,zmm3
  a38b3f:	62 f2 3d 48 7f d3    	vpermt2ps zmm2,zmm8,zmm3
  a38b45:	62 f1 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x100],zmm2
  a38b4c:	04 
  a38b4d:	62 f1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x140],zmm1
  a38b54:	05 
  a38b55:	62 d1 7c 48 28 ca    	vmovaps zmm1,zmm10
  a38b5b:	62 d2 45 48 7f cd    	vpermt2ps zmm1,zmm7,zmm13
  a38b61:	62 52 3d 48 7f d5    	vpermt2ps zmm10,zmm8,zmm13
  a38b67:	62 71 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x180],zmm10
  a38b6e:	06 
  a38b6f:	62 f1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1c0],zmm1
  a38b76:	07 
  a38b77:	62 d1 7c 48 28 cc    	vmovaps zmm1,zmm12
  a38b7d:	62 f2 45 48 7f c8    	vpermt2ps zmm1,zmm7,zmm0
  a38b83:	62 72 3d 48 7f e0    	vpermt2ps zmm12,zmm8,zmm0
  a38b89:	62 71 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x200],zmm12
  a38b90:	08 
  a38b91:	62 f1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x240],zmm1
  a38b98:	09 
  a38b99:	48 81 c2 80 02 00 00 	add    rdx,0x280
  a38ba0:	48 39 d0             	cmp    rax,rdx
  a38ba3:	0f 85 77 f3 ff ff    	jne    a37f20 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x20>
  a38ba9:	48 81 c4 48 04 00 00 	add    rsp,0x448
  a38bb0:	c5 f8 77             	vzeroupper
  a38bb3:	c3                   	ret
