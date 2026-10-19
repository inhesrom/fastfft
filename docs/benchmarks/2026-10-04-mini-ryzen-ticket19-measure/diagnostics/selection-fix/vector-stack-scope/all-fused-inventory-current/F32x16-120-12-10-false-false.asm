
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a5acc0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a5acc0:	55                   	push   rbp
  a5acc1:	48 89 e5             	mov    rbp,rsp
  a5acc4:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a5acc8:	48 81 ec 00 03 00 00 	sub    rsp,0x300
  a5accf:	c6 84 24 80 02 00 00 	mov    BYTE PTR [rsp+0x280],0x0
  a5acd6:	00 
  a5acd7:	48 8d 84 24 80 02 00 	lea    rax,[rsp+0x280]
  a5acde:	00 
  a5acdf:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a5ace4:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a5ace9:	62 f1 7c 48 10 2f    	vmovups zmm5,ZMMWORD PTR [rdi]
  a5acef:	c5 f8 10 5f 40       	vmovups xmm3,XMMWORD PTR [rdi+0x40]
  a5acf4:	62 f1 7c 48 28 0d 42 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff638642]        # 93340 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x207f0>
  a5acfb:	86 63 ff 
  a5acfe:	62 f1 7c 48 28 c5    	vmovaps zmm0,zmm5
  a5ad04:	62 f2 75 48 7f c3    	vpermt2ps zmm0,zmm1,zmm3
  a5ad0a:	62 f1 7c 48 28 15 6c 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff63866c]        # 93380 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20830>
  a5ad11:	86 63 ff 
  a5ad14:	62 f2 6d 48 7f eb    	vpermt2ps zmm5,zmm2,zmm3
  a5ad1a:	62 71 7c 48 10 87 50 	vmovups zmm8,ZMMWORD PTR [rdi+0x50]
  a5ad21:	00 00 00 
  a5ad24:	c5 f8 10 a7 90 00 00 	vmovups xmm4,XMMWORD PTR [rdi+0x90]
  a5ad2b:	00 
  a5ad2c:	62 c1 7c 48 28 e0    	vmovaps zmm20,zmm8
  a5ad32:	62 e2 75 48 7f e4    	vpermt2ps zmm20,zmm1,zmm4
  a5ad38:	62 72 6d 48 7f c4    	vpermt2ps zmm8,zmm2,zmm4
  a5ad3e:	62 f1 7c 48 10 b7 a0 	vmovups zmm6,ZMMWORD PTR [rdi+0xa0]
  a5ad45:	00 00 00 
  a5ad48:	c5 f8 10 a7 e0 00 00 	vmovups xmm4,XMMWORD PTR [rdi+0xe0]
  a5ad4f:	00 
  a5ad50:	62 71 7c 48 28 e6    	vmovaps zmm12,zmm6
  a5ad56:	62 72 75 48 7f e4    	vpermt2ps zmm12,zmm1,zmm4
  a5ad5c:	62 f2 6d 48 7f f4    	vpermt2ps zmm6,zmm2,zmm4
  a5ad62:	62 71 7c 48 10 8f f0 	vmovups zmm9,ZMMWORD PTR [rdi+0xf0]
  a5ad69:	00 00 00 
  a5ad6c:	c5 f8 10 bf 30 01 00 	vmovups xmm7,XMMWORD PTR [rdi+0x130]
  a5ad73:	00 
  a5ad74:	62 d1 7c 48 28 e1    	vmovaps zmm4,zmm9
  a5ad7a:	62 f2 75 48 7f e7    	vpermt2ps zmm4,zmm1,zmm7
  a5ad80:	62 72 6d 48 7f cf    	vpermt2ps zmm9,zmm2,zmm7
  a5ad86:	62 71 7c 48 10 57 05 	vmovups zmm10,ZMMWORD PTR [rdi+0x140]
  a5ad8d:	c5 f8 10 bf 80 01 00 	vmovups xmm7,XMMWORD PTR [rdi+0x180]
  a5ad94:	00 
  a5ad95:	62 51 7c 48 28 fa    	vmovaps zmm15,zmm10
  a5ad9b:	62 72 75 48 7f ff    	vpermt2ps zmm15,zmm1,zmm7
  a5ada1:	62 72 6d 48 7f d7    	vpermt2ps zmm10,zmm2,zmm7
  a5ada7:	62 71 7c 48 10 b7 90 	vmovups zmm14,ZMMWORD PTR [rdi+0x190]
  a5adae:	01 00 00 
  a5adb1:	c5 f8 10 bf d0 01 00 	vmovups xmm7,XMMWORD PTR [rdi+0x1d0]
  a5adb8:	00 
  a5adb9:	62 51 7c 48 28 ee    	vmovaps zmm13,zmm14
  a5adbf:	62 72 75 48 7f ef    	vpermt2ps zmm13,zmm1,zmm7
  a5adc5:	62 72 6d 48 7f f7    	vpermt2ps zmm14,zmm2,zmm7
  a5adcb:	62 71 7c 48 10 9f e0 	vmovups zmm11,ZMMWORD PTR [rdi+0x1e0]
  a5add2:	01 00 00 
  a5add5:	c5 f8 10 bf 20 02 00 	vmovups xmm7,XMMWORD PTR [rdi+0x220]
  a5addc:	00 
  a5addd:	62 c1 7c 48 28 db    	vmovaps zmm19,zmm11
  a5ade3:	62 e2 75 48 7f df    	vpermt2ps zmm19,zmm1,zmm7
  a5ade9:	62 72 6d 48 7f df    	vpermt2ps zmm11,zmm2,zmm7
  a5adef:	62 e1 7c 48 10 bf 30 	vmovups zmm23,ZMMWORD PTR [rdi+0x230]
  a5adf6:	02 00 00 
  a5adf9:	c5 f8 10 bf 70 02 00 	vmovups xmm7,XMMWORD PTR [rdi+0x270]
  a5ae00:	00 
  a5ae01:	62 a1 7c 48 28 c7    	vmovaps zmm16,zmm23
  a5ae07:	62 e2 75 48 7f c7    	vpermt2ps zmm16,zmm1,zmm7
  a5ae0d:	62 e2 6d 48 7f ff    	vpermt2ps zmm23,zmm2,zmm7
  a5ae13:	62 e1 7c 48 10 57 0a 	vmovups zmm18,ZMMWORD PTR [rdi+0x280]
  a5ae1a:	c5 f8 10 bf c0 02 00 	vmovups xmm7,XMMWORD PTR [rdi+0x2c0]
  a5ae21:	00 
  a5ae22:	62 21 7c 48 28 c2    	vmovaps zmm24,zmm18
  a5ae28:	62 62 75 48 7f c7    	vpermt2ps zmm24,zmm1,zmm7
  a5ae2e:	62 e2 6d 48 7f d7    	vpermt2ps zmm18,zmm2,zmm7
  a5ae34:	62 61 7c 48 10 8f d0 	vmovups zmm25,ZMMWORD PTR [rdi+0x2d0]
  a5ae3b:	02 00 00 
  a5ae3e:	c5 f8 10 bf 10 03 00 	vmovups xmm7,XMMWORD PTR [rdi+0x310]
  a5ae45:	00 
  a5ae46:	62 81 7c 48 28 c9    	vmovaps zmm17,zmm25
  a5ae4c:	62 e2 75 48 7f cf    	vpermt2ps zmm17,zmm1,zmm7
  a5ae52:	62 62 6d 48 7f cf    	vpermt2ps zmm25,zmm2,zmm7
  a5ae58:	62 61 7c 48 10 97 20 	vmovups zmm26,ZMMWORD PTR [rdi+0x320]
  a5ae5f:	03 00 00 
  a5ae62:	c5 f8 10 bf 60 03 00 	vmovups xmm7,XMMWORD PTR [rdi+0x360]
  a5ae69:	00 
  a5ae6a:	62 81 7c 48 28 ea    	vmovaps zmm21,zmm26
  a5ae70:	62 e2 75 48 7f ef    	vpermt2ps zmm21,zmm1,zmm7
  a5ae76:	62 62 6d 48 7f d7    	vpermt2ps zmm26,zmm2,zmm7
  a5ae7c:	62 61 7c 48 10 9f 70 	vmovups zmm27,ZMMWORD PTR [rdi+0x370]
  a5ae83:	03 00 00 
  a5ae86:	c5 f8 10 bf b0 03 00 	vmovups xmm7,XMMWORD PTR [rdi+0x3b0]
  a5ae8d:	00 
  a5ae8e:	62 f2 25 40 77 cf    	vpermi2ps zmm1,zmm27,zmm7
  a5ae94:	62 62 6d 48 7f df    	vpermt2ps zmm27,zmm2,zmm7
  a5ae9a:	62 b1 7c 48 58 fb    	vaddps zmm7,zmm0,zmm19
  a5aea0:	62 a1 5c 48 58 f1    	vaddps zmm22,zmm4,zmm17
  a5aea6:	62 b1 44 48 58 d6    	vaddps zmm2,zmm7,zmm22
  a5aeac:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm2
  a5aeb3:	02 
  a5aeb4:	62 21 04 48 58 e5    	vaddps zmm28,zmm15,zmm21
  a5aeba:	62 21 7c 40 58 ec    	vaddps zmm29,zmm16,zmm20
  a5aec0:	62 91 1c 40 58 d5    	vaddps zmm2,zmm28,zmm29
  a5aec6:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm2
  a5aecd:	07 
  a5aece:	62 41 3c 40 58 f4    	vaddps zmm30,zmm24,zmm12
  a5aed4:	62 41 74 48 58 fd    	vaddps zmm31,zmm1,zmm13
  a5aeda:	62 a1 04 48 5c ed    	vsubps zmm21,zmm15,zmm21
  a5aee0:	62 51 44 40 58 f8    	vaddps zmm15,zmm23,zmm8
  a5aee6:	62 51 44 40 5c c0    	vsubps zmm8,zmm23,zmm8
  a5aeec:	62 81 0c 40 58 ff    	vaddps zmm23,zmm30,zmm31
  a5aef2:	62 51 3c 40 5c e4    	vsubps zmm12,zmm24,zmm12
  a5aef8:	62 41 24 40 58 c6    	vaddps zmm24,zmm27,zmm14
  a5aefe:	62 41 24 40 5c de    	vsubps zmm27,zmm27,zmm14
  a5af04:	62 51 54 48 58 f3    	vaddps zmm14,zmm5,zmm11
  a5af0a:	62 b1 7c 48 5c d3    	vsubps zmm2,zmm0,zmm19
  a5af10:	62 81 34 48 58 d9    	vaddps zmm19,zmm9,zmm25
  a5af16:	62 01 34 48 5c c9    	vsubps zmm25,zmm9,zmm25
  a5af1c:	62 11 2c 48 58 ca    	vaddps zmm9,zmm10,zmm26
  a5af22:	62 91 2c 48 5c da    	vsubps zmm3,zmm10,zmm26
  a5af28:	62 f1 6c 40 58 c6    	vaddps zmm0,zmm18,zmm6
  a5af2e:	62 a1 5c 40 5c e0    	vsubps zmm20,zmm20,zmm16
  a5af34:	62 71 5c 40 58 d3    	vaddps zmm10,zmm20,zmm3
  a5af3a:	62 e1 6c 40 5c d6    	vsubps zmm18,zmm18,zmm6
  a5af40:	62 71 14 48 5c e9    	vsubps zmm13,zmm13,zmm1
  a5af46:	62 b1 14 48 58 ca    	vaddps zmm1,zmm13,zmm18
  a5af4c:	62 f1 2c 48 5c f1    	vsubps zmm6,zmm10,zmm1
  a5af52:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm6
  a5af59:	04 
  a5af5a:	62 f1 2c 48 58 c9    	vaddps zmm1,zmm10,zmm1
  a5af60:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a5af67:	03 
  a5af68:	62 d1 54 40 58 c8    	vaddps zmm1,zmm21,zmm8
  a5af6e:	62 51 54 48 5c db    	vsubps zmm11,zmm5,zmm11
  a5af74:	62 91 1c 48 58 f3    	vaddps zmm6,zmm12,zmm27
  a5af7a:	62 f1 74 40 5c e4    	vsubps zmm4,zmm17,zmm4
  a5af80:	62 f1 74 48 58 ee    	vaddps zmm5,zmm1,zmm6
  a5af86:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm5
  a5af8d:	05 
  a5af8e:	62 f1 74 48 5c ce    	vsubps zmm1,zmm1,zmm6
  a5af94:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a5af9b:	01 
  a5af9c:	62 61 7c 48 28 54 24 	vmovaps zmm26,ZMMWORD PTR [rsp+0x1c0]
  a5afa3:	07 
  a5afa4:	62 31 2c 40 58 d7    	vaddps zmm10,zmm26,zmm23
  a5afaa:	62 b1 7c 48 28 ef    	vmovaps zmm5,zmm23
  a5afb0:	62 81 1c 40 5c c5    	vsubps zmm16,zmm28,zmm29
  a5afb6:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x80]
  a5afbd:	02 
  a5afbe:	62 c1 74 48 58 fa    	vaddps zmm23,zmm1,zmm10
  a5afc4:	62 81 0c 40 5c cf    	vsubps zmm17,zmm30,zmm31
  a5afca:	62 21 0c 48 58 f3    	vaddps zmm30,zmm14,zmm19
  a5afd0:	62 b1 44 48 5c f6    	vsubps zmm6,zmm7,zmm22
  a5afd6:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm6
  a5afdd:	09 
  a5afde:	62 c1 34 48 58 f7    	vaddps zmm22,zmm9,zmm15
  a5afe4:	62 d1 34 48 5c ff    	vsubps zmm7,zmm9,zmm15
  a5afea:	62 11 7c 48 58 c8    	vaddps zmm9,zmm0,zmm24
  a5aff0:	62 91 7c 48 5c c0    	vsubps zmm0,zmm0,zmm24
  a5aff6:	62 61 44 48 5c c0    	vsubps zmm24,zmm7,zmm0
  a5affc:	62 61 44 48 58 e8    	vaddps zmm29,zmm7,zmm0
  a5b002:	62 51 4c 40 58 f9    	vaddps zmm15,zmm22,zmm9
  a5b008:	62 21 0c 48 5c e3    	vsubps zmm28,zmm14,zmm19
  a5b00e:	62 a1 7c 40 58 d9    	vaddps zmm19,zmm16,zmm17
  a5b014:	62 b1 7c 40 5c c1    	vsubps zmm0,zmm16,zmm17
  a5b01a:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm0
  a5b021:	08 
  a5b022:	62 01 6c 48 58 f9    	vaddps zmm31,zmm2,zmm25
  a5b028:	62 91 6c 48 5c d1    	vsubps zmm2,zmm2,zmm25
  a5b02e:	62 e2 7d 48 18 05 28 	vbroadcastss zmm16,DWORD PTR [rip+0xffffffffff61a428]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a5b035:	a4 61 ff 
  a5b038:	62 c1 54 40 5c e8    	vsubps zmm21,zmm21,zmm8
  a5b03e:	62 d1 0c 40 58 c7    	vaddps zmm0,zmm30,zmm15
  a5b044:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm0
  a5b04b:	06 
  a5b04c:	62 11 1c 48 5c f3    	vsubps zmm14,zmm12,zmm27
  a5b052:	62 c1 5c 48 58 cb    	vaddps zmm17,zmm4,zmm11
  a5b058:	62 f1 24 48 5c fc    	vsubps zmm7,zmm11,zmm4
  a5b05e:	62 31 7c 48 28 d8    	vmovaps zmm11,zmm16
  a5b064:	62 31 64 48 5c c4    	vsubps zmm8,zmm3,zmm20
  a5b06a:	62 a1 7c 48 28 e0    	vmovaps zmm20,zmm16
  a5b070:	62 51 6c 40 5c ed    	vsubps zmm13,zmm18,zmm13
  a5b076:	62 a1 7c 48 28 d0    	vmovaps zmm18,zmm16
  a5b07c:	62 72 7d 40 ac d1    	vfnmadd213ps zmm10,zmm16,zmm1
  a5b082:	62 d1 54 40 58 c6    	vaddps zmm0,zmm21,zmm14
  a5b088:	62 12 7d 40 ac fe    	vfnmadd213ps zmm15,zmm16,zmm30
  a5b08e:	62 71 6c 48 58 e0    	vaddps zmm12,zmm2,zmm0
  a5b094:	62 f2 7d 40 ac c2    	vfnmadd213ps zmm0,zmm16,zmm2
  a5b09a:	62 21 7c 48 28 f0    	vmovaps zmm30,zmm16
  a5b0a0:	62 d1 3c 48 58 d5    	vaddps zmm2,zmm8,zmm13
  a5b0a6:	62 e2 6d 48 ac c7    	vfnmadd213ps zmm16,zmm2,zmm7
  a5b0ac:	62 f1 44 48 58 ca    	vaddps zmm1,zmm7,zmm2
  a5b0b2:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  a5b0b9:	02 
  a5b0ba:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x140]
  a5b0c1:	05 
  a5b0c2:	62 12 4d 48 ac df    	vfnmadd213ps zmm11,zmm6,zmm31
  a5b0c8:	62 c1 4c 40 5c f1    	vsubps zmm22,zmm22,zmm9
  a5b0ce:	62 62 7d 48 18 0d fc 	vbroadcastss zmm25,DWORD PTR [rip+0xffffffffff61a1fc]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a5b0d5:	a1 61 ff 
  a5b0d8:	62 71 34 40 59 4c 24 	vmulps zmm9,zmm25,ZMMWORD PTR [rsp+0x100]
  a5b0df:	04 
  a5b0e0:	62 f1 2c 40 5c dd    	vsubps zmm3,zmm26,zmm5
  a5b0e6:	62 d1 34 48 58 eb    	vaddps zmm5,zmm9,zmm11
  a5b0ec:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0xc0]
  a5b0f3:	03 
  a5b0f4:	62 a2 6d 48 ac e1    	vfnmadd213ps zmm20,zmm2,zmm17
  a5b0fa:	62 61 34 40 59 54 24 	vmulps zmm26,zmm25,ZMMWORD PTR [rsp+0x40]
  a5b101:	01 
  a5b102:	62 51 24 48 5c c9    	vsubps zmm9,zmm11,zmm9
  a5b108:	62 91 5c 40 5c ca    	vsubps zmm1,zmm20,zmm26
  a5b10e:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm1
  a5b115:	07 
  a5b116:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x240]
  a5b11d:	09 
  a5b11e:	62 e2 65 40 ac d7    	vfnmadd213ps zmm18,zmm19,zmm7
  a5b124:	62 91 3c 40 59 c9    	vmulps zmm1,zmm24,zmm25
  a5b12a:	62 91 5c 40 58 e2    	vaddps zmm4,zmm20,zmm26
  a5b130:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm4
  a5b137:	01 
  a5b138:	62 61 6c 40 5c c1    	vsubps zmm24,zmm18,zmm1
  a5b13e:	62 02 15 40 ac f4    	vfnmadd213ps zmm30,zmm29,zmm28
  a5b144:	62 e1 34 40 59 64 24 	vmulps zmm20,zmm25,ZMMWORD PTR [rsp+0x200]
  a5b14b:	08 
  a5b14c:	62 b1 44 48 58 fb    	vaddps zmm7,zmm7,zmm19
  a5b152:	62 11 5c 40 58 de    	vaddps zmm11,zmm20,zmm30
  a5b158:	62 81 4c 40 59 f1    	vmulps zmm22,zmm22,zmm25
  a5b15e:	62 91 1c 40 58 e5    	vaddps zmm4,zmm28,zmm29
  a5b164:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm4
  a5b16b:	09 
  a5b16c:	62 21 2c 48 58 de    	vaddps zmm27,zmm10,zmm22
  a5b172:	62 91 64 48 59 d9    	vmulps zmm3,zmm3,zmm25
  a5b178:	62 51 3c 48 5c c5    	vsubps zmm8,zmm8,zmm13
  a5b17e:	62 f1 04 48 5c e3    	vsubps zmm4,zmm15,zmm3
  a5b184:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm4
  a5b18b:	08 
  a5b18c:	62 11 3c 48 59 c1    	vmulps zmm8,zmm8,zmm25
  a5b192:	62 51 54 40 5c ee    	vsubps zmm13,zmm21,zmm14
  a5b198:	62 61 3c 48 58 d0    	vaddps zmm26,zmm8,zmm0
  a5b19e:	62 81 14 48 59 e9    	vmulps zmm21,zmm13,zmm25
  a5b1a4:	62 31 7c 40 5c ed    	vsubps zmm13,zmm16,zmm21
  a5b1aa:	62 21 2c 48 5c ce    	vsubps zmm25,zmm10,zmm22
  a5b1b0:	62 c1 64 48 58 f7    	vaddps zmm22,zmm3,zmm15
  a5b1b6:	62 f1 04 40 58 de    	vaddps zmm3,zmm31,zmm6
  a5b1bc:	62 71 74 40 58 f2    	vaddps zmm14,zmm17,zmm2
  a5b1c2:	62 f1 6c 40 58 c9    	vaddps zmm1,zmm18,zmm1
  a5b1c8:	62 a1 0c 40 5c e4    	vsubps zmm20,zmm30,zmm20
  a5b1ce:	62 d1 7c 48 5c c0    	vsubps zmm0,zmm0,zmm8
  a5b1d4:	62 b1 7c 40 58 e5    	vaddps zmm4,zmm16,zmm21
  a5b1da:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm4
  a5b1e1:	05 
  a5b1e2:	62 71 7c 48 28 3d 94 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff66bd94]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a5b1e9:	bd 66 ff 
  a5b1ec:	62 b1 7c 48 28 f7    	vmovaps zmm6,zmm23
  a5b1f2:	62 92 05 48 7f f1    	vpermt2ps zmm6,zmm15,zmm25
  a5b1f8:	62 e1 7c 48 28 05 be 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff66bdbe]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a5b1ff:	bd 66 ff 
  a5b202:	62 82 7d 40 7f f9    	vpermt2ps zmm23,zmm16,zmm25
  a5b208:	62 61 7c 48 28 e5    	vmovaps zmm28,zmm5
  a5b20e:	62 62 05 48 7f e3    	vpermt2ps zmm28,zmm15,zmm3
  a5b214:	62 f2 7d 40 7f eb    	vpermt2ps zmm5,zmm16,zmm3
  a5b21a:	62 01 7c 48 28 e8    	vmovaps zmm29,zmm24
  a5b220:	62 62 05 48 7f e9    	vpermt2ps zmm29,zmm15,zmm1
  a5b226:	62 62 7d 40 7f c1    	vpermt2ps zmm24,zmm16,zmm1
  a5b22c:	62 d1 7c 48 28 e4    	vmovaps zmm4,zmm12
  a5b232:	62 f2 05 48 7f e0    	vpermt2ps zmm4,zmm15,zmm0
  a5b238:	62 72 7d 40 7f e0    	vpermt2ps zmm12,zmm16,zmm0
  a5b23e:	62 a1 54 00 57 ed    	vxorps xmm21,xmm21,xmm21
  a5b244:	62 91 7c 48 28 c3    	vmovaps zmm0,zmm27
  a5b24a:	62 b2 05 48 7f c5    	vpermt2ps zmm0,zmm15,zmm21
  a5b250:	62 d1 7c 48 28 d9    	vmovaps zmm3,zmm9
  a5b256:	62 b2 05 48 7f dd    	vpermt2ps zmm3,zmm15,zmm21
  a5b25c:	62 e1 7c 48 28 0d 9a 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff66bc9a]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a5b263:	bc 66 ff 
  a5b266:	62 71 7c 48 28 c6    	vmovaps zmm8,zmm6
  a5b26c:	62 72 75 40 7f c0    	vpermt2ps zmm8,zmm17,zmm0
  a5b272:	62 e1 7c 48 28 1d c4 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff66bcc4]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a5b279:	bc 66 ff 
  a5b27c:	62 f2 65 40 7f f0    	vpermt2ps zmm6,zmm19,zmm0
  a5b282:	62 91 7c 48 28 c4    	vmovaps zmm0,zmm28
  a5b288:	62 f2 75 40 7f c3    	vpermt2ps zmm0,zmm17,zmm3
  a5b28e:	62 62 65 40 7f e3    	vpermt2ps zmm28,zmm19,zmm3
  a5b294:	62 f1 7c 48 28 df    	vmovaps zmm3,zmm7
  a5b29a:	62 b2 05 48 7f dd    	vpermt2ps zmm3,zmm15,zmm21
  a5b2a0:	62 01 7c 48 28 f5    	vmovaps zmm30,zmm29
  a5b2a6:	62 62 75 40 7f f3    	vpermt2ps zmm30,zmm17,zmm3
  a5b2ac:	62 62 65 40 7f eb    	vpermt2ps zmm29,zmm19,zmm3
  a5b2b2:	62 91 7c 48 28 da    	vmovaps zmm3,zmm26
  a5b2b8:	62 b2 05 48 7f dd    	vpermt2ps zmm3,zmm15,zmm21
  a5b2be:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a5b2c4:	62 f2 75 40 7f cb    	vpermt2ps zmm1,zmm17,zmm3
  a5b2ca:	62 f2 65 40 7f e3    	vpermt2ps zmm4,zmm19,zmm3
  a5b2d0:	62 22 7d 40 7f dd    	vpermt2ps zmm27,zmm16,zmm21
  a5b2d6:	62 82 75 40 7f fb    	vpermt2ps zmm23,zmm17,zmm27
  a5b2dc:	62 32 7d 40 7f cd    	vpermt2ps zmm9,zmm16,zmm21
  a5b2e2:	62 d2 75 40 7f e9    	vpermt2ps zmm5,zmm17,zmm9
  a5b2e8:	62 b2 7d 40 7f fd    	vpermt2ps zmm7,zmm16,zmm21
  a5b2ee:	62 22 7d 40 7f d5    	vpermt2ps zmm26,zmm16,zmm21
  a5b2f4:	62 62 75 40 7f c7    	vpermt2ps zmm24,zmm17,zmm7
  a5b2fa:	62 91 c5 40 14 d0    	vunpcklpd zmm2,zmm23,zmm24
  a5b300:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm2
  a5b307:	04 
  a5b308:	62 12 75 40 7f e2    	vpermt2ps zmm12,zmm17,zmm26
  a5b30e:	62 41 d5 48 14 cc    	vunpcklpd zmm25,zmm5,zmm12
  a5b314:	62 91 bd 48 14 d6    	vunpcklpd zmm2,zmm8,zmm30
  a5b31a:	62 11 bd 48 15 d6    	vunpckhpd zmm10,zmm8,zmm30
  a5b320:	62 f1 fd 48 14 f9    	vunpcklpd zmm7,zmm0,zmm1
  a5b326:	62 61 fd 48 15 f1    	vunpckhpd zmm30,zmm0,zmm1
  a5b32c:	62 81 cd 48 14 d5    	vunpcklpd zmm18,zmm6,zmm29
  a5b332:	62 91 cd 48 15 c5    	vunpckhpd zmm0,zmm6,zmm29
  a5b338:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a5b33f:	03 
  a5b340:	62 61 9d 40 14 ec    	vunpcklpd zmm29,zmm28,zmm4
  a5b346:	62 61 9d 40 15 dc    	vunpckhpd zmm27,zmm28,zmm4
  a5b34c:	62 71 7c 48 28 25 aa 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff66baaa]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a5b353:	ba 66 ff 
  a5b356:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x180]
  a5b35d:	06 
  a5b35e:	62 61 7c 48 28 c5    	vmovaps zmm24,zmm5
  a5b364:	62 22 05 48 7f c6    	vpermt2ps zmm24,zmm15,zmm22
  a5b36a:	62 b2 7d 40 7f ee    	vpermt2ps zmm5,zmm16,zmm22
  a5b370:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x1c0]
  a5b377:	07 
  a5b378:	62 e1 7c 48 28 f8    	vmovaps zmm23,zmm0
  a5b37e:	62 c2 05 48 7f fe    	vpermt2ps zmm23,zmm15,zmm14
  a5b384:	62 d2 7d 40 7f c6    	vpermt2ps zmm0,zmm16,zmm14
  a5b38a:	62 61 7c 48 28 f8    	vmovaps zmm31,zmm0
  a5b390:	62 c1 7c 48 28 f3    	vmovaps zmm22,zmm11
  a5b396:	62 a2 05 48 7f f4    	vpermt2ps zmm22,zmm15,zmm20
  a5b39c:	62 32 7d 40 7f dc    	vpermt2ps zmm11,zmm16,zmm20
  a5b3a2:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x80]
  a5b3a9:	02 
  a5b3aa:	62 61 7c 48 28 d3    	vmovaps zmm26,zmm3
  a5b3b0:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x140]
  a5b3b7:	05 
  a5b3b8:	62 62 05 48 7f d1    	vpermt2ps zmm26,zmm15,zmm1
  a5b3be:	62 f2 7d 40 7f d9    	vpermt2ps zmm3,zmm16,zmm1
  a5b3c4:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x200]
  a5b3cb:	08 
  a5b3cc:	62 f1 7c 48 28 c8    	vmovaps zmm1,zmm0
  a5b3d2:	62 b2 05 48 7f cd    	vpermt2ps zmm1,zmm15,zmm21
  a5b3d8:	62 b2 7d 40 7f c5    	vpermt2ps zmm0,zmm16,zmm21
  a5b3de:	62 71 7c 48 28 c8    	vmovaps zmm9,zmm0
  a5b3e4:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x40]
  a5b3eb:	01 
  a5b3ec:	62 f1 7c 48 28 e6    	vmovaps zmm4,zmm6
  a5b3f2:	62 b2 05 48 7f e5    	vpermt2ps zmm4,zmm15,zmm21
  a5b3f8:	62 b2 7d 40 7f f5    	vpermt2ps zmm6,zmm16,zmm21
  a5b3fe:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x240]
  a5b405:	09 
  a5b406:	62 71 7c 48 28 c0    	vmovaps zmm8,zmm0
  a5b40c:	62 32 05 48 7f c5    	vpermt2ps zmm8,zmm15,zmm21
  a5b412:	62 b2 7d 40 7f c5    	vpermt2ps zmm0,zmm16,zmm21
  a5b418:	62 71 7c 48 28 f0    	vmovaps zmm14,zmm0
  a5b41e:	62 32 15 48 77 fd    	vpermi2ps zmm15,zmm13,zmm21
  a5b424:	62 32 7d 40 7f ed    	vpermt2ps zmm13,zmm16,zmm21
  a5b42a:	62 e1 7c 48 28 c2    	vmovaps zmm16,zmm2
  a5b430:	62 e2 1d 48 7f c7    	vpermt2ps zmm16,zmm12,zmm7
  a5b436:	62 61 7c 48 28 25 00 	vmovaps zmm28,ZMMWORD PTR [rip+0xffffffffff66ba00]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a5b43d:	ba 66 ff 
  a5b440:	62 f2 1d 40 7f d7    	vpermt2ps zmm2,zmm28,zmm7
  a5b446:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm2
  a5b44d:	02 
  a5b44e:	62 c1 7c 48 28 e2    	vmovaps zmm20,zmm10
  a5b454:	62 82 1d 48 7f e6    	vpermt2ps zmm20,zmm12,zmm30
  a5b45a:	62 12 1d 40 7f d6    	vpermt2ps zmm10,zmm28,zmm30
  a5b460:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm10
  a5b467:	01 
  a5b468:	62 b1 7c 48 28 c2    	vmovaps zmm0,zmm18
  a5b46e:	62 82 1d 48 7f d5    	vpermt2ps zmm18,zmm12,zmm29
  a5b474:	62 92 1d 40 7f c5    	vpermt2ps zmm0,zmm28,zmm29
  a5b47a:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm0
  a5b481:	06 
  a5b482:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0xc0]
  a5b489:	03 
  a5b48a:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a5b490:	62 92 1d 48 7f c3    	vpermt2ps zmm0,zmm12,zmm27
  a5b496:	62 92 1d 40 7f d3    	vpermt2ps zmm2,zmm28,zmm27
  a5b49c:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm2
  a5b4a3:	03 
  a5b4a4:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x100]
  a5b4ab:	04 
  a5b4ac:	62 e1 7c 48 28 ea    	vmovaps zmm21,zmm2
  a5b4b2:	62 82 1d 48 7f e9    	vpermt2ps zmm21,zmm12,zmm25
  a5b4b8:	62 92 1d 40 7f d1    	vpermt2ps zmm2,zmm28,zmm25
  a5b4be:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm2
  a5b4c5:	04 
  a5b4c6:	62 91 7c 48 28 f8    	vmovaps zmm7,zmm24
  a5b4cc:	62 f2 75 40 7f f9    	vpermt2ps zmm7,zmm17,zmm1
  a5b4d2:	62 62 65 40 7f c1    	vpermt2ps zmm24,zmm19,zmm1
  a5b4d8:	62 b1 7c 48 28 cf    	vmovaps zmm1,zmm23
  a5b4de:	62 f2 75 40 7f cc    	vpermt2ps zmm1,zmm17,zmm4
  a5b4e4:	62 e2 65 40 7f fc    	vpermt2ps zmm23,zmm19,zmm4
  a5b4ea:	62 b1 7c 48 28 e6    	vmovaps zmm4,zmm22
  a5b4f0:	62 d2 75 40 7f e0    	vpermt2ps zmm4,zmm17,zmm8
  a5b4f6:	62 c2 65 40 7f f0    	vpermt2ps zmm22,zmm19,zmm8
  a5b4fc:	62 11 7c 48 28 c2    	vmovaps zmm8,zmm26
  a5b502:	62 52 75 40 7f c7    	vpermt2ps zmm8,zmm17,zmm15
  a5b508:	62 42 65 40 7f d7    	vpermt2ps zmm26,zmm19,zmm15
  a5b50e:	62 d2 75 40 7f e9    	vpermt2ps zmm5,zmm17,zmm9
  a5b514:	62 62 75 40 7f fe    	vpermt2ps zmm31,zmm17,zmm6
  a5b51a:	62 52 75 40 7f de    	vpermt2ps zmm11,zmm17,zmm14
  a5b520:	62 51 d5 48 14 db    	vunpcklpd zmm11,zmm5,zmm11
  a5b526:	62 d2 75 40 7f dd    	vpermt2ps zmm3,zmm17,zmm13
  a5b52c:	62 71 85 40 14 d3    	vunpcklpd zmm10,zmm31,zmm3
  a5b532:	62 71 c5 48 14 cc    	vunpcklpd zmm9,zmm7,zmm4
  a5b538:	62 71 c5 48 15 f4    	vunpckhpd zmm14,zmm7,zmm4
  a5b53e:	62 d1 f5 48 14 e0    	vunpcklpd zmm4,zmm1,zmm8
  a5b544:	62 51 f5 48 15 c0    	vunpckhpd zmm8,zmm1,zmm8
  a5b54a:	62 b1 bd 40 14 fe    	vunpcklpd zmm7,zmm24,zmm22
  a5b550:	62 31 bd 40 15 fe    	vunpckhpd zmm15,zmm24,zmm22
  a5b556:	62 81 c5 40 14 ca    	vunpcklpd zmm17,zmm23,zmm26
  a5b55c:	62 81 c5 40 15 da    	vunpckhpd zmm19,zmm23,zmm26
  a5b562:	62 d1 7c 48 28 d1    	vmovaps zmm2,zmm9
  a5b568:	62 f2 1d 48 7f d4    	vpermt2ps zmm2,zmm12,zmm4
  a5b56e:	62 72 1d 40 7f cc    	vpermt2ps zmm9,zmm28,zmm4
  a5b574:	62 c1 7c 48 28 fe    	vmovaps zmm23,zmm14
  a5b57a:	62 c2 1d 48 7f f8    	vpermt2ps zmm23,zmm12,zmm8
  a5b580:	62 52 1d 40 7f f0    	vpermt2ps zmm14,zmm28,zmm8
  a5b586:	62 71 7c 48 28 ef    	vmovaps zmm13,zmm7
  a5b58c:	62 32 1d 48 7f e9    	vpermt2ps zmm13,zmm12,zmm17
  a5b592:	62 b2 1d 40 7f f9    	vpermt2ps zmm7,zmm28,zmm17
  a5b598:	62 51 7c 48 28 c7    	vmovaps zmm8,zmm15
  a5b59e:	62 32 1d 48 7f c3    	vpermt2ps zmm8,zmm12,zmm19
  a5b5a4:	62 32 1d 40 7f fb    	vpermt2ps zmm15,zmm28,zmm19
  a5b5aa:	62 52 25 48 77 e2    	vpermi2ps zmm12,zmm11,zmm10
  a5b5b0:	62 52 1d 40 7f da    	vpermt2ps zmm11,zmm28,zmm10
  a5b5b6:	62 e1 7c 48 10 5a 02 	vmovups zmm19,ZMMWORD PTR [rdx+0x80]
  a5b5bd:	62 e1 7c 48 10 4a 03 	vmovups zmm17,ZMMWORD PTR [rdx+0xc0]
  a5b5c4:	62 f1 7c 48 10 62 04 	vmovups zmm4,ZMMWORD PTR [rdx+0x100]
  a5b5cb:	62 61 7c 48 10 6a 05 	vmovups zmm29,ZMMWORD PTR [rdx+0x140]
  a5b5d2:	62 61 7c 48 10 52 06 	vmovups zmm26,ZMMWORD PTR [rdx+0x180]
  a5b5d9:	62 61 7c 48 10 42 07 	vmovups zmm24,ZMMWORD PTR [rdx+0x1c0]
  a5b5e0:	62 61 7c 48 10 7a 08 	vmovups zmm31,ZMMWORD PTR [rdx+0x200]
  a5b5e7:	62 61 7c 48 10 62 09 	vmovups zmm28,ZMMWORD PTR [rdx+0x240]
  a5b5ee:	62 e1 7c 48 10 72 0a 	vmovups zmm22,ZMMWORD PTR [rdx+0x280]
  a5b5f5:	62 61 7c 48 10 4a 0b 	vmovups zmm25,ZMMWORD PTR [rdx+0x2c0]
  a5b5fc:	62 71 5c 40 59 d4    	vmulps zmm10,zmm20,zmm4
  a5b602:	62 12 45 40 bc d5    	vfnmadd231ps zmm10,zmm23,zmm29
  a5b608:	62 61 44 40 59 dc    	vmulps zmm27,zmm23,zmm4
  a5b60e:	62 f1 7c 48 10 62 10 	vmovups zmm4,ZMMWORD PTR [rdx+0x400]
  a5b615:	62 22 15 40 b8 dc    	vfmadd231ps zmm27,zmm29,zmm20
  a5b61b:	62 e1 7c 48 10 7a 11 	vmovups zmm23,ZMMWORD PTR [rdx+0x440]
  a5b622:	62 e1 54 40 59 e4    	vmulps zmm20,zmm21,zmm4
  a5b628:	62 a2 1d 48 bc e7    	vfnmadd231ps zmm20,zmm12,zmm23
  a5b62e:	62 61 1c 48 59 f4    	vmulps zmm30,zmm12,zmm4
  a5b634:	62 f1 7c 48 10 62 0c 	vmovups zmm4,ZMMWORD PTR [rdx+0x300]
  a5b63b:	62 22 45 40 b8 f5    	vfmadd231ps zmm30,zmm23,zmm21
  a5b641:	62 71 7c 48 10 62 0d 	vmovups zmm12,ZMMWORD PTR [rdx+0x340]
  a5b648:	62 81 6c 40 59 ff    	vmulps zmm23,zmm18,zmm31
  a5b64e:	62 82 15 48 bc fc    	vfnmadd231ps zmm23,zmm13,zmm28
  a5b654:	62 81 14 48 59 ef    	vmulps zmm21,zmm13,zmm31
  a5b65a:	62 61 7c 48 10 7a 0e 	vmovups zmm31,ZMMWORD PTR [rdx+0x380]
  a5b661:	62 a2 1d 40 b8 ea    	vfmadd231ps zmm21,zmm28,zmm18
  a5b667:	62 e1 7c 48 10 52 0f 	vmovups zmm18,ZMMWORD PTR [rdx+0x3c0]
  a5b66e:	62 61 7c 48 59 ec    	vmulps zmm29,zmm0,zmm4
  a5b674:	62 42 3d 48 bc ec    	vfnmadd231ps zmm29,zmm8,zmm12
  a5b67a:	62 f1 3c 48 59 cc    	vmulps zmm1,zmm8,zmm4
  a5b680:	62 f1 7c 48 10 62 12 	vmovups zmm4,ZMMWORD PTR [rdx+0x480]
  a5b687:	62 f2 1d 48 b8 c8    	vfmadd231ps zmm1,zmm12,zmm0
  a5b68d:	62 61 7c 48 10 62 13 	vmovups zmm28,ZMMWORD PTR [rdx+0x4c0]
  a5b694:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a5b69b:	06 
  a5b69c:	62 31 7c 48 59 c6    	vmulps zmm8,zmm0,zmm22
  a5b6a2:	62 12 45 48 bc c1    	vfnmadd231ps zmm8,zmm7,zmm25
  a5b6a8:	62 b1 44 48 59 fe    	vmulps zmm7,zmm7,zmm22
  a5b6ae:	62 a1 2c 48 58 f4    	vaddps zmm22,zmm10,zmm20
  a5b6b4:	62 f2 35 40 b8 f8    	vfmadd231ps zmm7,zmm25,zmm0
  a5b6ba:	62 b1 7c 40 58 ee    	vaddps zmm5,zmm16,zmm22
  a5b6c0:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0xc0]
  a5b6c7:	03 
  a5b6c8:	62 11 64 48 59 ef    	vmulps zmm13,zmm3,zmm31
  a5b6ce:	62 32 05 48 bc ea    	vfnmadd231ps zmm13,zmm15,zmm18
  a5b6d4:	62 01 04 48 59 ff    	vmulps zmm31,zmm15,zmm31
  a5b6da:	62 11 44 40 58 e5    	vaddps zmm12,zmm23,zmm29
  a5b6e0:	62 d1 54 48 58 c4    	vaddps zmm0,zmm5,zmm12
  a5b6e6:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm0
  a5b6ed:	06 
  a5b6ee:	62 62 6d 40 b8 fb    	vfmadd231ps zmm31,zmm18,zmm3
  a5b6f4:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x40]
  a5b6fb:	01 
  a5b6fc:	62 91 7c 48 59 f2    	vmulps zmm6,zmm0,zmm26
  a5b702:	62 92 0d 48 bc f0    	vfnmadd231ps zmm6,zmm14,zmm24
  a5b708:	62 61 14 48 58 ce    	vaddps zmm25,zmm13,zmm6
  a5b70e:	62 81 0c 48 59 d2    	vmulps zmm18,zmm14,zmm26
  a5b714:	62 91 3c 48 58 e9    	vaddps zmm5,zmm8,zmm25
  a5b71a:	62 e2 3d 40 b8 d0    	vfmadd231ps zmm18,zmm24,zmm0
  a5b720:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x100]
  a5b727:	04 
  a5b728:	62 71 64 48 59 f4    	vmulps zmm14,zmm3,zmm4
  a5b72e:	62 12 25 48 bc f4    	vfnmadd231ps zmm14,zmm11,zmm28
  a5b734:	62 61 7c 48 28 54 24 	vmovaps zmm26,ZMMWORD PTR [rsp+0x80]
  a5b73b:	02 
  a5b73c:	62 31 2c 40 59 fb    	vmulps zmm15,zmm26,zmm19
  a5b742:	62 32 35 48 bc f9    	vfnmadd231ps zmm15,zmm9,zmm17
  a5b748:	62 61 24 48 59 c4    	vmulps zmm24,zmm11,zmm4
  a5b74e:	62 d1 0c 48 58 e7    	vaddps zmm4,zmm14,zmm15
  a5b754:	62 f1 54 48 58 c4    	vaddps zmm0,zmm5,zmm4
  a5b75a:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a5b761:	03 
  a5b762:	62 62 1d 40 b8 c3    	vfmadd231ps zmm24,zmm28,zmm3
  a5b768:	62 01 24 40 58 e6    	vaddps zmm28,zmm27,zmm30
  a5b76e:	62 f1 1c 40 58 da    	vaddps zmm3,zmm28,zmm2
  a5b774:	62 b1 34 48 59 c3    	vmulps zmm0,zmm9,zmm19
  a5b77a:	62 71 54 40 58 c9    	vaddps zmm9,zmm21,zmm1
  a5b780:	62 f1 34 48 58 db    	vaddps zmm3,zmm9,zmm3
  a5b786:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm3
  a5b78d:	04 
  a5b78e:	62 92 75 40 b8 c2    	vfmadd231ps zmm0,zmm17,zmm26
  a5b794:	62 21 04 40 58 d2    	vaddps zmm26,zmm31,zmm18
  a5b79a:	62 91 44 48 58 ea    	vaddps zmm5,zmm7,zmm26
  a5b7a0:	62 81 24 40 5c ce    	vsubps zmm17,zmm27,zmm30
  a5b7a6:	62 e1 3c 40 58 d8    	vaddps zmm19,zmm24,zmm0
  a5b7ac:	62 f1 54 40 5c d9    	vsubps zmm3,zmm21,zmm1
  a5b7b2:	62 e2 7d 48 18 2d 2c 	vbroadcastss zmm21,DWORD PTR [rip+0xffffffffff619f2c]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a5b7b9:	9f 61 ff 
  a5b7bc:	62 b1 54 48 58 cb    	vaddps zmm1,zmm5,zmm19
  a5b7c2:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  a5b7c9:	02 
  a5b7ca:	62 a1 04 40 5c d2    	vsubps zmm18,zmm31,zmm18
  a5b7d0:	62 31 7c 48 28 dd    	vmovaps zmm11,zmm21
  a5b7d6:	62 32 4d 40 a8 d8    	vfmadd213ps zmm11,zmm22,zmm16
  a5b7dc:	62 61 3c 40 5c d8    	vsubps zmm27,zmm24,zmm0
  a5b7e2:	62 62 7d 48 18 3d 58 	vbroadcastss zmm31,DWORD PTR [rip+0xffffffffff619e58]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a5b7e9:	9e 61 ff 
  a5b7ec:	62 12 1d 48 bc df    	vfnmadd231ps zmm11,zmm12,zmm31
  a5b7f2:	62 b1 2c 48 5c ec    	vsubps zmm5,zmm10,zmm20
  a5b7f8:	62 62 7d 48 18 35 56 	vbroadcastss zmm30,DWORD PTR [rip+0xffffffffff619f56]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a5b7ff:	9f 61 ff 
  a5b802:	62 81 44 40 5c fd    	vsubps zmm23,zmm23,zmm29
  a5b808:	62 e2 7d 48 18 25 8e 	vbroadcastss zmm20,DWORD PTR [rip+0xffffffffff619b8e]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a5b80f:	9b 61 ff 
  a5b812:	62 a2 05 40 bc c6    	vfnmadd231ps zmm16,zmm31,zmm22
  a5b818:	62 a1 7c 48 28 f5    	vmovaps zmm22,zmm21
  a5b81e:	62 c2 35 40 a8 f0    	vfmadd213ps zmm22,zmm25,zmm8
  a5b824:	62 12 05 40 bc c1    	vfnmadd231ps zmm8,zmm31,zmm25
  a5b82a:	62 21 7c 48 28 cd    	vmovaps zmm25,zmm21
  a5b830:	62 62 1d 40 a8 ca    	vfmadd213ps zmm25,zmm28,zmm2
  a5b836:	62 92 05 40 bc d4    	vfnmadd231ps zmm2,zmm31,zmm28
  a5b83c:	62 21 7c 48 28 e5    	vmovaps zmm28,zmm21
  a5b842:	62 62 2d 40 a8 e7    	vfmadd213ps zmm28,zmm26,zmm7
  a5b848:	62 92 2d 40 bc ff    	vfnmadd231ps zmm7,zmm26,zmm31
  a5b84e:	62 91 64 48 59 ce    	vmulps zmm1,zmm3,zmm30
  a5b854:	62 b2 75 40 b8 cc    	vfmadd231ps zmm1,zmm17,zmm20
  a5b85a:	62 82 5d 48 bc f7    	vfnmadd231ps zmm22,zmm4,zmm31
  a5b860:	62 02 35 48 bc cf    	vfnmadd231ps zmm25,zmm9,zmm31
  a5b866:	62 02 65 40 bc e7    	vfnmadd231ps zmm28,zmm19,zmm31
  a5b86c:	62 61 24 48 58 d1    	vaddps zmm26,zmm11,zmm1
  a5b872:	62 f1 14 48 5c c6    	vsubps zmm0,zmm13,zmm6
  a5b878:	62 01 24 40 59 c6    	vmulps zmm24,zmm27,zmm30
  a5b87e:	62 22 6d 40 b8 c4    	vfmadd231ps zmm24,zmm18,zmm20
  a5b884:	62 51 0c 48 5c f7    	vsubps zmm14,zmm14,zmm15
  a5b88a:	62 11 4c 40 58 f8    	vaddps zmm15,zmm22,zmm24
  a5b890:	62 c2 55 40 b8 c4    	vfmadd231ps zmm16,zmm21,zmm12
  a5b896:	62 51 2c 40 5c ef    	vsubps zmm13,zmm26,zmm15
  a5b89c:	62 72 55 40 b8 c4    	vfmadd231ps zmm8,zmm21,zmm4
  a5b8a2:	62 91 44 40 59 e6    	vmulps zmm4,zmm23,zmm30
  a5b8a8:	62 b2 55 48 b8 e4    	vfmadd231ps zmm4,zmm5,zmm20
  a5b8ae:	62 d2 55 40 b8 d1    	vfmadd231ps zmm2,zmm21,zmm9
  a5b8b4:	62 61 34 40 5c ec    	vsubps zmm29,zmm25,zmm4
  a5b8ba:	62 b2 65 40 b8 fd    	vfmadd231ps zmm7,zmm19,zmm21
  a5b8c0:	62 81 0c 48 59 de    	vmulps zmm19,zmm14,zmm30
  a5b8c6:	62 a2 7d 48 b8 dc    	vfmadd231ps zmm19,zmm0,zmm20
  a5b8cc:	62 a1 1c 40 5c eb    	vsubps zmm21,zmm28,zmm19
  a5b8d2:	62 81 74 40 59 ce    	vmulps zmm17,zmm17,zmm30
  a5b8d8:	62 e2 5d 40 bc cb    	vfnmadd231ps zmm17,zmm20,zmm3
  a5b8de:	62 b1 14 40 5c f5    	vsubps zmm6,zmm29,zmm21
  a5b8e4:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm6
  a5b8eb:	05 
  a5b8ec:	62 91 6c 40 59 de    	vmulps zmm3,zmm18,zmm30
  a5b8f2:	62 92 5d 40 bc db    	vfnmadd231ps zmm3,zmm20,zmm27
  a5b8f8:	c5 7c 28 0d 40 b3 61 	vmovaps ymm9,YMMWORD PTR [rip+0xffffffffff61b340]        # 76c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x40f0>
  a5b8ff:	ff 
  a5b900:	62 81 54 48 59 d6    	vmulps zmm18,zmm5,zmm30
  a5b906:	62 a2 5d 40 bc d7    	vfnmadd231ps zmm18,zmm20,zmm23
  a5b90c:	62 d1 7c 48 28 ed    	vmovaps zmm5,zmm13
  a5b912:	62 f2 35 48 7f ee    	vpermt2ps zmm5,zmm9,zmm6
  a5b918:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm5
  a5b91f:	01 
  a5b920:	62 91 7c 48 59 c6    	vmulps zmm0,zmm0,zmm30
  a5b926:	62 21 7c 40 58 d9    	vaddps zmm27,zmm16,zmm17
  a5b92c:	62 b2 0d 48 bc c4    	vfnmadd231ps zmm0,zmm14,zmm20
  a5b932:	62 71 3c 48 58 f3    	vaddps zmm14,zmm8,zmm3
  a5b938:	62 51 24 40 58 e6    	vaddps zmm12,zmm27,zmm14
  a5b93e:	62 a1 7c 40 5c c1    	vsubps zmm16,zmm16,zmm17
  a5b944:	62 a1 6c 48 5c e2    	vsubps zmm20,zmm2,zmm18
  a5b94a:	62 f1 3c 48 5c db    	vsubps zmm3,zmm8,zmm3
  a5b950:	62 61 44 48 5c f0    	vsubps zmm30,zmm7,zmm0
  a5b956:	62 f1 6c 40 58 ea    	vaddps zmm5,zmm18,zmm2
  a5b95c:	62 81 5c 40 58 fe    	vaddps zmm23,zmm20,zmm30
  a5b962:	62 61 44 48 58 f8    	vaddps zmm31,zmm7,zmm0
  a5b968:	62 51 7c 48 28 d4    	vmovaps zmm10,zmm12
  a5b96e:	62 32 35 48 7f d7    	vpermt2ps zmm10,zmm9,zmm23
  a5b974:	62 f1 24 48 5c d1    	vsubps zmm2,zmm11,zmm1
  a5b97a:	62 f1 7c 40 5c fb    	vsubps zmm7,zmm16,zmm3
  a5b980:	62 81 4c 40 5c f0    	vsubps zmm22,zmm22,zmm24
  a5b986:	62 01 54 48 5c c7    	vsubps zmm24,zmm5,zmm31
  a5b98c:	62 91 5c 48 58 e1    	vaddps zmm4,zmm4,zmm25
  a5b992:	62 f1 7c 48 28 f7    	vmovaps zmm6,zmm7
  a5b998:	62 92 35 48 7f f0    	vpermt2ps zmm6,zmm9,zmm24
  a5b99e:	62 21 1c 40 58 e3    	vaddps zmm28,zmm28,zmm19
  a5b9a4:	62 31 6c 48 58 c6    	vaddps zmm8,zmm2,zmm22
  a5b9aa:	62 51 2c 40 58 df    	vaddps zmm11,zmm26,zmm15
  a5b9b0:	62 01 5c 48 58 d4    	vaddps zmm26,zmm4,zmm28
  a5b9b6:	62 21 14 40 58 cd    	vaddps zmm25,zmm29,zmm21
  a5b9bc:	62 51 7c 48 28 f8    	vmovaps zmm15,zmm8
  a5b9c2:	62 12 35 48 7f fa    	vpermt2ps zmm15,zmm9,zmm26
  a5b9c8:	62 51 24 40 5c f6    	vsubps zmm14,zmm27,zmm14
  a5b9ce:	62 e1 7c 48 28 6c 24 	vmovaps zmm21,ZMMWORD PTR [rsp+0x180]
  a5b9d5:	06 
  a5b9d6:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc0]
  a5b9dd:	03 
  a5b9de:	62 e1 54 40 5c c8    	vsubps zmm17,zmm21,zmm0
  a5b9e4:	62 01 5c 40 5c de    	vsubps zmm27,zmm20,zmm30
  a5b9ea:	62 61 7c 48 28 74 24 	vmovaps zmm30,ZMMWORD PTR [rsp+0x100]
  a5b9f1:	04 
  a5b9f2:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x80]
  a5b9f9:	02 
  a5b9fa:	62 61 0c 40 5c e9    	vsubps zmm29,zmm30,zmm1
  a5ba00:	62 e1 7c 40 58 c3    	vaddps zmm16,zmm16,zmm3
  a5ba06:	62 a1 7c 48 28 d1    	vmovaps zmm18,zmm17
  a5ba0c:	62 82 35 48 7f d5    	vpermt2ps zmm18,zmm9,zmm29
  a5ba12:	62 91 54 48 58 ef    	vaddps zmm5,zmm5,zmm31
  a5ba18:	62 c1 7c 48 28 e3    	vmovaps zmm20,zmm11
  a5ba1e:	62 82 35 48 7f e1    	vpermt2ps zmm20,zmm9,zmm25
  a5ba24:	62 a1 6c 48 5c de    	vsubps zmm19,zmm2,zmm22
  a5ba2a:	62 41 7c 48 28 fe    	vmovaps zmm31,zmm14
  a5ba30:	62 02 35 48 7f fb    	vpermt2ps zmm31,zmm9,zmm27
  a5ba36:	62 91 5c 48 5c d4    	vsubps zmm2,zmm4,zmm28
  a5ba3c:	62 a1 7c 48 28 f0    	vmovaps zmm22,zmm16
  a5ba42:	62 e2 35 48 7f f5    	vpermt2ps zmm22,zmm9,zmm5
  a5ba48:	62 f1 54 40 58 d8    	vaddps zmm3,zmm21,zmm0
  a5ba4e:	62 b1 7c 48 28 e3    	vmovaps zmm4,zmm19
  a5ba54:	62 f2 35 48 7f e2    	vpermt2ps zmm4,zmm9,zmm2
  a5ba5a:	62 61 0c 40 58 e1    	vaddps zmm28,zmm30,zmm1
  a5ba60:	62 12 65 48 77 cc    	vpermi2ps zmm9,zmm3,zmm28
  a5ba66:	62 61 7c 48 28 35 50 	vmovaps zmm30,ZMMWORD PTR [rip+0xffffffffff637950]        # 933c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20870>
  a5ba6d:	79 63 ff 
  a5ba70:	62 92 0d 40 7f dc    	vpermt2ps zmm3,zmm30,zmm28
  a5ba76:	62 72 0d 40 7f 6c 24 	vpermt2ps zmm13,zmm30,ZMMWORD PTR [rsp+0x140]
  a5ba7d:	05 
  a5ba7e:	62 32 0d 40 7f e7    	vpermt2ps zmm12,zmm30,zmm23
  a5ba84:	62 92 0d 40 7f f8    	vpermt2ps zmm7,zmm30,zmm24
  a5ba8a:	62 12 0d 40 7f c2    	vpermt2ps zmm8,zmm30,zmm26
  a5ba90:	62 82 0d 40 7f cd    	vpermt2ps zmm17,zmm30,zmm29
  a5ba96:	62 12 0d 40 7f d9    	vpermt2ps zmm11,zmm30,zmm25
  a5ba9c:	62 12 0d 40 7f f3    	vpermt2ps zmm14,zmm30,zmm27
  a5baa2:	62 e2 0d 40 7f c5    	vpermt2ps zmm16,zmm30,zmm5
  a5baa8:	62 e2 0d 40 7f da    	vpermt2ps zmm19,zmm30,zmm2
  a5baae:	62 f1 7c 48 11 1e    	vmovups ZMMWORD PTR [rsi],zmm3
  a5bab4:	c5 7c 11 4e 40       	vmovups YMMWORD PTR [rsi+0x40],ymm9
  a5bab9:	62 71 7c 48 11 ae 60 	vmovups ZMMWORD PTR [rsi+0x60],zmm13
  a5bac0:	00 00 00 
  a5bac3:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x40]
  a5baca:	01 
  a5bacb:	c5 fc 11 86 a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm0
  a5bad2:	00 
  a5bad3:	62 71 7c 48 11 66 03 	vmovups ZMMWORD PTR [rsi+0xc0],zmm12
  a5bada:	c5 7c 11 96 00 01 00 	vmovups YMMWORD PTR [rsi+0x100],ymm10
  a5bae1:	00 
  a5bae2:	62 f1 7c 48 11 be 20 	vmovups ZMMWORD PTR [rsi+0x120],zmm7
  a5bae9:	01 00 00 
  a5baec:	c5 fc 11 b6 60 01 00 	vmovups YMMWORD PTR [rsi+0x160],ymm6
  a5baf3:	00 
  a5baf4:	62 71 7c 48 11 46 06 	vmovups ZMMWORD PTR [rsi+0x180],zmm8
  a5bafb:	c5 7c 11 be c0 01 00 	vmovups YMMWORD PTR [rsi+0x1c0],ymm15
  a5bb02:	00 
  a5bb03:	62 e1 7c 48 11 8e e0 	vmovups ZMMWORD PTR [rsi+0x1e0],zmm17
  a5bb0a:	01 00 00 
  a5bb0d:	62 e1 7c 28 11 56 11 	vmovups YMMWORD PTR [rsi+0x220],ymm18
  a5bb14:	62 71 7c 48 11 5e 09 	vmovups ZMMWORD PTR [rsi+0x240],zmm11
  a5bb1b:	62 e1 7c 28 11 66 14 	vmovups YMMWORD PTR [rsi+0x280],ymm20
  a5bb22:	62 71 7c 48 11 b6 a0 	vmovups ZMMWORD PTR [rsi+0x2a0],zmm14
  a5bb29:	02 00 00 
  a5bb2c:	62 61 7c 28 11 7e 17 	vmovups YMMWORD PTR [rsi+0x2e0],ymm31
  a5bb33:	62 e1 7c 48 11 46 0c 	vmovups ZMMWORD PTR [rsi+0x300],zmm16
  a5bb3a:	62 e1 7c 28 11 76 1a 	vmovups YMMWORD PTR [rsi+0x340],ymm22
  a5bb41:	62 e1 7c 48 11 9e 60 	vmovups ZMMWORD PTR [rsi+0x360],zmm19
  a5bb48:	03 00 00 
  a5bb4b:	c5 fc 11 a6 a0 03 00 	vmovups YMMWORD PTR [rsi+0x3a0],ymm4
  a5bb52:	00 
  a5bb53:	48 89 ec             	mov    rsp,rbp
  a5bb56:	5d                   	pop    rbp
  a5bb57:	c5 f8 77             	vzeroupper
  a5bb5a:	c3                   	ret
