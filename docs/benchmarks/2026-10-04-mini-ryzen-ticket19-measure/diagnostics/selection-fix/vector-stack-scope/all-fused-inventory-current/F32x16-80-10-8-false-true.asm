
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a35f80 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a35f80:	55                   	push   rbp
  a35f81:	48 89 e5             	mov    rbp,rsp
  a35f84:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a35f88:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  a35f8f:	62 f1 7c 48 28 05 e7 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff690fe7]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a35f96:	0f 69 ff 
  a35f99:	48 c1 e2 07          	shl    rdx,0x7
  a35f9d:	48 8d 04 92          	lea    rax,[rdx+rdx*4]
  a35fa1:	31 d2                	xor    edx,edx
  a35fa3:	4c 8d 44 24 40       	lea    r8,[rsp+0x40]
  a35fa8:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a35fad:	62 f1 7c 48 28 2d 89 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff65b089]        # 91040 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e4f0>
  a35fb4:	b0 65 ff 
  a35fb7:	c5 c8 57 f6          	vxorps xmm6,xmm6,xmm6
  a35fbb:	62 f2 7d 48 18 3d 23 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff63f723]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a35fc2:	f7 63 ff 
  a35fc5:	62 71 7c 48 28 1d b1 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff65b0b1]        # 91080 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e530>
  a35fcc:	b0 65 ff 
  a35fcf:	90                   	nop
  a35fd0:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  a35fd5:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a35fda:	62 71 7c 48 10 34 17 	vmovups zmm14,ZMMWORD PTR [rdi+rdx*1]
  a35fe1:	62 e1 7c 48 10 7c 17 	vmovups zmm23,ZMMWORD PTR [rdi+rdx*1+0x40]
  a35fe8:	01 
  a35fe9:	62 71 7c 48 10 64 17 	vmovups zmm12,ZMMWORD PTR [rdi+rdx*1+0x80]
  a35ff0:	02 
  a35ff1:	62 61 7c 48 10 54 17 	vmovups zmm26,ZMMWORD PTR [rdi+rdx*1+0xc0]
  a35ff8:	03 
  a35ff9:	62 51 7c 48 28 fe    	vmovaps zmm15,zmm14
  a35fff:	62 72 25 48 7f f6    	vpermt2ps zmm14,zmm11,zmm6
  a36005:	62 a1 7c 48 28 d7    	vmovaps zmm18,zmm23
  a3600b:	62 72 55 48 7f fe    	vpermt2ps zmm15,zmm5,zmm6
  a36011:	62 e2 55 48 7f d6    	vpermt2ps zmm18,zmm5,zmm6
  a36017:	62 e2 25 48 7f fe    	vpermt2ps zmm23,zmm11,zmm6
  a3601d:	62 41 7c 48 28 c4    	vmovaps zmm24,zmm12
  a36023:	62 62 55 48 7f c6    	vpermt2ps zmm24,zmm5,zmm6
  a36029:	62 72 25 48 7f e6    	vpermt2ps zmm12,zmm11,zmm6
  a3602f:	62 81 7c 48 28 da    	vmovaps zmm19,zmm26
  a36035:	62 62 25 48 7f d6    	vpermt2ps zmm26,zmm11,zmm6
  a3603b:	62 e2 55 48 7f de    	vpermt2ps zmm19,zmm5,zmm6
  a36041:	62 e1 7c 48 10 64 17 	vmovups zmm20,ZMMWORD PTR [rdi+rdx*1+0x100]
  a36048:	04 
  a36049:	62 21 7c 48 28 dc    	vmovaps zmm27,zmm20
  a3604f:	62 e2 25 48 7f e6    	vpermt2ps zmm20,zmm11,zmm6
  a36055:	62 62 55 48 7f de    	vpermt2ps zmm27,zmm5,zmm6
  a3605b:	62 e1 7c 48 10 44 17 	vmovups zmm16,ZMMWORD PTR [rdi+rdx*1+0x140]
  a36062:	05 
  a36063:	62 a1 7c 48 28 c8    	vmovaps zmm17,zmm16
  a36069:	62 e2 25 48 7f c6    	vpermt2ps zmm16,zmm11,zmm6
  a3606f:	62 e2 55 48 7f ce    	vpermt2ps zmm17,zmm5,zmm6
  a36075:	62 61 7c 48 10 74 17 	vmovups zmm30,ZMMWORD PTR [rdi+rdx*1+0x180]
  a3607c:	06 
  a3607d:	62 01 7c 48 28 ee    	vmovaps zmm29,zmm30
  a36083:	62 62 25 48 7f f6    	vpermt2ps zmm30,zmm11,zmm6
  a36089:	62 62 55 48 7f ee    	vpermt2ps zmm29,zmm5,zmm6
  a3608f:	62 61 7c 48 10 7c 17 	vmovups zmm31,ZMMWORD PTR [rdi+rdx*1+0x1c0]
  a36096:	07 
  a36097:	62 01 7c 48 28 e7    	vmovaps zmm28,zmm31
  a3609d:	62 62 25 48 7f fe    	vpermt2ps zmm31,zmm11,zmm6
  a360a3:	62 62 55 48 7f e6    	vpermt2ps zmm28,zmm5,zmm6
  a360a9:	62 e1 7c 48 10 74 17 	vmovups zmm22,ZMMWORD PTR [rdi+rdx*1+0x200]
  a360b0:	08 
  a360b1:	62 b1 7c 48 28 d6    	vmovaps zmm2,zmm22
  a360b7:	62 e2 25 48 7f f6    	vpermt2ps zmm22,zmm11,zmm6
  a360bd:	62 f2 55 48 7f d6    	vpermt2ps zmm2,zmm5,zmm6
  a360c3:	62 f1 7c 48 10 4c 17 	vmovups zmm1,ZMMWORD PTR [rdi+rdx*1+0x240]
  a360ca:	09 
  a360cb:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a360d1:	62 f2 25 48 7f ce    	vpermt2ps zmm1,zmm11,zmm6
  a360d7:	62 f2 55 48 7f de    	vpermt2ps zmm3,zmm5,zmm6
  a360dd:	62 21 1c 48 58 ce    	vaddps zmm25,zmm12,zmm22
  a360e3:	62 81 5c 40 58 ee    	vaddps zmm21,zmm20,zmm30
  a360e9:	62 b1 1c 48 5c e6    	vsubps zmm4,zmm12,zmm22
  a360ef:	62 81 04 40 58 f2    	vaddps zmm22,zmm31,zmm26
  a360f5:	62 01 5c 40 5c f6    	vsubps zmm30,zmm20,zmm30
  a360fb:	62 a1 74 48 58 e7    	vaddps zmm20,zmm1,zmm23
  a36101:	62 01 04 40 5c d2    	vsubps zmm26,zmm31,zmm26
  a36107:	62 61 3c 40 58 fa    	vaddps zmm31,zmm24,zmm2
  a3610d:	62 a1 74 48 5c ff    	vsubps zmm23,zmm1,zmm23
  a36113:	62 11 24 40 58 c5    	vaddps zmm8,zmm27,zmm29
  a36119:	62 f1 3c 40 5c d2    	vsubps zmm2,zmm24,zmm2
  a3611f:	62 21 1c 40 58 c3    	vaddps zmm24,zmm28,zmm19
  a36125:	62 01 24 40 5c dd    	vsubps zmm27,zmm27,zmm29
  a3612b:	62 21 64 48 58 ea    	vaddps zmm29,zmm3,zmm18
  a36131:	62 21 1c 40 5c e3    	vsubps zmm28,zmm28,zmm19
  a36137:	62 81 04 48 58 df    	vaddps zmm19,zmm15,zmm31
  a3613d:	62 b1 64 48 5c ca    	vsubps zmm1,zmm3,zmm18
  a36143:	62 71 7c 48 28 e7    	vmovaps zmm12,zmm7
  a36149:	62 52 05 40 a8 e7    	vfmadd213ps zmm12,zmm31,zmm15
  a3614f:	62 c1 64 40 58 d0    	vaddps zmm18,zmm19,zmm8
  a36155:	62 72 7d 48 18 0d e5 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff63f4e5]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a3615c:	f4 63 ff 
  a3615f:	62 12 35 48 bc ff    	vfnmadd231ps zmm15,zmm9,zmm31
  a36165:	62 91 74 40 58 d8    	vaddps zmm3,zmm17,zmm24
  a3616b:	62 52 3d 48 bc e1    	vfnmadd231ps zmm12,zmm8,zmm9
  a36171:	62 52 45 48 b8 f8    	vfmadd231ps zmm15,zmm7,zmm8
  a36177:	62 72 7d 48 18 15 d7 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff63f5d7]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a3617e:	f5 63 ff 
  a36181:	62 51 0c 40 59 c2    	vmulps zmm8,zmm30,zmm10
  a36187:	62 72 7d 48 18 2d 0f 	vbroadcastss zmm13,DWORD PTR [rip+0xffffffffff63f20f]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a3618e:	f2 63 ff 
  a36191:	62 52 5d 48 b8 c5    	vfmadd231ps zmm8,zmm4,zmm13
  a36197:	62 d1 5c 48 59 e2    	vmulps zmm4,zmm4,zmm10
  a3619d:	62 81 64 48 58 dd    	vaddps zmm19,zmm3,zmm29
  a361a3:	62 92 15 48 bc e6    	vfnmadd231ps zmm4,zmm13,zmm30
  a361a9:	62 f1 7c 48 28 df    	vmovaps zmm3,zmm7
  a361af:	62 b2 3d 40 a8 d9    	vfmadd213ps zmm3,zmm24,zmm17
  a361b5:	62 d2 15 40 bc d9    	vfnmadd231ps zmm3,zmm29,zmm9
  a361bb:	62 82 35 48 bc c8    	vfnmadd231ps zmm17,zmm9,zmm24
  a361c1:	62 41 44 40 59 f2    	vmulps zmm30,zmm23,zmm10
  a361c7:	62 42 2d 40 b8 f5    	vfmadd231ps zmm30,zmm26,zmm13
  a361cd:	62 82 45 48 b8 cd    	vfmadd231ps zmm17,zmm7,zmm29
  a361d3:	62 61 7c 48 28 ef    	vmovaps zmm29,zmm7
  a361d9:	62 41 2c 40 59 d2    	vmulps zmm26,zmm26,zmm10
  a361df:	62 22 15 48 bc d7    	vfnmadd231ps zmm26,zmm13,zmm23
  a361e5:	62 81 0c 48 58 f9    	vaddps zmm23,zmm14,zmm25
  a361eb:	62 42 35 40 a8 ee    	vfmadd213ps zmm29,zmm25,zmm14
  a361f1:	62 12 35 48 bc f1    	vfnmadd231ps zmm14,zmm9,zmm25
  a361f7:	62 21 7c 40 58 c6    	vaddps zmm24,zmm16,zmm22
  a361fd:	62 a1 44 40 58 fd    	vaddps zmm23,zmm23,zmm21
  a36203:	62 42 55 40 bc e9    	vfnmadd231ps zmm29,zmm21,zmm9
  a36209:	62 32 45 48 b8 f5    	vfmadd231ps zmm14,zmm7,zmm21
  a3620f:	62 c1 24 40 59 ea    	vmulps zmm21,zmm27,zmm10
  a36215:	62 c2 6d 48 b8 ed    	vfmadd231ps zmm21,zmm2,zmm13
  a3621b:	62 d1 6c 48 59 d2    	vmulps zmm2,zmm2,zmm10
  a36221:	62 92 15 48 bc d3    	vfnmadd231ps zmm2,zmm13,zmm27
  a36227:	62 61 7c 48 28 cf    	vmovaps zmm25,zmm7
  a3622d:	62 21 3c 40 58 dc    	vaddps zmm27,zmm24,zmm20
  a36233:	62 22 4d 40 a8 c8    	vfmadd213ps zmm25,zmm22,zmm16
  a36239:	62 a2 35 48 bc c6    	vfnmadd231ps zmm16,zmm9,zmm22
  a3623f:	62 c1 74 48 59 f2    	vmulps zmm22,zmm1,zmm10
  a36245:	62 42 5d 40 bc c9    	vfnmadd231ps zmm25,zmm20,zmm9
  a3624b:	62 c2 1d 40 b8 f5    	vfmadd231ps zmm22,zmm28,zmm13
  a36251:	62 a2 45 48 b8 c4    	vfmadd231ps zmm16,zmm7,zmm20
  a36257:	62 c1 1c 40 59 e2    	vmulps zmm20,zmm28,zmm10
  a3625d:	62 21 6c 40 58 c3    	vaddps zmm24,zmm18,zmm19
  a36263:	62 e2 15 48 bc e1    	vfnmadd231ps zmm20,zmm13,zmm1
  a36269:	62 f1 04 48 58 cc    	vaddps zmm1,zmm15,zmm4
  a3626f:	62 f1 04 48 5c e4    	vsubps zmm4,zmm15,zmm4
  a36275:	62 11 74 40 58 fa    	vaddps zmm15,zmm17,zmm26
  a3627b:	62 81 74 40 5c ca    	vsubps zmm17,zmm17,zmm26
  a36281:	62 61 0c 48 5c d2    	vsubps zmm26,zmm14,zmm2
  a36287:	62 d1 6c 48 58 d6    	vaddps zmm2,zmm2,zmm14
  a3628d:	62 31 7c 40 5c f4    	vsubps zmm14,zmm16,zmm20
  a36293:	62 a1 5c 40 58 c0    	vaddps zmm16,zmm20,zmm16
  a36299:	62 41 1c 48 58 e0    	vaddps zmm28,zmm12,zmm8
  a3629f:	62 51 1c 48 5c c0    	vsubps zmm8,zmm12,zmm8
  a362a5:	62 11 64 48 58 e6    	vaddps zmm12,zmm3,zmm30
  a362ab:	62 91 64 48 5c de    	vsubps zmm3,zmm3,zmm30
  a362b1:	62 21 14 40 5c f5    	vsubps zmm30,zmm29,zmm21
  a362b7:	62 01 54 40 58 ed    	vaddps zmm29,zmm21,zmm29
  a362bd:	62 a1 34 40 5c ee    	vsubps zmm21,zmm25,zmm22
  a362c3:	62 01 4c 40 58 f9    	vaddps zmm31,zmm22,zmm25
  a362c9:	62 81 44 40 58 e3    	vaddps zmm20,zmm23,zmm27
  a362cf:	62 a1 6c 40 5c d3    	vsubps zmm18,zmm18,zmm19
  a362d5:	62 51 1c 40 5c cc    	vsubps zmm9,zmm28,zmm12
  a362db:	62 01 44 40 5c db    	vsubps zmm27,zmm23,zmm27
  a362e1:	62 a1 0c 40 5c f5    	vsubps zmm22,zmm30,zmm21
  a362e7:	62 51 1c 40 58 e4    	vaddps zmm12,zmm28,zmm12
  a362ed:	62 41 74 48 58 e7    	vaddps zmm28,zmm1,zmm15
  a362f3:	62 a1 0c 40 58 ed    	vaddps zmm21,zmm30,zmm21
  a362f9:	62 41 2c 40 58 ce    	vaddps zmm25,zmm26,zmm14
  a362ff:	62 51 74 48 5c ff    	vsubps zmm15,zmm1,zmm15
  a36305:	62 21 5c 48 5c f1    	vsubps zmm30,zmm4,zmm17
  a3630b:	62 c1 2c 40 5c fe    	vsubps zmm23,zmm26,zmm14
  a36311:	62 21 6c 48 5c d0    	vsubps zmm26,zmm2,zmm16
  a36317:	62 b1 5c 48 58 e1    	vaddps zmm4,zmm4,zmm17
  a3631d:	62 71 3c 48 58 f3    	vaddps zmm14,zmm8,zmm3
  a36323:	62 b1 6c 48 58 c8    	vaddps zmm1,zmm2,zmm16
  a36329:	62 81 14 40 58 df    	vaddps zmm19,zmm29,zmm31
  a3632f:	62 f1 3c 48 5c d3    	vsubps zmm2,zmm8,zmm3
  a36335:	62 91 14 40 5c df    	vsubps zmm3,zmm29,zmm31
  a3633b:	62 62 7d 48 7f c4    	vpermt2ps zmm24,zmm0,zmm4
  a36341:	62 72 7d 48 7f ca    	vpermt2ps zmm9,zmm0,zmm2
  a36347:	62 62 7d 48 7f e6    	vpermt2ps zmm28,zmm0,zmm6
  a3634d:	62 62 7d 48 7f f6    	vpermt2ps zmm30,zmm0,zmm6
  a36353:	62 72 7d 48 7f f6    	vpermt2ps zmm14,zmm0,zmm6
  a36359:	62 e2 7d 48 7f d6    	vpermt2ps zmm18,zmm0,zmm6
  a3635f:	62 72 7d 48 7f e6    	vpermt2ps zmm12,zmm0,zmm6
  a36365:	62 72 7d 48 7f fe    	vpermt2ps zmm15,zmm0,zmm6
  a3636b:	62 91 7c 48 28 d0    	vmovaps zmm2,zmm24
  a36371:	62 61 7c 48 28 3d c5 	vmovaps zmm31,ZMMWORD PTR [rip+0xffffffffff690bc5]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a36378:	0b 69 ff 
  a3637b:	62 42 05 40 7f c6    	vpermt2ps zmm24,zmm31,zmm14
  a36381:	62 d1 7c 48 28 e1    	vmovaps zmm4,zmm9
  a36387:	62 61 7c 48 28 2d 6f 	vmovaps zmm29,ZMMWORD PTR [rip+0xffffffffff690b6f]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a3638e:	0b 69 ff 
  a36391:	62 d2 15 40 7f d6    	vpermt2ps zmm2,zmm29,zmm14
  a36397:	62 b2 15 40 7f e2    	vpermt2ps zmm4,zmm29,zmm18
  a3639d:	62 32 05 40 7f ca    	vpermt2ps zmm9,zmm31,zmm18
  a363a3:	62 11 7c 48 28 c4    	vmovaps zmm8,zmm28
  a363a9:	62 52 15 40 7f c4    	vpermt2ps zmm8,zmm29,zmm12
  a363af:	62 42 05 40 7f e4    	vpermt2ps zmm28,zmm31,zmm12
  a363b5:	62 11 7c 48 28 e6    	vmovaps zmm12,zmm30
  a363bb:	62 42 05 40 7f f7    	vpermt2ps zmm30,zmm31,zmm15
  a363c1:	62 52 15 40 7f e7    	vpermt2ps zmm12,zmm29,zmm15
  a363c7:	62 c1 ed 48 14 d0    	vunpcklpd zmm18,zmm2,zmm8
  a363cd:	62 c1 ed 48 15 c0    	vunpckhpd zmm16,zmm2,zmm8
  a363d3:	62 81 bd 40 14 cc    	vunpcklpd zmm17,zmm24,zmm28
  a363d9:	62 51 dd 48 14 f4    	vunpcklpd zmm14,zmm4,zmm12
  a363df:	62 11 bd 40 15 fc    	vunpckhpd zmm15,zmm24,zmm28
  a363e5:	62 91 b5 48 14 d6    	vunpcklpd zmm2,zmm9,zmm30
  a363eb:	62 11 b5 48 15 c6    	vunpckhpd zmm8,zmm9,zmm30
  a363f1:	62 51 dd 48 15 e4    	vunpckhpd zmm12,zmm4,zmm12
  a363f7:	62 21 7c 48 28 c1    	vmovaps zmm24,zmm17
  a363fd:	62 e2 7d 48 7f e1    	vpermt2ps zmm20,zmm0,zmm1
  a36403:	62 e2 7d 48 7f f3    	vpermt2ps zmm22,zmm0,zmm3
  a36409:	62 71 7c 48 28 2d 2d 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff690a2d]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a36410:	0a 69 ff 
  a36413:	62 e2 15 48 7f ca    	vpermt2ps zmm17,zmm13,zmm2
  a36419:	62 62 7d 48 7f ce    	vpermt2ps zmm25,zmm0,zmm6
  a3641f:	62 62 7d 48 7f d6    	vpermt2ps zmm26,zmm0,zmm6
  a36425:	62 e2 7d 48 7f de    	vpermt2ps zmm19,zmm0,zmm6
  a3642b:	62 41 7c 48 28 e7    	vmovaps zmm28,zmm15
  a36431:	62 62 7d 48 7f de    	vpermt2ps zmm27,zmm0,zmm6
  a36437:	62 e2 7d 48 7f ee    	vpermt2ps zmm21,zmm0,zmm6
  a3643d:	62 e2 7d 48 7f fe    	vpermt2ps zmm23,zmm0,zmm6
  a36443:	62 52 15 48 7f f8    	vpermt2ps zmm15,zmm13,zmm8
  a36449:	62 b1 7c 48 28 cc    	vmovaps zmm1,zmm20
  a3644f:	62 b2 15 40 7f cb    	vpermt2ps zmm1,zmm29,zmm19
  a36455:	62 a2 05 40 7f e3    	vpermt2ps zmm20,zmm31,zmm19
  a3645b:	62 a1 7c 48 28 da    	vmovaps zmm19,zmm18
  a36461:	62 b1 7c 48 28 de    	vmovaps zmm3,zmm22
  a36467:	62 92 15 40 7f db    	vpermt2ps zmm3,zmm29,zmm27
  a3646d:	62 82 05 40 7f f3    	vpermt2ps zmm22,zmm31,zmm27
  a36473:	62 c2 15 48 7f d6    	vpermt2ps zmm18,zmm13,zmm14
  a36479:	62 91 7c 48 28 e1    	vmovaps zmm4,zmm25
  a3647f:	62 b2 15 40 7f e5    	vpermt2ps zmm4,zmm29,zmm21
  a36485:	62 22 05 40 7f cd    	vpermt2ps zmm25,zmm31,zmm21
  a3648b:	62 a1 7c 48 28 e8    	vmovaps zmm21,zmm16
  a36491:	62 11 7c 48 28 ca    	vmovaps zmm9,zmm26
  a36497:	62 32 15 40 7f cf    	vpermt2ps zmm9,zmm29,zmm23
  a3649d:	62 22 05 40 7f d7    	vpermt2ps zmm26,zmm31,zmm23
  a364a3:	62 c2 15 48 7f c4    	vpermt2ps zmm16,zmm13,zmm12
  a364a9:	62 61 f5 48 14 fc    	vunpcklpd zmm31,zmm1,zmm4
  a364af:	62 61 f5 48 15 ec    	vunpckhpd zmm29,zmm1,zmm4
  a364b5:	62 c1 e5 48 14 f9    	vunpcklpd zmm23,zmm3,zmm9
  a364bb:	62 71 7c 48 28 15 3b 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff69093b]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a364c2:	09 69 ff 
  a364c5:	62 62 2d 48 7f c2    	vpermt2ps zmm24,zmm10,zmm2
  a364cb:	62 41 e5 48 15 d9    	vunpckhpd zmm27,zmm3,zmm9
  a364d1:	62 01 dd 40 14 f1    	vunpcklpd zmm30,zmm20,zmm25
  a364d7:	62 01 dd 40 15 c9    	vunpckhpd zmm25,zmm20,zmm25
  a364dd:	62 42 2d 48 7f e0    	vpermt2ps zmm28,zmm10,zmm8
  a364e3:	62 91 cd 40 14 ca    	vunpcklpd zmm1,zmm22,zmm26
  a364e9:	62 91 cd 40 15 d2    	vunpckhpd zmm2,zmm22,zmm26
  a364ef:	62 81 7c 48 28 e7    	vmovaps zmm20,zmm31
  a364f5:	62 22 15 48 7f ff    	vpermt2ps zmm31,zmm13,zmm23
  a364fb:	62 81 7c 48 28 f5    	vmovaps zmm22,zmm29
  a36501:	62 02 15 48 7f eb    	vpermt2ps zmm29,zmm13,zmm27
  a36507:	62 91 7c 48 28 de    	vmovaps zmm3,zmm30
  a3650d:	62 f2 2d 48 7f d9    	vpermt2ps zmm3,zmm10,zmm1
  a36513:	62 62 15 48 7f f1    	vpermt2ps zmm30,zmm13,zmm1
  a36519:	62 91 7c 48 28 e1    	vmovaps zmm4,zmm25
  a3651f:	62 f2 2d 48 7f e2    	vpermt2ps zmm4,zmm10,zmm2
  a36525:	62 c2 2d 48 7f ec    	vpermt2ps zmm21,zmm10,zmm12
  a3652b:	62 62 15 48 7f ca    	vpermt2ps zmm25,zmm13,zmm2
  a36531:	62 f1 7c 48 10 49 08 	vmovups zmm1,ZMMWORD PTR [rcx+0x200]
  a36538:	62 f1 7c 48 10 51 09 	vmovups zmm2,ZMMWORD PTR [rcx+0x240]
  a3653f:	62 61 3c 40 59 d1    	vmulps zmm26,zmm24,zmm1
  a36545:	62 62 65 48 bc d2    	vfnmadd231ps zmm26,zmm3,zmm2
  a3654b:	62 71 64 48 59 e1    	vmulps zmm12,zmm3,zmm1
  a36551:	62 f1 7c 48 10 49 0c 	vmovups zmm1,ZMMWORD PTR [rcx+0x300]
  a36558:	62 12 6d 48 b8 e0    	vfmadd231ps zmm12,zmm2,zmm24
  a3655e:	62 f1 7c 48 10 51 0d 	vmovups zmm2,ZMMWORD PTR [rcx+0x340]
  a36565:	62 61 1c 40 59 c1    	vmulps zmm24,zmm28,zmm1
  a3656b:	62 f1 5c 48 59 c9    	vmulps zmm1,zmm4,zmm1
  a36571:	62 62 5d 48 bc c2    	vfnmadd231ps zmm24,zmm4,zmm2
  a36577:	62 f1 7c 48 10 59 02 	vmovups zmm3,ZMMWORD PTR [rcx+0x80]
  a3657e:	62 92 6d 48 b8 cc    	vfmadd231ps zmm1,zmm2,zmm28
  a36584:	62 f1 7c 48 10 51 03 	vmovups zmm2,ZMMWORD PTR [rcx+0xc0]
  a3658b:	62 f1 6c 40 59 e3    	vmulps zmm4,zmm18,zmm3
  a36591:	62 f2 05 40 bc e2    	vfnmadd231ps zmm4,zmm31,zmm2
  a36597:	62 f1 04 40 59 db    	vmulps zmm3,zmm31,zmm3
  a3659d:	62 71 7c 48 10 41 0a 	vmovups zmm8,ZMMWORD PTR [rcx+0x280]
  a365a4:	62 b2 6d 48 b8 da    	vfmadd231ps zmm3,zmm2,zmm18
  a365aa:	62 f1 7c 48 10 51 0b 	vmovups zmm2,ZMMWORD PTR [rcx+0x2c0]
  a365b1:	62 51 74 40 59 c8    	vmulps zmm9,zmm17,zmm8
  a365b7:	62 51 0c 40 59 c0    	vmulps zmm8,zmm30,zmm8
  a365bd:	62 72 0d 40 bc ca    	vfnmadd231ps zmm9,zmm30,zmm2
  a365c3:	62 e1 7c 48 10 51 06 	vmovups zmm18,ZMMWORD PTR [rcx+0x180]
  a365ca:	62 32 6d 48 b8 c1    	vfmadd231ps zmm8,zmm2,zmm17
  a365d0:	62 f1 7c 48 10 51 07 	vmovups zmm2,ZMMWORD PTR [rcx+0x1c0]
  a365d7:	62 a1 7c 40 59 ca    	vmulps zmm17,zmm16,zmm18
  a365dd:	62 e2 15 40 bc ca    	vfnmadd231ps zmm17,zmm29,zmm2
  a365e3:	62 a1 14 40 59 d2    	vmulps zmm18,zmm29,zmm18
  a365e9:	62 61 7c 48 10 61 0e 	vmovups zmm28,ZMMWORD PTR [rcx+0x380]
  a365f0:	62 a2 6d 48 b8 d0    	vfmadd231ps zmm18,zmm2,zmm16
  a365f6:	62 f1 7c 48 10 51 0f 	vmovups zmm2,ZMMWORD PTR [rcx+0x3c0]
  a365fd:	62 81 04 48 59 c4    	vmulps zmm16,zmm15,zmm28
  a36603:	62 01 34 40 59 e4    	vmulps zmm28,zmm25,zmm28
  a36609:	62 e2 35 40 bc c2    	vfnmadd231ps zmm16,zmm25,zmm2
  a3660f:	62 42 6d 48 b8 e7    	vfmadd231ps zmm28,zmm2,zmm15
  a36615:	62 f1 7c 48 10 51 04 	vmovups zmm2,ZMMWORD PTR [rcx+0x100]
  a3661c:	62 71 7c 48 10 79 05 	vmovups zmm15,ZMMWORD PTR [rcx+0x140]
  a36623:	62 82 2d 48 7f f3    	vpermt2ps zmm22,zmm10,zmm27
  a36629:	62 61 54 40 59 ca    	vmulps zmm25,zmm21,zmm2
  a3662f:	62 42 4d 40 bc cf    	vfnmadd231ps zmm25,zmm22,zmm15
  a36635:	62 f1 4c 40 59 d2    	vmulps zmm2,zmm22,zmm2
  a3663b:	62 b2 05 48 b8 d5    	vfmadd231ps zmm2,zmm15,zmm21
  a36641:	62 c2 2d 48 7f de    	vpermt2ps zmm19,zmm10,zmm14
  a36647:	62 a2 2d 48 7f e7    	vpermt2ps zmm20,zmm10,zmm23
  a3664d:	62 11 64 40 58 f2    	vaddps zmm14,zmm19,zmm26
  a36653:	62 11 64 40 5c fa    	vsubps zmm15,zmm19,zmm26
  a36659:	62 c1 5c 48 58 d9    	vaddps zmm19,zmm4,zmm9
  a3665f:	62 d1 5c 48 5c e1    	vsubps zmm4,zmm4,zmm9
  a36665:	62 51 64 48 58 c8    	vaddps zmm9,zmm3,zmm8
  a3666b:	62 d1 64 48 5c d8    	vsubps zmm3,zmm3,zmm8
  a36671:	62 11 6c 40 58 c4    	vaddps zmm8,zmm18,zmm28
  a36677:	62 81 6c 40 5c d4    	vsubps zmm18,zmm18,zmm28
  a3667d:	62 a1 74 40 58 e8    	vaddps zmm21,zmm17,zmm16
  a36683:	62 a1 74 40 5c c0    	vsubps zmm16,zmm17,zmm16
  a36689:	62 a1 1c 48 58 cc    	vaddps zmm17,zmm12,zmm20
  a3668f:	62 51 5c 40 5c e4    	vsubps zmm12,zmm20,zmm12
  a36695:	62 e1 6c 48 58 e1    	vaddps zmm20,zmm2,zmm1
  a3669b:	62 f1 6c 48 5c c9    	vsubps zmm1,zmm2,zmm1
  a366a1:	62 91 34 40 58 d0    	vaddps zmm2,zmm25,zmm24
  a366a7:	62 81 3c 40 5c f1    	vsubps zmm22,zmm24,zmm25
  a366ad:	62 e1 5c 48 58 fb    	vaddps zmm23,zmm4,zmm3
  a366b3:	62 f1 64 48 5c dc    	vsubps zmm3,zmm3,zmm4
  a366b9:	62 b1 6c 40 5c e0    	vsubps zmm4,zmm18,zmm16
  a366bf:	62 a1 7c 40 58 c2    	vaddps zmm16,zmm16,zmm18
  a366c5:	62 e1 0c 48 58 d2    	vaddps zmm18,zmm14,zmm2
  a366cb:	62 f1 0c 48 5c d2    	vsubps zmm2,zmm14,zmm2
  a366d1:	62 51 34 48 58 f0    	vaddps zmm14,zmm9,zmm8
  a366d7:	62 51 34 48 5c c0    	vsubps zmm8,zmm9,zmm8
  a366dd:	62 31 5c 40 58 c9    	vaddps zmm9,zmm20,zmm17
  a366e3:	62 a1 74 40 5c cc    	vsubps zmm17,zmm17,zmm20
  a366e9:	62 a1 64 40 58 e5    	vaddps zmm20,zmm19,zmm21
  a366ef:	62 a1 54 40 5c db    	vsubps zmm19,zmm21,zmm19
  a366f5:	62 e1 04 48 58 e9    	vaddps zmm21,zmm15,zmm1
  a366fb:	62 72 7d 48 18 15 97 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff63ec97]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a36702:	ec 63 ff 
  a36705:	62 c1 44 40 59 fa    	vmulps zmm23,zmm23,zmm10
  a3670b:	62 d1 5c 48 59 e2    	vmulps zmm4,zmm4,zmm10
  a36711:	62 f1 04 48 5c c9    	vsubps zmm1,zmm15,zmm1
  a36717:	62 51 4c 40 58 fc    	vaddps zmm15,zmm22,zmm12
  a3671d:	62 d1 64 48 59 da    	vmulps zmm3,zmm3,zmm10
  a36723:	62 c1 7c 40 59 c2    	vmulps zmm16,zmm16,zmm10
  a36729:	62 31 1c 48 5c e6    	vsubps zmm12,zmm12,zmm22
  a3672f:	62 a1 64 48 5c f0    	vsubps zmm22,zmm3,zmm16
  a36735:	62 b1 64 48 58 d8    	vaddps zmm3,zmm3,zmm16
  a3673b:	62 c1 6c 48 58 c0    	vaddps zmm16,zmm2,zmm8
  a36741:	62 d1 6c 48 5c d0    	vsubps zmm2,zmm2,zmm8
  a36747:	62 71 44 40 58 c4    	vaddps zmm8,zmm23,zmm4
  a3674d:	62 b1 5c 48 5c e7    	vsubps zmm4,zmm4,zmm23
  a36753:	62 a1 74 40 58 fb    	vaddps zmm23,zmm17,zmm19
  a36759:	62 a1 74 40 5c cb    	vsubps zmm17,zmm17,zmm19
  a3675f:	62 c1 54 40 58 d8    	vaddps zmm19,zmm21,zmm8
  a36765:	62 51 54 40 5c c0    	vsubps zmm8,zmm21,zmm8
  a3676b:	62 a1 6c 40 5c ec    	vsubps zmm21,zmm18,zmm20
  a36771:	62 a1 6c 40 58 d4    	vaddps zmm18,zmm18,zmm20
  a36777:	62 a1 04 48 58 e6    	vaddps zmm20,zmm15,zmm22
  a3677d:	62 31 04 48 5c fe    	vsubps zmm15,zmm15,zmm22
  a36783:	62 c1 34 48 5c f6    	vsubps zmm22,zmm9,zmm14
  a36789:	62 51 34 48 58 ce    	vaddps zmm9,zmm9,zmm14
  a3678f:	62 71 74 48 58 f3    	vaddps zmm14,zmm1,zmm3
  a36795:	62 f1 74 48 5c cb    	vsubps zmm1,zmm1,zmm3
  a3679b:	62 e3 7d 48 19 d3 02 	vextractf32x4 xmm3,zmm18,0x2
  a367a2:	62 71 7c 48 28 15 14 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff65a914]        # 910c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e570>
  a367a9:	a9 65 ff 
  a367ac:	62 c2 2d 48 7f d1    	vpermt2ps zmm18,zmm10,zmm9
  a367b2:	62 e1 7c 48 11 14 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm18
  a367b9:	62 53 7d 48 19 c9 02 	vextractf32x4 xmm9,zmm9,0x2
  a367c0:	c4 c1 60 14 d9       	vunpcklps xmm3,xmm3,xmm9
  a367c5:	c5 f8 11 5c 16 40    	vmovups XMMWORD PTR [rsi+rdx*1+0x40],xmm3
  a367cb:	62 f1 1c 48 58 dc    	vaddps zmm3,zmm12,zmm4
  a367d1:	62 f1 1c 48 5c e4    	vsubps zmm4,zmm12,zmm4
  a367d7:	62 c3 7d 48 19 d9 02 	vextractf32x4 xmm9,zmm19,0x2
  a367de:	62 a2 2d 48 7f dc    	vpermt2ps zmm19,zmm10,zmm20
  a367e4:	62 e1 7c 48 11 9c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x50],zmm19
  a367eb:	50 00 00 00 
  a367ef:	62 c3 7d 48 19 e4 02 	vextractf32x4 xmm12,zmm20,0x2
  a367f6:	c4 41 30 14 cc       	vunpcklps xmm9,xmm9,xmm12
  a367fb:	c5 78 11 8c 16 90 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x90],xmm9
  a36802:	00 00 
  a36804:	62 c3 7d 48 19 c1 02 	vextractf32x4 xmm9,zmm16,0x2
  a3680b:	62 a2 2d 48 7f c7    	vpermt2ps zmm16,zmm10,zmm23
  a36811:	62 e1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xa0],zmm16
  a36818:	a0 00 00 00 
  a3681c:	62 c3 7d 48 19 fc 02 	vextractf32x4 xmm12,zmm23,0x2
  a36823:	c4 41 30 14 cc       	vunpcklps xmm9,xmm9,xmm12
  a36828:	c5 78 11 8c 16 e0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xe0],xmm9
  a3682f:	00 00 
  a36831:	62 53 7d 48 19 f1 02 	vextractf32x4 xmm9,zmm14,0x2
  a36838:	62 72 2d 48 7f f3    	vpermt2ps zmm14,zmm10,zmm3
  a3683e:	62 71 7c 48 11 b4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xf0],zmm14
  a36845:	f0 00 00 00 
  a36849:	62 f3 7d 48 19 db 02 	vextractf32x4 xmm3,zmm3,0x2
  a36850:	c5 b0 14 db          	vunpcklps xmm3,xmm9,xmm3
  a36854:	c5 f8 11 9c 16 30 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x130],xmm3
  a3685b:	00 00 
  a3685d:	62 e3 7d 48 19 eb 02 	vextractf32x4 xmm3,zmm21,0x2
  a36864:	62 a2 2d 48 7f ee    	vpermt2ps zmm21,zmm10,zmm22
  a3686a:	62 e1 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x140],zmm21
  a36871:	05 
  a36872:	62 c3 7d 48 19 f1 02 	vextractf32x4 xmm9,zmm22,0x2
  a36879:	c4 c1 60 14 d9       	vunpcklps xmm3,xmm3,xmm9
  a3687e:	c5 f8 11 9c 16 80 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x180],xmm3
  a36885:	00 00 
  a36887:	62 73 7d 48 19 c3 02 	vextractf32x4 xmm3,zmm8,0x2
  a3688e:	62 52 2d 48 7f c7    	vpermt2ps zmm8,zmm10,zmm15
  a36894:	62 71 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x190],zmm8
  a3689b:	90 01 00 00 
  a3689f:	62 53 7d 48 19 f8 02 	vextractf32x4 xmm8,zmm15,0x2
  a368a6:	c4 c1 60 14 d8       	vunpcklps xmm3,xmm3,xmm8
  a368ab:	c5 f8 11 9c 16 d0 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x1d0],xmm3
  a368b2:	00 00 
  a368b4:	62 f3 7d 48 19 d3 02 	vextractf32x4 xmm3,zmm2,0x2
  a368bb:	62 b2 2d 48 7f d1    	vpermt2ps zmm2,zmm10,zmm17
  a368c1:	62 f1 7c 48 11 94 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1e0],zmm2
  a368c8:	e0 01 00 00 
  a368cc:	62 e3 7d 48 19 ca 02 	vextractf32x4 xmm2,zmm17,0x2
  a368d3:	c5 e0 14 d2          	vunpcklps xmm2,xmm3,xmm2
  a368d7:	c5 f8 11 94 16 20 02 	vmovups XMMWORD PTR [rsi+rdx*1+0x220],xmm2
  a368de:	00 00 
  a368e0:	62 f3 7d 48 19 ca 02 	vextractf32x4 xmm2,zmm1,0x2
  a368e7:	62 f2 2d 48 7f cc    	vpermt2ps zmm1,zmm10,zmm4
  a368ed:	62 f1 7c 48 11 8c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x230],zmm1
  a368f4:	30 02 00 00 
  a368f8:	62 f3 7d 48 19 e1 02 	vextractf32x4 xmm1,zmm4,0x2
  a368ff:	c5 e8 14 c9          	vunpcklps xmm1,xmm2,xmm1
  a36903:	c5 f8 11 8c 16 70 02 	vmovups XMMWORD PTR [rsi+rdx*1+0x270],xmm1
  a3690a:	00 00 
  a3690c:	48 81 c2 80 02 00 00 	add    rdx,0x280
  a36913:	48 39 d0             	cmp    rax,rdx
  a36916:	0f 85 b4 f6 ff ff    	jne    a35fd0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x50>
  a3691c:	48 89 ec             	mov    rsp,rbp
  a3691f:	5d                   	pop    rbp
  a36920:	c5 f8 77             	vzeroupper
  a36923:	c3                   	ret
