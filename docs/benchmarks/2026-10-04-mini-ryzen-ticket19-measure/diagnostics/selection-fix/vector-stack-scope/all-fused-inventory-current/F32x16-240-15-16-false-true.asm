
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a2fc00 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a2fc00:	55                   	push   rbp
  a2fc01:	48 89 e5             	mov    rbp,rsp
  a2fc04:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a2fc08:	48 81 ec 80 0b 00 00 	sub    rsp,0xb80
  a2fc0f:	48 69 c2 80 07 00 00 	imul   rax,rdx,0x780
  a2fc16:	31 d2                	xor    edx,edx
  a2fc18:	4c 8d 84 24 00 0b 00 	lea    r8,[rsp+0xb00]
  a2fc1f:	00 
  a2fc20:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a2fc25:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  a2fc2c:	00 00 00 00 
  a2fc30:	c6 84 24 00 0b 00 00 	mov    BYTE PTR [rsp+0xb00],0x0
  a2fc37:	00 
  a2fc38:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a2fc3d:	62 f1 7c 48 10 04 17 	vmovups zmm0,ZMMWORD PTR [rdi+rdx*1]
  a2fc44:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a2fc4b:	03 
  a2fc4c:	62 f1 7c 48 10 5c 17 	vmovups zmm3,ZMMWORD PTR [rdi+rdx*1+0x80]
  a2fc53:	02 
  a2fc54:	62 61 7c 48 10 4c 17 	vmovups zmm25,ZMMWORD PTR [rdi+rdx*1+0xc0]
  a2fc5b:	03 
  a2fc5c:	62 f1 7c 48 10 4c 17 	vmovups zmm1,ZMMWORD PTR [rdi+rdx*1+0x180]
  a2fc63:	06 
  a2fc64:	62 71 7c 48 10 5c 17 	vmovups zmm11,ZMMWORD PTR [rdi+rdx*1+0x1c0]
  a2fc6b:	07 
  a2fc6c:	62 f1 7c 48 28 c1    	vmovaps zmm0,zmm1
  a2fc72:	62 71 7c 48 28 c1    	vmovaps zmm8,zmm1
  a2fc78:	62 f1 7c 48 10 7c 17 	vmovups zmm7,ZMMWORD PTR [rdi+rdx*1+0x600]
  a2fc7f:	18 
  a2fc80:	62 71 7c 48 10 6c 17 	vmovups zmm13,ZMMWORD PTR [rdi+rdx*1+0x640]
  a2fc87:	19 
  a2fc88:	62 f1 7c 48 28 cf    	vmovaps zmm1,zmm7
  a2fc8e:	62 f1 7c 48 10 64 17 	vmovups zmm4,ZMMWORD PTR [rdi+rdx*1+0x300]
  a2fc95:	0c 
  a2fc96:	62 71 7c 48 10 4c 17 	vmovups zmm9,ZMMWORD PTR [rdi+rdx*1+0x340]
  a2fc9d:	0d 
  a2fc9e:	62 f1 7c 48 10 6c 17 	vmovups zmm5,ZMMWORD PTR [rdi+rdx*1+0x480]
  a2fca5:	12 
  a2fca6:	62 f1 7c 48 28 d4    	vmovaps zmm2,zmm4
  a2fcac:	62 e1 7c 48 28 cc    	vmovaps zmm17,zmm4
  a2fcb2:	62 71 7c 48 10 7c 17 	vmovups zmm15,ZMMWORD PTR [rdi+rdx*1+0x4c0]
  a2fcb9:	13 
  a2fcba:	62 71 7c 48 28 d5    	vmovaps zmm10,zmm5
  a2fcc0:	62 61 7c 48 28 fd    	vmovaps zmm31,zmm5
  a2fcc6:	62 f1 7c 48 10 6c 17 	vmovups zmm5,ZMMWORD PTR [rdi+rdx*1+0x280]
  a2fccd:	0a 
  a2fcce:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm5
  a2fcd5:	01 
  a2fcd6:	62 f1 7c 48 28 35 60 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff660e60]        # 90b40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1dff0>
  a2fcdd:	0e 66 ff 
  a2fce0:	62 d2 4d 48 7f c3    	vpermt2ps zmm0,zmm6,zmm11
  a2fce6:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm0
  a2fced:	07 
  a2fcee:	62 e1 7c 48 10 44 17 	vmovups zmm16,ZMMWORD PTR [rdi+rdx*1+0x2c0]
  a2fcf5:	0b 
  a2fcf6:	62 e1 7c 48 10 54 17 	vmovups zmm18,ZMMWORD PTR [rdi+rdx*1+0x400]
  a2fcfd:	10 
  a2fcfe:	62 d2 4d 48 7f cd    	vpermt2ps zmm1,zmm6,zmm13
  a2fd04:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm1
  a2fd0b:	06 
  a2fd0c:	62 f1 7c 48 10 44 17 	vmovups zmm0,ZMMWORD PTR [rdi+rdx*1+0x440]
  a2fd13:	11 
  a2fd14:	62 b1 7c 48 28 e2    	vmovaps zmm4,zmm18
  a2fd1a:	62 e1 7c 48 10 5c 17 	vmovups zmm19,ZMMWORD PTR [rdi+rdx*1+0x100]
  a2fd21:	04 
  a2fd22:	62 d2 4d 48 7f d1    	vpermt2ps zmm2,zmm6,zmm9
  a2fd28:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm2
  a2fd2f:	05 
  a2fd30:	62 f1 7c 48 10 4c 17 	vmovups zmm1,ZMMWORD PTR [rdi+rdx*1+0x140]
  a2fd37:	05 
  a2fd38:	62 31 7c 48 28 e3    	vmovaps zmm12,zmm19
  a2fd3e:	62 61 7c 48 10 44 17 	vmovups zmm24,ZMMWORD PTR [rdi+rdx*1+0x580]
  a2fd45:	16 
  a2fd46:	62 f2 4d 48 7f e0    	vpermt2ps zmm4,zmm6,zmm0
  a2fd4c:	62 f1 7c 48 10 54 17 	vmovups zmm2,ZMMWORD PTR [rdi+rdx*1+0x5c0]
  a2fd53:	17 
  a2fd54:	62 81 7c 48 28 e0    	vmovaps zmm20,zmm24
  a2fd5a:	62 61 7c 48 10 54 17 	vmovups zmm26,ZMMWORD PTR [rdi+rdx*1+0x700]
  a2fd61:	1c 
  a2fd62:	62 72 4d 48 7f e1    	vpermt2ps zmm12,zmm6,zmm1
  a2fd68:	62 61 7c 48 10 64 17 	vmovups zmm28,ZMMWORD PTR [rdi+rdx*1+0x740]
  a2fd6f:	1d 
  a2fd70:	62 81 7c 48 28 fa    	vmovaps zmm23,zmm26
  a2fd76:	62 e1 7c 48 10 74 17 	vmovups zmm22,ZMMWORD PTR [rdi+rdx*1+0x680]
  a2fd7d:	1a 
  a2fd7e:	62 e2 4d 48 7f e2    	vpermt2ps zmm20,zmm6,zmm2
  a2fd84:	62 61 7c 48 10 74 17 	vmovups zmm30,ZMMWORD PTR [rdi+rdx*1+0x6c0]
  a2fd8b:	1b 
  a2fd8c:	62 71 7c 48 28 35 ea 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff660dea]        # 90b80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e030>
  a2fd93:	0d 66 ff 
  a2fd96:	62 62 0d 48 7f c2    	vpermt2ps zmm24,zmm14,zmm2
  a2fd9c:	62 21 7c 48 28 de    	vmovaps zmm27,zmm22
  a2fda2:	62 82 4d 48 7f fc    	vpermt2ps zmm23,zmm6,zmm28
  a2fda8:	62 02 0d 48 7f d4    	vpermt2ps zmm26,zmm14,zmm28
  a2fdae:	62 61 7c 48 10 6c 17 	vmovups zmm29,ZMMWORD PTR [rdi+rdx*1+0x380]
  a2fdb5:	0e 
  a2fdb6:	62 e2 0d 48 7f d0    	vpermt2ps zmm18,zmm14,zmm0
  a2fdbc:	62 02 4d 48 7f de    	vpermt2ps zmm27,zmm6,zmm30
  a2fdc2:	62 f1 7c 48 10 54 17 	vmovups zmm2,ZMMWORD PTR [rdi+rdx*1+0x3c0]
  a2fdc9:	0f 
  a2fdca:	62 e2 0d 48 7f d9    	vpermt2ps zmm19,zmm14,zmm1
  a2fdd0:	62 01 7c 48 28 e5    	vmovaps zmm28,zmm29
  a2fdd6:	62 62 4d 48 7f e2    	vpermt2ps zmm28,zmm6,zmm2
  a2fddc:	62 82 0d 48 7f f6    	vpermt2ps zmm22,zmm14,zmm30
  a2fde2:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a2fde8:	62 92 0d 48 7f d9    	vpermt2ps zmm3,zmm14,zmm25
  a2fdee:	62 92 4d 48 7f c1    	vpermt2ps zmm0,zmm6,zmm25
  a2fdf4:	62 61 7c 48 10 4c 17 	vmovups zmm25,ZMMWORD PTR [rdi+rdx*1+0x200]
  a2fdfb:	08 
  a2fdfc:	62 62 0d 48 7f ea    	vpermt2ps zmm29,zmm14,zmm2
  a2fe02:	62 f1 7c 48 10 4c 17 	vmovups zmm1,ZMMWORD PTR [rdi+rdx*1+0x240]
  a2fe09:	09 
  a2fe0a:	62 52 4d 48 7f d7    	vpermt2ps zmm10,zmm6,zmm15
  a2fe10:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm10
  a2fe17:	0c 
  a2fe18:	62 c2 0d 48 7f c9    	vpermt2ps zmm17,zmm14,zmm9
  a2fe1e:	62 e1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm17
  a2fe25:	02 
  a2fe26:	62 01 7c 48 28 f1    	vmovaps zmm30,zmm25
  a2fe2c:	62 62 0d 48 7f c9    	vpermt2ps zmm25,zmm14,zmm1
  a2fe32:	62 62 4d 48 7f f1    	vpermt2ps zmm30,zmm6,zmm1
  a2fe38:	62 71 7c 48 10 4c 17 	vmovups zmm9,ZMMWORD PTR [rdi+rdx*1+0x500]
  a2fe3f:	14 
  a2fe40:	62 42 0d 48 7f ff    	vpermt2ps zmm31,zmm14,zmm15
  a2fe46:	62 11 7c 48 28 ff    	vmovaps zmm15,zmm31
  a2fe4c:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x740],zmm31
  a2fe53:	1d 
  a2fe54:	62 61 7c 48 10 7c 17 	vmovups zmm31,ZMMWORD PTR [rdi+rdx*1+0x540]
  a2fe5b:	15 
  a2fe5c:	62 b2 4d 48 7f e8    	vpermt2ps zmm5,zmm6,zmm16
  a2fe62:	62 52 0d 48 7f c3    	vpermt2ps zmm8,zmm14,zmm11
  a2fe68:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm8
  a2fe6f:	0b 
  a2fe70:	62 91 3c 40 5c d2    	vsubps zmm2,zmm24,zmm26
  a2fe76:	62 d2 0d 48 7f fd    	vpermt2ps zmm7,zmm14,zmm13
  a2fe7c:	62 71 7c 48 28 d7    	vmovaps zmm10,zmm7
  a2fe82:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm7
  a2fe89:	1c 
  a2fe8a:	62 d1 5c 48 58 cc    	vaddps zmm1,zmm4,zmm12
  a2fe90:	62 91 3c 40 58 fa    	vaddps zmm7,zmm24,zmm26
  a2fe96:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm7
  a2fe9d:	04 
  a2fe9e:	62 21 6c 40 5c c3    	vsubps zmm24,zmm18,zmm19
  a2fea4:	62 b1 6c 40 58 fb    	vaddps zmm7,zmm18,zmm19
  a2feaa:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm7
  a2feb1:	0e 
  a2feb2:	62 a1 5c 40 58 d7    	vaddps zmm18,zmm20,zmm23
  a2feb8:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x40]
  a2febf:	01 
  a2fec0:	62 b2 0d 48 7f f8    	vpermt2ps zmm7,zmm14,zmm16
  a2fec6:	62 51 7c 48 28 c6    	vmovaps zmm8,zmm14
  a2fecc:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm7
  a2fed3:	01 
  a2fed4:	62 51 7c 48 28 d9    	vmovaps zmm11,zmm9
  a2feda:	62 12 4d 48 7f df    	vpermt2ps zmm11,zmm6,zmm31
  a2fee0:	62 a1 5c 40 5c cf    	vsubps zmm17,zmm20,zmm23
  a2fee6:	62 81 64 48 5c c1    	vsubps zmm16,zmm3,zmm25
  a2feec:	62 91 64 48 58 d9    	vaddps zmm3,zmm3,zmm25
  a2fef2:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm3
  a2fef9:	0d 
  a2fefa:	62 91 24 40 58 dc    	vaddps zmm3,zmm27,zmm28
  a2ff00:	62 51 5c 48 5c f4    	vsubps zmm14,zmm4,zmm12
  a2ff06:	62 01 4c 40 5c cd    	vsubps zmm25,zmm22,zmm29
  a2ff0c:	62 91 4c 40 58 e5    	vaddps zmm4,zmm22,zmm29
  a2ff12:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm4
  a2ff19:	0f 
  a2ff1a:	62 12 3d 48 7f cf    	vpermt2ps zmm9,zmm8,zmm31
  a2ff20:	62 61 54 48 58 d1    	vaddps zmm26,zmm5,zmm1
  a2ff26:	62 01 7c 48 58 ee    	vaddps zmm29,zmm0,zmm30
  a2ff2c:	62 91 7c 48 5c fe    	vsubps zmm7,zmm0,zmm30
  a2ff32:	62 81 24 40 5c fc    	vsubps zmm23,zmm27,zmm28
  a2ff38:	62 61 24 48 58 f3    	vaddps zmm30,zmm11,zmm3
  a2ff3e:	62 f2 7d 48 18 05 fc 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff6456fc]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a2ff45:	56 64 ff 
  a2ff48:	62 71 7c 48 28 e0    	vmovaps zmm12,zmm0
  a2ff4e:	62 72 75 48 ac e5    	vfnmadd213ps zmm12,zmm1,zmm5
  a2ff54:	62 e2 7d 48 18 25 8a 	vbroadcastss zmm20,DWORD PTR [rip+0xffffffffff64578a]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a2ff5b:	57 64 ff 
  a2ff5e:	62 f2 5d 40 b8 e9    	vfmadd231ps zmm5,zmm20,zmm1
  a2ff64:	62 a1 2c 40 58 f2    	vaddps zmm22,zmm26,zmm18
  a2ff6a:	62 e1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm22
  a2ff71:	0a 
  a2ff72:	62 e2 7d 48 18 2d dc 	vbroadcastss zmm21,DWORD PTR [rip+0xffffffffff6457dc]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a2ff79:	57 64 ff 
  a2ff7c:	62 21 3c 40 59 d5    	vmulps zmm26,zmm24,zmm21
  a2ff82:	62 e2 7d 48 18 1d 14 	vbroadcastss zmm19,DWORD PTR [rip+0xffffffffff645414]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a2ff89:	54 64 ff 
  a2ff8c:	62 22 6d 48 bc d3    	vfnmadd231ps zmm26,zmm2,zmm19
  a2ff92:	62 21 6c 48 59 dd    	vmulps zmm27,zmm2,zmm21
  a2ff98:	62 02 65 40 b8 d8    	vfmadd231ps zmm27,zmm19,zmm24
  a2ff9e:	62 b1 34 40 59 d5    	vmulps zmm2,zmm25,zmm21
  a2ffa4:	62 b2 7d 40 bc d3    	vfnmadd231ps zmm2,zmm16,zmm19
  a2ffaa:	62 21 7c 40 59 e5    	vmulps zmm28,zmm16,zmm21
  a2ffb0:	62 81 0c 40 58 c5    	vaddps zmm16,zmm30,zmm29
  a2ffb6:	62 e1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm16
  a2ffbd:	09 
  a2ffbe:	62 02 65 40 b8 e1    	vfmadd231ps zmm28,zmm19,zmm25
  a2ffc4:	62 f1 7c 48 28 e0    	vmovaps zmm4,zmm0
  a2ffca:	62 61 7c 48 28 c0    	vmovaps zmm24,zmm0
  a2ffd0:	62 42 65 48 ac c3    	vfnmadd213ps zmm24,zmm3,zmm11
  a2ffd6:	62 32 6d 40 b8 e4    	vfmadd231ps zmm12,zmm18,zmm20
  a2ffdc:	62 22 15 40 b8 c4    	vfmadd231ps zmm24,zmm29,zmm20
  a2ffe2:	62 72 5d 40 b8 db    	vfmadd231ps zmm11,zmm20,zmm3
  a2ffe8:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x80]
  a2ffef:	02 
  a2fff0:	62 d1 7c 48 5c cf    	vsubps zmm1,zmm0,zmm15
  a2fff6:	62 b2 5d 48 bc ea    	vfnmadd231ps zmm5,zmm4,zmm18
  a2fffc:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x2c0]
  a30003:	0b 
  a30004:	62 d1 7c 48 5c da    	vsubps zmm3,zmm0,zmm10
  a3000a:	62 12 5d 48 bc dd    	vfnmadd231ps zmm11,zmm4,zmm29
  a30010:	62 71 7c 48 28 c4    	vmovaps zmm8,zmm4
  a30016:	62 21 64 48 59 cd    	vmulps zmm25,zmm3,zmm21
  a3001c:	62 22 75 48 bc cb    	vfnmadd231ps zmm25,zmm1,zmm19
  a30022:	62 21 74 48 59 ed    	vmulps zmm29,zmm1,zmm21
  a30028:	62 62 65 40 b8 eb    	vfmadd231ps zmm29,zmm19,zmm3
  a3002e:	62 e1 7c 48 10 54 17 	vmovups zmm18,ZMMWORD PTR [rdi+rdx*1+0x40]
  a30035:	01 
  a30036:	62 61 7c 48 28 74 24 	vmovaps zmm30,ZMMWORD PTR [rsp+0xc0]
  a3003d:	03 
  a3003e:	62 22 4d 48 7f f2    	vpermt2ps zmm30,zmm6,zmm18
  a30044:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a3004b:	06 
  a3004c:	62 f1 7c 48 58 4c 24 	vaddps zmm1,zmm0,ZMMWORD PTR [rsp+0x1c0]
  a30053:	07 
  a30054:	62 61 7c 48 28 fc    	vmovaps zmm31,zmm4
  a3005a:	62 02 75 48 ac fe    	vfnmadd213ps zmm31,zmm1,zmm30
  a30060:	62 f1 0c 40 58 d9    	vaddps zmm3,zmm30,zmm1
  a30066:	62 62 5d 40 b8 f1    	vfmadd231ps zmm30,zmm20,zmm1
  a3006c:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x300]
  a30073:	0c 
  a30074:	62 f1 7c 48 58 4c 24 	vaddps zmm1,zmm0,ZMMWORD PTR [rsp+0x140]
  a3007b:	05 
  a3007c:	62 f1 64 48 58 e1    	vaddps zmm4,zmm3,zmm1
  a30082:	62 22 75 48 b8 fc    	vfmadd231ps zmm31,zmm1,zmm20
  a30088:	62 62 3d 48 bc f1    	vfnmadd231ps zmm30,zmm8,zmm1
  a3008e:	62 b1 0c 48 59 f5    	vmulps zmm6,zmm14,zmm21
  a30094:	62 b2 75 40 bc f3    	vfnmadd231ps zmm6,zmm17,zmm19
  a3009a:	62 b1 74 40 59 dd    	vmulps zmm3,zmm17,zmm21
  a300a0:	62 d2 65 40 b8 de    	vfmadd231ps zmm3,zmm19,zmm14
  a300a6:	62 b1 44 40 59 c5    	vmulps zmm0,zmm23,zmm21
  a300ac:	62 b2 45 48 bc c3    	vfnmadd231ps zmm0,zmm7,zmm19
  a300b2:	62 b1 44 48 59 cd    	vmulps zmm1,zmm7,zmm21
  a300b8:	62 b2 65 40 b8 cf    	vfmadd231ps zmm1,zmm19,zmm23
  a300be:	62 91 34 40 58 ff    	vaddps zmm7,zmm25,zmm31
  a300c4:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm7
  a300cb:	08 
  a300cc:	62 11 04 40 5c f9    	vsubps zmm15,zmm31,zmm25
  a300d2:	62 41 2c 40 58 cc    	vaddps zmm25,zmm26,zmm12
  a300d8:	62 81 1c 48 5c fa    	vsubps zmm23,zmm12,zmm26
  a300de:	62 e1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm23
  a300e5:	19 
  a300e6:	62 01 6c 48 58 d0    	vaddps zmm26,zmm2,zmm24
  a300ec:	62 71 3c 40 5c ea    	vsubps zmm13,zmm24,zmm2
  a300f2:	62 b1 4c 40 58 f8    	vaddps zmm7,zmm22,zmm16
  a300f8:	62 f1 5c 48 58 d7    	vaddps zmm2,zmm4,zmm7
  a300fe:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm2
  a30105:	10 
  a30106:	62 e2 7d 48 18 35 50 	vbroadcastss zmm22,DWORD PTR [rip+0xffffffffff645350]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a3010d:	53 64 ff 
  a30110:	62 f2 4d 40 ac fc    	vfnmadd213ps zmm7,zmm22,zmm4
  a30116:	62 d1 7c 48 28 d0    	vmovaps zmm2,zmm8
  a3011c:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x40]
  a30123:	01 
  a30124:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x380]
  a3012b:	0e 
  a3012c:	62 d2 7d 40 ac d2    	vfnmadd213ps zmm2,zmm16,zmm10
  a30132:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x100]
  a30139:	04 
  a3013a:	62 b2 1d 48 b8 d4    	vfmadd231ps zmm2,zmm12,zmm20
  a30140:	62 61 6c 48 5c fe    	vsubps zmm31,zmm2,zmm6
  a30146:	62 f1 6c 48 58 d6    	vaddps zmm2,zmm2,zmm6
  a3014c:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm2
  a30153:	1b 
  a30154:	62 b1 7c 48 28 e4    	vmovaps zmm4,zmm20
  a3015a:	62 d2 7d 40 a8 e2    	vfmadd213ps zmm4,zmm16,zmm10
  a30160:	62 b1 2c 48 58 f0    	vaddps zmm6,zmm10,zmm16
  a30166:	62 d1 7c 48 28 d0    	vmovaps zmm2,zmm8
  a3016c:	62 51 7c 48 28 d0    	vmovaps zmm10,zmm8
  a30172:	62 e1 7c 48 28 4c 24 	vmovaps zmm17,ZMMWORD PTR [rsp+0x3c0]
  a30179:	0f 
  a3017a:	62 52 75 40 ac d1    	vfnmadd213ps zmm10,zmm17,zmm9
  a30180:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x340]
  a30187:	0d 
  a30188:	62 32 7d 40 b8 d4    	vfmadd231ps zmm10,zmm16,zmm20
  a3018e:	62 71 2c 48 5c f0    	vsubps zmm14,zmm10,zmm0
  a30194:	62 61 2c 48 58 c0    	vaddps zmm24,zmm10,zmm0
  a3019a:	62 d2 1d 48 bc e0    	vfnmadd231ps zmm4,zmm12,zmm8
  a301a0:	62 51 4c 48 58 c4    	vaddps zmm8,zmm6,zmm12
  a301a6:	62 b1 7c 48 28 c4    	vmovaps zmm0,zmm20
  a301ac:	62 d2 75 40 a8 c1    	vfmadd213ps zmm0,zmm17,zmm9
  a301b2:	62 31 34 48 58 c9    	vaddps zmm9,zmm9,zmm17
  a301b8:	62 f2 7d 40 bc c2    	vfnmadd231ps zmm0,zmm16,zmm2
  a301be:	62 a1 34 48 58 c8    	vaddps zmm17,zmm9,zmm16
  a301c4:	62 81 14 40 58 c6    	vaddps zmm16,zmm29,zmm30
  a301ca:	62 11 0c 40 5c d5    	vsubps zmm10,zmm30,zmm29
  a301d0:	62 71 24 40 58 cd    	vaddps zmm9,zmm27,zmm5
  a301d6:	62 91 54 48 5c f3    	vsubps zmm6,zmm5,zmm27
  a301dc:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm6
  a301e3:	1a 
  a301e4:	62 41 1c 40 58 f3    	vaddps zmm30,zmm28,zmm11
  a301ea:	62 91 24 48 5c d4    	vsubps zmm2,zmm11,zmm28
  a301f0:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm2
  a301f7:	0f 
  a301f8:	62 61 5c 48 5c db    	vsubps zmm27,zmm4,zmm3
  a301fe:	62 61 5c 48 58 e3    	vaddps zmm28,zmm4,zmm3
  a30204:	62 f1 7c 48 5c d9    	vsubps zmm3,zmm0,zmm1
  a3020a:	62 f1 7c 48 58 c9    	vaddps zmm1,zmm0,zmm1
  a30210:	62 b1 3c 48 5c c1    	vsubps zmm0,zmm8,zmm17
  a30216:	62 72 7d 48 18 25 b4 	vbroadcastss zmm12,DWORD PTR [rip+0xffffffffff6450b4]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a3021d:	50 64 ff 
  a30220:	62 d1 7c 48 59 c4    	vmulps zmm0,zmm0,zmm12
  a30226:	62 f1 44 48 5c e0    	vsubps zmm4,zmm7,zmm0
  a3022c:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm4
  a30233:	0d 
  a30234:	62 f1 7c 48 58 c7    	vaddps zmm0,zmm0,zmm7
  a3023a:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a30241:	04 
  a30242:	62 51 44 40 58 dd    	vaddps zmm11,zmm23,zmm13
  a30248:	62 d1 04 48 58 c3    	vaddps zmm0,zmm15,zmm11
  a3024e:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm0
  a30255:	0e 
  a30256:	62 52 4d 40 ac df    	vfnmadd213ps zmm11,zmm22,zmm15
  a3025c:	62 61 7c 48 28 6c 24 	vmovaps zmm29,ZMMWORD PTR [rsp+0xc0]
  a30263:	03 
  a30264:	62 f1 7c 48 28 05 12 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff660912]        # 90b80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e030>
  a3026b:	09 66 ff 
  a3026e:	62 22 7d 48 7f ea    	vpermt2ps zmm29,zmm0,zmm18
  a30274:	62 e1 4c 48 58 d2    	vaddps zmm18,zmm6,zmm2
  a3027a:	62 b1 2c 48 58 c2    	vaddps zmm0,zmm10,zmm18
  a30280:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a30287:	01 
  a30288:	62 c2 4d 40 ac d2    	vfnmadd213ps zmm18,zmm22,zmm10
  a3028e:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x2c0]
  a30295:	0b 
  a30296:	62 f1 7c 48 58 64 24 	vaddps zmm4,zmm0,ZMMWORD PTR [rsp+0x700]
  a3029d:	1c 
  a3029e:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x740]
  a302a5:	1d 
  a302a6:	62 f1 7c 48 58 7c 24 	vaddps zmm7,zmm0,ZMMWORD PTR [rsp+0x80]
  a302ad:	02 
  a302ae:	62 b1 3c 48 58 f1    	vaddps zmm6,zmm8,zmm17
  a302b4:	62 d1 04 40 5c c6    	vsubps zmm0,zmm31,zmm14
  a302ba:	62 41 04 40 58 fe    	vaddps zmm31,zmm31,zmm14
  a302c0:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x140]
  a302c7:	05 
  a302c8:	62 71 6c 48 5c 54 24 	vsubps zmm10,zmm2,ZMMWORD PTR [rsp+0x300]
  a302cf:	0c 
  a302d0:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x1c0]
  a302d7:	07 
  a302d8:	62 71 6c 48 5c 74 24 	vsubps zmm14,zmm2,ZMMWORD PTR [rsp+0x180]
  a302df:	06 
  a302e0:	62 11 34 40 58 fa    	vaddps zmm15,zmm25,zmm26
  a302e6:	62 91 34 40 5c d2    	vsubps zmm2,zmm25,zmm26
  a302ec:	62 81 34 48 58 ce    	vaddps zmm17,zmm9,zmm30
  a302f2:	62 11 34 48 5c ce    	vsubps zmm9,zmm9,zmm30
  a302f8:	62 61 24 40 5c d3    	vsubps zmm26,zmm27,zmm3
  a302fe:	62 61 24 40 58 cb    	vaddps zmm25,zmm27,zmm3
  a30304:	62 f2 7d 48 18 2d 36 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff645336]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a3030b:	53 64 ff 
  a3030e:	62 f1 7c 48 28 dd    	vmovaps zmm3,zmm5
  a30314:	62 92 5d 48 ac dd    	vfnmadd213ps zmm3,zmm4,zmm29
  a3031a:	62 61 14 40 58 dc    	vaddps zmm27,zmm29,zmm4
  a30320:	62 62 5d 40 b8 ec    	vfmadd231ps zmm29,zmm20,zmm4
  a30326:	62 b1 7c 48 28 e6    	vmovaps zmm4,zmm22
  a3032c:	62 b2 75 40 ac e0    	vfnmadd213ps zmm4,zmm17,zmm16
  a30332:	62 a1 7c 40 58 f9    	vaddps zmm23,zmm16,zmm17
  a30338:	62 e1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm23
  a3033f:	12 
  a30340:	62 e1 24 40 58 cf    	vaddps zmm17,zmm27,zmm7
  a30346:	62 b2 45 48 b8 dc    	vfmadd231ps zmm3,zmm7,zmm20
  a3034c:	62 62 55 48 bc ef    	vfnmadd231ps zmm29,zmm5,zmm7
  a30352:	62 b1 0c 48 59 fd    	vmulps zmm7,zmm14,zmm21
  a30358:	62 b2 2d 48 bc fb    	vfnmadd231ps zmm7,zmm10,zmm19
  a3035e:	62 a1 2c 48 59 e5    	vmulps zmm20,zmm10,zmm21
  a30364:	62 c2 65 40 b8 e6    	vfmadd231ps zmm20,zmm19,zmm14
  a3036a:	62 71 64 48 5c d7    	vsubps zmm10,zmm3,zmm7
  a30370:	62 f1 64 48 58 df    	vaddps zmm3,zmm3,zmm7
  a30376:	62 21 7c 48 28 de    	vmovaps zmm27,zmm22
  a3037c:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x200]
  a30383:	08 
  a30384:	62 62 05 48 ac dd    	vfnmadd213ps zmm27,zmm15,zmm5
  a3038a:	62 c1 54 48 58 df    	vaddps zmm19,zmm5,zmm15
  a30390:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x6c0]
  a30397:	1b 
  a30398:	62 11 54 48 5c f8    	vsubps zmm15,zmm5,zmm24
  a3039e:	62 11 54 48 58 f0    	vaddps zmm14,zmm5,zmm24
  a303a4:	62 d1 64 48 58 ee    	vaddps zmm5,zmm3,zmm14
  a303aa:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x880],zmm5
  a303b1:	22 
  a303b2:	62 72 4d 40 ac f3    	vfnmadd213ps zmm14,zmm22,zmm3
  a303b8:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x640]
  a303bf:	19 
  a303c0:	62 51 64 48 5c c5    	vsubps zmm8,zmm3,zmm13
  a303c6:	62 61 74 40 58 f6    	vaddps zmm30,zmm17,zmm6
  a303cc:	62 b2 4d 40 ac f1    	vfnmadd213ps zmm6,zmm22,zmm17
  a303d2:	62 d1 7c 48 59 c4    	vmulps zmm0,zmm0,zmm12
  a303d8:	62 d1 2c 40 59 dc    	vmulps zmm3,zmm26,zmm12
  a303de:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x280]
  a303e5:	0a 
  a303e6:	62 71 54 48 5c 6c 24 	vsubps zmm13,zmm5,ZMMWORD PTR [rsp+0x240]
  a303ed:	09 
  a303ee:	62 f1 5c 48 5c fb    	vsubps zmm7,zmm4,zmm3
  a303f4:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm7
  a303fb:	09 
  a303fc:	62 e1 5c 48 58 eb    	vaddps zmm21,zmm4,zmm3
  a30402:	62 e1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm21
  a30409:	16 
  a3040a:	62 b1 14 40 5c dc    	vsubps zmm3,zmm29,zmm20
  a30410:	62 b1 14 40 58 e4    	vaddps zmm4,zmm29,zmm20
  a30416:	62 61 24 40 58 c0    	vaddps zmm24,zmm27,zmm0
  a3041c:	62 61 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm24
  a30423:	17 
  a30424:	62 e1 24 40 5c e0    	vsubps zmm20,zmm27,zmm0
  a3042a:	62 e1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm20
  a30431:	15 
  a30432:	62 f1 1c 40 5c c1    	vsubps zmm0,zmm28,zmm1
  a30438:	62 d1 7c 48 59 c4    	vmulps zmm0,zmm0,zmm12
  a3043e:	62 e1 6c 40 5c c0    	vsubps zmm16,zmm18,zmm0
  a30444:	62 f1 6c 40 58 e8    	vaddps zmm5,zmm18,zmm0
  a3044a:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm5
  a30451:	11 
  a30452:	62 d1 04 48 59 c4    	vmulps zmm0,zmm15,zmm12
  a30458:	62 c1 34 48 59 cc    	vmulps zmm17,zmm9,zmm12
  a3045e:	62 f1 1c 40 58 c9    	vaddps zmm1,zmm28,zmm1
  a30464:	62 71 24 48 58 f8    	vaddps zmm15,zmm11,zmm0
  a3046a:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x680]
  a30471:	1a 
  a30472:	62 71 34 48 5c 4c 24 	vsubps zmm9,zmm9,ZMMWORD PTR [rsp+0x3c0]
  a30479:	0f 
  a3047a:	62 a1 7c 48 28 d6    	vmovaps zmm18,zmm22
  a30480:	62 e2 35 40 ac d3    	vfnmadd213ps zmm18,zmm25,zmm3
  a30486:	62 71 24 48 5c d8    	vsubps zmm11,zmm11,zmm0
  a3048c:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm11
  a30493:	08 
  a30494:	62 f1 5c 48 58 c1    	vaddps zmm0,zmm4,zmm1
  a3049a:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a304a1:	02 
  a304a2:	62 f2 4d 40 ac cc    	vfnmadd213ps zmm1,zmm22,zmm4
  a304a8:	62 21 74 40 58 da    	vaddps zmm27,zmm17,zmm18
  a304ae:	62 b1 6c 40 5c c1    	vsubps zmm0,zmm18,zmm17
  a304b4:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x7c0],zmm0
  a304bb:	1f 
  a304bc:	62 c2 05 40 ac f2    	vfnmadd213ps zmm22,zmm31,zmm10
  a304c2:	62 d1 14 48 59 e4    	vmulps zmm4,zmm13,zmm12
  a304c8:	62 d1 6c 48 59 d4    	vmulps zmm2,zmm2,zmm12
  a304ce:	62 91 64 48 58 d9    	vaddps zmm3,zmm3,zmm25
  a304d4:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x840],zmm3
  a304db:	21 
  a304dc:	62 e1 4c 48 58 cc    	vaddps zmm17,zmm6,zmm4
  a304e2:	62 61 4c 48 5c cc    	vsubps zmm25,zmm6,zmm4
  a304e8:	62 61 4c 40 5c ea    	vsubps zmm29,zmm22,zmm2
  a304ee:	62 f1 4c 40 58 c2    	vaddps zmm0,zmm22,zmm2
  a304f4:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x800],zmm0
  a304fb:	20 
  a304fc:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0x400]
  a30503:	10 
  a30504:	62 d1 3c 48 59 d4    	vmulps zmm2,zmm8,zmm12
  a3050a:	62 d1 34 48 59 e4    	vmulps zmm4,zmm9,zmm12
  a30510:	62 91 2c 48 58 f7    	vaddps zmm6,zmm10,zmm31
  a30516:	62 71 5c 48 58 c1    	vaddps zmm8,zmm4,zmm1
  a3051c:	62 f1 74 48 5c c4    	vsubps zmm0,zmm1,zmm4
  a30522:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x780],zmm0
  a30529:	1e 
  a3052a:	62 f1 7c 48 28 0d 4c 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff696a4c]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a30531:	6a 69 ff 
  a30534:	62 12 75 48 7f e8    	vpermt2ps zmm13,zmm1,zmm24
  a3053a:	62 71 0c 48 5c ca    	vsubps zmm9,zmm14,zmm2
  a30540:	62 f1 0c 48 58 c2    	vaddps zmm0,zmm14,zmm2
  a30546:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm0
  a3054d:	0a 
  a3054e:	62 f2 75 48 7f 7c 24 	vpermt2ps zmm7,zmm1,ZMMWORD PTR [rsp+0x380]
  a30555:	0e 
  a30556:	62 e1 7c 48 28 d7    	vmovaps zmm18,zmm7
  a3055c:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm7
  a30563:	18 
  a30564:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x40]
  a3056b:	01 
  a3056c:	62 b2 75 48 7f d5    	vpermt2ps zmm2,zmm1,zmm21
  a30572:	62 f1 7c 48 28 fa    	vmovaps zmm7,zmm2
  a30578:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xac0],zmm2
  a3057f:	2b 
  a30580:	62 41 7c 48 28 ff    	vmovaps zmm31,zmm15
  a30586:	62 62 75 48 7f 7c 24 	vpermt2ps zmm31,zmm1,ZMMWORD PTR [rsp+0x340]
  a3058d:	0d 
  a3058e:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x100]
  a30595:	04 
  a30596:	62 b2 75 48 7f d4    	vpermt2ps zmm2,zmm1,zmm20
  a3059c:	62 61 7c 48 28 e2    	vmovaps zmm28,zmm2
  a305a2:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xa80],zmm2
  a305a9:	2a 
  a305aa:	62 21 7c 48 28 c0    	vmovaps zmm24,zmm16
  a305b0:	62 22 75 48 7f c7    	vpermt2ps zmm24,zmm1,zmm23
  a305b6:	62 a1 7c 48 28 eb    	vmovaps zmm21,zmm19
  a305bc:	62 e2 75 48 7f ed    	vpermt2ps zmm21,zmm1,zmm5
  a305c2:	62 d1 7c 48 28 d3    	vmovaps zmm2,zmm11
  a305c8:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a305cc:	62 f2 75 48 7f d0    	vpermt2ps zmm2,zmm1,zmm0
  a305d2:	62 e1 7c 48 28 f2    	vmovaps zmm22,zmm2
  a305d8:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xa40],zmm2
  a305df:	29 
  a305e0:	62 11 7c 48 28 de    	vmovaps zmm11,zmm30
  a305e6:	62 11 7c 48 28 d6    	vmovaps zmm10,zmm30
  a305ec:	62 12 75 48 7f dd    	vpermt2ps zmm11,zmm1,zmm29
  a305f2:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0xa00],zmm11
  a305f9:	28 
  a305fa:	62 d1 7c 48 28 dd    	vmovaps zmm3,zmm13
  a30600:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm13
  a30607:	03 
  a30608:	62 71 7c 48 28 25 2e 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff69692e]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a3060f:	69 69 ff 
  a30612:	62 b2 1d 48 7f da    	vpermt2ps zmm3,zmm12,zmm18
  a30618:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm3
  a3061f:	13 
  a30620:	62 01 7c 48 28 d3    	vmovaps zmm26,zmm27
  a30626:	62 e1 7c 48 28 7c 24 	vmovaps zmm23,ZMMWORD PTR [rsp+0x880]
  a3062d:	22 
  a3062e:	62 22 75 48 7f df    	vpermt2ps zmm27,zmm1,zmm23
  a30634:	62 61 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x9c0],zmm27
  a3063b:	27 
  a3063c:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm31
  a30643:	07 
  a30644:	62 62 1d 48 7f ff    	vpermt2ps zmm31,zmm12,zmm7
  a3064a:	62 d1 7c 48 28 d1    	vmovaps zmm2,zmm9
  a30650:	62 41 7c 48 28 f1    	vmovaps zmm30,zmm9
  a30656:	62 b2 75 48 7f d1    	vpermt2ps zmm2,zmm1,zmm17
  a3065c:	62 f1 7c 48 28 ea    	vmovaps zmm5,zmm2
  a30662:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm2
  a30669:	0c 
  a3066a:	62 61 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm24
  a30671:	06 
  a30672:	62 02 1d 48 7f c4    	vpermt2ps zmm24,zmm12,zmm28
  a30678:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x80]
  a3067f:	02 
  a30680:	62 71 7c 48 28 f2    	vmovaps zmm14,zmm2
  a30686:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0x7c0]
  a3068d:	1f 
  a3068e:	62 d2 75 48 7f d5    	vpermt2ps zmm2,zmm1,zmm13
  a30694:	62 71 7c 48 28 ca    	vmovaps zmm9,zmm2
  a3069a:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm2
  a306a1:	02 
  a306a2:	62 e1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm21
  a306a9:	05 
  a306aa:	62 a2 1d 48 7f ee    	vpermt2ps zmm21,zmm12,zmm22
  a306b0:	62 d1 7c 48 28 d0    	vmovaps zmm2,zmm8
  a306b6:	62 e1 7c 48 28 74 24 	vmovaps zmm22,ZMMWORD PTR [rsp+0x840]
  a306bd:	21 
  a306be:	62 32 75 48 7f c6    	vpermt2ps zmm8,zmm1,zmm22
  a306c4:	62 d1 7c 48 28 f8    	vmovaps zmm7,zmm8
  a306ca:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x980],zmm8
  a306d1:	26 
  a306d2:	62 12 1d 48 7f db    	vpermt2ps zmm11,zmm12,zmm27
  a306d8:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm11
  a306df:	14 
  a306e0:	62 01 7c 48 28 e1    	vmovaps zmm28,zmm25
  a306e6:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x800]
  a306ed:	20 
  a306ee:	62 62 75 48 7f cc    	vpermt2ps zmm25,zmm1,zmm4
  a306f4:	62 11 7c 48 28 c1    	vmovaps zmm8,zmm25
  a306fa:	62 61 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x940],zmm25
  a30701:	25 
  a30702:	62 d2 1d 48 7f e9    	vpermt2ps zmm5,zmm12,zmm9
  a30708:	62 71 7c 48 28 cd    	vmovaps zmm9,zmm5
  a3070e:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x900],zmm5
  a30715:	24 
  a30716:	62 61 7c 48 28 ce    	vmovaps zmm25,zmm6
  a3071c:	62 61 7c 48 28 de    	vmovaps zmm27,zmm6
  a30722:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x780]
  a30729:	1e 
  a3072a:	62 62 75 48 7f c8    	vpermt2ps zmm25,zmm1,zmm0
  a30730:	62 61 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm25
  a30737:	0b 
  a30738:	62 d2 1d 48 7f f8    	vpermt2ps zmm7,zmm12,zmm8
  a3073e:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x8c0],zmm7
  a30745:	23 
  a30746:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x280]
  a3074d:	0a 
  a3074e:	62 e1 7c 48 28 e5    	vmovaps zmm20,zmm5
  a30754:	c5 c8 57 f6          	vxorps xmm6,xmm6,xmm6
  a30758:	62 f2 75 48 7f ee    	vpermt2ps zmm5,zmm1,zmm6
  a3075e:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm5
  a30765:	0a 
  a30766:	62 62 1d 48 7f cd    	vpermt2ps zmm25,zmm12,zmm5
  a3076c:	62 d1 a5 48 15 f1    	vunpckhpd zmm6,zmm11,zmm9
  a30772:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm6
  a30779:	1b 
  a3077a:	62 11 c5 48 15 c1    	vunpckhpd zmm8,zmm7,zmm25
  a30780:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm8
  a30787:	0f 
  a30788:	62 e1 7c 48 28 15 6e 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff69666e]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a3078f:	66 69 ff 
  a30792:	62 d2 6d 40 7f f0    	vpermt2ps zmm6,zmm18,zmm8
  a30798:	62 11 e5 48 15 c7    	vunpckhpd zmm8,zmm3,zmm31
  a3079e:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm8
  a307a5:	1a 
  a307a6:	62 31 bd 40 15 cd    	vunpckhpd zmm9,zmm24,zmm21
  a307ac:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm9
  a307b3:	19 
  a307b4:	62 52 6d 40 7f c1    	vpermt2ps zmm8,zmm18,zmm9
  a307ba:	62 71 7c 48 10 49 0d 	vmovups zmm9,ZMMWORD PTR [rcx+0x340]
  a307c1:	62 71 7c 48 10 59 0c 	vmovups zmm11,ZMMWORD PTR [rcx+0x300]
  a307c8:	62 d1 3c 48 59 cb    	vmulps zmm1,zmm8,zmm11
  a307ce:	62 d2 4d 48 b8 c9    	vfmadd231ps zmm1,zmm6,zmm9
  a307d4:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x740],zmm1
  a307db:	1d 
  a307dc:	62 d1 4c 48 59 cb    	vmulps zmm1,zmm6,zmm11
  a307e2:	62 d2 35 48 bc c8    	vfnmadd231ps zmm1,zmm9,zmm8
  a307e8:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm1
  a307ef:	1c 
  a307f0:	62 f1 7c 48 28 0d c6 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6967c6]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a307f7:	67 69 ff 
  a307fa:	62 12 75 48 7f d5    	vpermt2ps zmm10,zmm1,zmm29
  a30800:	62 d1 7c 48 28 fe    	vmovaps zmm7,zmm14
  a30806:	62 d2 75 48 7f fd    	vpermt2ps zmm7,zmm1,zmm13
  a3080c:	62 62 75 48 7f e4    	vpermt2ps zmm28,zmm1,zmm4
  a30812:	62 62 75 48 7f d8    	vpermt2ps zmm27,zmm1,zmm0
  a30818:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x400]
  a3081f:	10 
  a30820:	62 f2 75 48 7f 5c 24 	vpermt2ps zmm3,zmm1,ZMMWORD PTR [rsp+0x5c0]
  a30827:	17 
  a30828:	62 91 7c 48 28 e2    	vmovaps zmm4,zmm26
  a3082e:	62 b2 75 48 7f e7    	vpermt2ps zmm4,zmm1,zmm23
  a30834:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x240]
  a3083b:	09 
  a3083c:	62 f2 75 48 7f 6c 24 	vpermt2ps zmm5,zmm1,ZMMWORD PTR [rsp+0x380]
  a30843:	0e 
  a30844:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm5
  a3084b:	09 
  a3084c:	62 72 75 48 7f 7c 24 	vpermt2ps zmm15,zmm1,ZMMWORD PTR [rsp+0x340]
  a30853:	0d 
  a30854:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x40]
  a3085b:	01 
  a3085c:	62 f2 75 48 7f 44 24 	vpermt2ps zmm0,zmm1,ZMMWORD PTR [rsp+0x580]
  a30863:	16 
  a30864:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a3086b:	01 
  a3086c:	62 22 75 48 7f f1    	vpermt2ps zmm30,zmm1,zmm17
  a30872:	62 e2 75 48 7f 44 24 	vpermt2ps zmm16,zmm1,ZMMWORD PTR [rsp+0x480]
  a30879:	12 
  a3087a:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x100]
  a30881:	04 
  a30882:	62 72 75 48 7f 44 24 	vpermt2ps zmm8,zmm1,ZMMWORD PTR [rsp+0x540]
  a30889:	15 
  a3088a:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm8
  a30891:	04 
  a30892:	62 e2 75 48 7f 5c 24 	vpermt2ps zmm19,zmm1,ZMMWORD PTR [rsp+0x440]
  a30899:	11 
  a3089a:	62 b2 75 48 7f d6    	vpermt2ps zmm2,zmm1,zmm22
  a308a0:	c5 c8 57 f6          	vxorps xmm6,xmm6,xmm6
  a308a4:	62 e2 75 48 7f e6    	vpermt2ps zmm20,zmm1,zmm6
  a308aa:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0x200]
  a308b1:	08 
  a308b2:	62 72 75 48 7f ee    	vpermt2ps zmm13,zmm1,zmm6
  a308b8:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm13
  a308bf:	08 
  a308c0:	62 f1 7c 48 28 cb    	vmovaps zmm1,zmm3
  a308c6:	62 61 7c 48 28 d3    	vmovaps zmm26,zmm3
  a308cc:	62 f2 1d 48 7f cd    	vpermt2ps zmm1,zmm12,zmm5
  a308d2:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a308d8:	62 51 7c 48 28 f7    	vmovaps zmm14,zmm15
  a308de:	62 72 1d 48 7f f8    	vpermt2ps zmm15,zmm12,zmm0
  a308e4:	62 31 7c 48 28 d8    	vmovaps zmm11,zmm16
  a308ea:	62 c2 1d 48 7f c0    	vpermt2ps zmm16,zmm12,zmm8
  a308f0:	62 31 7c 48 28 cb    	vmovaps zmm9,zmm19
  a308f6:	62 c2 1d 48 7f dd    	vpermt2ps zmm19,zmm12,zmm13
  a308fc:	62 d1 7c 48 28 f2    	vmovaps zmm6,zmm10
  a30902:	62 72 1d 48 7f d4    	vpermt2ps zmm10,zmm12,zmm4
  a30908:	62 71 7c 48 28 c4    	vmovaps zmm8,zmm4
  a3090e:	62 91 7c 48 28 ee    	vmovaps zmm5,zmm30
  a30914:	62 62 1d 48 7f f7    	vpermt2ps zmm30,zmm12,zmm7
  a3091a:	62 e1 7c 48 28 cf    	vmovaps zmm17,zmm7
  a30920:	62 61 7c 48 28 ea    	vmovaps zmm29,zmm2
  a30926:	62 92 1d 48 7f d4    	vpermt2ps zmm2,zmm12,zmm28
  a3092c:	62 91 7c 48 28 e3    	vmovaps zmm4,zmm27
  a30932:	62 22 1d 48 7f dc    	vpermt2ps zmm27,zmm12,zmm20
  a30938:	62 81 ad 48 15 f6    	vunpckhpd zmm22,zmm10,zmm30
  a3093e:	62 91 ed 48 15 cb    	vunpckhpd zmm1,zmm2,zmm27
  a30944:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm1
  a3094b:	16 
  a3094c:	62 31 7c 48 28 ee    	vmovaps zmm13,zmm22
  a30952:	62 b1 7c 48 28 c2    	vmovaps zmm0,zmm18
  a30958:	62 72 6d 40 7f e9    	vpermt2ps zmm13,zmm18,zmm1
  a3095e:	62 c1 e5 48 15 d7    	vunpckhpd zmm18,zmm3,zmm15
  a30964:	62 b1 fd 40 15 cb    	vunpckhpd zmm1,zmm16,zmm19
  a3096a:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm1
  a30971:	15 
  a30972:	62 31 7c 48 28 e2    	vmovaps zmm12,zmm18
  a30978:	62 72 7d 48 7f e1    	vpermt2ps zmm12,zmm0,zmm1
  a3097e:	62 f1 7c 48 10 49 1d 	vmovups zmm1,ZMMWORD PTR [rcx+0x740]
  a30985:	62 f1 7c 48 10 41 1c 	vmovups zmm0,ZMMWORD PTR [rcx+0x700]
  a3098c:	62 e1 1c 48 59 f8    	vmulps zmm23,zmm12,zmm0
  a30992:	62 e2 15 48 b8 f9    	vfmadd231ps zmm23,zmm13,zmm1
  a30998:	62 e1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm23
  a3099f:	10 
  a309a0:	62 f1 14 48 59 c0    	vmulps zmm0,zmm13,zmm0
  a309a6:	62 d2 75 48 bc c4    	vfnmadd231ps zmm0,zmm1,zmm12
  a309ac:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm0
  a309b3:	0e 
  a309b4:	62 51 e5 48 14 ff    	vunpcklpd zmm15,zmm3,zmm15
  a309ba:	62 b1 fd 40 14 c3    	vunpcklpd zmm0,zmm16,zmm19
  a309c0:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm0
  a309c7:	11 
  a309c8:	62 91 ad 48 14 fe    	vunpcklpd zmm7,zmm10,zmm30
  a309ce:	62 81 ed 48 14 db    	vunpcklpd zmm19,zmm2,zmm27
  a309d4:	62 41 7c 48 28 df    	vmovaps zmm27,zmm15
  a309da:	62 f1 7c 48 28 1d 5c 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff69645c]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a309e1:	64 69 ff 
  a309e4:	62 72 65 48 7f f8    	vpermt2ps zmm15,zmm3,zmm0
  a309ea:	62 71 7c 48 28 d7    	vmovaps zmm10,zmm7
  a309f0:	62 b2 65 48 7f fb    	vpermt2ps zmm7,zmm3,zmm19
  a309f6:	62 f1 7c 48 10 41 1b 	vmovups zmm0,ZMMWORD PTR [rcx+0x6c0]
  a309fd:	62 f1 7c 48 10 49 1a 	vmovups zmm1,ZMMWORD PTR [rcx+0x680]
  a30a04:	62 f1 04 48 59 d1    	vmulps zmm2,zmm15,zmm1
  a30a0a:	62 f2 45 48 b8 d0    	vfmadd231ps zmm2,zmm7,zmm0
  a30a10:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm2
  a30a17:	0d 
  a30a18:	62 f1 44 48 59 c9    	vmulps zmm1,zmm7,zmm1
  a30a1e:	62 d2 7d 48 bc cf    	vfnmadd231ps zmm1,zmm0,zmm15
  a30a24:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm1
  a30a2b:	17 
  a30a2c:	62 71 7c 48 28 2d ca 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff6964ca]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a30a33:	64 69 ff 
  a30a36:	62 d2 15 48 7f f0    	vpermt2ps zmm6,zmm13,zmm8
  a30a3c:	62 b2 15 48 7f e9    	vpermt2ps zmm5,zmm13,zmm17
  a30a42:	62 b2 15 48 7f e4    	vpermt2ps zmm4,zmm13,zmm20
  a30a48:	62 62 15 48 7f 54 24 	vpermt2ps zmm26,zmm13,ZMMWORD PTR [rsp+0x240]
  a30a4f:	09 
  a30a50:	62 72 15 48 7f 74 24 	vpermt2ps zmm14,zmm13,ZMMWORD PTR [rsp+0x40]
  a30a57:	01 
  a30a58:	62 02 15 48 7f ec    	vpermt2ps zmm29,zmm13,zmm28
  a30a5e:	62 72 15 48 7f 5c 24 	vpermt2ps zmm11,zmm13,ZMMWORD PTR [rsp+0x100]
  a30a65:	04 
  a30a66:	62 72 15 48 7f 4c 24 	vpermt2ps zmm9,zmm13,ZMMWORD PTR [rsp+0x200]
  a30a6d:	08 
  a30a6e:	62 d1 ad 40 14 c6    	vunpcklpd zmm0,zmm26,zmm14
  a30a74:	62 d1 a5 48 14 c9    	vunpcklpd zmm1,zmm11,zmm9
  a30a7a:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm1
  a30a81:	08 
  a30a82:	62 e1 7c 48 28 f8    	vmovaps zmm23,zmm0
  a30a88:	62 f2 65 48 7f c1    	vpermt2ps zmm0,zmm3,zmm1
  a30a8e:	62 f1 cd 48 14 cd    	vunpcklpd zmm1,zmm6,zmm5
  a30a94:	62 f1 95 40 14 d4    	vunpcklpd zmm2,zmm29,zmm4
  a30a9a:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm2
  a30aa1:	12 
  a30aa2:	62 61 7c 48 28 e1    	vmovaps zmm28,zmm1
  a30aa8:	62 f2 65 48 7f ca    	vpermt2ps zmm1,zmm3,zmm2
  a30aae:	62 f1 7c 48 10 51 12 	vmovups zmm2,ZMMWORD PTR [rcx+0x480]
  a30ab5:	62 71 74 48 59 c2    	vmulps zmm8,zmm1,zmm2
  a30abb:	62 f1 7c 48 59 fa    	vmulps zmm7,zmm0,zmm2
  a30ac1:	62 f1 7c 48 10 51 13 	vmovups zmm2,ZMMWORD PTR [rcx+0x4c0]
  a30ac8:	62 f2 6d 48 b8 f9    	vfmadd231ps zmm7,zmm2,zmm1
  a30ace:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm7
  a30ad5:	01 
  a30ad6:	62 72 7d 48 bc c2    	vfnmadd231ps zmm8,zmm0,zmm2
  a30adc:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm8
  a30ae3:	04 
  a30ae4:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x4c0]
  a30aeb:	13 
  a30aec:	62 91 fd 48 14 c7    	vunpcklpd zmm0,zmm0,zmm31
  a30af2:	62 b1 bd 40 14 fd    	vunpcklpd zmm7,zmm24,zmm21
  a30af8:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm7
  a30aff:	13 
  a30b00:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x500]
  a30b07:	14 
  a30b08:	62 f1 f5 48 14 54 24 	vunpcklpd zmm2,zmm1,ZMMWORD PTR [rsp+0x900]
  a30b0f:	24 
  a30b10:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x8c0]
  a30b17:	23 
  a30b18:	62 91 f5 48 14 c9    	vunpcklpd zmm1,zmm1,zmm25
  a30b1e:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm1
  a30b25:	14 
  a30b26:	62 61 7c 48 28 c2    	vmovaps zmm24,zmm2
  a30b2c:	62 f2 65 48 7f d1    	vpermt2ps zmm2,zmm3,zmm1
  a30b32:	62 71 7c 48 28 c0    	vmovaps zmm8,zmm0
  a30b38:	62 f2 65 48 7f c7    	vpermt2ps zmm0,zmm3,zmm7
  a30b3e:	62 f1 7c 48 10 79 0b 	vmovups zmm7,ZMMWORD PTR [rcx+0x2c0]
  a30b45:	62 71 7c 48 10 61 0a 	vmovups zmm12,ZMMWORD PTR [rcx+0x280]
  a30b4c:	62 d1 7c 48 59 cc    	vmulps zmm1,zmm0,zmm12
  a30b52:	62 f2 6d 48 b8 cf    	vfmadd231ps zmm1,zmm2,zmm7
  a30b58:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm1
  a30b5f:	09 
  a30b60:	62 41 6c 48 59 f4    	vmulps zmm30,zmm2,zmm12
  a30b66:	62 62 45 48 bc f0    	vfnmadd231ps zmm30,zmm7,zmm0
  a30b6c:	62 71 7c 48 28 7c 24 	vmovaps zmm15,ZMMWORD PTR [rsp+0xc0]
  a30b73:	03 
  a30b74:	62 72 15 48 7f 7c 24 	vpermt2ps zmm15,zmm13,ZMMWORD PTR [rsp+0x600]
  a30b7b:	18 
  a30b7c:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm15
  a30b83:	03 
  a30b84:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x1c0]
  a30b8b:	07 
  a30b8c:	62 f2 15 48 7f 44 24 	vpermt2ps zmm0,zmm13,ZMMWORD PTR [rsp+0xac0]
  a30b93:	2b 
  a30b94:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm0
  a30b9b:	07 
  a30b9c:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x140]
  a30ba3:	05 
  a30ba4:	62 f2 15 48 7f 54 24 	vpermt2ps zmm2,zmm13,ZMMWORD PTR [rsp+0xa40]
  a30bab:	29 
  a30bac:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm2
  a30bb3:	05 
  a30bb4:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0xa00]
  a30bbb:	28 
  a30bbc:	62 f2 15 48 7f 4c 24 	vpermt2ps zmm1,zmm13,ZMMWORD PTR [rsp+0x9c0]
  a30bc3:	27 
  a30bc4:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x300]
  a30bcb:	0c 
  a30bcc:	62 f2 15 48 7f 7c 24 	vpermt2ps zmm7,zmm13,ZMMWORD PTR [rsp+0x80]
  a30bd3:	02 
  a30bd4:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm7
  a30bdb:	0c 
  a30bdc:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x180]
  a30be3:	06 
  a30be4:	62 72 15 48 7f 64 24 	vpermt2ps zmm12,zmm13,ZMMWORD PTR [rsp+0xa80]
  a30beb:	2a 
  a30bec:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm12
  a30bf3:	06 
  a30bf4:	62 61 7c 48 28 4c 24 	vmovaps zmm25,ZMMWORD PTR [rsp+0x980]
  a30bfb:	26 
  a30bfc:	62 62 15 48 7f 4c 24 	vpermt2ps zmm25,zmm13,ZMMWORD PTR [rsp+0x940]
  a30c03:	25 
  a30c04:	62 e1 7c 48 28 6c 24 	vmovaps zmm21,ZMMWORD PTR [rsp+0x2c0]
  a30c0b:	0b 
  a30c0c:	62 e2 15 48 7f 6c 24 	vpermt2ps zmm21,zmm13,ZMMWORD PTR [rsp+0x280]
  a30c13:	0a 
  a30c14:	62 e1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm21
  a30c1b:	0b 
  a30c1c:	62 f1 85 48 14 c0    	vunpcklpd zmm0,zmm15,zmm0
  a30c22:	62 f1 9d 48 14 d2    	vunpcklpd zmm2,zmm12,zmm2
  a30c28:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm2
  a30c2f:	02 
  a30c30:	62 e1 7c 48 28 c8    	vmovaps zmm17,zmm0
  a30c36:	62 f2 65 48 7f c2    	vpermt2ps zmm0,zmm3,zmm2
  a30c3c:	62 e1 f5 48 14 e7    	vunpcklpd zmm20,zmm1,zmm7
  a30c42:	62 b1 b5 40 14 fd    	vunpcklpd zmm7,zmm25,zmm21
  a30c48:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm7
  a30c4f:	0a 
  a30c50:	62 b1 7c 48 28 d4    	vmovaps zmm2,zmm20
  a30c56:	62 f2 65 48 7f d7    	vpermt2ps zmm2,zmm3,zmm7
  a30c5c:	62 71 7c 48 10 61 02 	vmovups zmm12,ZMMWORD PTR [rcx+0x80]
  a30c63:	62 71 7c 48 10 69 03 	vmovups zmm13,ZMMWORD PTR [rcx+0xc0]
  a30c6a:	62 c1 6c 48 59 c4    	vmulps zmm16,zmm2,zmm12
  a30c70:	62 c2 7d 48 bc c5    	vfnmadd231ps zmm16,zmm0,zmm13
  a30c76:	62 41 7c 48 59 fc    	vmulps zmm31,zmm0,zmm12
  a30c7c:	62 62 15 48 b8 fa    	vfmadd231ps zmm31,zmm13,zmm2
  a30c82:	62 d1 ad 40 15 d6    	vunpckhpd zmm2,zmm26,zmm14
  a30c88:	62 d1 a5 48 15 c1    	vunpckhpd zmm0,zmm11,zmm9
  a30c8e:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm0
  a30c95:	18 
  a30c96:	62 f1 cd 48 15 f5    	vunpckhpd zmm6,zmm6,zmm5
  a30c9c:	62 e1 95 40 15 ec    	vunpckhpd zmm21,zmm29,zmm4
  a30ca2:	62 f1 7c 48 28 fa    	vmovaps zmm7,zmm2
  a30ca8:	62 f2 65 48 7f d0    	vpermt2ps zmm2,zmm3,zmm0
  a30cae:	62 f1 7c 48 28 e6    	vmovaps zmm4,zmm6
  a30cb4:	62 b2 65 48 7f f5    	vpermt2ps zmm6,zmm3,zmm21
  a30cba:	62 71 7c 48 10 49 17 	vmovups zmm9,ZMMWORD PTR [rcx+0x5c0]
  a30cc1:	62 f1 7c 48 10 69 16 	vmovups zmm5,ZMMWORD PTR [rcx+0x580]
  a30cc8:	62 71 4c 48 59 fd    	vmulps zmm15,zmm6,zmm5
  a30cce:	62 52 6d 48 bc f9    	vfnmadd231ps zmm15,zmm2,zmm9
  a30cd4:	62 f1 6c 48 59 ed    	vmulps zmm5,zmm2,zmm5
  a30cda:	62 f2 35 48 b8 ee    	vfmadd231ps zmm5,zmm9,zmm6
  a30ce0:	62 e2 65 48 7f 54 24 	vpermt2ps zmm18,zmm3,ZMMWORD PTR [rsp+0x540]
  a30ce7:	15 
  a30ce8:	62 e2 65 48 7f 74 24 	vpermt2ps zmm22,zmm3,ZMMWORD PTR [rsp+0x580]
  a30cef:	16 
  a30cf0:	62 f1 7c 48 10 51 1f 	vmovups zmm2,ZMMWORD PTR [rcx+0x7c0]
  a30cf7:	62 f1 7c 48 10 71 1e 	vmovups zmm6,ZMMWORD PTR [rcx+0x780]
  a30cfe:	62 61 6c 40 59 d6    	vmulps zmm26,zmm18,zmm6
  a30d04:	62 62 4d 40 b8 d2    	vfmadd231ps zmm26,zmm22,zmm2
  a30d0a:	62 71 4c 40 59 ce    	vmulps zmm9,zmm22,zmm6
  a30d10:	62 32 6d 48 bc ca    	vfnmadd231ps zmm9,zmm2,zmm18
  a30d16:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x6c0]
  a30d1d:	1b 
  a30d1e:	62 f2 65 48 7f 44 24 	vpermt2ps zmm0,zmm3,ZMMWORD PTR [rsp+0x3c0]
  a30d25:	0f 
  a30d26:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x680]
  a30d2d:	1a 
  a30d2e:	62 72 65 48 7f 5c 24 	vpermt2ps zmm11,zmm3,ZMMWORD PTR [rsp+0x640]
  a30d35:	19 
  a30d36:	62 f1 7c 48 10 51 0f 	vmovups zmm2,ZMMWORD PTR [rcx+0x3c0]
  a30d3d:	62 f1 7c 48 10 71 0e 	vmovups zmm6,ZMMWORD PTR [rcx+0x380]
  a30d44:	62 71 24 48 59 e6    	vmulps zmm12,zmm11,zmm6
  a30d4a:	62 72 7d 48 b8 e2    	vfmadd231ps zmm12,zmm0,zmm2
  a30d50:	62 f1 7c 48 59 f6    	vmulps zmm6,zmm0,zmm6
  a30d56:	62 d2 6d 48 bc f3    	vfnmadd231ps zmm6,zmm2,zmm11
  a30d5c:	62 f1 7c 48 28 15 9a 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff69609a]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a30d63:	60 69 ff 
  a30d66:	62 62 6d 48 7f 5c 24 	vpermt2ps zmm27,zmm2,ZMMWORD PTR [rsp+0x440]
  a30d6d:	11 
  a30d6e:	62 32 6d 48 7f d3    	vpermt2ps zmm10,zmm2,zmm19
  a30d74:	62 71 7c 48 10 71 19 	vmovups zmm14,ZMMWORD PTR [rcx+0x640]
  a30d7b:	62 71 7c 48 10 69 18 	vmovups zmm13,ZMMWORD PTR [rcx+0x600]
  a30d82:	62 51 2c 48 59 dd    	vmulps zmm11,zmm10,zmm13
  a30d88:	62 52 25 40 bc de    	vfnmadd231ps zmm11,zmm27,zmm14
  a30d8e:	62 51 24 40 59 ed    	vmulps zmm13,zmm27,zmm13
  a30d94:	62 52 0d 48 b8 ea    	vfmadd231ps zmm13,zmm14,zmm10
  a30d9a:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc0]
  a30da1:	03 
  a30da2:	62 71 fd 48 15 54 24 	vunpckhpd zmm10,zmm0,ZMMWORD PTR [rsp+0x1c0]
  a30da9:	07 
  a30daa:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a30db1:	06 
  a30db2:	62 71 fd 48 15 74 24 	vunpckhpd zmm14,zmm0,ZMMWORD PTR [rsp+0x140]
  a30db9:	05 
  a30dba:	62 e1 f5 48 15 5c 24 	vunpckhpd zmm19,zmm1,ZMMWORD PTR [rsp+0x300]
  a30dc1:	0c 
  a30dc2:	62 61 b5 40 15 6c 24 	vunpckhpd zmm29,zmm25,ZMMWORD PTR [rsp+0x2c0]
  a30dc9:	0b 
  a30dca:	62 d1 7c 48 28 ca    	vmovaps zmm1,zmm10
  a30dd0:	62 52 65 48 7f d6    	vpermt2ps zmm10,zmm3,zmm14
  a30dd6:	62 a1 7c 48 28 d3    	vmovaps zmm18,zmm19
  a30ddc:	62 82 65 48 7f dd    	vpermt2ps zmm19,zmm3,zmm29
  a30de2:	62 61 7c 48 10 59 07 	vmovups zmm27,ZMMWORD PTR [rcx+0x1c0]
  a30de9:	62 f1 7c 48 10 41 06 	vmovups zmm0,ZMMWORD PTR [rcx+0x180]
  a30df0:	62 61 64 40 59 c8    	vmulps zmm25,zmm19,zmm0
  a30df6:	62 02 2d 48 bc cb    	vfnmadd231ps zmm25,zmm10,zmm27
  a30dfc:	62 71 2c 48 59 d0    	vmulps zmm10,zmm10,zmm0
  a30e02:	62 32 25 40 b8 d3    	vfmadd231ps zmm10,zmm27,zmm19
  a30e08:	62 72 6d 48 7f 44 24 	vpermt2ps zmm8,zmm2,ZMMWORD PTR [rsp+0x4c0]
  a30e0f:	13 
  a30e10:	62 62 6d 48 7f 44 24 	vpermt2ps zmm24,zmm2,ZMMWORD PTR [rsp+0x500]
  a30e17:	14 
  a30e18:	62 f1 7c 48 10 41 09 	vmovups zmm0,ZMMWORD PTR [rcx+0x240]
  a30e1f:	62 e1 7c 48 10 71 08 	vmovups zmm22,ZMMWORD PTR [rcx+0x200]
  a30e26:	62 a1 3c 40 59 de    	vmulps zmm19,zmm24,zmm22
  a30e2c:	62 e2 3d 48 bc d8    	vfnmadd231ps zmm19,zmm8,zmm0
  a30e32:	62 31 3c 48 59 c6    	vmulps zmm8,zmm8,zmm22
  a30e38:	62 12 7d 48 b8 c0    	vfmadd231ps zmm8,zmm0,zmm24
  a30e3e:	62 f2 6d 48 7f 7c 24 	vpermt2ps zmm7,zmm2,ZMMWORD PTR [rsp+0x600]
  a30e45:	18 
  a30e46:	62 b2 6d 48 7f e5    	vpermt2ps zmm4,zmm2,zmm21
  a30e4c:	62 f1 7c 48 10 41 14 	vmovups zmm0,ZMMWORD PTR [rcx+0x500]
  a30e53:	62 61 5c 48 59 d8    	vmulps zmm27,zmm4,zmm0
  a30e59:	62 e1 44 48 59 e8    	vmulps zmm21,zmm7,zmm0
  a30e5f:	62 f1 7c 48 10 41 15 	vmovups zmm0,ZMMWORD PTR [rcx+0x540]
  a30e66:	62 e2 7d 48 b8 ec    	vfmadd231ps zmm21,zmm0,zmm4
  a30e6c:	62 62 45 48 bc d8    	vfnmadd231ps zmm27,zmm7,zmm0
  a30e72:	62 d2 6d 48 7f ce    	vpermt2ps zmm1,zmm2,zmm14
  a30e78:	62 82 6d 48 7f d5    	vpermt2ps zmm18,zmm2,zmm29
  a30e7e:	62 f1 7c 48 10 41 04 	vmovups zmm0,ZMMWORD PTR [rcx+0x100]
  a30e85:	62 f1 7c 48 10 59 05 	vmovups zmm3,ZMMWORD PTR [rcx+0x140]
  a30e8c:	62 f1 6c 40 59 e0    	vmulps zmm4,zmm18,zmm0
  a30e92:	62 f2 75 48 bc e3    	vfnmadd231ps zmm4,zmm1,zmm3
  a30e98:	62 61 74 48 59 c0    	vmulps zmm24,zmm1,zmm0
  a30e9e:	62 22 65 48 b8 c2    	vfmadd231ps zmm24,zmm3,zmm18
  a30ea4:	62 62 6d 48 7f 64 24 	vpermt2ps zmm28,zmm2,ZMMWORD PTR [rsp+0x480]
  a30eab:	12 
  a30eac:	62 e2 6d 48 7f 7c 24 	vpermt2ps zmm23,zmm2,ZMMWORD PTR [rsp+0x200]
  a30eb3:	08 
  a30eb4:	62 f1 7c 48 10 41 11 	vmovups zmm0,ZMMWORD PTR [rcx+0x440]
  a30ebb:	62 f1 7c 48 10 49 10 	vmovups zmm1,ZMMWORD PTR [rcx+0x400]
  a30ec2:	62 f1 44 40 59 d9    	vmulps zmm3,zmm23,zmm1
  a30ec8:	62 f2 1d 40 b8 d8    	vfmadd231ps zmm3,zmm28,zmm0
  a30ece:	62 61 1c 40 59 e9    	vmulps zmm29,zmm28,zmm1
  a30ed4:	62 22 7d 48 bc ef    	vfnmadd231ps zmm29,zmm0,zmm23
  a30eda:	62 e2 6d 48 7f 4c 24 	vpermt2ps zmm17,zmm2,ZMMWORD PTR [rsp+0x80]
  a30ee1:	02 
  a30ee2:	62 e2 6d 48 7f 64 24 	vpermt2ps zmm20,zmm2,ZMMWORD PTR [rsp+0x280]
  a30ee9:	0a 
  a30eea:	62 e1 74 40 5c f3    	vsubps zmm22,zmm17,zmm3
  a30ef0:	62 a1 64 48 58 f9    	vaddps zmm23,zmm3,zmm17
  a30ef6:	62 41 3c 48 5c e5    	vsubps zmm28,zmm8,zmm13
  a30efc:	62 51 3c 48 58 ed    	vaddps zmm13,zmm8,zmm13
  a30f02:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x700]
  a30f09:	1c 
  a30f0a:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x380]
  a30f11:	0e 
  a30f12:	62 71 7c 48 5c c1    	vsubps zmm8,zmm0,zmm1
  a30f18:	62 f1 7c 48 58 c1    	vaddps zmm0,zmm0,zmm1
  a30f1e:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a30f25:	03 
  a30f26:	62 91 1c 48 5c ca    	vsubps zmm1,zmm12,zmm26
  a30f2c:	62 91 1c 48 58 c2    	vaddps zmm0,zmm12,zmm26
  a30f32:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm0
  a30f39:	07 
  a30f3a:	62 71 2c 48 5c e5    	vsubps zmm12,zmm10,zmm5
  a30f40:	62 f1 2c 48 58 c5    	vaddps zmm0,zmm10,zmm5
  a30f46:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm0
  a30f4d:	06 
  a30f4e:	62 71 34 48 5c d6    	vsubps zmm10,zmm9,zmm6
  a30f54:	62 41 4c 48 58 d1    	vaddps zmm26,zmm6,zmm9
  a30f5a:	62 51 34 40 5c cf    	vsubps zmm9,zmm25,zmm15
  a30f60:	62 c1 34 40 58 cf    	vaddps zmm17,zmm25,zmm15
  a30f66:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x5c0]
  a30f6d:	17 
  a30f6e:	62 01 7c 48 5c ce    	vsubps zmm25,zmm0,zmm30
  a30f74:	62 71 0c 40 58 f0    	vaddps zmm14,zmm30,zmm0
  a30f7a:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x100]
  a30f81:	04 
  a30f82:	62 61 7c 40 5c f0    	vsubps zmm30,zmm16,zmm0
  a30f88:	62 e1 7c 40 58 d0    	vaddps zmm18,zmm16,zmm0
  a30f8e:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x40]
  a30f95:	01 
  a30f96:	62 f1 04 40 5c f8    	vsubps zmm7,zmm31,zmm0
  a30f9c:	62 f1 04 40 58 c0    	vaddps zmm0,zmm31,zmm0
  a30fa2:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm0
  a30fa9:	08 
  a30faa:	62 91 5c 48 5c eb    	vsubps zmm5,zmm4,zmm27
  a30fb0:	62 81 5c 48 58 c3    	vaddps zmm16,zmm4,zmm27
  a30fb6:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x340]
  a30fbd:	0d 
  a30fbe:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x240]
  a30fc5:	09 
  a30fc6:	62 61 6c 48 5c d8    	vsubps zmm27,zmm2,zmm0
  a30fcc:	62 f1 6c 48 58 c0    	vaddps zmm0,zmm2,zmm0
  a30fd2:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm0
  a30fd9:	09 
  a30fda:	62 91 5c 40 5c d5    	vsubps zmm2,zmm20,zmm29
  a30fe0:	62 81 5c 40 58 e5    	vaddps zmm20,zmm20,zmm29
  a30fe6:	62 31 24 48 5c fb    	vsubps zmm15,zmm11,zmm19
  a30fec:	62 c1 64 40 58 db    	vaddps zmm19,zmm19,zmm11
  a30ff2:	62 b1 3c 40 5c c5    	vsubps zmm0,zmm24,zmm21
  a30ff8:	62 31 3c 40 58 dd    	vaddps zmm11,zmm24,zmm21
  a30ffe:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x740]
  a31005:	1d 
  a31006:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x400]
  a3100d:	10 
  a3100e:	62 f1 5c 48 5c de    	vsubps zmm3,zmm4,zmm6
  a31014:	62 e1 5c 48 58 ee    	vaddps zmm21,zmm4,zmm6
  a3101a:	62 d1 64 48 5c e0    	vsubps zmm4,zmm3,zmm8
  a31020:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm4
  a31027:	05 
  a31028:	62 f1 3c 48 58 db    	vaddps zmm3,zmm8,zmm3
  a3102e:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm3
  a31035:	02 
  a31036:	62 41 4c 40 5c ff    	vsubps zmm31,zmm22,zmm15
  a3103c:	62 b1 04 48 58 de    	vaddps zmm3,zmm15,zmm22
  a31042:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm3
  a31049:	01 
  a3104a:	62 f1 34 48 5c d9    	vsubps zmm3,zmm9,zmm1
  a31050:	62 f1 34 48 58 c9    	vaddps zmm1,zmm9,zmm1
  a31056:	62 51 1c 48 5c ca    	vsubps zmm9,zmm12,zmm10
  a3105c:	62 51 1c 48 58 e2    	vaddps zmm12,zmm12,zmm10
  a31062:	62 11 0c 40 5c d3    	vsubps zmm10,zmm30,zmm27
  a31068:	62 01 0c 40 58 db    	vaddps zmm27,zmm30,zmm27
  a3106e:	62 01 44 48 5c f1    	vsubps zmm30,zmm7,zmm25
  a31074:	62 91 44 48 58 f9    	vaddps zmm7,zmm7,zmm25
  a3107a:	62 61 54 48 58 c8    	vaddps zmm25,zmm5,zmm0
  a31080:	62 61 7c 48 5c c5    	vsubps zmm24,zmm0,zmm5
  a31086:	62 51 44 40 5c fd    	vsubps zmm15,zmm23,zmm13
  a3108c:	62 b1 14 48 58 c7    	vaddps zmm0,zmm13,zmm23
  a31092:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm0
  a31099:	0b 
  a3109a:	62 81 6c 48 5c f4    	vsubps zmm22,zmm2,zmm28
  a310a0:	62 91 6c 48 58 f4    	vaddps zmm6,zmm2,zmm28
  a310a6:	62 81 74 40 5c fa    	vsubps zmm23,zmm17,zmm26
  a310ac:	62 91 74 40 58 c2    	vaddps zmm0,zmm17,zmm26
  a310b2:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a310b9:	04 
  a310ba:	62 21 24 48 5c e5    	vsubps zmm28,zmm11,zmm21
  a310c0:	62 21 24 48 58 ed    	vaddps zmm29,zmm11,zmm21
  a310c6:	62 d1 6c 40 5c d6    	vsubps zmm2,zmm18,zmm14
  a310cc:	62 61 7c 48 28 54 24 	vmovaps zmm26,ZMMWORD PTR [rsp+0x200]
  a310d3:	08 
  a310d4:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x240]
  a310db:	09 
  a310dc:	62 71 2c 40 5c c0    	vsubps zmm8,zmm26,zmm0
  a310e2:	62 51 6c 48 58 d8    	vaddps zmm11,zmm2,zmm8
  a310e8:	62 e1 3c 48 5c ea    	vsubps zmm21,zmm8,zmm2
  a310ee:	62 d1 6c 40 58 d6    	vaddps zmm2,zmm18,zmm14
  a310f4:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm2
  a310fb:	0c 
  a310fc:	62 31 5c 40 5c f3    	vsubps zmm14,zmm20,zmm19
  a31102:	62 b1 5c 40 58 d3    	vaddps zmm2,zmm20,zmm19
  a31108:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm2
  a3110f:	0a 
  a31110:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0xc0]
  a31117:	03 
  a31118:	62 a1 6c 48 5c d0    	vsubps zmm18,zmm2,zmm16
  a3111e:	62 f1 7c 40 58 d2    	vaddps zmm2,zmm16,zmm2
  a31124:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm2
  a3112b:	03 
  a3112c:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x1c0]
  a31133:	07 
  a31134:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0x180]
  a3113b:	06 
  a3113c:	62 c1 14 48 5c c0    	vsubps zmm16,zmm13,zmm8
  a31142:	62 b1 7c 40 5c d7    	vsubps zmm2,zmm16,zmm23
  a31148:	62 a1 44 40 58 f8    	vaddps zmm23,zmm23,zmm16
  a3114e:	62 f2 7d 48 18 25 a8 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff6445a8]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a31155:	45 64 ff 
  a31158:	62 e1 0c 40 59 e4    	vmulps zmm20,zmm30,zmm4
  a3115e:	62 f2 7d 48 18 2d fc 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff6444fc]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a31165:	44 64 ff 
  a31168:	62 e2 2d 48 b8 e5    	vfmadd231ps zmm20,zmm10,zmm5
  a3116e:	62 61 0c 40 59 f5    	vmulps zmm30,zmm30,zmm5
  a31174:	62 42 5d 48 bc f2    	vfnmadd231ps zmm30,zmm4,zmm10
  a3117a:	62 71 34 48 59 d5    	vmulps zmm10,zmm9,zmm5
  a31180:	62 72 65 48 b8 d4    	vfmadd231ps zmm10,zmm3,zmm4
  a31186:	62 f1 64 48 59 dd    	vmulps zmm3,zmm3,zmm5
  a3118c:	62 d2 5d 48 bc d9    	vfnmadd231ps zmm3,zmm4,zmm9
  a31192:	62 e1 44 48 59 c5    	vmulps zmm16,zmm7,zmm5
  a31198:	62 e2 25 40 b8 c4    	vfmadd231ps zmm16,zmm27,zmm4
  a3119e:	62 f1 44 48 59 fc    	vmulps zmm7,zmm7,zmm4
  a311a4:	62 92 55 48 bc fb    	vfnmadd231ps zmm7,zmm5,zmm27
  a311aa:	62 71 1c 48 59 cc    	vmulps zmm9,zmm12,zmm4
  a311b0:	62 72 75 48 b8 cd    	vfmadd231ps zmm9,zmm1,zmm5
  a311b6:	62 71 1c 48 59 e5    	vmulps zmm12,zmm12,zmm5
  a311bc:	62 72 5d 48 bc e1    	vfnmadd231ps zmm12,zmm4,zmm1
  a311c2:	62 f2 7d 48 18 25 d0 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff6441d0]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a311c9:	41 64 ff 
  a311cc:	62 f1 3c 40 59 cc    	vmulps zmm1,zmm24,zmm4
  a311d2:	62 e1 5c 48 59 4c 24 	vmulps zmm17,zmm4,ZMMWORD PTR [rsp+0x80]
  a311d9:	02 
  a311da:	62 21 74 48 58 c1    	vaddps zmm24,zmm1,zmm17
  a311e0:	62 b1 74 48 5c c9    	vsubps zmm1,zmm1,zmm17
  a311e6:	62 e1 5c 48 59 4c 24 	vmulps zmm17,zmm4,ZMMWORD PTR [rsp+0x140]
  a311ed:	05 
  a311ee:	62 61 34 40 59 cc    	vmulps zmm25,zmm25,zmm4
  a311f4:	62 01 74 40 5c d9    	vsubps zmm27,zmm17,zmm25
  a311fa:	62 21 34 40 58 c9    	vaddps zmm25,zmm25,zmm17
  a31200:	62 61 2c 40 58 d0    	vaddps zmm26,zmm26,zmm0
  a31206:	62 c1 14 48 58 c8    	vaddps zmm17,zmm13,zmm8
  a3120c:	62 11 04 40 5c eb    	vsubps zmm13,zmm31,zmm27
  a31212:	62 91 24 40 58 c7    	vaddps zmm0,zmm27,zmm31
  a31218:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm0
  a3121f:	06 
  a31220:	62 21 04 48 5c fa    	vsubps zmm31,zmm15,zmm18
  a31226:	62 c1 6c 40 58 df    	vaddps zmm19,zmm18,zmm15
  a3122c:	62 71 54 40 59 fc    	vmulps zmm15,zmm21,zmm4
  a31232:	62 e1 44 40 59 d4    	vmulps zmm18,zmm23,zmm4
  a31238:	62 a1 04 48 58 ea    	vaddps zmm21,zmm15,zmm18
  a3123e:	62 a1 04 48 5c d2    	vsubps zmm18,zmm15,zmm18
  a31244:	62 81 4c 40 5c f8    	vsubps zmm23,zmm22,zmm24
  a3124a:	62 01 4c 40 58 c0    	vaddps zmm24,zmm22,zmm24
  a31250:	62 81 0c 48 5c f4    	vsubps zmm22,zmm14,zmm28
  a31256:	62 01 0c 48 58 e4    	vaddps zmm28,zmm14,zmm28
  a3125c:	62 f1 6c 48 59 c4    	vmulps zmm0,zmm2,zmm4
  a31262:	62 71 24 48 59 dc    	vmulps zmm11,zmm11,zmm4
  a31268:	62 d1 7c 48 5c e3    	vsubps zmm4,zmm0,zmm11
  a3126e:	62 71 24 48 58 f0    	vaddps zmm14,zmm11,zmm0
  a31274:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x40]
  a3127b:	01 
  a3127c:	62 71 7c 48 5c d9    	vsubps zmm11,zmm0,zmm1
  a31282:	62 f1 74 48 58 c0    	vaddps zmm0,zmm1,zmm0
  a31288:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a3128f:	02 
  a31290:	62 11 4c 48 5c c1    	vsubps zmm8,zmm6,zmm25
  a31296:	62 91 4c 48 58 c1    	vaddps zmm0,zmm6,zmm25
  a3129c:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  a312a3:	05 
  a312a4:	62 61 0c 40 5c cb    	vsubps zmm25,zmm30,zmm3
  a312aa:	62 f1 0c 40 58 f3    	vaddps zmm6,zmm30,zmm3
  a312b0:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x2c0]
  a312b7:	0b 
  a312b8:	62 91 7c 48 5c d5    	vsubps zmm2,zmm0,zmm29
  a312be:	62 61 14 40 58 e8    	vaddps zmm29,zmm29,zmm0
  a312c4:	62 d1 5c 40 58 c2    	vaddps zmm0,zmm20,zmm10
  a312ca:	62 51 5c 40 5c d2    	vsubps zmm10,zmm20,zmm10
  a312d0:	62 a1 2c 40 5c e1    	vsubps zmm20,zmm26,zmm17
  a312d6:	62 a1 2c 40 58 c9    	vaddps zmm17,zmm26,zmm17
  a312dc:	62 d1 44 48 5c dc    	vsubps zmm3,zmm7,zmm12
  a312e2:	62 d1 44 48 58 fc    	vaddps zmm7,zmm7,zmm12
  a312e8:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x280]
  a312ef:	0a 
  a312f0:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0xc0]
  a312f7:	03 
  a312f8:	62 61 74 48 5c f5    	vsubps zmm30,zmm1,zmm5
  a312fe:	62 71 74 48 58 e5    	vaddps zmm12,zmm1,zmm5
  a31304:	62 b1 34 48 5c c8    	vsubps zmm1,zmm9,zmm16
  a3130a:	62 51 7c 40 58 f9    	vaddps zmm15,zmm16,zmm9
  a31310:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x100]
  a31317:	04 
  a31318:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x300]
  a3131f:	0c 
  a31320:	62 31 54 48 5c c8    	vsubps zmm9,zmm5,zmm16
  a31326:	62 f1 7c 40 58 ed    	vaddps zmm5,zmm16,zmm5
  a3132c:	62 e1 04 40 5c c4    	vsubps zmm16,zmm31,zmm4
  a31332:	62 e1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm16
  a31339:	04 
  a3133a:	62 61 04 40 58 d4    	vaddps zmm26,zmm31,zmm4
  a31340:	62 b1 4c 40 5c e5    	vsubps zmm4,zmm22,zmm21
  a31346:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm4
  a3134d:	03 
  a3134e:	62 a1 4c 40 58 c5    	vaddps zmm16,zmm22,zmm21
  a31354:	62 f1 14 48 58 e0    	vaddps zmm4,zmm13,zmm0
  a3135a:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm4
  a31361:	01 
  a31362:	62 61 14 48 5c d8    	vsubps zmm27,zmm13,zmm0
  a31368:	62 d1 6c 48 5c c1    	vsubps zmm0,zmm2,zmm9
  a3136e:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm0
  a31375:	07 
  a31376:	62 c1 6c 48 58 f1    	vaddps zmm22,zmm2,zmm9
  a3137c:	62 01 44 40 5c f9    	vsubps zmm31,zmm23,zmm25
  a31382:	62 11 44 40 58 e9    	vaddps zmm13,zmm23,zmm25
  a31388:	62 b1 0c 40 5c d4    	vsubps zmm2,zmm30,zmm20
  a3138e:	62 a1 0c 40 58 fc    	vaddps zmm23,zmm30,zmm20
  a31394:	62 61 24 48 5c f1    	vsubps zmm30,zmm11,zmm1
  a3139a:	62 e1 24 48 58 e1    	vaddps zmm20,zmm11,zmm1
  a313a0:	62 21 64 40 5c ca    	vsubps zmm25,zmm19,zmm18
  a313a6:	62 b1 64 40 58 c2    	vaddps zmm0,zmm19,zmm18
  a313ac:	62 f1 3c 48 5c e3    	vsubps zmm4,zmm8,zmm3
  a313b2:	62 e1 3c 48 58 eb    	vaddps zmm21,zmm8,zmm3
  a313b8:	62 51 1c 40 5c de    	vsubps zmm11,zmm28,zmm14
  a313be:	62 d1 1c 40 58 de    	vaddps zmm3,zmm28,zmm14
  a313c4:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x180]
  a313cb:	06 
  a313cc:	62 71 74 48 5c c6    	vsubps zmm8,zmm1,zmm6
  a313d2:	62 f1 74 48 58 f6    	vaddps zmm6,zmm1,zmm6
  a313d8:	62 b1 14 40 5c c9    	vsubps zmm1,zmm29,zmm17
  a313de:	62 31 14 40 58 f1    	vaddps zmm14,zmm29,zmm17
  a313e4:	62 51 3c 40 5c ca    	vsubps zmm9,zmm24,zmm10
  a313ea:	62 51 3c 40 58 d2    	vaddps zmm10,zmm24,zmm10
  a313f0:	62 e1 1c 48 5c d5    	vsubps zmm18,zmm12,zmm5
  a313f6:	62 f1 1c 48 58 ed    	vaddps zmm5,zmm12,zmm5
  a313fc:	62 71 7c 48 28 e5    	vmovaps zmm12,zmm5
  a31402:	62 61 7c 48 28 05 b4 	vmovaps zmm24,ZMMWORD PTR [rip+0xffffffffff65f7b4]        # 90bc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e070>
  a31409:	f7 65 ff 
  a3140c:	62 52 3d 40 7f e6    	vpermt2ps zmm12,zmm24,zmm14
  a31412:	62 71 7c 48 11 24 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm12
  a31419:	62 51 54 48 14 e6    	vunpcklps zmm12,zmm5,zmm14
  a3141f:	62 73 7d 48 19 64 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x60],zmm12,0x3
  a31426:	06 03 
  a31428:	62 51 54 48 15 e6    	vunpckhps zmm12,zmm5,zmm14
  a3142e:	62 53 7d 48 19 e4 03 	vextractf32x4 xmm12,zmm12,0x3
  a31435:	c5 78 13 64 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm12
  a3143b:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x80]
  a31442:	02 
  a31443:	62 e1 1c 48 5c cf    	vsubps zmm17,zmm12,zmm7
  a31449:	62 f1 1c 48 58 ff    	vaddps zmm7,zmm12,zmm7
  a3144f:	62 61 7c 28 28 25 a7 	vmovaps ymm28,YMMWORD PTR [rip+0xffffffffff65f7a7]        # 90c00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e0b0>
  a31456:	f7 65 ff 
  a31459:	62 d2 1d 40 7f ee    	vpermt2ps zmm5,zmm28,zmm14
  a3145f:	c5 fc 11 6c 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm5
  a31465:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x140]
  a3146c:	05 
  a3146d:	62 c1 54 48 5c df    	vsubps zmm19,zmm5,zmm15
  a31473:	62 d1 54 48 58 ef    	vaddps zmm5,zmm5,zmm15
  a31479:	62 71 7c 48 28 e5    	vmovaps zmm12,zmm5
  a3147f:	62 72 3d 40 7f e7    	vpermt2ps zmm12,zmm24,zmm7
  a31485:	62 71 7c 48 11 a4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x78],zmm12
  a3148c:	78 00 00 00 
  a31490:	62 71 54 48 14 e7    	vunpcklps zmm12,zmm5,zmm7
  a31496:	62 73 7d 48 19 a4 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xd8],zmm12,0x3
  a3149d:	d8 00 00 00 03 
  a314a2:	62 71 54 48 15 e7    	vunpckhps zmm12,zmm5,zmm7
  a314a8:	62 53 7d 48 19 e4 03 	vextractf32x4 xmm12,zmm12,0x3
  a314af:	c5 78 13 a4 16 e8 00 	vmovlps QWORD PTR [rsi+rdx*1+0xe8],xmm12
  a314b6:	00 00 
  a314b8:	62 f2 1d 40 7f ef    	vpermt2ps zmm5,zmm28,zmm7
  a314be:	c5 fc 11 ac 16 b8 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xb8],ymm5
  a314c5:	00 00 
  a314c7:	62 f1 7c 48 28 eb    	vmovaps zmm5,zmm3
  a314cd:	62 f2 3d 40 7f e8    	vpermt2ps zmm5,zmm24,zmm0
  a314d3:	62 f1 7c 48 11 ac 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xf0],zmm5
  a314da:	f0 00 00 00 
  a314de:	62 f1 64 48 14 e8    	vunpcklps zmm5,zmm3,zmm0
  a314e4:	62 f3 7d 48 19 6c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x150],zmm5,0x3
  a314eb:	15 03 
  a314ed:	62 f1 64 48 15 e8    	vunpckhps zmm5,zmm3,zmm0
  a314f3:	62 f3 7d 48 19 ed 03 	vextractf32x4 xmm5,zmm5,0x3
  a314fa:	c5 f8 13 ac 16 60 01 	vmovlps QWORD PTR [rsi+rdx*1+0x160],xmm5
  a31501:	00 00 
  a31503:	62 f2 1d 40 7f d8    	vpermt2ps zmm3,zmm28,zmm0
  a31509:	c5 fc 11 9c 16 30 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x130],ymm3
  a31510:	00 00 
  a31512:	62 d1 7c 48 28 c2    	vmovaps zmm0,zmm10
  a31518:	62 f2 3d 40 7f c6    	vpermt2ps zmm0,zmm24,zmm6
  a3151e:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x168],zmm0
  a31525:	68 01 00 00 
  a31529:	62 f1 2c 48 14 c6    	vunpcklps zmm0,zmm10,zmm6
  a3152f:	62 f3 7d 48 19 84 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x1c8],zmm0,0x3
  a31536:	c8 01 00 00 03 
  a3153b:	62 f1 2c 48 15 c6    	vunpckhps zmm0,zmm10,zmm6
  a31541:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a31548:	c5 f8 13 84 16 d8 01 	vmovlps QWORD PTR [rsi+rdx*1+0x1d8],xmm0
  a3154f:	00 00 
  a31551:	62 72 1d 40 7f d6    	vpermt2ps zmm10,zmm28,zmm6
  a31557:	c5 7c 11 94 16 a8 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1a8],ymm10
  a3155e:	00 00 
  a31560:	62 b1 7c 48 28 c7    	vmovaps zmm0,zmm23
  a31566:	62 b2 3d 40 7f c6    	vpermt2ps zmm0,zmm24,zmm22
  a3156c:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1e0],zmm0
  a31573:	e0 01 00 00 
  a31577:	62 b1 44 40 14 c6    	vunpcklps zmm0,zmm23,zmm22
  a3157d:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x240],zmm0,0x3
  a31584:	24 03 
  a31586:	62 b1 44 40 15 c6    	vunpckhps zmm0,zmm23,zmm22
  a3158c:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a31593:	c5 f8 13 84 16 50 02 	vmovlps QWORD PTR [rsi+rdx*1+0x250],xmm0
  a3159a:	00 00 
  a3159c:	62 a2 1d 40 7f fe    	vpermt2ps zmm23,zmm28,zmm22
  a315a2:	62 e1 7c 28 11 7c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x220],ymm23
  a315a9:	11 
  a315aa:	62 b1 7c 48 28 c5    	vmovaps zmm0,zmm21
  a315b0:	62 b2 3d 40 7f c4    	vpermt2ps zmm0,zmm24,zmm20
  a315b6:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x258],zmm0
  a315bd:	58 02 00 00 
  a315c1:	62 b1 54 40 14 c4    	vunpcklps zmm0,zmm21,zmm20
  a315c7:	62 f3 7d 48 19 84 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x2b8],zmm0,0x3
  a315ce:	b8 02 00 00 03 
  a315d3:	62 b1 54 40 15 c4    	vunpckhps zmm0,zmm21,zmm20
  a315d9:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a315e0:	c5 f8 13 84 16 c8 02 	vmovlps QWORD PTR [rsi+rdx*1+0x2c8],xmm0
  a315e7:	00 00 
  a315e9:	62 a2 1d 40 7f ec    	vpermt2ps zmm21,zmm28,zmm20
  a315ef:	62 e1 7c 28 11 ac 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x298],ymm21
  a315f6:	98 02 00 00 
  a315fa:	62 b1 7c 48 28 c0    	vmovaps zmm0,zmm16
  a31600:	62 92 3d 40 7f c2    	vpermt2ps zmm0,zmm24,zmm26
  a31606:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2d0],zmm0
  a3160d:	d0 02 00 00 
  a31611:	62 91 7c 40 14 c2    	vunpcklps zmm0,zmm16,zmm26
  a31617:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x330],zmm0,0x3
  a3161e:	33 03 
  a31620:	62 91 7c 40 15 c2    	vunpckhps zmm0,zmm16,zmm26
  a31626:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a3162d:	c5 f8 13 84 16 40 03 	vmovlps QWORD PTR [rsi+rdx*1+0x340],xmm0
  a31634:	00 00 
  a31636:	62 82 1d 40 7f c2    	vpermt2ps zmm16,zmm28,zmm26
  a3163c:	62 e1 7c 28 11 84 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x310],ymm16
  a31643:	10 03 00 00 
  a31647:	62 d1 7c 48 28 c5    	vmovaps zmm0,zmm13
  a3164d:	62 92 3d 40 7f c3    	vpermt2ps zmm0,zmm24,zmm27
  a31653:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x348],zmm0
  a3165a:	48 03 00 00 
  a3165e:	62 91 14 48 14 c3    	vunpcklps zmm0,zmm13,zmm27
  a31664:	62 f3 7d 48 19 84 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x3a8],zmm0,0x3
  a3166b:	a8 03 00 00 03 
  a31670:	62 91 14 48 15 c3    	vunpckhps zmm0,zmm13,zmm27
  a31676:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a3167d:	c5 f8 13 84 16 b8 03 	vmovlps QWORD PTR [rsi+rdx*1+0x3b8],xmm0
  a31684:	00 00 
  a31686:	62 12 1d 40 7f eb    	vpermt2ps zmm13,zmm28,zmm27
  a3168c:	c5 7c 11 ac 16 88 03 	vmovups YMMWORD PTR [rsi+rdx*1+0x388],ymm13
  a31693:	00 00 
  a31695:	62 b1 7c 48 28 c2    	vmovaps zmm0,zmm18
  a3169b:	62 f2 3d 40 7f c1    	vpermt2ps zmm0,zmm24,zmm1
  a316a1:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x3c0],zmm0
  a316a8:	0f 
  a316a9:	62 f1 6c 40 14 c1    	vunpcklps zmm0,zmm18,zmm1
  a316af:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x420],zmm0,0x3
  a316b6:	42 03 
  a316b8:	62 f1 6c 40 15 c1    	vunpckhps zmm0,zmm18,zmm1
  a316be:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a316c5:	c5 f8 13 84 16 30 04 	vmovlps QWORD PTR [rsi+rdx*1+0x430],xmm0
  a316cc:	00 00 
  a316ce:	62 e2 1d 40 7f d1    	vpermt2ps zmm18,zmm28,zmm1
  a316d4:	62 e1 7c 28 11 54 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x400],ymm18
  a316db:	20 
  a316dc:	62 b1 7c 48 28 c3    	vmovaps zmm0,zmm19
  a316e2:	62 b2 3d 40 7f c1    	vpermt2ps zmm0,zmm24,zmm17
  a316e8:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x438],zmm0
  a316ef:	38 04 00 00 
  a316f3:	62 b1 64 40 14 c1    	vunpcklps zmm0,zmm19,zmm17
  a316f9:	62 f3 7d 48 19 84 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x498],zmm0,0x3
  a31700:	98 04 00 00 03 
  a31705:	62 b1 64 40 15 c1    	vunpckhps zmm0,zmm19,zmm17
  a3170b:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a31712:	c5 f8 13 84 16 a8 04 	vmovlps QWORD PTR [rsi+rdx*1+0x4a8],xmm0
  a31719:	00 00 
  a3171b:	62 a2 1d 40 7f d9    	vpermt2ps zmm19,zmm28,zmm17
  a31721:	62 e1 7c 28 11 9c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x478],ymm19
  a31728:	78 04 00 00 
  a3172c:	62 d1 7c 48 28 c3    	vmovaps zmm0,zmm11
  a31732:	62 92 3d 40 7f c1    	vpermt2ps zmm0,zmm24,zmm25
  a31738:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x4b0],zmm0
  a3173f:	b0 04 00 00 
  a31743:	62 91 24 48 14 c1    	vunpcklps zmm0,zmm11,zmm25
  a31749:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x510],zmm0,0x3
  a31750:	51 03 
  a31752:	62 91 24 48 15 c1    	vunpckhps zmm0,zmm11,zmm25
  a31758:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a3175f:	c5 f8 13 84 16 20 05 	vmovlps QWORD PTR [rsi+rdx*1+0x520],xmm0
  a31766:	00 00 
  a31768:	62 12 1d 40 7f d9    	vpermt2ps zmm11,zmm28,zmm25
  a3176e:	c5 7c 11 9c 16 f0 04 	vmovups YMMWORD PTR [rsi+rdx*1+0x4f0],ymm11
  a31775:	00 00 
  a31777:	62 d1 7c 48 28 c1    	vmovaps zmm0,zmm9
  a3177d:	62 d2 3d 40 7f c0    	vpermt2ps zmm0,zmm24,zmm8
  a31783:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x528],zmm0
  a3178a:	28 05 00 00 
  a3178e:	62 d1 34 48 14 c0    	vunpcklps zmm0,zmm9,zmm8
  a31794:	62 f3 7d 48 19 84 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x588],zmm0,0x3
  a3179b:	88 05 00 00 03 
  a317a0:	62 d1 34 48 15 c0    	vunpckhps zmm0,zmm9,zmm8
  a317a6:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a317ad:	c5 f8 13 84 16 98 05 	vmovlps QWORD PTR [rsi+rdx*1+0x598],xmm0
  a317b4:	00 00 
  a317b6:	62 52 1d 40 7f c8    	vpermt2ps zmm9,zmm28,zmm8
  a317bc:	c5 7c 11 8c 16 68 05 	vmovups YMMWORD PTR [rsi+rdx*1+0x568],ymm9
  a317c3:	00 00 
  a317c5:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a317cb:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x1c0]
  a317d2:	07 
  a317d3:	62 f2 3d 40 7f c1    	vpermt2ps zmm0,zmm24,zmm1
  a317d9:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x5a0],zmm0
  a317e0:	a0 05 00 00 
  a317e4:	62 f1 6c 48 14 c1    	vunpcklps zmm0,zmm2,zmm1
  a317ea:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x600],zmm0,0x3
  a317f1:	60 03 
  a317f3:	62 f1 6c 48 15 c1    	vunpckhps zmm0,zmm2,zmm1
  a317f9:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a31800:	c5 f8 13 84 16 10 06 	vmovlps QWORD PTR [rsi+rdx*1+0x610],xmm0
  a31807:	00 00 
  a31809:	62 f2 1d 40 7f d1    	vpermt2ps zmm2,zmm28,zmm1
  a3180f:	c5 fc 11 94 16 e0 05 	vmovups YMMWORD PTR [rsi+rdx*1+0x5e0],ymm2
  a31816:	00 00 
  a31818:	62 f1 7c 48 28 c4    	vmovaps zmm0,zmm4
  a3181e:	62 92 3d 40 7f c6    	vpermt2ps zmm0,zmm24,zmm30
  a31824:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x618],zmm0
  a3182b:	18 06 00 00 
  a3182f:	62 91 5c 48 14 c6    	vunpcklps zmm0,zmm4,zmm30
  a31835:	62 f3 7d 48 19 84 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x678],zmm0,0x3
  a3183c:	78 06 00 00 03 
  a31841:	62 91 5c 48 15 c6    	vunpckhps zmm0,zmm4,zmm30
  a31847:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a3184e:	c5 f8 13 84 16 88 06 	vmovlps QWORD PTR [rsi+rdx*1+0x688],xmm0
  a31855:	00 00 
  a31857:	62 92 1d 40 7f e6    	vpermt2ps zmm4,zmm28,zmm30
  a3185d:	c5 fc 11 a4 16 58 06 	vmovups YMMWORD PTR [rsi+rdx*1+0x658],ymm4
  a31864:	00 00 
  a31866:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0xc0]
  a3186d:	03 
  a3186e:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a31874:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x100]
  a3187b:	04 
  a3187c:	62 f2 3d 40 7f c1    	vpermt2ps zmm0,zmm24,zmm1
  a31882:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x690],zmm0
  a31889:	90 06 00 00 
  a3188d:	62 f1 6c 48 14 c1    	vunpcklps zmm0,zmm2,zmm1
  a31893:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x6f0],zmm0,0x3
  a3189a:	6f 03 
  a3189c:	62 f1 6c 48 15 c1    	vunpckhps zmm0,zmm2,zmm1
  a318a2:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a318a9:	c5 f8 13 84 16 00 07 	vmovlps QWORD PTR [rsi+rdx*1+0x700],xmm0
  a318b0:	00 00 
  a318b2:	62 f2 1d 40 7f d1    	vpermt2ps zmm2,zmm28,zmm1
  a318b8:	c5 fc 11 94 16 d0 06 	vmovups YMMWORD PTR [rsi+rdx*1+0x6d0],ymm2
  a318bf:	00 00 
  a318c1:	62 91 7c 48 28 c7    	vmovaps zmm0,zmm31
  a318c7:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x40]
  a318ce:	01 
  a318cf:	62 f2 3d 40 7f c1    	vpermt2ps zmm0,zmm24,zmm1
  a318d5:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x708],zmm0
  a318dc:	08 07 00 00 
  a318e0:	62 f1 04 40 14 c1    	vunpcklps zmm0,zmm31,zmm1
  a318e6:	62 f3 7d 48 19 84 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x768],zmm0,0x3
  a318ed:	68 07 00 00 03 
  a318f2:	62 f1 04 40 15 c1    	vunpckhps zmm0,zmm31,zmm1
  a318f8:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a318ff:	c5 f8 13 84 16 78 07 	vmovlps QWORD PTR [rsi+rdx*1+0x778],xmm0
  a31906:	00 00 
  a31908:	62 62 1d 40 7f f9    	vpermt2ps zmm31,zmm28,zmm1
  a3190e:	62 61 7c 28 11 bc 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x748],ymm31
  a31915:	48 07 00 00 
  a31919:	48 81 c2 80 07 00 00 	add    rdx,0x780
  a31920:	48 39 d0             	cmp    rax,rdx
  a31923:	0f 85 07 e3 ff ff    	jne    a2fc30 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  a31929:	48 89 ec             	mov    rsp,rbp
  a3192c:	5d                   	pop    rbp
  a3192d:	c5 f8 77             	vzeroupper
  a31930:	c3                   	ret
