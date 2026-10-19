
target/ticket19/selection-fix/page-storage-stack/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000ad2f80 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  ad2f80:	55                   	push   rbp
  ad2f81:	48 89 e5             	mov    rbp,rsp
  ad2f84:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  ad2f88:	48 81 ec 40 08 00 00 	sub    rsp,0x840
  ad2f8f:	c5 fc 10 82 00 04 00 	vmovups ymm0,YMMWORD PTR [rdx+0x400]
  ad2f96:	00 
  ad2f97:	c5 fc 10 8a 20 04 00 	vmovups ymm1,YMMWORD PTR [rdx+0x420]
  ad2f9e:	00 
  ad2f9f:	c5 fc 10 92 40 04 00 	vmovups ymm2,YMMWORD PTR [rdx+0x440]
  ad2fa6:	00 
  ad2fa7:	c5 fc 10 9a 60 04 00 	vmovups ymm3,YMMWORD PTR [rdx+0x460]
  ad2fae:	00 
  ad2faf:	c5 fc 10 a2 a0 04 00 	vmovups ymm4,YMMWORD PTR [rdx+0x4a0]
  ad2fb6:	00 
  ad2fb7:	c5 fc 10 aa 80 04 00 	vmovups ymm5,YMMWORD PTR [rdx+0x480]
  ad2fbe:	00 
  ad2fbf:	31 c0                	xor    eax,eax
  ad2fc1:	c4 e2 7d 19 35 16 1d 	vbroadcastsd ymm6,QWORD PTR [rip+0xffffffffff5a1d16]        # 74ce0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x22c0>
  ad2fc8:	5a ff 
  ad2fca:	c4 e2 7d 18 3d 89 22 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff5a2289]        # 7525c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x283c>
  ad2fd1:	5a ff 
  ad2fd3:	c4 62 7d 19 05 d4 19 	vbroadcastsd ymm8,QWORD PTR [rip+0xffffffffff5a19d4]        # 749b0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f90>
  ad2fda:	5a ff 
  ad2fdc:	c4 62 7d 18 0d 57 23 	vbroadcastss ymm9,DWORD PTR [rip+0xffffffffff5a2357]        # 7533c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x291c>
  ad2fe3:	5a ff 
  ad2fe5:	48 89 f9             	mov    rcx,rdi
  ad2fe8:	45 31 c0             	xor    r8d,r8d
  ad2feb:	eb 61                	jmp    ad304e <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0xce>
  ad2fed:	0f 1f 00             	nop    DWORD PTR [rax]
  ad2ff0:	62 a1 6c 00 16 d3    	vmovlhps xmm18,xmm18,xmm19
  ad2ff6:	62 a1 5c 00 16 de    	vmovlhps xmm19,xmm20,xmm22
  ad2ffc:	62 e1 7c 08 29 5c c4 	vmovaps XMMWORD PTR [rsp+rax*8+0x30],xmm19
  ad3003:	03 
  ad3004:	62 e1 7c 08 29 54 c4 	vmovaps XMMWORD PTR [rsp+rax*8+0x20],xmm18
  ad300b:	02 
  ad300c:	c4 41 08 16 f7       	vmovlhps xmm14,xmm14,xmm15
  ad3011:	62 31 74 00 16 f8    	vmovlhps xmm15,xmm17,xmm16
  ad3017:	c5 78 29 7c c4 50    	vmovaps XMMWORD PTR [rsp+rax*8+0x50],xmm15
  ad301d:	c5 78 29 74 c4 40    	vmovaps XMMWORD PTR [rsp+rax*8+0x40],xmm14
  ad3023:	c4 41 10 16 db       	vmovlhps xmm11,xmm13,xmm11
  ad3028:	c4 41 18 16 d2       	vmovlhps xmm10,xmm12,xmm10
  ad302d:	c5 78 29 54 c4 70    	vmovaps XMMWORD PTR [rsp+rax*8+0x70],xmm10
  ad3033:	c5 78 29 5c c4 60    	vmovaps XMMWORD PTR [rsp+rax*8+0x60],xmm11
  ad3039:	48 83 c0 40          	add    rax,0x40
  ad303d:	48 83 c1 20          	add    rcx,0x20
  ad3041:	41 f6 c0 01          	test   r8b,0x1
  ad3045:	41 b0 01             	mov    r8b,0x1
  ad3048:	0f 85 e5 04 00 00    	jne    ad3533 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x5b3>
  ad304e:	48 85 c0             	test   rax,rax
  ad3051:	74 7d                	je     ad30d0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x150>
  ad3053:	c5 7b 10 39          	vmovsd xmm15,QWORD PTR [rcx]
  ad3057:	c5 7b 10 71 28       	vmovsd xmm14,QWORD PTR [rcx+0x28]
  ad305c:	c5 7b 10 51 50       	vmovsd xmm10,QWORD PTR [rcx+0x50]
  ad3061:	c5 7b 10 61 78       	vmovsd xmm12,QWORD PTR [rcx+0x78]
  ad3066:	62 e1 ff 08 10 61 14 	vmovsd xmm20,QWORD PTR [rcx+0xa0]
  ad306d:	62 e1 ff 08 10 49 19 	vmovsd xmm17,QWORD PTR [rcx+0xc8]
  ad3074:	c5 7b 10 99 f0 00 00 	vmovsd xmm11,QWORD PTR [rcx+0xf0]
  ad307b:	00 
  ad307c:	c5 7b 10 a9 18 01 00 	vmovsd xmm13,QWORD PTR [rcx+0x118]
  ad3083:	00 
  ad3084:	62 e1 ff 08 10 79 28 	vmovsd xmm23,QWORD PTR [rcx+0x140]
  ad308b:	62 e1 ff 08 10 69 2d 	vmovsd xmm21,QWORD PTR [rcx+0x168]
  ad3092:	62 e1 ff 08 10 51 32 	vmovsd xmm18,QWORD PTR [rcx+0x190]
  ad3099:	62 e1 ff 08 10 41 37 	vmovsd xmm16,QWORD PTR [rcx+0x1b8]
  ad30a0:	62 61 ff 08 10 49 3c 	vmovsd xmm25,QWORD PTR [rcx+0x1e0]
  ad30a7:	62 61 ff 08 10 41 41 	vmovsd xmm24,QWORD PTR [rcx+0x208]
  ad30ae:	62 e1 ff 08 10 71 46 	vmovsd xmm22,QWORD PTR [rcx+0x230]
  ad30b5:	62 e1 ff 08 10 59 4b 	vmovsd xmm19,QWORD PTR [rcx+0x258]
  ad30bc:	e9 8d 00 00 00       	jmp    ad314e <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x1ce>
  ad30c1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  ad30c8:	0f 1f 84 00 00 00 00 
  ad30cf:	00 
  ad30d0:	c5 7c 10 39          	vmovups ymm15,YMMWORD PTR [rcx]
  ad30d4:	c5 7c 10 61 78       	vmovups ymm12,YMMWORD PTR [rcx+0x78]
  ad30d9:	c5 7c 10 99 f0 00 00 	vmovups ymm11,YMMWORD PTR [rcx+0xf0]
  ad30e0:	00 
  ad30e1:	c5 7c 10 77 28       	vmovups ymm14,YMMWORD PTR [rdi+0x28]
  ad30e6:	c5 7c 10 57 50       	vmovups ymm10,YMMWORD PTR [rdi+0x50]
  ad30eb:	62 e1 7c 28 10 67 05 	vmovups ymm20,YMMWORD PTR [rdi+0xa0]
  ad30f2:	62 e1 7c 28 10 8f c8 	vmovups ymm17,YMMWORD PTR [rdi+0xc8]
  ad30f9:	00 00 00 
  ad30fc:	c5 7c 10 af 18 01 00 	vmovups ymm13,YMMWORD PTR [rdi+0x118]
  ad3103:	00 
  ad3104:	62 e1 7c 28 10 7f 0a 	vmovups ymm23,YMMWORD PTR [rdi+0x140]
  ad310b:	62 e1 7c 28 10 af 68 	vmovups ymm21,YMMWORD PTR [rdi+0x168]
  ad3112:	01 00 00 
  ad3115:	62 e1 7c 28 10 97 90 	vmovups ymm18,YMMWORD PTR [rdi+0x190]
  ad311c:	01 00 00 
  ad311f:	62 e1 7c 28 10 87 b8 	vmovups ymm16,YMMWORD PTR [rdi+0x1b8]
  ad3126:	01 00 00 
  ad3129:	62 61 7c 28 10 4f 0f 	vmovups ymm25,YMMWORD PTR [rdi+0x1e0]
  ad3130:	62 61 7c 28 10 87 08 	vmovups ymm24,YMMWORD PTR [rdi+0x208]
  ad3137:	02 00 00 
  ad313a:	62 e1 7c 28 10 b7 30 	vmovups ymm22,YMMWORD PTR [rdi+0x230]
  ad3141:	02 00 00 
  ad3144:	62 e1 7c 28 10 9f 58 	vmovups ymm19,YMMWORD PTR [rdi+0x258]
  ad314b:	02 00 00 
  ad314e:	62 21 04 28 58 d7    	vaddps ymm26,ymm15,ymm23
  ad3154:	62 21 04 28 5c df    	vsubps ymm27,ymm15,ymm23
  ad315a:	62 01 5c 20 58 e1    	vaddps ymm28,ymm20,ymm25
  ad3160:	62 11 5c 20 5c f9    	vsubps ymm15,ymm20,ymm25
  ad3166:	c4 41 04 c6 ff b1    	vshufps ymm15,ymm15,ymm15,0xb1
  ad316c:	62 e1 7c 28 28 fe    	vmovaps ymm23,ymm6
  ad3172:	62 82 05 28 a8 fb    	vfmadd213ps ymm23,ymm15,ymm27
  ad3178:	62 12 4d 28 ac fb    	vfnmadd213ps ymm15,ymm6,ymm27
  ad317e:	62 01 2c 20 58 cc    	vaddps ymm25,ymm26,ymm28
  ad3184:	62 81 2c 20 5c e4    	vsubps ymm20,ymm26,ymm28
  ad318a:	62 21 0c 28 58 d5    	vaddps ymm26,ymm14,ymm21
  ad3190:	62 31 0c 28 5c f5    	vsubps ymm14,ymm14,ymm21
  ad3196:	62 81 74 20 58 e8    	vaddps ymm21,ymm17,ymm24
  ad319c:	62 81 74 20 5c c8    	vsubps ymm17,ymm17,ymm24
  ad31a2:	62 a1 74 20 c6 c9 b1 	vshufps ymm17,ymm17,ymm17,0xb1
  ad31a9:	62 61 7c 28 28 c6    	vmovaps ymm24,ymm6
  ad31af:	62 42 75 20 a8 c6    	vfmadd213ps ymm24,ymm17,ymm14
  ad31b5:	62 c2 4d 28 ac ce    	vfnmadd213ps ymm17,ymm6,ymm14
  ad31bb:	62 31 2c 20 58 f5    	vaddps ymm14,ymm26,ymm21
  ad31c1:	62 a1 2c 20 5c ed    	vsubps ymm21,ymm26,ymm21
  ad31c7:	62 21 2c 28 58 d2    	vaddps ymm26,ymm10,ymm18
  ad31cd:	62 a1 2c 28 5c d2    	vsubps ymm18,ymm10,ymm18
  ad31d3:	62 21 24 28 58 de    	vaddps ymm27,ymm11,ymm22
  ad31d9:	62 31 24 28 5c d6    	vsubps ymm10,ymm11,ymm22
  ad31df:	c4 41 2c c6 d2 b1    	vshufps ymm10,ymm10,ymm10,0xb1
  ad31e5:	c5 7c 28 de          	vmovaps ymm11,ymm6
  ad31e9:	62 32 2d 28 a8 da    	vfmadd213ps ymm11,ymm10,ymm18
  ad31ef:	62 32 4d 28 ac d2    	vfnmadd213ps ymm10,ymm6,ymm18
  ad31f5:	62 81 2c 20 58 d3    	vaddps ymm18,ymm26,ymm27
  ad31fb:	62 81 2c 20 5c f3    	vsubps ymm22,ymm26,ymm27
  ad3201:	62 21 1c 28 58 d0    	vaddps ymm26,ymm12,ymm16
  ad3207:	62 31 1c 28 5c e0    	vsubps ymm12,ymm12,ymm16
  ad320d:	62 a1 14 28 58 c3    	vaddps ymm16,ymm13,ymm19
  ad3213:	62 31 14 28 5c eb    	vsubps ymm13,ymm13,ymm19
  ad3219:	c4 41 14 c6 ed b1    	vshufps ymm13,ymm13,ymm13,0xb1
  ad321f:	62 e1 7c 28 28 de    	vmovaps ymm19,ymm6
  ad3225:	62 c2 15 28 a8 dc    	vfmadd213ps ymm19,ymm13,ymm12
  ad322b:	c4 42 4d ac ec       	vfnmadd213ps ymm13,ymm6,ymm12
  ad3230:	62 21 2c 20 58 d8    	vaddps ymm27,ymm26,ymm16
  ad3236:	62 31 2c 20 5c e0    	vsubps ymm12,ymm26,ymm16
  ad323c:	62 81 3c 20 c6 c0 b1 	vshufps ymm16,ymm24,ymm24,0xb1
  ad3243:	62 61 3c 20 59 c0    	vmulps ymm24,ymm24,ymm0
  ad3249:	62 22 75 28 b8 c0    	vfmadd231ps ymm24,ymm1,ymm16
  ad324f:	62 a1 54 20 c6 c5 b1 	vshufps ymm16,ymm21,ymm21,0xb1
  ad3256:	62 61 54 20 59 d7    	vmulps ymm26,ymm21,ymm7
  ad325c:	62 22 3d 28 b8 d0    	vfmadd231ps ymm26,ymm8,ymm16
  ad3262:	62 a1 74 20 c6 e9 b1 	vshufps ymm21,ymm17,ymm17,0xb1
  ad3269:	62 e1 74 20 59 c2    	vmulps ymm16,ymm17,ymm2
  ad326f:	62 a2 65 28 b8 c5    	vfmadd231ps ymm16,ymm3,ymm21
  ad3275:	62 a1 64 20 c6 cb b1 	vshufps ymm17,ymm19,ymm19,0xb1
  ad327c:	62 e1 64 20 59 da    	vmulps ymm19,ymm19,ymm2
  ad3282:	62 a2 65 28 b8 d9    	vfmadd231ps ymm19,ymm3,ymm17
  ad3288:	62 c1 1c 28 c6 cc b1 	vshufps ymm17,ymm12,ymm12,0xb1
  ad328f:	62 41 1c 28 59 e1    	vmulps ymm28,ymm12,ymm9
  ad3295:	62 22 3d 28 b8 e1    	vfmadd231ps ymm28,ymm8,ymm17
  ad329b:	c4 41 14 c6 e5 b1    	vshufps ymm12,ymm13,ymm13,0xb1
  ad32a1:	62 61 14 28 59 ed    	vmulps ymm29,ymm13,ymm5
  ad32a7:	62 42 5d 28 b8 ec    	vfmadd231ps ymm29,ymm4,ymm12
  ad32ad:	62 a1 34 20 58 ca    	vaddps ymm17,ymm25,ymm18
  ad32b3:	62 a1 34 20 5c ea    	vsubps ymm21,ymm25,ymm18
  ad32b9:	c4 41 24 c6 e3 b1    	vshufps ymm12,ymm11,ymm11,0xb1
  ad32bf:	62 61 7c 28 28 cf    	vmovaps ymm25,ymm7
  ad32c5:	62 22 25 28 a8 cf    	vfmadd213ps ymm25,ymm11,ymm23
  ad32cb:	62 42 1d 28 b8 c8    	vfmadd231ps ymm25,ymm12,ymm8
  ad32d1:	62 32 45 28 ac df    	vfnmadd213ps ymm11,ymm7,ymm23
  ad32d7:	c4 42 3d bc dc       	vfnmadd231ps ymm11,ymm8,ymm12
  ad32dc:	62 31 4c 20 c6 e6 b1 	vshufps ymm12,ymm22,ymm22,0xb1
  ad32e3:	62 e1 7c 28 28 f6    	vmovaps ymm22,ymm6
  ad32e9:	62 a2 1d 28 a8 f4    	vfmadd213ps ymm22,ymm12,ymm20
  ad32ef:	62 32 4d 28 ac e4    	vfnmadd213ps ymm12,ymm6,ymm20
  ad32f5:	c4 41 2c c6 ea b1    	vshufps ymm13,ymm10,ymm10,0xb1
  ad32fb:	62 61 7c 28 28 f7    	vmovaps ymm30,ymm7
  ad3301:	62 42 2d 28 ac f7    	vfnmadd213ps ymm30,ymm10,ymm15
  ad3307:	62 42 15 28 b8 f0    	vfmadd231ps ymm30,ymm13,ymm8
  ad330d:	c4 42 45 a8 d7       	vfmadd213ps ymm10,ymm7,ymm15
  ad3312:	c4 42 3d bc d5       	vfnmadd231ps ymm10,ymm8,ymm13
  ad3317:	62 11 0c 28 58 fb    	vaddps ymm15,ymm14,ymm27
  ad331d:	62 11 0c 28 5c eb    	vsubps ymm13,ymm14,ymm27
  ad3323:	c4 41 14 c6 ed b1    	vshufps ymm13,ymm13,ymm13,0xb1
  ad3329:	62 e1 7c 28 28 d6    	vmovaps ymm18,ymm6
  ad332f:	62 a2 15 28 a8 d5    	vfmadd213ps ymm18,ymm13,ymm21
  ad3335:	62 32 4d 28 ac ed    	vfnmadd213ps ymm13,ymm6,ymm21
  ad333b:	62 c1 74 20 58 ef    	vaddps ymm21,ymm17,ymm15
  ad3341:	62 51 74 20 5c f7    	vsubps ymm14,ymm17,ymm15
  ad3347:	62 31 3c 20 58 fb    	vaddps ymm15,ymm24,ymm19
  ad334d:	62 a1 3c 20 5c cb    	vsubps ymm17,ymm24,ymm19
  ad3353:	62 a1 74 20 c6 c9 b1 	vshufps ymm17,ymm17,ymm17,0xb1
  ad335a:	62 e1 7c 28 28 de    	vmovaps ymm19,ymm6
  ad3360:	62 c2 75 20 a8 db    	vfmadd213ps ymm19,ymm17,ymm11
  ad3366:	62 32 4d 28 bc d9    	vfnmadd231ps ymm11,ymm6,ymm17
  ad336c:	62 c1 34 20 58 ff    	vaddps ymm23,ymm25,ymm15
  ad3372:	62 51 34 20 5c ff    	vsubps ymm15,ymm25,ymm15
  ad3378:	62 81 2c 20 58 cc    	vaddps ymm17,ymm26,ymm28
  ad337e:	62 81 2c 20 5c e4    	vsubps ymm20,ymm26,ymm28
  ad3384:	62 21 5c 20 c6 c4 b1 	vshufps ymm24,ymm20,ymm20,0xb1
  ad338b:	62 e1 7c 28 28 e6    	vmovaps ymm20,ymm6
  ad3391:	62 c2 3d 20 a8 e4    	vfmadd213ps ymm20,ymm24,ymm12
  ad3397:	62 12 4d 28 bc e0    	vfnmadd231ps ymm12,ymm6,ymm24
  ad339d:	62 21 4c 20 58 c1    	vaddps ymm24,ymm22,ymm17
  ad33a3:	62 a1 4c 20 5c c9    	vsubps ymm17,ymm22,ymm17
  ad33a9:	62 01 7c 20 58 d5    	vaddps ymm26,ymm16,ymm29
  ad33af:	62 81 7c 20 5c c5    	vsubps ymm16,ymm16,ymm29
  ad33b5:	62 a1 7c 20 c6 c0 b1 	vshufps ymm16,ymm16,ymm16,0xb1
  ad33bc:	62 e1 7c 28 28 f6    	vmovaps ymm22,ymm6
  ad33c2:	62 c2 7d 20 a8 f2    	vfmadd213ps ymm22,ymm16,ymm10
  ad33c8:	62 32 4d 28 bc d0    	vfnmadd231ps ymm10,ymm6,ymm16
  ad33ce:	62 01 0c 20 58 ca    	vaddps ymm25,ymm30,ymm26
  ad33d4:	62 81 0c 20 5c c2    	vsubps ymm16,ymm30,ymm26
  ad33da:	62 21 d5 20 14 d7    	vunpcklpd ymm26,ymm21,ymm23
  ad33e0:	62 01 bd 20 14 d9    	vunpcklpd ymm27,ymm24,ymm25
  ad33e6:	62 03 2d 20 18 e3 01 	vinsertf32x4 ymm28,ymm26,xmm27,0x1
  ad33ed:	62 61 7c 28 29 24 c4 	vmovaps YMMWORD PTR [rsp+rax*8],ymm28
  ad33f4:	48 83 f8 40          	cmp    rax,0x40
  ad33f8:	0f 84 f2 fb ff ff    	je     ad2ff0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x70>
  ad33fe:	62 a1 d5 20 15 ef    	vunpckhpd ymm21,ymm21,ymm23
  ad3404:	62 81 bd 20 15 f9    	vunpckhpd ymm23,ymm24,ymm25
  ad340a:	62 23 d5 20 23 c7 03 	vshuff64x2 ymm24,ymm21,ymm23,0x3
  ad3411:	62 03 ad 20 23 cb 03 	vshuff64x2 ymm25,ymm26,ymm27,0x3
  ad3418:	62 a3 55 20 18 ef 01 	vinsertf32x4 ymm21,ymm21,xmm23,0x1
  ad341f:	62 e1 7c 28 29 6c c4 	vmovaps YMMWORD PTR [rsp+rax*8+0x80],ymm21
  ad3426:	04 
  ad3427:	62 61 fd 28 29 4c c4 	vmovapd YMMWORD PTR [rsp+rax*8+0x100],ymm25
  ad342e:	08 
  ad342f:	62 61 fd 28 29 44 c4 	vmovapd YMMWORD PTR [rsp+rax*8+0x180],ymm24
  ad3436:	0c 
  ad3437:	62 a1 ed 20 14 eb    	vunpcklpd ymm21,ymm18,ymm19
  ad343d:	62 a1 dd 20 14 fe    	vunpcklpd ymm23,ymm20,ymm22
  ad3443:	62 23 55 20 18 c7 01 	vinsertf32x4 ymm24,ymm21,xmm23,0x1
  ad344a:	62 61 7c 28 29 44 c4 	vmovaps YMMWORD PTR [rsp+rax*8+0x20],ymm24
  ad3451:	01 
  ad3452:	62 a1 ed 20 15 d3    	vunpckhpd ymm18,ymm18,ymm19
  ad3458:	62 a1 dd 20 15 de    	vunpckhpd ymm19,ymm20,ymm22
  ad345e:	62 a3 ed 20 23 e3 03 	vshuff64x2 ymm20,ymm18,ymm19,0x3
  ad3465:	62 a3 d5 20 23 ef 03 	vshuff64x2 ymm21,ymm21,ymm23,0x3
  ad346c:	62 a3 6d 20 18 d3 01 	vinsertf32x4 ymm18,ymm18,xmm19,0x1
  ad3473:	62 e1 7c 28 29 54 c4 	vmovaps YMMWORD PTR [rsp+rax*8+0xa0],ymm18
  ad347a:	05 
  ad347b:	62 e1 fd 28 29 6c c4 	vmovapd YMMWORD PTR [rsp+rax*8+0x120],ymm21
  ad3482:	09 
  ad3483:	62 e1 fd 28 29 64 c4 	vmovapd YMMWORD PTR [rsp+rax*8+0x1a0],ymm20
  ad348a:	0d 
  ad348b:	62 c1 8d 28 14 d7    	vunpcklpd ymm18,ymm14,ymm15
  ad3491:	62 a1 f5 20 14 d8    	vunpcklpd ymm19,ymm17,ymm16
  ad3497:	62 a3 6d 20 18 e3 01 	vinsertf32x4 ymm20,ymm18,xmm19,0x1
  ad349e:	62 e1 7c 28 29 64 c4 	vmovaps YMMWORD PTR [rsp+rax*8+0x40],ymm20
  ad34a5:	02 
  ad34a6:	c4 41 0d 15 f7       	vunpckhpd ymm14,ymm14,ymm15
  ad34ab:	62 31 f5 20 15 f8    	vunpckhpd ymm15,ymm17,ymm16
  ad34b1:	62 c3 8d 28 23 c7 03 	vshuff64x2 ymm16,ymm14,ymm15,0x3
  ad34b8:	62 a3 ed 20 23 cb 03 	vshuff64x2 ymm17,ymm18,ymm19,0x3
  ad34bf:	c4 43 0d 18 f7 01    	vinsertf128 ymm14,ymm14,xmm15,0x1
  ad34c5:	c5 7c 29 b4 c4 c0 00 	vmovaps YMMWORD PTR [rsp+rax*8+0xc0],ymm14
  ad34cc:	00 00 
  ad34ce:	62 e1 fd 28 29 4c c4 	vmovapd YMMWORD PTR [rsp+rax*8+0x140],ymm17
  ad34d5:	0a 
  ad34d6:	62 e1 fd 28 29 44 c4 	vmovapd YMMWORD PTR [rsp+rax*8+0x1c0],ymm16
  ad34dd:	0e 
  ad34de:	c4 41 15 14 f3       	vunpcklpd ymm14,ymm13,ymm11
  ad34e3:	c4 41 1d 14 fa       	vunpcklpd ymm15,ymm12,ymm10
  ad34e8:	62 c3 0d 28 18 c7 01 	vinsertf32x4 ymm16,ymm14,xmm15,0x1
  ad34ef:	62 e1 7c 28 29 44 c4 	vmovaps YMMWORD PTR [rsp+rax*8+0x60],ymm16
  ad34f6:	03 
  ad34f7:	c4 41 15 15 db       	vunpckhpd ymm11,ymm13,ymm11
  ad34fc:	c4 41 1d 15 d2       	vunpckhpd ymm10,ymm12,ymm10
  ad3501:	c4 43 25 06 e2 31    	vperm2f128 ymm12,ymm11,ymm10,0x31
  ad3507:	c4 43 0d 06 ef 31    	vperm2f128 ymm13,ymm14,ymm15,0x31
  ad350d:	c4 43 25 18 d2 01    	vinsertf128 ymm10,ymm11,xmm10,0x1
  ad3513:	c5 7c 29 94 c4 e0 00 	vmovaps YMMWORD PTR [rsp+rax*8+0xe0],ymm10
  ad351a:	00 00 
  ad351c:	c5 7d 29 ac c4 60 01 	vmovapd YMMWORD PTR [rsp+rax*8+0x160],ymm13
  ad3523:	00 00 
  ad3525:	c5 7d 29 a4 c4 e0 01 	vmovapd YMMWORD PTR [rsp+rax*8+0x1e0],ymm12
  ad352c:	00 00 
  ad352e:	e9 06 fb ff ff       	jmp    ad3039 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0xb9>
  ad3533:	c5 fc 28 84 24 80 00 	vmovaps ymm0,YMMWORD PTR [rsp+0x80]
  ad353a:	00 00 
  ad353c:	c5 fc 28 8c 24 00 01 	vmovaps ymm1,YMMWORD PTR [rsp+0x100]
  ad3543:	00 00 
  ad3545:	c5 fc 59 12          	vmulps ymm2,ymm0,YMMWORD PTR [rdx]
  ad3549:	c5 fc c6 c0 b1       	vshufps ymm0,ymm0,ymm0,0xb1
  ad354e:	c4 e2 7d b8 52 20    	vfmadd231ps ymm2,ymm0,YMMWORD PTR [rdx+0x20]
  ad3554:	c5 f4 c6 c1 b1       	vshufps ymm0,ymm1,ymm1,0xb1
  ad3559:	c5 f4 59 4a 40       	vmulps ymm1,ymm1,YMMWORD PTR [rdx+0x40]
  ad355e:	c4 e2 7d b8 4a 60    	vfmadd231ps ymm1,ymm0,YMMWORD PTR [rdx+0x60]
  ad3564:	c5 fc 28 84 24 80 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x180]
  ad356b:	00 00 
  ad356d:	c5 fc c6 d8 b1       	vshufps ymm3,ymm0,ymm0,0xb1
  ad3572:	c5 fc 59 82 80 00 00 	vmulps ymm0,ymm0,YMMWORD PTR [rdx+0x80]
  ad3579:	00 
  ad357a:	c4 e2 65 b8 82 a0 00 	vfmadd231ps ymm0,ymm3,YMMWORD PTR [rdx+0xa0]
  ad3581:	00 00 
  ad3583:	c5 fc 28 9c 24 00 02 	vmovaps ymm3,YMMWORD PTR [rsp+0x200]
  ad358a:	00 00 
  ad358c:	c5 e4 c6 e3 b1       	vshufps ymm4,ymm3,ymm3,0xb1
  ad3591:	c5 e4 59 9a c0 00 00 	vmulps ymm3,ymm3,YMMWORD PTR [rdx+0xc0]
  ad3598:	00 
  ad3599:	c4 e2 5d b8 9a e0 00 	vfmadd231ps ymm3,ymm4,YMMWORD PTR [rdx+0xe0]
  ad35a0:	00 00 
  ad35a2:	c5 fc 28 2c 24       	vmovaps ymm5,YMMWORD PTR [rsp]
  ad35a7:	c5 ec 58 f3          	vaddps ymm6,ymm2,ymm3
  ad35ab:	c5 f4 58 f8          	vaddps ymm7,ymm1,ymm0
  ad35af:	c5 6c 5c c3          	vsubps ymm8,ymm2,ymm3
  ad35b3:	c5 74 5c c8          	vsubps ymm9,ymm1,ymm0
  ad35b7:	c4 e2 7d 18 0d e8 1f 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff5a1fe8]        # 755a8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b88>
  ad35be:	5a ff 
  ad35c0:	c5 7c 28 d1          	vmovaps ymm10,ymm1
  ad35c4:	c4 62 4d a8 d5       	vfmadd213ps ymm10,ymm6,ymm5
  ad35c9:	c4 e2 7d 18 05 0a 1c 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff5a1c0a]        # 751dc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x27bc>
  ad35d0:	5a ff 
  ad35d2:	c4 62 45 b8 d0       	vfmadd231ps ymm10,ymm7,ymm0
  ad35d7:	c5 7c 28 d8          	vmovaps ymm11,ymm0
  ad35db:	c4 62 4d a8 dd       	vfmadd213ps ymm11,ymm6,ymm5
  ad35e0:	c4 e2 7d 18 15 77 1c 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff5a1c77]        # 75260 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2840>
  ad35e7:	5a ff 
  ad35e9:	c4 62 45 b8 d9       	vfmadd231ps ymm11,ymm7,ymm1
  ad35ee:	c5 bc 59 e2          	vmulps ymm4,ymm8,ymm2
  ad35f2:	c4 e2 7d 18 1d 1d 20 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff5a201d]        # 75618 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bf8>
  ad35f9:	5a ff 
  ad35fb:	c4 e2 35 b8 e3       	vfmadd231ps ymm4,ymm9,ymm3
  ad3600:	c5 5c c6 e4 b1       	vshufps ymm12,ymm4,ymm4,0xb1
  ad3605:	c5 fc 28 25 73 4e 5a 	vmovaps ymm4,YMMWORD PTR [rip+0xffffffffff5a4e73]        # 78480 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5a60>
  ad360c:	ff 
  ad360d:	c5 1c 57 e4          	vxorps ymm12,ymm12,ymm4
  ad3611:	c5 3c 59 c3          	vmulps ymm8,ymm8,ymm3
  ad3615:	c4 42 6d bc c1       	vfnmadd231ps ymm8,ymm2,ymm9
  ad361a:	c4 41 3c c6 c0 b1    	vshufps ymm8,ymm8,ymm8,0xb1
  ad3620:	c5 3c 57 c4          	vxorps ymm8,ymm8,ymm4
  ad3624:	c5 c4 58 f6          	vaddps ymm6,ymm7,ymm6
  ad3628:	c5 d4 58 ee          	vaddps ymm5,ymm5,ymm6
  ad362c:	c4 c1 2c 58 f4       	vaddps ymm6,ymm10,ymm12
  ad3631:	c4 c1 24 58 f8       	vaddps ymm7,ymm11,ymm8
  ad3636:	c4 41 24 5c c0       	vsubps ymm8,ymm11,ymm8
  ad363b:	c4 41 2c 5c cc       	vsubps ymm9,ymm10,ymm12
  ad3640:	c5 fc 11 2e          	vmovups YMMWORD PTR [rsi],ymm5
  ad3644:	c5 fc 11 b6 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm6
  ad364b:	00 
  ad364c:	c5 fc 11 be 00 01 00 	vmovups YMMWORD PTR [rsi+0x100],ymm7
  ad3653:	00 
  ad3654:	c5 7c 11 86 80 01 00 	vmovups YMMWORD PTR [rsi+0x180],ymm8
  ad365b:	00 
  ad365c:	c5 7c 11 8e 00 02 00 	vmovups YMMWORD PTR [rsi+0x200],ymm9
  ad3663:	00 
  ad3664:	c5 fc 28 6c 24 20    	vmovaps ymm5,YMMWORD PTR [rsp+0x20]
  ad366a:	c5 fc 28 b4 24 a0 00 	vmovaps ymm6,YMMWORD PTR [rsp+0xa0]
  ad3671:	00 00 
  ad3673:	c5 fc 28 bc 24 20 01 	vmovaps ymm7,YMMWORD PTR [rsp+0x120]
  ad367a:	00 00 
  ad367c:	c5 4c 59 82 00 01 00 	vmulps ymm8,ymm6,YMMWORD PTR [rdx+0x100]
  ad3683:	00 
  ad3684:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  ad3689:	c4 62 4d b8 82 20 01 	vfmadd231ps ymm8,ymm6,YMMWORD PTR [rdx+0x120]
  ad3690:	00 00 
  ad3692:	c5 c4 c6 f7 b1       	vshufps ymm6,ymm7,ymm7,0xb1
  ad3697:	c5 c4 59 ba 40 01 00 	vmulps ymm7,ymm7,YMMWORD PTR [rdx+0x140]
  ad369e:	00 
  ad369f:	c4 e2 4d b8 ba 60 01 	vfmadd231ps ymm7,ymm6,YMMWORD PTR [rdx+0x160]
  ad36a6:	00 00 
  ad36a8:	c5 fc 28 b4 24 a0 01 	vmovaps ymm6,YMMWORD PTR [rsp+0x1a0]
  ad36af:	00 00 
  ad36b1:	c5 4c c6 ce b1       	vshufps ymm9,ymm6,ymm6,0xb1
  ad36b6:	c5 cc 59 b2 80 01 00 	vmulps ymm6,ymm6,YMMWORD PTR [rdx+0x180]
  ad36bd:	00 
  ad36be:	c4 e2 35 b8 b2 a0 01 	vfmadd231ps ymm6,ymm9,YMMWORD PTR [rdx+0x1a0]
  ad36c5:	00 00 
  ad36c7:	c5 7c 28 8c 24 20 02 	vmovaps ymm9,YMMWORD PTR [rsp+0x220]
  ad36ce:	00 00 
  ad36d0:	c4 41 34 c6 d1 b1    	vshufps ymm10,ymm9,ymm9,0xb1
  ad36d6:	c5 34 59 8a c0 01 00 	vmulps ymm9,ymm9,YMMWORD PTR [rdx+0x1c0]
  ad36dd:	00 
  ad36de:	c4 62 2d b8 8a e0 01 	vfmadd231ps ymm9,ymm10,YMMWORD PTR [rdx+0x1e0]
  ad36e5:	00 00 
  ad36e7:	c4 41 3c 58 d1       	vaddps ymm10,ymm8,ymm9
  ad36ec:	c5 44 58 de          	vaddps ymm11,ymm7,ymm6
  ad36f0:	c4 41 3c 5c c1       	vsubps ymm8,ymm8,ymm9
  ad36f5:	c5 c4 5c f6          	vsubps ymm6,ymm7,ymm6
  ad36f9:	c5 fc 28 f9          	vmovaps ymm7,ymm1
  ad36fd:	c4 e2 2d a8 fd       	vfmadd213ps ymm7,ymm10,ymm5
  ad3702:	c4 e2 25 b8 f8       	vfmadd231ps ymm7,ymm11,ymm0
  ad3707:	c5 7c 28 c8          	vmovaps ymm9,ymm0
  ad370b:	c4 62 2d a8 cd       	vfmadd213ps ymm9,ymm10,ymm5
  ad3710:	c4 62 25 b8 c9       	vfmadd231ps ymm9,ymm11,ymm1
  ad3715:	c5 3c 59 e2          	vmulps ymm12,ymm8,ymm2
  ad3719:	c4 62 4d b8 e3       	vfmadd231ps ymm12,ymm6,ymm3
  ad371e:	c4 41 1c c6 e4 b1    	vshufps ymm12,ymm12,ymm12,0xb1
  ad3724:	c5 1c 57 e4          	vxorps ymm12,ymm12,ymm4
  ad3728:	c5 3c 59 c3          	vmulps ymm8,ymm8,ymm3
  ad372c:	c4 62 6d bc c6       	vfnmadd231ps ymm8,ymm2,ymm6
  ad3731:	c4 c1 3c c6 f0 b1    	vshufps ymm6,ymm8,ymm8,0xb1
  ad3737:	c5 cc 57 f4          	vxorps ymm6,ymm6,ymm4
  ad373b:	c4 41 24 58 c2       	vaddps ymm8,ymm11,ymm10
  ad3740:	c5 bc 58 ed          	vaddps ymm5,ymm8,ymm5
  ad3744:	c5 1c 58 c7          	vaddps ymm8,ymm12,ymm7
  ad3748:	c5 34 58 d6          	vaddps ymm10,ymm9,ymm6
  ad374c:	c5 b4 5c f6          	vsubps ymm6,ymm9,ymm6
  ad3750:	c4 c1 44 5c fc       	vsubps ymm7,ymm7,ymm12
  ad3755:	c5 fc 11 6e 20       	vmovups YMMWORD PTR [rsi+0x20],ymm5
  ad375a:	c5 7c 11 86 a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm8
  ad3761:	00 
  ad3762:	c5 7c 11 96 20 01 00 	vmovups YMMWORD PTR [rsi+0x120],ymm10
  ad3769:	00 
  ad376a:	c5 fc 11 b6 a0 01 00 	vmovups YMMWORD PTR [rsi+0x1a0],ymm6
  ad3771:	00 
  ad3772:	c5 fc 11 be 20 02 00 	vmovups YMMWORD PTR [rsi+0x220],ymm7
  ad3779:	00 
  ad377a:	c5 fc 28 6c 24 40    	vmovaps ymm5,YMMWORD PTR [rsp+0x40]
  ad3780:	c5 fc 28 b4 24 c0 00 	vmovaps ymm6,YMMWORD PTR [rsp+0xc0]
  ad3787:	00 00 
  ad3789:	c5 fc 28 bc 24 40 01 	vmovaps ymm7,YMMWORD PTR [rsp+0x140]
  ad3790:	00 00 
  ad3792:	c5 7c 28 84 24 c0 01 	vmovaps ymm8,YMMWORD PTR [rsp+0x1c0]
  ad3799:	00 00 
  ad379b:	c5 4c c6 ce b1       	vshufps ymm9,ymm6,ymm6,0xb1
  ad37a0:	c5 cc 59 b2 00 02 00 	vmulps ymm6,ymm6,YMMWORD PTR [rdx+0x200]
  ad37a7:	00 
  ad37a8:	c4 e2 35 b8 b2 20 02 	vfmadd231ps ymm6,ymm9,YMMWORD PTR [rdx+0x220]
  ad37af:	00 00 
  ad37b1:	c5 44 59 8a 40 02 00 	vmulps ymm9,ymm7,YMMWORD PTR [rdx+0x240]
  ad37b8:	00 
  ad37b9:	c5 c4 c6 ff b1       	vshufps ymm7,ymm7,ymm7,0xb1
  ad37be:	c4 62 45 b8 8a 60 02 	vfmadd231ps ymm9,ymm7,YMMWORD PTR [rdx+0x260]
  ad37c5:	00 00 
  ad37c7:	c4 c1 3c c6 f8 b1    	vshufps ymm7,ymm8,ymm8,0xb1
  ad37cd:	c5 3c 59 82 80 02 00 	vmulps ymm8,ymm8,YMMWORD PTR [rdx+0x280]
  ad37d4:	00 
  ad37d5:	c4 62 45 b8 82 a0 02 	vfmadd231ps ymm8,ymm7,YMMWORD PTR [rdx+0x2a0]
  ad37dc:	00 00 
  ad37de:	c5 fc 28 bc 24 40 02 	vmovaps ymm7,YMMWORD PTR [rsp+0x240]
  ad37e5:	00 00 
  ad37e7:	c5 44 c6 d7 b1       	vshufps ymm10,ymm7,ymm7,0xb1
  ad37ec:	c5 c4 59 ba c0 02 00 	vmulps ymm7,ymm7,YMMWORD PTR [rdx+0x2c0]
  ad37f3:	00 
  ad37f4:	c4 e2 2d b8 ba e0 02 	vfmadd231ps ymm7,ymm10,YMMWORD PTR [rdx+0x2e0]
  ad37fb:	00 00 
  ad37fd:	c5 4c 58 d7          	vaddps ymm10,ymm6,ymm7
  ad3801:	c4 41 34 58 d8       	vaddps ymm11,ymm9,ymm8
  ad3806:	c5 cc 5c f7          	vsubps ymm6,ymm6,ymm7
  ad380a:	c4 c1 34 5c f8       	vsubps ymm7,ymm9,ymm8
  ad380f:	c5 7c 28 c1          	vmovaps ymm8,ymm1
  ad3813:	c4 62 2d a8 c5       	vfmadd213ps ymm8,ymm10,ymm5
  ad3818:	c4 62 25 b8 c0       	vfmadd231ps ymm8,ymm11,ymm0
  ad381d:	c5 7c 28 c8          	vmovaps ymm9,ymm0
  ad3821:	c4 62 2d a8 cd       	vfmadd213ps ymm9,ymm10,ymm5
  ad3826:	c4 62 25 b8 c9       	vfmadd231ps ymm9,ymm11,ymm1
  ad382b:	c5 4c 59 e2          	vmulps ymm12,ymm6,ymm2
  ad382f:	c4 62 45 b8 e3       	vfmadd231ps ymm12,ymm7,ymm3
  ad3834:	c4 41 1c c6 e4 b1    	vshufps ymm12,ymm12,ymm12,0xb1
  ad383a:	c5 1c 57 e4          	vxorps ymm12,ymm12,ymm4
  ad383e:	c5 cc 59 f3          	vmulps ymm6,ymm6,ymm3
  ad3842:	c4 e2 6d bc f7       	vfnmadd231ps ymm6,ymm2,ymm7
  ad3847:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  ad384c:	c5 cc 57 f4          	vxorps ymm6,ymm6,ymm4
  ad3850:	c4 c1 24 58 fa       	vaddps ymm7,ymm11,ymm10
  ad3855:	c5 d4 58 ef          	vaddps ymm5,ymm5,ymm7
  ad3859:	c4 c1 3c 58 fc       	vaddps ymm7,ymm8,ymm12
  ad385e:	c5 34 58 d6          	vaddps ymm10,ymm9,ymm6
  ad3862:	c5 b4 5c f6          	vsubps ymm6,ymm9,ymm6
  ad3866:	c4 41 3c 5c c4       	vsubps ymm8,ymm8,ymm12
  ad386b:	c5 fc 11 6e 40       	vmovups YMMWORD PTR [rsi+0x40],ymm5
  ad3870:	c5 fc 11 be c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm7
  ad3877:	00 
  ad3878:	c5 7c 11 96 40 01 00 	vmovups YMMWORD PTR [rsi+0x140],ymm10
  ad387f:	00 
  ad3880:	c5 fc 11 b6 c0 01 00 	vmovups YMMWORD PTR [rsi+0x1c0],ymm6
  ad3887:	00 
  ad3888:	c5 7c 11 86 40 02 00 	vmovups YMMWORD PTR [rsi+0x240],ymm8
  ad388f:	00 
  ad3890:	c5 fc 28 6c 24 60    	vmovaps ymm5,YMMWORD PTR [rsp+0x60]
  ad3896:	c5 fc 28 b4 24 e0 00 	vmovaps ymm6,YMMWORD PTR [rsp+0xe0]
  ad389d:	00 00 
  ad389f:	c5 fc 28 bc 24 60 01 	vmovaps ymm7,YMMWORD PTR [rsp+0x160]
  ad38a6:	00 00 
  ad38a8:	c5 4c 59 82 00 03 00 	vmulps ymm8,ymm6,YMMWORD PTR [rdx+0x300]
  ad38af:	00 
  ad38b0:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  ad38b5:	c4 62 4d b8 82 20 03 	vfmadd231ps ymm8,ymm6,YMMWORD PTR [rdx+0x320]
  ad38bc:	00 00 
  ad38be:	c5 c4 c6 f7 b1       	vshufps ymm6,ymm7,ymm7,0xb1
  ad38c3:	c5 c4 59 ba 40 03 00 	vmulps ymm7,ymm7,YMMWORD PTR [rdx+0x340]
  ad38ca:	00 
  ad38cb:	c4 e2 4d b8 ba 60 03 	vfmadd231ps ymm7,ymm6,YMMWORD PTR [rdx+0x360]
  ad38d2:	00 00 
  ad38d4:	c5 fc 28 b4 24 e0 01 	vmovaps ymm6,YMMWORD PTR [rsp+0x1e0]
  ad38db:	00 00 
  ad38dd:	c5 4c c6 ce b1       	vshufps ymm9,ymm6,ymm6,0xb1
  ad38e2:	c5 cc 59 b2 80 03 00 	vmulps ymm6,ymm6,YMMWORD PTR [rdx+0x380]
  ad38e9:	00 
  ad38ea:	c4 e2 35 b8 b2 a0 03 	vfmadd231ps ymm6,ymm9,YMMWORD PTR [rdx+0x3a0]
  ad38f1:	00 00 
  ad38f3:	c5 7c 28 8c 24 60 02 	vmovaps ymm9,YMMWORD PTR [rsp+0x260]
  ad38fa:	00 00 
  ad38fc:	c4 41 34 c6 d1 b1    	vshufps ymm10,ymm9,ymm9,0xb1
  ad3902:	c5 34 59 8a c0 03 00 	vmulps ymm9,ymm9,YMMWORD PTR [rdx+0x3c0]
  ad3909:	00 
  ad390a:	c4 62 2d b8 8a e0 03 	vfmadd231ps ymm9,ymm10,YMMWORD PTR [rdx+0x3e0]
  ad3911:	00 00 
  ad3913:	c4 41 3c 58 d1       	vaddps ymm10,ymm8,ymm9
  ad3918:	c5 44 58 de          	vaddps ymm11,ymm7,ymm6
  ad391c:	c4 41 3c 5c c1       	vsubps ymm8,ymm8,ymm9
  ad3921:	c5 c4 5c f6          	vsubps ymm6,ymm7,ymm6
  ad3925:	c5 fc 28 f9          	vmovaps ymm7,ymm1
  ad3929:	c4 e2 2d a8 fd       	vfmadd213ps ymm7,ymm10,ymm5
  ad392e:	c4 e2 25 b8 f8       	vfmadd231ps ymm7,ymm11,ymm0
  ad3933:	c4 e2 2d a8 c5       	vfmadd213ps ymm0,ymm10,ymm5
  ad3938:	c4 e2 25 b8 c1       	vfmadd231ps ymm0,ymm11,ymm1
  ad393d:	c5 bc 59 ca          	vmulps ymm1,ymm8,ymm2
  ad3941:	c4 e2 4d b8 cb       	vfmadd231ps ymm1,ymm6,ymm3
  ad3946:	c5 f4 c6 c9 b1       	vshufps ymm1,ymm1,ymm1,0xb1
  ad394b:	c5 f4 57 cc          	vxorps ymm1,ymm1,ymm4
  ad394f:	c5 bc 59 db          	vmulps ymm3,ymm8,ymm3
  ad3953:	c4 e2 4d bc da       	vfnmadd231ps ymm3,ymm6,ymm2
  ad3958:	c5 e4 c6 d3 b1       	vshufps ymm2,ymm3,ymm3,0xb1
  ad395d:	c5 ec 57 d4          	vxorps ymm2,ymm2,ymm4
  ad3961:	c4 c1 24 58 da       	vaddps ymm3,ymm11,ymm10
  ad3966:	c5 d4 58 db          	vaddps ymm3,ymm5,ymm3
  ad396a:	c5 c4 58 e1          	vaddps ymm4,ymm7,ymm1
  ad396e:	c5 fc 58 ea          	vaddps ymm5,ymm0,ymm2
  ad3972:	c5 fc 5c c2          	vsubps ymm0,ymm0,ymm2
  ad3976:	c5 c4 5c c9          	vsubps ymm1,ymm7,ymm1
  ad397a:	c5 fc 11 5e 60       	vmovups YMMWORD PTR [rsi+0x60],ymm3
  ad397f:	c5 fc 11 a6 e0 00 00 	vmovups YMMWORD PTR [rsi+0xe0],ymm4
  ad3986:	00 
  ad3987:	c5 fc 11 ae 60 01 00 	vmovups YMMWORD PTR [rsi+0x160],ymm5
  ad398e:	00 
  ad398f:	c5 fc 11 86 e0 01 00 	vmovups YMMWORD PTR [rsi+0x1e0],ymm0
  ad3996:	00 
  ad3997:	c5 fc 11 8e 60 02 00 	vmovups YMMWORD PTR [rsi+0x260],ymm1
  ad399e:	00 
  ad399f:	48 89 ec             	mov    rsp,rbp
  ad39a2:	5d                   	pop    rbp
  ad39a3:	c5 f8 77             	vzeroupper
  ad39a6:	c3                   	ret
  ad39a7:	cc                   	int3
  ad39a8:	cc                   	int3
  ad39a9:	cc                   	int3
  ad39aa:	cc                   	int3
  ad39ab:	cc                   	int3
  ad39ac:	cc                   	int3
  ad39ad:	cc                   	int3
  ad39ae:	cc                   	int3
  ad39af:	cc                   	int3
  ad39b0:	cc                   	int3
  ad39b1:	cc                   	int3
  ad39b2:	cc                   	int3
  ad39b3:	cc                   	int3
  ad39b4:	cc                   	int3
  ad39b5:	cc                   	int3
  ad39b6:	cc                   	int3
  ad39b7:	cc                   	int3
  ad39b8:	cc                   	int3
  ad39b9:	cc                   	int3
  ad39ba:	cc                   	int3
  ad39bb:	cc                   	int3
  ad39bc:	cc                   	int3
  ad39bd:	cc                   	int3
  ad39be:	cc                   	int3
  ad39bf:	cc                   	int3
