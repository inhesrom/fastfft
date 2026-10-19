
target/ticket19/selection-fix/vector-stack-anchor/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a16d00 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a16d00:	55                   	push   rbp
  a16d01:	48 89 e5             	mov    rbp,rsp
  a16d04:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a16d08:	48 81 ec 00 0a 00 00 	sub    rsp,0xa00
  a16d0f:	c6 84 24 80 09 00 00 	mov    BYTE PTR [rsp+0x980],0x0
  a16d16:	00 
  a16d17:	48 8d 84 24 80 09 00 	lea    rax,[rsp+0x980]
  a16d1e:	00 
  a16d1f:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a16d24:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a16d29:	c5 f8 10 47 60       	vmovups xmm0,XMMWORD PTR [rdi+0x60]
  a16d2e:	c4 e3 79 21 47 64 10 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x64],0x10
  a16d35:	c4 e2 79 18 4f 68    	vbroadcastss xmm1,DWORD PTR [rdi+0x68]
  a16d3b:	62 f1 7c 48 10 1f    	vmovups zmm3,ZMMWORD PTR [rdi]
  a16d41:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a16d47:	c4 e3 79 21 47 6c 30 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x6c],0x30
  a16d4e:	c5 fc 10 4f 40       	vmovups ymm1,YMMWORD PTR [rdi+0x40]
  a16d53:	c5 fb 10 57 70       	vmovsd xmm2,QWORD PTR [rdi+0x70]
  a16d58:	c4 e3 7d 18 c2 01    	vinsertf128 ymm0,ymm0,xmm2,0x1
  a16d5e:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a16d65:	b0 7f                	mov    al,0x7f
  a16d67:	c5 fb 92 c8          	kmovd  k1,eax
  a16d6b:	62 e2 fd c9 88 c8    	vexpandpd zmm17{k1}{z},zmm0
  a16d71:	62 71 7c 48 28 2d c5 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff6786c5]        # 8f440 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c8f0>
  a16d78:	86 67 ff 
  a16d7b:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a16d81:	62 e1 7c 48 28 d3    	vmovaps zmm18,zmm3
  a16d87:	62 b2 15 48 7f c1    	vpermt2ps zmm0,zmm13,zmm17
  a16d8d:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a16d94:	01 
  a16d95:	62 f1 7c 48 10 9f f0 	vmovups zmm3,ZMMWORD PTR [rdi+0xf0]
  a16d9c:	00 00 00 
  a16d9f:	c5 f8 10 87 50 01 00 	vmovups xmm0,XMMWORD PTR [rdi+0x150]
  a16da6:	00 
  a16da7:	c4 e3 79 21 87 54 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x154],0x10
  a16dae:	00 00 10 
  a16db1:	c4 e2 79 18 8f 58 01 	vbroadcastss xmm1,DWORD PTR [rdi+0x158]
  a16db8:	00 00 
  a16dba:	c5 fc 10 97 30 01 00 	vmovups ymm2,YMMWORD PTR [rdi+0x130]
  a16dc1:	00 
  a16dc2:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a16dc8:	c4 e3 79 21 87 5c 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x15c],0x30
  a16dcf:	00 00 30 
  a16dd2:	c5 fb 10 8f 60 01 00 	vmovsd xmm1,QWORD PTR [rdi+0x160]
  a16dd9:	00 
  a16dda:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a16de0:	62 f3 ed 48 1a c0 01 	vinsertf64x4 zmm0,zmm2,ymm0,0x1
  a16de7:	62 e2 fd c9 88 d8    	vexpandpd zmm19{k1}{z},zmm0
  a16ded:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a16df3:	62 71 7c 48 28 cb    	vmovaps zmm9,zmm3
  a16df9:	62 b2 15 48 7f c3    	vpermt2ps zmm0,zmm13,zmm19
  a16dff:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a16e06:	02 
  a16e07:	62 f1 7c 48 10 9f a0 	vmovups zmm3,ZMMWORD PTR [rdi+0x5a0]
  a16e0e:	05 00 00 
  a16e11:	c5 f8 10 87 00 06 00 	vmovups xmm0,XMMWORD PTR [rdi+0x600]
  a16e18:	00 
  a16e19:	c4 e3 79 21 87 04 06 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x604],0x10
  a16e20:	00 00 10 
  a16e23:	c4 e2 79 18 8f 08 06 	vbroadcastss xmm1,DWORD PTR [rdi+0x608]
  a16e2a:	00 00 
  a16e2c:	c5 fc 10 97 e0 05 00 	vmovups ymm2,YMMWORD PTR [rdi+0x5e0]
  a16e33:	00 
  a16e34:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a16e3a:	c4 e3 79 21 87 0c 06 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x60c],0x30
  a16e41:	00 00 30 
  a16e44:	c5 fb 10 8f 10 06 00 	vmovsd xmm1,QWORD PTR [rdi+0x610]
  a16e4b:	00 
  a16e4c:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a16e52:	62 f3 ed 48 1a c0 01 	vinsertf64x4 zmm0,zmm2,ymm0,0x1
  a16e59:	62 e2 fd c9 88 e0    	vexpandpd zmm20{k1}{z},zmm0
  a16e5f:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a16e65:	62 71 7c 48 28 d3    	vmovaps zmm10,zmm3
  a16e6b:	62 b2 15 48 7f c4    	vpermt2ps zmm0,zmm13,zmm20
  a16e71:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  a16e78:	05 
  a16e79:	62 f1 7c 48 10 9f e0 	vmovups zmm3,ZMMWORD PTR [rdi+0x1e0]
  a16e80:	01 00 00 
  a16e83:	c5 f8 10 87 40 02 00 	vmovups xmm0,XMMWORD PTR [rdi+0x240]
  a16e8a:	00 
  a16e8b:	c4 e3 79 21 87 44 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x244],0x10
  a16e92:	00 00 10 
  a16e95:	c4 e2 79 18 8f 48 02 	vbroadcastss xmm1,DWORD PTR [rdi+0x248]
  a16e9c:	00 00 
  a16e9e:	c5 fc 10 97 20 02 00 	vmovups ymm2,YMMWORD PTR [rdi+0x220]
  a16ea5:	00 
  a16ea6:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a16eac:	c4 e3 79 21 87 4c 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x24c],0x30
  a16eb3:	00 00 30 
  a16eb6:	c5 fb 10 8f 50 02 00 	vmovsd xmm1,QWORD PTR [rdi+0x250]
  a16ebd:	00 
  a16ebe:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a16ec4:	62 f3 ed 48 1a c0 01 	vinsertf64x4 zmm0,zmm2,ymm0,0x1
  a16ecb:	62 e2 fd c9 88 e8    	vexpandpd zmm21{k1}{z},zmm0
  a16ed1:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a16ed7:	62 71 7c 48 28 db    	vmovaps zmm11,zmm3
  a16edd:	62 b2 15 48 7f c5    	vpermt2ps zmm0,zmm13,zmm21
  a16ee3:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a16eea:	04 
  a16eeb:	62 f1 7c 48 10 9f b0 	vmovups zmm3,ZMMWORD PTR [rdi+0x4b0]
  a16ef2:	04 00 00 
  a16ef5:	c5 f8 10 87 10 05 00 	vmovups xmm0,XMMWORD PTR [rdi+0x510]
  a16efc:	00 
  a16efd:	c4 e3 79 21 87 14 05 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x514],0x10
  a16f04:	00 00 10 
  a16f07:	c4 e2 79 18 8f 18 05 	vbroadcastss xmm1,DWORD PTR [rdi+0x518]
  a16f0e:	00 00 
  a16f10:	c5 fc 10 97 f0 04 00 	vmovups ymm2,YMMWORD PTR [rdi+0x4f0]
  a16f17:	00 
  a16f18:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a16f1e:	c4 e3 79 21 87 1c 05 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x51c],0x30
  a16f25:	00 00 30 
  a16f28:	c5 fb 10 8f 20 05 00 	vmovsd xmm1,QWORD PTR [rdi+0x520]
  a16f2f:	00 
  a16f30:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a16f36:	62 f3 ed 48 1a c0 01 	vinsertf64x4 zmm0,zmm2,ymm0,0x1
  a16f3d:	62 72 fd c9 88 f8    	vexpandpd zmm15{k1}{z},zmm0
  a16f43:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a16f49:	62 71 7c 48 28 e3    	vmovaps zmm12,zmm3
  a16f4f:	62 d2 15 48 7f c7    	vpermt2ps zmm0,zmm13,zmm15
  a16f55:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a16f5c:	03 
  a16f5d:	62 f1 7c 48 10 9f d0 	vmovups zmm3,ZMMWORD PTR [rdi+0x2d0]
  a16f64:	02 00 00 
  a16f67:	c5 f8 10 87 30 03 00 	vmovups xmm0,XMMWORD PTR [rdi+0x330]
  a16f6e:	00 
  a16f6f:	c4 e3 79 21 87 34 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x334],0x10
  a16f76:	00 00 10 
  a16f79:	c4 e2 79 18 8f 38 03 	vbroadcastss xmm1,DWORD PTR [rdi+0x338]
  a16f80:	00 00 
  a16f82:	c5 fc 10 97 10 03 00 	vmovups ymm2,YMMWORD PTR [rdi+0x310]
  a16f89:	00 
  a16f8a:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a16f90:	c4 e3 79 21 87 3c 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x33c],0x30
  a16f97:	00 00 30 
  a16f9a:	c5 fb 10 8f 40 03 00 	vmovsd xmm1,QWORD PTR [rdi+0x340]
  a16fa1:	00 
  a16fa2:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a16fa8:	62 f3 ed 48 1a c0 01 	vinsertf64x4 zmm0,zmm2,ymm0,0x1
  a16faf:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a16fb5:	62 f1 7c 48 28 cb    	vmovaps zmm1,zmm3
  a16fbb:	62 e1 7c 48 28 c3    	vmovaps zmm16,zmm3
  a16fc1:	62 f2 15 48 7f c8    	vpermt2ps zmm1,zmm13,zmm0
  a16fc7:	62 e1 7c 48 28 f1    	vmovaps zmm22,zmm1
  a16fcd:	62 61 7c 48 10 4f 0f 	vmovups zmm25,ZMMWORD PTR [rdi+0x3c0]
  a16fd4:	c5 f8 10 8f 20 04 00 	vmovups xmm1,XMMWORD PTR [rdi+0x420]
  a16fdb:	00 
  a16fdc:	c4 e3 71 21 8f 24 04 	vinsertps xmm1,xmm1,DWORD PTR [rdi+0x424],0x10
  a16fe3:	00 00 10 
  a16fe6:	c4 e2 79 18 97 28 04 	vbroadcastss xmm2,DWORD PTR [rdi+0x428]
  a16fed:	00 00 
  a16fef:	c5 fc 10 9f 00 04 00 	vmovups ymm3,YMMWORD PTR [rdi+0x400]
  a16ff6:	00 
  a16ff7:	c4 e3 69 0c c9 03    	vblendps xmm1,xmm2,xmm1,0x3
  a16ffd:	c4 e3 71 21 8f 2c 04 	vinsertps xmm1,xmm1,DWORD PTR [rdi+0x42c],0x30
  a17004:	00 00 30 
  a17007:	c5 fb 10 97 30 04 00 	vmovsd xmm2,QWORD PTR [rdi+0x430]
  a1700e:	00 
  a1700f:	c4 e3 75 18 ca 01    	vinsertf128 ymm1,ymm1,xmm2,0x1
  a17015:	62 f3 e5 48 1a c9 01 	vinsertf64x4 zmm1,zmm3,ymm1,0x1
  a1701c:	62 f2 fd c9 88 c9    	vexpandpd zmm1{k1}{z},zmm1
  a17022:	62 91 7c 48 28 d1    	vmovaps zmm2,zmm25
  a17028:	62 f2 15 48 7f d1    	vpermt2ps zmm2,zmm13,zmm1
  a1702e:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm2
  a17035:	07 
  a17036:	62 e1 7c 48 10 bf 48 	vmovups zmm23,ZMMWORD PTR [rdi+0x348]
  a1703d:	03 00 00 
  a17040:	c5 f8 10 97 a8 03 00 	vmovups xmm2,XMMWORD PTR [rdi+0x3a8]
  a17047:	00 
  a17048:	c4 e3 69 21 97 ac 03 	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x3ac],0x10
  a1704f:	00 00 10 
  a17052:	c4 e2 79 18 9f b0 03 	vbroadcastss xmm3,DWORD PTR [rdi+0x3b0]
  a17059:	00 00 
  a1705b:	c5 fc 10 a7 88 03 00 	vmovups ymm4,YMMWORD PTR [rdi+0x388]
  a17062:	00 
  a17063:	c4 e3 61 0c d2 03    	vblendps xmm2,xmm3,xmm2,0x3
  a17069:	c4 e3 69 21 97 b4 03 	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x3b4],0x30
  a17070:	00 00 30 
  a17073:	c5 fb 10 9f b8 03 00 	vmovsd xmm3,QWORD PTR [rdi+0x3b8]
  a1707a:	00 
  a1707b:	c4 e3 6d 18 d3 01    	vinsertf128 ymm2,ymm2,xmm3,0x1
  a17081:	62 f3 dd 48 1a d2 01 	vinsertf64x4 zmm2,zmm4,ymm2,0x1
  a17088:	62 62 fd c9 88 fa    	vexpandpd zmm31{k1}{z},zmm2
  a1708e:	62 31 7c 48 28 f7    	vmovaps zmm14,zmm23
  a17094:	62 12 15 48 7f f7    	vpermt2ps zmm14,zmm13,zmm31
  a1709a:	c5 f8 10 97 98 04 00 	vmovups xmm2,XMMWORD PTR [rdi+0x498]
  a170a1:	00 
  a170a2:	c5 fc 10 9f 78 04 00 	vmovups ymm3,YMMWORD PTR [rdi+0x478]
  a170a9:	00 
  a170aa:	c4 e3 69 21 97 9c 04 	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x49c],0x10
  a170b1:	00 00 10 
  a170b4:	c4 e2 79 18 a7 a0 04 	vbroadcastss xmm4,DWORD PTR [rdi+0x4a0]
  a170bb:	00 00 
  a170bd:	c4 e3 59 0c d2 03    	vblendps xmm2,xmm4,xmm2,0x3
  a170c3:	c4 e3 69 21 97 a4 04 	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x4a4],0x30
  a170ca:	00 00 30 
  a170cd:	c5 fb 10 a7 a8 04 00 	vmovsd xmm4,QWORD PTR [rdi+0x4a8]
  a170d4:	00 
  a170d5:	c4 e3 6d 18 d4 01    	vinsertf128 ymm2,ymm2,xmm4,0x1
  a170db:	62 f3 e5 48 1a da 01 	vinsertf64x4 zmm3,zmm3,ymm2,0x1
  a170e2:	c5 f8 10 97 b8 02 00 	vmovups xmm2,XMMWORD PTR [rdi+0x2b8]
  a170e9:	00 
  a170ea:	c5 fc 10 a7 98 02 00 	vmovups ymm4,YMMWORD PTR [rdi+0x298]
  a170f1:	00 
  a170f2:	c4 e3 69 21 97 bc 02 	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x2bc],0x10
  a170f9:	00 00 10 
  a170fc:	c4 e2 79 18 af c0 02 	vbroadcastss xmm5,DWORD PTR [rdi+0x2c0]
  a17103:	00 00 
  a17105:	c4 e3 51 0c d2 03    	vblendps xmm2,xmm5,xmm2,0x3
  a1710b:	c4 e3 69 21 97 c4 02 	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x2c4],0x30
  a17112:	00 00 30 
  a17115:	c5 fb 10 af c8 02 00 	vmovsd xmm5,QWORD PTR [rdi+0x2c8]
  a1711c:	00 
  a1711d:	c4 e3 6d 18 d5 01    	vinsertf128 ymm2,ymm2,xmm5,0x1
  a17123:	62 f3 dd 48 1a ea 01 	vinsertf64x4 zmm5,zmm4,ymm2,0x1
  a1712a:	c5 f8 10 97 88 05 00 	vmovups xmm2,XMMWORD PTR [rdi+0x588]
  a17131:	00 
  a17132:	c5 fc 10 a7 68 05 00 	vmovups ymm4,YMMWORD PTR [rdi+0x568]
  a17139:	00 
  a1713a:	c4 e3 69 21 97 8c 05 	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x58c],0x10
  a17141:	00 00 10 
  a17144:	c4 e2 79 18 b7 90 05 	vbroadcastss xmm6,DWORD PTR [rdi+0x590]
  a1714b:	00 00 
  a1714d:	c4 e3 49 0c d2 03    	vblendps xmm2,xmm6,xmm2,0x3
  a17153:	c4 e3 69 21 97 94 05 	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x594],0x30
  a1715a:	00 00 30 
  a1715d:	c5 fb 10 b7 98 05 00 	vmovsd xmm6,QWORD PTR [rdi+0x598]
  a17164:	00 
  a17165:	c4 e3 6d 18 d6 01    	vinsertf128 ymm2,ymm2,xmm6,0x1
  a1716b:	62 f3 dd 48 1a d2 01 	vinsertf64x4 zmm2,zmm4,ymm2,0x1
  a17172:	c5 f8 10 a7 c8 01 00 	vmovups xmm4,XMMWORD PTR [rdi+0x1c8]
  a17179:	00 
  a1717a:	c5 fc 10 b7 a8 01 00 	vmovups ymm6,YMMWORD PTR [rdi+0x1a8]
  a17181:	00 
  a17182:	c4 e3 59 21 a7 cc 01 	vinsertps xmm4,xmm4,DWORD PTR [rdi+0x1cc],0x10
  a17189:	00 00 10 
  a1718c:	c4 e2 79 18 bf d0 01 	vbroadcastss xmm7,DWORD PTR [rdi+0x1d0]
  a17193:	00 00 
  a17195:	c4 e3 41 0c e4 03    	vblendps xmm4,xmm7,xmm4,0x3
  a1719b:	c4 e3 59 21 a7 d4 01 	vinsertps xmm4,xmm4,DWORD PTR [rdi+0x1d4],0x30
  a171a2:	00 00 30 
  a171a5:	c5 fb 10 bf d8 01 00 	vmovsd xmm7,QWORD PTR [rdi+0x1d8]
  a171ac:	00 
  a171ad:	c4 e3 5d 18 e7 01    	vinsertf128 ymm4,ymm4,xmm7,0x1
  a171b3:	62 f3 cd 48 1a e4 01 	vinsertf64x4 zmm4,zmm6,ymm4,0x1
  a171ba:	c5 f8 10 b7 78 06 00 	vmovups xmm6,XMMWORD PTR [rdi+0x678]
  a171c1:	00 
  a171c2:	c5 fc 10 bf 58 06 00 	vmovups ymm7,YMMWORD PTR [rdi+0x658]
  a171c9:	00 
  a171ca:	c4 e3 49 21 b7 7c 06 	vinsertps xmm6,xmm6,DWORD PTR [rdi+0x67c],0x10
  a171d1:	00 00 10 
  a171d4:	c4 62 79 18 87 80 06 	vbroadcastss xmm8,DWORD PTR [rdi+0x680]
  a171db:	00 00 
  a171dd:	c4 e3 39 0c f6 03    	vblendps xmm6,xmm8,xmm6,0x3
  a171e3:	c4 e3 49 21 b7 84 06 	vinsertps xmm6,xmm6,DWORD PTR [rdi+0x684],0x30
  a171ea:	00 00 30 
  a171ed:	c5 7b 10 87 88 06 00 	vmovsd xmm8,QWORD PTR [rdi+0x688]
  a171f4:	00 
  a171f5:	c4 c3 4d 18 f0 01    	vinsertf128 ymm6,ymm6,xmm8,0x1
  a171fb:	c5 78 10 87 d8 00 00 	vmovups xmm8,XMMWORD PTR [rdi+0xd8]
  a17202:	00 
  a17203:	c4 63 39 21 87 dc 00 	vinsertps xmm8,xmm8,DWORD PTR [rdi+0xdc],0x10
  a1720a:	00 00 10 
  a1720d:	62 f3 c5 48 1a fe 01 	vinsertf64x4 zmm7,zmm7,ymm6,0x1
  a17214:	c4 e2 79 18 b7 e0 00 	vbroadcastss xmm6,DWORD PTR [rdi+0xe0]
  a1721b:	00 00 
  a1721d:	c4 c3 49 0c f0 03    	vblendps xmm6,xmm6,xmm8,0x3
  a17223:	c4 e3 49 21 b7 e4 00 	vinsertps xmm6,xmm6,DWORD PTR [rdi+0xe4],0x30
  a1722a:	00 00 30 
  a1722d:	c5 7b 10 87 e8 00 00 	vmovsd xmm8,QWORD PTR [rdi+0xe8]
  a17234:	00 
  a17235:	c4 c3 4d 18 f0 01    	vinsertf128 ymm6,ymm6,xmm8,0x1
  a1723b:	c5 7c 10 87 b8 00 00 	vmovups ymm8,YMMWORD PTR [rdi+0xb8]
  a17242:	00 
  a17243:	62 f3 bd 48 1a f6 01 	vinsertf64x4 zmm6,zmm8,ymm6,0x1
  a1724a:	62 61 7c 48 28 35 2c 	vmovaps zmm30,ZMMWORD PTR [rip+0xffffffffff67822c]        # 8f480 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c930>
  a17251:	82 67 ff 
  a17254:	62 31 7c 48 28 c0    	vmovaps zmm8,zmm16
  a1725a:	62 72 0d 40 7f c0    	vpermt2ps zmm8,zmm30,zmm0
  a17260:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm8
  a17267:	11 
  a17268:	62 e1 7c 48 10 87 38 	vmovups zmm16,ZMMWORD PTR [rdi+0x438]
  a1726f:	04 00 00 
  a17272:	62 f2 fd c9 88 c3    	vexpandpd zmm0{k1}{z},zmm3
  a17278:	62 62 0d 40 7f c9    	vpermt2ps zmm25,zmm30,zmm1
  a1727e:	62 61 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm25
  a17285:	12 
  a17286:	62 21 7c 48 28 c0    	vmovaps zmm24,zmm16
  a1728c:	62 62 15 48 7f c0    	vpermt2ps zmm24,zmm13,zmm0
  a17292:	62 32 0d 40 7f cb    	vpermt2ps zmm9,zmm30,zmm19
  a17298:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm9
  a1729f:	16 
  a172a0:	62 f1 7c 48 10 9f 58 	vmovups zmm3,ZMMWORD PTR [rdi+0x258]
  a172a7:	02 00 00 
  a172aa:	62 f2 fd c9 88 cd    	vexpandpd zmm1{k1}{z},zmm5
  a172b0:	62 32 0d 40 7f d4    	vpermt2ps zmm10,zmm30,zmm20
  a172b6:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm10
  a172bd:	0b 
  a172be:	62 61 7c 48 28 d3    	vmovaps zmm26,zmm3
  a172c4:	62 f1 7c 48 28 eb    	vmovaps zmm5,zmm3
  a172ca:	62 62 15 48 7f d1    	vpermt2ps zmm26,zmm13,zmm1
  a172d0:	62 32 0d 40 7f dd    	vpermt2ps zmm11,zmm30,zmm21
  a172d6:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm11
  a172dd:	13 
  a172de:	62 e1 7c 48 10 9f 18 	vmovups zmm19,ZMMWORD PTR [rdi+0x618]
  a172e5:	06 00 00 
  a172e8:	62 f2 fd c9 88 df    	vexpandpd zmm3{k1}{z},zmm7
  a172ee:	62 52 0d 40 7f e7    	vpermt2ps zmm12,zmm30,zmm15
  a172f4:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm12
  a172fb:	0a 
  a172fc:	62 21 7c 48 28 db    	vmovaps zmm27,zmm19
  a17302:	62 62 15 48 7f db    	vpermt2ps zmm27,zmm13,zmm3
  a17308:	62 e2 0d 40 7f db    	vpermt2ps zmm19,zmm30,zmm3
  a1730e:	62 a1 7c 48 28 e3    	vmovaps zmm20,zmm19
  a17314:	62 e1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm19
  a1731b:	0c 
  a1731c:	62 f1 7c 48 10 9f 28 	vmovups zmm3,ZMMWORD PTR [rdi+0x528]
  a17323:	05 00 00 
  a17326:	62 f2 fd c9 88 d2    	vexpandpd zmm2{k1}{z},zmm2
  a1732c:	62 61 7c 48 28 e3    	vmovaps zmm28,zmm3
  a17332:	62 f1 7c 48 28 fb    	vmovaps zmm7,zmm3
  a17338:	62 62 15 48 7f e2    	vpermt2ps zmm28,zmm13,zmm2
  a1733e:	62 f2 fd c9 88 dc    	vexpandpd zmm3{k1}{z},zmm4
  a17344:	62 f1 7c 48 10 a7 68 	vmovups zmm4,ZMMWORD PTR [rdi+0x168]
  a1734b:	01 00 00 
  a1734e:	62 61 7c 48 28 ec    	vmovaps zmm29,zmm4
  a17354:	62 71 7c 48 28 fc    	vmovaps zmm15,zmm4
  a1735a:	62 62 15 48 7f eb    	vpermt2ps zmm29,zmm13,zmm3
  a17360:	62 f2 fd c9 88 e6    	vexpandpd zmm4{k1}{z},zmm6
  a17366:	62 f1 7c 48 10 b7 78 	vmovups zmm6,ZMMWORD PTR [rdi+0x78]
  a1736d:	00 00 00 
  a17370:	62 72 4d 48 77 ec    	vpermi2ps zmm13,zmm6,zmm4
  a17376:	62 f2 0d 40 7f f4    	vpermt2ps zmm6,zmm30,zmm4
  a1737c:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm6
  a17383:	1a 
  a17384:	62 e2 0d 40 7f c0    	vpermt2ps zmm16,zmm30,zmm0
  a1738a:	62 e1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm16
  a17391:	0f 
  a17392:	62 f2 0d 40 7f e9    	vpermt2ps zmm5,zmm30,zmm1
  a17398:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm5
  a1739f:	08 
  a173a0:	62 f2 0d 40 7f fa    	vpermt2ps zmm7,zmm30,zmm2
  a173a6:	62 f1 7c 48 28 c7    	vmovaps zmm0,zmm7
  a173ac:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm7
  a173b3:	0e 
  a173b4:	62 72 0d 40 7f fb    	vpermt2ps zmm15,zmm30,zmm3
  a173ba:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm15
  a173c1:	10 
  a173c2:	62 d1 34 48 5c d2    	vsubps zmm2,zmm9,zmm10
  a173c8:	62 a2 0d 40 7f d1    	vpermt2ps zmm18,zmm30,zmm17
  a173ce:	62 e1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm18
  a173d5:	14 
  a173d6:	62 d1 24 48 5c dc    	vsubps zmm3,zmm11,zmm12
  a173dc:	62 82 0d 40 7f ff    	vpermt2ps zmm23,zmm30,zmm31
  a173e2:	62 e2 7d 48 18 1d a4 	vbroadcastss zmm19,DWORD PTR [rip+0xffffffffff65e0a4]        # 75490 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2940>
  a173e9:	e0 65 ff 
  a173ec:	62 a1 64 48 59 cb    	vmulps zmm17,zmm3,zmm19
  a173f2:	62 f2 7d 48 18 3d 64 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff65e264]        # 75660 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b10>
  a173f9:	e2 65 ff 
  a173fc:	62 e2 6d 48 b8 cf    	vfmadd231ps zmm17,zmm2,zmm7
  a17402:	62 f2 7d 48 18 25 dc 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff65e1dc]        # 755e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a98>
  a17409:	e1 65 ff 
  a1740c:	62 61 6c 48 59 fc    	vmulps zmm31,zmm2,zmm4
  a17412:	62 62 65 48 bc ff    	vfnmadd231ps zmm31,zmm3,zmm7
  a17418:	62 31 6c 48 59 db    	vmulps zmm11,zmm2,zmm19
  a1741e:	62 72 5d 48 bc db    	vfnmadd231ps zmm11,zmm4,zmm3
  a17424:	62 91 3c 48 5c d1    	vsubps zmm2,zmm8,zmm25
  a1742a:	62 e2 6d 48 b8 cc    	vfmadd231ps zmm17,zmm2,zmm4
  a17430:	62 22 6d 48 b8 fb    	vfmadd231ps zmm31,zmm2,zmm19
  a17436:	62 72 45 48 bc da    	vfnmadd231ps zmm11,zmm7,zmm2
  a1743c:	62 f1 7c 40 5c d5    	vsubps zmm2,zmm16,zmm5
  a17442:	62 d1 7c 48 5c df    	vsubps zmm3,zmm0,zmm15
  a17448:	62 31 64 48 59 fb    	vmulps zmm15,zmm3,zmm19
  a1744e:	62 72 6d 48 b8 ff    	vfmadd231ps zmm15,zmm2,zmm7
  a17454:	62 71 6c 48 59 cc    	vmulps zmm9,zmm2,zmm4
  a1745a:	62 72 65 48 bc cf    	vfnmadd231ps zmm9,zmm3,zmm7
  a17460:	62 31 6c 48 59 c3    	vmulps zmm8,zmm2,zmm19
  a17466:	62 72 5d 48 bc c3    	vfnmadd231ps zmm8,zmm4,zmm3
  a1746c:	62 f1 5c 40 5c d6    	vsubps zmm2,zmm20,zmm6
  a17472:	62 72 6d 48 b8 fc    	vfmadd231ps zmm15,zmm2,zmm4
  a17478:	62 32 6d 48 b8 cb    	vfmadd231ps zmm9,zmm2,zmm19
  a1747e:	62 72 45 48 bc c2    	vfnmadd231ps zmm8,zmm7,zmm2
  a17484:	62 e1 7c 48 28 64 24 	vmovaps zmm20,ZMMWORD PTR [rsp+0x80]
  a1748b:	02 
  a1748c:	62 e1 7c 48 28 54 24 	vmovaps zmm18,ZMMWORD PTR [rsp+0x140]
  a17493:	05 
  a17494:	62 b1 5c 40 5c d2    	vsubps zmm2,zmm20,zmm18
  a1749a:	62 e1 7c 48 28 6c 24 	vmovaps zmm21,ZMMWORD PTR [rsp+0x100]
  a174a1:	04 
  a174a2:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0xc0]
  a174a9:	03 
  a174aa:	62 b1 54 40 5c d8    	vsubps zmm3,zmm21,zmm16
  a174b0:	62 21 64 48 59 cb    	vmulps zmm25,zmm3,zmm19
  a174b6:	62 62 6d 48 b8 cf    	vfmadd231ps zmm25,zmm2,zmm7
  a174bc:	62 61 6c 48 59 f4    	vmulps zmm30,zmm2,zmm4
  a174c2:	62 62 65 48 bc f7    	vfnmadd231ps zmm30,zmm3,zmm7
  a174c8:	62 31 6c 48 59 e3    	vmulps zmm12,zmm2,zmm19
  a174ce:	62 72 5d 48 bc e3    	vfnmadd231ps zmm12,zmm4,zmm3
  a174d4:	62 b1 7c 48 28 f6    	vmovaps zmm6,zmm22
  a174da:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x1c0]
  a174e1:	07 
  a174e2:	62 f1 4c 40 5c dd    	vsubps zmm3,zmm22,zmm5
  a174e8:	62 62 65 48 b8 cc    	vfmadd231ps zmm25,zmm3,zmm4
  a174ee:	62 91 3c 40 5c d2    	vsubps zmm2,zmm24,zmm26
  a174f4:	62 91 1c 40 5c c5    	vsubps zmm0,zmm28,zmm29
  a174fa:	62 a1 7c 48 59 f3    	vmulps zmm22,zmm0,zmm19
  a17500:	62 e2 6d 48 b8 f7    	vfmadd231ps zmm22,zmm2,zmm7
  a17506:	62 d1 24 40 5c cd    	vsubps zmm1,zmm27,zmm13
  a1750c:	62 e2 75 48 b8 f4    	vfmadd231ps zmm22,zmm1,zmm4
  a17512:	62 71 6c 48 59 d4    	vmulps zmm10,zmm2,zmm4
  a17518:	62 b1 6c 48 59 d3    	vmulps zmm2,zmm2,zmm19
  a1751e:	62 f2 7d 48 bc d4    	vfnmadd231ps zmm2,zmm0,zmm4
  a17524:	62 72 7d 48 bc d7    	vfnmadd231ps zmm10,zmm0,zmm7
  a1752a:	62 22 65 48 b8 f3    	vfmadd231ps zmm30,zmm3,zmm19
  a17530:	62 32 75 48 b8 d3    	vfmadd231ps zmm10,zmm1,zmm19
  a17536:	62 72 45 48 bc e3    	vfnmadd231ps zmm12,zmm7,zmm3
  a1753c:	62 f2 75 48 bc d7    	vfnmadd231ps zmm2,zmm1,zmm7
  a17542:	62 b1 5c 40 58 da    	vaddps zmm3,zmm20,zmm18
  a17548:	62 b1 54 40 58 e0    	vaddps zmm4,zmm21,zmm16
  a1754e:	62 f1 4c 48 58 ed    	vaddps zmm5,zmm6,zmm5
  a17554:	62 81 3c 40 58 da    	vaddps zmm19,zmm24,zmm26
  a1755a:	62 01 1c 40 58 d5    	vaddps zmm26,zmm28,zmm29
  a17560:	62 51 24 40 58 ed    	vaddps zmm13,zmm27,zmm13
  a17566:	62 f2 7d 48 18 05 84 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff65e084]        # 755f4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa4>
  a1756d:	e0 65 ff 
  a17570:	62 61 7c 48 28 d8    	vmovaps zmm27,zmm0
  a17576:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x40]
  a1757d:	01 
  a1757e:	62 62 65 48 a8 de    	vfmadd213ps zmm27,zmm3,zmm6
  a17584:	62 62 7d 48 18 05 4a 	vbroadcastss zmm24,DWORD PTR [rip+0xffffffffff65e04a]        # 755d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a88>
  a1758b:	e0 65 ff 
  a1758e:	62 01 7c 48 28 e0    	vmovaps zmm28,zmm24
  a17594:	62 62 65 48 ac e6    	vfnmadd213ps zmm28,zmm3,zmm6
  a1759a:	62 61 4c 48 58 eb    	vaddps zmm29,zmm6,zmm3
  a175a0:	62 f2 7d 48 18 0d 22 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff65dd22]        # 752cc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x277c>
  a175a7:	dd 65 ff 
  a175aa:	62 f2 75 48 bc f3    	vfnmadd231ps zmm6,zmm1,zmm3
  a175b0:	62 f1 14 40 58 dc    	vaddps zmm3,zmm29,zmm4
  a175b6:	62 62 5d 48 bc d9    	vfnmadd231ps zmm27,zmm4,zmm1
  a175bc:	62 62 5d 48 b8 e0    	vfmadd231ps zmm28,zmm4,zmm0
  a175c2:	62 f2 3d 40 bc f4    	vfnmadd231ps zmm6,zmm24,zmm4
  a175c8:	62 f1 64 48 58 e5    	vaddps zmm4,zmm3,zmm5
  a175ce:	62 02 55 48 bc d8    	vfnmadd231ps zmm27,zmm5,zmm24
  a175d4:	62 62 55 48 bc e1    	vfnmadd231ps zmm28,zmm5,zmm1
  a175da:	62 f2 7d 48 b8 f5    	vfmadd231ps zmm6,zmm0,zmm5
  a175e0:	62 f1 7c 48 28 d8    	vmovaps zmm3,zmm0
  a175e6:	62 d2 65 40 a8 de    	vfmadd213ps zmm3,zmm19,zmm14
  a175ec:	62 91 7c 48 28 e8    	vmovaps zmm5,zmm24
  a175f2:	62 d2 65 40 ac ee    	vfnmadd213ps zmm5,zmm19,zmm14
  a175f8:	62 21 0c 48 58 eb    	vaddps zmm29,zmm14,zmm19
  a175fe:	62 32 75 48 bc f3    	vfnmadd231ps zmm14,zmm1,zmm19
  a17604:	62 81 14 40 58 da    	vaddps zmm19,zmm29,zmm26
  a1760a:	62 f2 2d 40 bc d9    	vfnmadd231ps zmm3,zmm26,zmm1
  a17610:	62 f2 2d 40 b8 e8    	vfmadd231ps zmm5,zmm26,zmm0
  a17616:	62 12 3d 40 bc f2    	vfnmadd231ps zmm14,zmm24,zmm26
  a1761c:	62 c1 64 40 58 dd    	vaddps zmm19,zmm19,zmm13
  a17622:	62 92 15 48 bc d8    	vfnmadd231ps zmm3,zmm13,zmm24
  a17628:	62 f2 15 48 bc e9    	vfnmadd231ps zmm5,zmm13,zmm1
  a1762e:	62 52 7d 48 b8 f5    	vfmadd231ps zmm14,zmm0,zmm13
  a17634:	62 51 4c 48 5c eb    	vsubps zmm13,zmm6,zmm11
  a1763a:	62 51 4c 48 58 db    	vaddps zmm11,zmm6,zmm11
  a17640:	62 c1 0c 48 5c c0    	vsubps zmm16,zmm14,zmm8
  a17646:	62 d1 0c 48 58 f8    	vaddps zmm7,zmm14,zmm8
  a1764c:	62 11 1c 40 5c f7    	vsubps zmm14,zmm28,zmm31
  a17652:	62 01 1c 40 58 e7    	vaddps zmm28,zmm28,zmm31
  a17658:	62 41 54 48 5c f9    	vsubps zmm31,zmm5,zmm9
  a1765e:	62 51 54 48 58 c9    	vaddps zmm9,zmm5,zmm9
  a17664:	62 b1 24 40 58 e9    	vaddps zmm5,zmm27,zmm17
  a1766a:	62 a1 24 40 5c c9    	vsubps zmm17,zmm27,zmm17
  a17670:	62 41 64 48 58 df    	vaddps zmm27,zmm3,zmm15
  a17676:	62 d1 64 48 5c df    	vsubps zmm3,zmm3,zmm15
  a1767c:	62 01 54 48 58 d3    	vaddps zmm26,zmm5,zmm27
  a17682:	62 91 54 48 5c eb    	vsubps zmm5,zmm5,zmm27
  a17688:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm5
  a1768f:	05 
  a17690:	62 f1 24 48 58 ef    	vaddps zmm5,zmm11,zmm7
  a17696:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm5
  a1769d:	02 
  a1769e:	62 f1 24 48 5c ef    	vsubps zmm5,zmm11,zmm7
  a176a4:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm5
  a176ab:	0d 
  a176ac:	62 b1 14 48 58 e8    	vaddps zmm5,zmm13,zmm16
  a176b2:	62 b1 14 48 5c f0    	vsubps zmm6,zmm13,zmm16
  a176b8:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm6
  a176bf:	04 
  a176c0:	62 f1 74 40 58 f3    	vaddps zmm6,zmm17,zmm3
  a176c6:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm6
  a176cd:	06 
  a176ce:	62 f1 74 40 5c db    	vsubps zmm3,zmm17,zmm3
  a176d4:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm3
  a176db:	09 
  a176dc:	62 d1 1c 40 58 d9    	vaddps zmm3,zmm28,zmm9
  a176e2:	62 d1 1c 40 5c f1    	vsubps zmm6,zmm28,zmm9
  a176e8:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm6
  a176ef:	01 
  a176f0:	62 91 0c 48 58 f7    	vaddps zmm6,zmm14,zmm31
  a176f6:	62 91 0c 48 5c ff    	vsubps zmm7,zmm14,zmm31
  a176fc:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm7
  a17703:	03 
  a17704:	62 31 5c 48 58 c3    	vaddps zmm8,zmm4,zmm19
  a1770a:	62 b1 5c 48 5c e3    	vsubps zmm4,zmm4,zmm19
  a17710:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm4
  a17717:	15 
  a17718:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x580]
  a1771f:	16 
  a17720:	62 f1 5c 48 58 64 24 	vaddps zmm4,zmm4,ZMMWORD PTR [rsp+0x2c0]
  a17727:	0b 
  a17728:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x4c0]
  a1772f:	13 
  a17730:	62 f1 44 48 58 7c 24 	vaddps zmm7,zmm7,ZMMWORD PTR [rsp+0x280]
  a17737:	0a 
  a17738:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x440]
  a1773f:	11 
  a17740:	62 71 34 48 58 5c 24 	vaddps zmm11,zmm9,ZMMWORD PTR [rsp+0x480]
  a17747:	12 
  a17748:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x3c0]
  a1774f:	0f 
  a17750:	62 71 34 48 58 6c 24 	vaddps zmm13,zmm9,ZMMWORD PTR [rsp+0x200]
  a17757:	08 
  a17758:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x380]
  a1775f:	0e 
  a17760:	62 71 34 48 58 74 24 	vaddps zmm14,zmm9,ZMMWORD PTR [rsp+0x400]
  a17767:	10 
  a17768:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x300]
  a1776f:	0c 
  a17770:	62 e1 34 48 58 44 24 	vaddps zmm16,zmm9,ZMMWORD PTR [rsp+0x680]
  a17777:	1a 
  a17778:	62 e1 7c 48 28 c8    	vmovaps zmm17,zmm0
  a1777e:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x500]
  a17785:	14 
  a17786:	62 c2 5d 48 a8 c9    	vfmadd213ps zmm17,zmm4,zmm9
  a1778c:	62 81 7c 48 28 d8    	vmovaps zmm19,zmm24
  a17792:	62 c2 5d 48 ac d9    	vfnmadd213ps zmm19,zmm4,zmm9
  a17798:	62 e1 34 48 58 e4    	vaddps zmm20,zmm9,zmm4
  a1779e:	62 72 75 48 bc cc    	vfnmadd231ps zmm9,zmm1,zmm4
  a177a4:	62 f1 5c 40 58 e7    	vaddps zmm4,zmm20,zmm7
  a177aa:	62 e2 45 48 bc c9    	vfnmadd231ps zmm17,zmm7,zmm1
  a177b0:	62 e2 45 48 b8 d8    	vfmadd231ps zmm19,zmm7,zmm0
  a177b6:	62 72 3d 40 bc cf    	vfnmadd231ps zmm9,zmm24,zmm7
  a177bc:	62 f1 7c 48 28 f8    	vmovaps zmm7,zmm0
  a177c2:	62 b2 15 48 a8 ff    	vfmadd213ps zmm7,zmm13,zmm23
  a177c8:	62 81 7c 48 28 e0    	vmovaps zmm20,zmm24
  a177ce:	62 a2 15 48 ac e7    	vfnmadd213ps zmm20,zmm13,zmm23
  a177d4:	62 c1 44 40 58 ed    	vaddps zmm21,zmm23,zmm13
  a177da:	62 e2 15 48 bc f9    	vfnmadd231ps zmm23,zmm13,zmm1
  a177e0:	62 82 25 48 bc c8    	vfnmadd231ps zmm17,zmm11,zmm24
  a177e6:	62 f2 0d 48 bc f9    	vfnmadd231ps zmm7,zmm14,zmm1
  a177ec:	62 92 7d 40 bc f8    	vfnmadd231ps zmm7,zmm16,zmm24
  a177f2:	62 82 0d 48 bc f8    	vfnmadd231ps zmm23,zmm14,zmm24
  a177f8:	62 51 54 40 58 ee    	vaddps zmm13,zmm21,zmm14
  a177fe:	62 e2 0d 48 b8 e0    	vfmadd231ps zmm20,zmm14,zmm0
  a17804:	62 e2 25 48 bc d9    	vfnmadd231ps zmm19,zmm11,zmm1
  a1780a:	62 e2 7d 40 bc e1    	vfnmadd231ps zmm20,zmm16,zmm1
  a17810:	62 f1 7c 48 28 0d a6 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6af7a6]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a17817:	f7 6a ff 
  a1781a:	62 51 5c 48 58 f3    	vaddps zmm14,zmm4,zmm11
  a17820:	62 52 7d 48 b8 cb    	vfmadd231ps zmm9,zmm0,zmm11
  a17826:	62 c1 7c 48 28 e8    	vmovaps zmm21,zmm8
  a1782c:	62 41 7c 48 28 d8    	vmovaps zmm27,zmm8
  a17832:	62 82 75 48 7f ea    	vpermt2ps zmm21,zmm1,zmm26
  a17838:	62 e2 7d 40 b8 f8    	vfmadd231ps zmm23,zmm16,zmm0
  a1783e:	62 61 7c 48 28 ee    	vmovaps zmm29,zmm6
  a17844:	62 61 7c 48 28 c6    	vmovaps zmm24,zmm6
  a1784a:	62 62 75 48 7f ed    	vpermt2ps zmm29,zmm1,zmm5
  a17850:	62 a1 14 48 58 c0    	vaddps zmm16,zmm13,zmm16
  a17856:	62 d1 1c 48 58 c1    	vaddps zmm0,zmm12,zmm9
  a1785c:	62 d1 34 48 5c e4    	vsubps zmm4,zmm9,zmm12
  a17862:	62 31 6c 48 58 c7    	vaddps zmm8,zmm2,zmm23
  a17868:	62 f1 44 40 5c d2    	vsubps zmm2,zmm23,zmm2
  a1786e:	62 31 0c 40 58 db    	vaddps zmm11,zmm30,zmm19
  a17874:	62 11 64 40 5c fe    	vsubps zmm15,zmm19,zmm30
  a1787a:	62 a1 2c 48 58 dc    	vaddps zmm19,zmm10,zmm20
  a17880:	62 d1 5c 40 5c f2    	vsubps zmm6,zmm20,zmm10
  a17886:	62 11 74 40 5c e9    	vsubps zmm13,zmm17,zmm25
  a1788c:	62 a1 34 40 58 c9    	vaddps zmm17,zmm25,zmm17
  a17892:	62 a1 44 48 5c d6    	vsubps zmm18,zmm7,zmm22
  a17898:	62 f1 4c 40 58 ff    	vaddps zmm7,zmm22,zmm7
  a1789e:	62 a1 14 48 58 fa    	vaddps zmm23,zmm13,zmm18
  a178a4:	62 21 14 48 5c f2    	vsubps zmm30,zmm13,zmm18
  a178aa:	62 e1 5c 48 58 f2    	vaddps zmm22,zmm4,zmm2
  a178b0:	62 71 5c 48 5c e2    	vsubps zmm12,zmm4,zmm2
  a178b6:	62 d1 7c 48 58 e0    	vaddps zmm4,zmm0,zmm8
  a178bc:	62 41 7c 48 5c e0    	vsubps zmm28,zmm0,zmm8
  a178c2:	62 71 74 40 58 ef    	vaddps zmm13,zmm17,zmm7
  a178c8:	62 71 74 40 5c c7    	vsubps zmm8,zmm17,zmm7
  a178ce:	62 61 04 48 58 ce    	vaddps zmm25,zmm15,zmm6
  a178d4:	62 61 04 48 5c fe    	vsubps zmm31,zmm15,zmm6
  a178da:	62 a1 24 48 58 d3    	vaddps zmm18,zmm11,zmm19
  a178e0:	62 31 24 48 5c db    	vsubps zmm11,zmm11,zmm19
  a178e6:	62 a1 0c 48 58 c8    	vaddps zmm17,zmm14,zmm16
  a178ec:	62 a1 0c 48 5c c0    	vsubps zmm16,zmm14,zmm16
  a178f2:	62 71 7c 48 28 3d 84 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff6af684]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a178f9:	f6 6a ff 
  a178fc:	62 02 05 48 7f da    	vpermt2ps zmm27,zmm15,zmm26
  a17902:	62 61 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm27
  a17909:	07 
  a1790a:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x80]
  a17911:	02 
  a17912:	62 71 7c 48 28 c8    	vmovaps zmm9,zmm0
  a17918:	62 72 75 48 7f cb    	vpermt2ps zmm9,zmm1,zmm3
  a1791e:	62 62 05 48 7f c5    	vpermt2ps zmm24,zmm15,zmm5
  a17924:	62 61 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm24
  a1792b:	0b 
  a1792c:	62 a1 64 00 57 db    	vxorps xmm19,xmm19,xmm19
  a17932:	62 f2 05 48 7f c3    	vpermt2ps zmm0,zmm15,zmm3
  a17938:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a1793f:	02 
  a17940:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x140]
  a17947:	05 
  a17948:	62 f1 7c 48 28 f2    	vmovaps zmm6,zmm2
  a1794e:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x340]
  a17955:	0d 
  a17956:	62 f2 75 48 7f f0    	vpermt2ps zmm6,zmm1,zmm0
  a1795c:	62 f2 05 48 7f d0    	vpermt2ps zmm2,zmm15,zmm0
  a17962:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm2
  a17969:	05 
  a1796a:	62 61 7c 48 28 5c 24 	vmovaps zmm27,ZMMWORD PTR [rsp+0x100]
  a17971:	04 
  a17972:	62 81 7c 48 28 e3    	vmovaps zmm20,zmm27
  a17978:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x240]
  a1797f:	09 
  a17980:	62 e2 75 48 7f e0    	vpermt2ps zmm20,zmm1,zmm0
  a17986:	62 62 05 48 7f d8    	vpermt2ps zmm27,zmm15,zmm0
  a1798c:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x40]
  a17993:	01 
  a17994:	62 f1 7c 48 28 ea    	vmovaps zmm5,zmm2
  a1799a:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc0]
  a179a1:	03 
  a179a2:	62 f2 75 48 7f e8    	vpermt2ps zmm5,zmm1,zmm0
  a179a8:	62 f2 05 48 7f d0    	vpermt2ps zmm2,zmm15,zmm0
  a179ae:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm2
  a179b5:	01 
  a179b6:	62 31 7c 48 28 f1    	vmovaps zmm14,zmm17
  a179bc:	62 32 75 48 7f f7    	vpermt2ps zmm14,zmm1,zmm23
  a179c2:	62 a2 05 48 7f cf    	vpermt2ps zmm17,zmm15,zmm23
  a179c8:	62 31 7c 48 28 d2    	vmovaps zmm10,zmm18
  a179ce:	62 72 75 48 7f d4    	vpermt2ps zmm10,zmm1,zmm4
  a179d4:	62 e2 05 48 7f d4    	vpermt2ps zmm18,zmm15,zmm4
  a179da:	62 b1 7c 48 28 c6    	vmovaps zmm0,zmm22
  a179e0:	62 82 75 48 7f f1    	vpermt2ps zmm22,zmm1,zmm25
  a179e6:	62 92 05 48 7f c1    	vpermt2ps zmm0,zmm15,zmm25
  a179ec:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a179f3:	04 
  a179f4:	62 91 7c 48 28 de    	vmovaps zmm3,zmm30
  a179fa:	62 d2 75 48 7f dc    	vpermt2ps zmm3,zmm1,zmm12
  a17a00:	62 42 05 48 7f f4    	vpermt2ps zmm30,zmm15,zmm12
  a17a06:	62 61 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm30
  a17a0d:	03 
  a17a0e:	62 11 7c 48 28 e4    	vmovaps zmm12,zmm28
  a17a14:	62 52 75 48 7f e0    	vpermt2ps zmm12,zmm1,zmm8
  a17a1a:	62 42 05 48 7f e0    	vpermt2ps zmm28,zmm15,zmm8
  a17a20:	62 01 7c 48 28 c7    	vmovaps zmm24,zmm31
  a17a26:	62 42 75 48 7f c3    	vpermt2ps zmm24,zmm1,zmm11
  a17a2c:	62 42 05 48 7f fb    	vpermt2ps zmm31,zmm15,zmm11
  a17a32:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a17a39:	06 
  a17a3a:	62 f1 7c 48 28 e0    	vmovaps zmm4,zmm0
  a17a40:	62 b2 75 48 7f e3    	vpermt2ps zmm4,zmm1,zmm19
  a17a46:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x540]
  a17a4d:	15 
  a17a4e:	62 71 7c 48 28 c2    	vmovaps zmm8,zmm2
  a17a54:	62 32 75 48 7f c3    	vpermt2ps zmm8,zmm1,zmm19
  a17a5a:	62 41 7c 48 28 f5    	vmovaps zmm30,zmm13
  a17a60:	62 22 75 48 7f f3    	vpermt2ps zmm30,zmm1,zmm19
  a17a66:	62 b2 7d 40 77 cb    	vpermi2ps zmm1,zmm16,zmm19
  a17a6c:	62 b2 05 48 7f c3    	vpermt2ps zmm0,zmm15,zmm19
  a17a72:	62 b2 05 48 7f d3    	vpermt2ps zmm2,zmm15,zmm19
  a17a78:	62 32 05 48 7f eb    	vpermt2ps zmm13,zmm15,zmm19
  a17a7e:	62 a2 05 48 7f c3    	vpermt2ps zmm16,zmm15,zmm19
  a17a84:	62 61 7c 48 28 0d 72 	vmovaps zmm25,ZMMWORD PTR [rip+0xffffffffff6af472]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a17a8b:	f4 6a ff 
  a17a8e:	62 a1 7c 48 28 fd    	vmovaps zmm23,zmm21
  a17a94:	62 82 35 40 7f fd    	vpermt2ps zmm23,zmm25,zmm29
  a17a9a:	62 71 7c 48 28 1d 9c 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff6af49c]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a17aa1:	f4 6a ff 
  a17aa4:	62 82 25 48 7f ed    	vpermt2ps zmm21,zmm11,zmm29
  a17aaa:	62 e1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm21
  a17ab1:	09 
  a17ab2:	62 d1 7c 48 28 f9    	vmovaps zmm7,zmm9
  a17ab8:	62 f2 35 40 7f fc    	vpermt2ps zmm7,zmm25,zmm4
  a17abe:	62 72 25 48 7f cc    	vpermt2ps zmm9,zmm11,zmm4
  a17ac4:	62 e1 7c 48 28 de    	vmovaps zmm19,zmm6
  a17aca:	62 a2 35 40 7f dc    	vpermt2ps zmm19,zmm25,zmm20
  a17ad0:	62 b2 25 48 7f f4    	vpermt2ps zmm6,zmm11,zmm20
  a17ad6:	62 e1 7c 48 28 e5    	vmovaps zmm20,zmm5
  a17adc:	62 c2 35 40 7f e0    	vpermt2ps zmm20,zmm25,zmm8
  a17ae2:	62 d2 25 48 7f e8    	vpermt2ps zmm5,zmm11,zmm8
  a17ae8:	62 c1 7c 48 28 ee    	vmovaps zmm21,zmm14
  a17aee:	62 c2 35 40 7f ea    	vpermt2ps zmm21,zmm25,zmm10
  a17af4:	62 52 25 48 7f f2    	vpermt2ps zmm14,zmm11,zmm10
  a17afa:	62 21 7c 48 28 d6    	vmovaps zmm26,zmm22
  a17b00:	62 02 35 40 7f d6    	vpermt2ps zmm26,zmm25,zmm30
  a17b06:	62 82 25 48 7f f6    	vpermt2ps zmm22,zmm11,zmm30
  a17b0c:	62 f1 7c 48 28 e3    	vmovaps zmm4,zmm3
  a17b12:	62 d2 35 40 7f e4    	vpermt2ps zmm4,zmm25,zmm12
  a17b18:	62 d2 25 48 7f dc    	vpermt2ps zmm3,zmm11,zmm12
  a17b1e:	62 11 7c 48 28 c0    	vmovaps zmm8,zmm24
  a17b24:	62 72 35 40 7f c1    	vpermt2ps zmm8,zmm25,zmm1
  a17b2a:	62 62 25 48 7f c1    	vpermt2ps zmm24,zmm11,zmm1
  a17b30:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x1c0]
  a17b37:	07 
  a17b38:	62 71 7c 48 28 e1    	vmovaps zmm12,zmm1
  a17b3e:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x2c0]
  a17b45:	0b 
  a17b46:	62 52 35 40 7f e2    	vpermt2ps zmm12,zmm25,zmm10
  a17b4c:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm12
  a17b53:	06 
  a17b54:	62 d2 25 48 7f ca    	vpermt2ps zmm1,zmm11,zmm10
  a17b5a:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm1
  a17b61:	07 
  a17b62:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x80]
  a17b69:	02 
  a17b6a:	62 71 7c 48 28 f9    	vmovaps zmm15,zmm1
  a17b70:	62 72 35 40 7f f8    	vpermt2ps zmm15,zmm25,zmm0
  a17b76:	62 f2 25 48 7f c8    	vpermt2ps zmm1,zmm11,zmm0
  a17b7c:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  a17b83:	02 
  a17b84:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x140]
  a17b8b:	05 
  a17b8c:	62 71 7c 48 28 e0    	vmovaps zmm12,zmm0
  a17b92:	62 12 35 40 7f e3    	vpermt2ps zmm12,zmm25,zmm27
  a17b98:	62 92 25 48 7f c3    	vpermt2ps zmm0,zmm11,zmm27
  a17b9e:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  a17ba5:	05 
  a17ba6:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x40]
  a17bad:	01 
  a17bae:	62 61 7c 48 28 f0    	vmovaps zmm30,zmm0
  a17bb4:	62 62 35 40 7f f2    	vpermt2ps zmm30,zmm25,zmm2
  a17bba:	62 f2 25 48 7f c2    	vpermt2ps zmm0,zmm11,zmm2
  a17bc0:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a17bc7:	01 
  a17bc8:	62 b1 7c 48 28 c1    	vmovaps zmm0,zmm17
  a17bce:	62 a2 35 40 7f ca    	vpermt2ps zmm17,zmm25,zmm18
  a17bd4:	62 b2 25 48 7f c2    	vpermt2ps zmm0,zmm11,zmm18
  a17bda:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm0
  a17be1:	0c 
  a17be2:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x100]
  a17be9:	04 
  a17bea:	62 71 7c 48 28 d0    	vmovaps zmm10,zmm0
  a17bf0:	62 52 35 40 7f d5    	vpermt2ps zmm10,zmm25,zmm13
  a17bf6:	62 d2 25 48 7f c5    	vpermt2ps zmm0,zmm11,zmm13
  a17bfc:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a17c03:	04 
  a17c04:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc0]
  a17c0b:	03 
  a17c0c:	62 71 7c 48 28 e8    	vmovaps zmm13,zmm0
  a17c12:	62 12 35 40 7f ec    	vpermt2ps zmm13,zmm25,zmm28
  a17c18:	62 92 25 48 7f c4    	vpermt2ps zmm0,zmm11,zmm28
  a17c1e:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a17c25:	03 
  a17c26:	62 22 05 40 77 c8    	vpermi2ps zmm25,zmm31,zmm16
  a17c2c:	62 22 25 48 7f f8    	vpermt2ps zmm31,zmm11,zmm16
  a17c32:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm31
  a17c39:	17 
  a17c3a:	62 61 7c 48 28 2d bc 	vmovaps zmm29,ZMMWORD PTR [rip+0xffffffffff6af1bc]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a17c41:	f1 6a ff 
  a17c44:	62 f1 c5 40 14 c7    	vunpcklpd zmm0,zmm23,zmm7
  a17c4a:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm0
  a17c51:	0d 
  a17c52:	62 b1 e5 40 14 cc    	vunpcklpd zmm1,zmm19,zmm20
  a17c58:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm1
  a17c5f:	1a 
  a17c60:	62 f2 15 40 7f c1    	vpermt2ps zmm0,zmm29,zmm1
  a17c66:	62 91 d5 40 14 ca    	vunpcklpd zmm1,zmm21,zmm26
  a17c6c:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x780],zmm1
  a17c73:	1e 
  a17c74:	62 d1 dd 48 14 d0    	vunpcklpd zmm2,zmm4,zmm8
  a17c7a:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x880],zmm2
  a17c81:	22 
  a17c82:	62 f2 15 40 7f ca    	vpermt2ps zmm1,zmm29,zmm2
  a17c88:	62 71 7c 48 10 5a 11 	vmovups zmm11,ZMMWORD PTR [rdx+0x440]
  a17c8f:	62 e1 7c 48 10 42 10 	vmovups zmm16,ZMMWORD PTR [rdx+0x400]
  a17c96:	62 b1 74 48 59 d0    	vmulps zmm2,zmm1,zmm16
  a17c9c:	62 d2 7d 48 b8 d3    	vfmadd231ps zmm2,zmm0,zmm11
  a17ca2:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm2
  a17ca9:	15 
  a17caa:	62 b1 7c 48 59 c0    	vmulps zmm0,zmm0,zmm16
  a17cb0:	62 f2 25 48 bc c1    	vfnmadd231ps zmm0,zmm11,zmm1
  a17cb6:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm0
  a17cbd:	0b 
  a17cbe:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a17cc5:	06 
  a17cc6:	62 41 fd 48 15 ff    	vunpckhpd zmm31,zmm0,zmm15
  a17ccc:	62 91 9d 48 15 ce    	vunpckhpd zmm1,zmm12,zmm30
  a17cd2:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm1
  a17cd9:	19 
  a17cda:	62 91 7c 48 28 c7    	vmovaps zmm0,zmm31
  a17ce0:	62 f2 15 40 7f c1    	vpermt2ps zmm0,zmm29,zmm1
  a17ce6:	62 41 f5 40 15 e2    	vunpckhpd zmm28,zmm17,zmm10
  a17cec:	62 91 95 48 15 d1    	vunpckhpd zmm2,zmm13,zmm25
  a17cf2:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm2
  a17cf9:	18 
  a17cfa:	62 91 7c 48 28 cc    	vmovaps zmm1,zmm28
  a17d00:	62 f2 15 40 7f ca    	vpermt2ps zmm1,zmm29,zmm2
  a17d06:	62 e1 7c 48 10 42 04 	vmovups zmm16,ZMMWORD PTR [rdx+0x100]
  a17d0d:	62 f1 7c 48 10 52 05 	vmovups zmm2,ZMMWORD PTR [rdx+0x140]
  a17d14:	62 21 74 48 59 d8    	vmulps zmm27,zmm1,zmm16
  a17d1a:	62 62 7d 48 b8 da    	vfmadd231ps zmm27,zmm0,zmm2
  a17d20:	62 61 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm27
  a17d27:	14 
  a17d28:	62 b1 7c 48 59 c0    	vmulps zmm0,zmm0,zmm16
  a17d2e:	62 f2 6d 48 bc c1    	vfnmadd231ps zmm0,zmm2,zmm1
  a17d34:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm0
  a17d3b:	16 
  a17d3c:	62 e1 c5 40 15 ff    	vunpckhpd zmm23,zmm23,zmm7
  a17d42:	62 b1 e5 40 15 d4    	vunpckhpd zmm2,zmm19,zmm20
  a17d48:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm2
  a17d4f:	08 
  a17d50:	62 81 d5 40 15 ea    	vunpckhpd zmm21,zmm21,zmm26
  a17d56:	62 d1 dd 48 15 e0    	vunpckhpd zmm4,zmm4,zmm8
  a17d5c:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm4
  a17d63:	10 
  a17d64:	62 71 7c 48 28 1d d2 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff6af0d2]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a17d6b:	f0 6a ff 
  a17d6e:	62 b1 7c 48 28 cf    	vmovaps zmm1,zmm23
  a17d74:	62 f2 25 48 7f ca    	vpermt2ps zmm1,zmm11,zmm2
  a17d7a:	62 b1 7c 48 28 d5    	vmovaps zmm2,zmm21
  a17d80:	62 f2 25 48 7f d4    	vpermt2ps zmm2,zmm11,zmm4
  a17d86:	62 f1 7c 48 10 62 17 	vmovups zmm4,ZMMWORD PTR [rdx+0x5c0]
  a17d8d:	62 f1 7c 48 10 7a 16 	vmovups zmm7,ZMMWORD PTR [rdx+0x580]
  a17d94:	62 71 6c 48 59 c7    	vmulps zmm8,zmm2,zmm7
  a17d9a:	62 72 75 48 b8 c4    	vfmadd231ps zmm8,zmm1,zmm4
  a17da0:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm8
  a17da7:	0a 
  a17da8:	62 f1 74 48 59 cf    	vmulps zmm1,zmm1,zmm7
  a17dae:	62 f2 5d 48 bc ca    	vfnmadd231ps zmm1,zmm4,zmm2
  a17db4:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm1
  a17dbb:	12 
  a17dbc:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x240]
  a17dc3:	09 
  a17dc4:	62 d1 fd 48 15 c9    	vunpckhpd zmm1,zmm0,zmm9
  a17dca:	62 f1 cd 48 15 d5    	vunpckhpd zmm2,zmm6,zmm5
  a17dd0:	62 f2 15 40 7f ca    	vpermt2ps zmm1,zmm29,zmm2
  a17dd6:	62 b1 8d 48 15 d6    	vunpckhpd zmm2,zmm14,zmm22
  a17ddc:	62 91 e5 48 15 e0    	vunpckhpd zmm4,zmm3,zmm24
  a17de2:	62 f2 15 40 7f d4    	vpermt2ps zmm2,zmm29,zmm4
  a17de8:	62 f1 7c 48 10 62 1d 	vmovups zmm4,ZMMWORD PTR [rdx+0x740]
  a17def:	62 f1 7c 48 10 7a 1c 	vmovups zmm7,ZMMWORD PTR [rdx+0x700]
  a17df6:	62 71 6c 48 59 c7    	vmulps zmm8,zmm2,zmm7
  a17dfc:	62 72 75 48 b8 c4    	vfmadd231ps zmm8,zmm1,zmm4
  a17e02:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm8
  a17e09:	13 
  a17e0a:	62 f1 74 48 59 cf    	vmulps zmm1,zmm1,zmm7
  a17e10:	62 f2 5d 48 bc ca    	vfnmadd231ps zmm1,zmm4,zmm2
  a17e16:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm1
  a17e1d:	11 
  a17e1e:	62 c1 fd 48 14 d1    	vunpcklpd zmm18,zmm0,zmm9
  a17e24:	62 f1 cd 48 14 c5    	vunpcklpd zmm0,zmm6,zmm5
  a17e2a:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x740],zmm0
  a17e31:	1d 
  a17e32:	62 a1 8d 48 14 c6    	vunpcklpd zmm16,zmm14,zmm22
  a17e38:	62 91 e5 48 14 c8    	vunpcklpd zmm1,zmm3,zmm24
  a17e3e:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm1
  a17e45:	1c 
  a17e46:	62 b1 7c 48 28 da    	vmovaps zmm3,zmm18
  a17e4c:	62 f2 25 48 7f d8    	vpermt2ps zmm3,zmm11,zmm0
  a17e52:	62 b1 7c 48 28 e0    	vmovaps zmm4,zmm16
  a17e58:	62 f2 25 48 7f e1    	vpermt2ps zmm4,zmm11,zmm1
  a17e5e:	62 f1 7c 48 10 6a 1b 	vmovups zmm5,ZMMWORD PTR [rdx+0x6c0]
  a17e65:	62 f1 7c 48 10 72 1a 	vmovups zmm6,ZMMWORD PTR [rdx+0x680]
  a17e6c:	62 f1 5c 48 59 fe    	vmulps zmm7,zmm4,zmm6
  a17e72:	62 f2 65 48 b8 fd    	vfmadd231ps zmm7,zmm3,zmm5
  a17e78:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm7
  a17e7f:	09 
  a17e80:	62 f1 64 48 59 de    	vmulps zmm3,zmm3,zmm6
  a17e86:	62 f2 55 48 bc dc    	vfnmadd231ps zmm3,zmm5,zmm4
  a17e8c:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x800],zmm3
  a17e93:	20 
  a17e94:	62 e1 7c 48 28 5c 24 	vmovaps zmm19,ZMMWORD PTR [rsp+0x1c0]
  a17e9b:	07 
  a17e9c:	62 e1 7c 48 28 64 24 	vmovaps zmm20,ZMMWORD PTR [rsp+0x80]
  a17ea3:	02 
  a17ea4:	62 31 e5 40 15 f4    	vunpckhpd zmm14,zmm19,zmm20
  a17eaa:	62 61 7c 48 28 5c 24 	vmovaps zmm27,ZMMWORD PTR [rsp+0x140]
  a17eb1:	05 
  a17eb2:	62 61 7c 48 28 44 24 	vmovaps zmm24,ZMMWORD PTR [rsp+0x40]
  a17eb9:	01 
  a17eba:	62 81 a5 40 15 f0    	vunpckhpd zmm22,zmm27,zmm24
  a17ec0:	62 d1 7c 48 28 e6    	vmovaps zmm4,zmm14
  a17ec6:	62 b2 25 48 7f e6    	vpermt2ps zmm4,zmm11,zmm22
  a17ecc:	62 61 7c 48 28 54 24 	vmovaps zmm26,ZMMWORD PTR [rsp+0x300]
  a17ed3:	0c 
  a17ed4:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x100]
  a17edb:	04 
  a17edc:	62 f1 ad 40 15 d8    	vunpckhpd zmm3,zmm26,zmm0
  a17ee2:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0xc0]
  a17ee9:	03 
  a17eea:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x5c0]
  a17ef1:	17 
  a17ef2:	62 f1 ed 48 15 f1    	vunpckhpd zmm6,zmm2,zmm1
  a17ef8:	62 f1 7c 48 28 eb    	vmovaps zmm5,zmm3
  a17efe:	62 f2 25 48 7f ee    	vpermt2ps zmm5,zmm11,zmm6
  a17f04:	62 f1 7c 48 10 7a 0f 	vmovups zmm7,ZMMWORD PTR [rdx+0x3c0]
  a17f0b:	62 71 7c 48 10 42 0e 	vmovups zmm8,ZMMWORD PTR [rdx+0x380]
  a17f12:	62 51 54 48 59 c8    	vmulps zmm9,zmm5,zmm8
  a17f18:	62 72 5d 48 b8 cf    	vfmadd231ps zmm9,zmm4,zmm7
  a17f1e:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm9
  a17f25:	0f 
  a17f26:	62 d1 5c 48 59 e0    	vmulps zmm4,zmm4,zmm8
  a17f2c:	62 f2 45 48 bc e5    	vfnmadd231ps zmm4,zmm7,zmm5
  a17f32:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x840],zmm4
  a17f39:	21 
  a17f3a:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x180]
  a17f41:	06 
  a17f42:	62 d1 dd 48 14 ef    	vunpcklpd zmm5,zmm4,zmm15
  a17f48:	62 11 9d 48 14 e6    	vunpcklpd zmm12,zmm12,zmm30
  a17f4e:	62 51 f5 40 14 ca    	vunpcklpd zmm9,zmm17,zmm10
  a17f54:	62 91 95 48 14 f9    	vunpcklpd zmm7,zmm13,zmm25
  a17f5a:	62 f1 7c 48 28 e5    	vmovaps zmm4,zmm5
  a17f60:	62 d2 25 48 7f e4    	vpermt2ps zmm4,zmm11,zmm12
  a17f66:	62 41 7c 48 28 cc    	vmovaps zmm25,zmm12
  a17f6c:	62 51 7c 48 28 c1    	vmovaps zmm8,zmm9
  a17f72:	62 41 7c 48 28 f1    	vmovaps zmm30,zmm9
  a17f78:	62 72 25 48 7f c7    	vpermt2ps zmm8,zmm11,zmm7
  a17f7e:	62 71 7c 48 10 4a 02 	vmovups zmm9,ZMMWORD PTR [rdx+0x80]
  a17f85:	62 71 7c 48 10 52 03 	vmovups zmm10,ZMMWORD PTR [rdx+0xc0]
  a17f8c:	62 51 3c 48 59 e1    	vmulps zmm12,zmm8,zmm9
  a17f92:	62 52 5d 48 b8 e2    	vfmadd231ps zmm12,zmm4,zmm10
  a17f98:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm12
  a17f9f:	0e 
  a17fa0:	62 d1 5c 48 59 e1    	vmulps zmm4,zmm4,zmm9
  a17fa6:	62 d2 2d 48 bc e0    	vfnmadd231ps zmm4,zmm10,zmm8
  a17fac:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x7c0],zmm4
  a17fb3:	1f 
  a17fb4:	62 b1 e5 40 14 e4    	vunpcklpd zmm4,zmm19,zmm20
  a17fba:	62 11 a5 40 14 c8    	vunpcklpd zmm9,zmm27,zmm24
  a17fc0:	62 71 ad 40 14 e0    	vunpcklpd zmm12,zmm26,zmm0
  a17fc6:	62 71 ed 48 14 e9    	vunpcklpd zmm13,zmm2,zmm1
  a17fcc:	62 71 7c 48 28 c4    	vmovaps zmm8,zmm4
  a17fd2:	62 d2 15 40 7f e1    	vpermt2ps zmm4,zmm29,zmm9
  a17fd8:	62 51 7c 48 28 d4    	vmovaps zmm10,zmm12
  a17fde:	62 52 15 40 7f e5    	vpermt2ps zmm12,zmm29,zmm13
  a17fe4:	62 71 7c 48 10 7a 09 	vmovups zmm15,ZMMWORD PTR [rdx+0x240]
  a17feb:	62 e1 7c 48 10 4a 08 	vmovups zmm17,ZMMWORD PTR [rdx+0x200]
  a17ff2:	62 a1 1c 48 59 d9    	vmulps zmm19,zmm12,zmm17
  a17ff8:	62 c2 5d 48 b8 df    	vfmadd231ps zmm19,zmm4,zmm15
  a17ffe:	62 e1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm19
  a18005:	0c 
  a18006:	62 b1 5c 48 59 e1    	vmulps zmm4,zmm4,zmm17
  a1800c:	62 d2 05 48 bc e4    	vfnmadd231ps zmm4,zmm15,zmm12
  a18012:	62 71 7c 48 28 e4    	vmovaps zmm12,zmm4
  a18018:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x8c0],zmm4
  a1801f:	23 
  a18020:	62 52 25 48 7f c1    	vpermt2ps zmm8,zmm11,zmm9
  a18026:	62 52 25 48 7f d5    	vpermt2ps zmm10,zmm11,zmm13
  a1802c:	62 62 25 48 7f 64 24 	vpermt2ps zmm28,zmm11,ZMMWORD PTR [rsp+0x600]
  a18033:	18 
  a18034:	62 62 25 48 7f 7c 24 	vpermt2ps zmm31,zmm11,ZMMWORD PTR [rsp+0x640]
  a1803b:	19 
  a1803c:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x780]
  a18043:	1e 
  a18044:	62 f2 25 48 7f 4c 24 	vpermt2ps zmm1,zmm11,ZMMWORD PTR [rsp+0x880]
  a1804b:	22 
  a1804c:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x340]
  a18053:	0d 
  a18054:	62 72 25 48 7f 4c 24 	vpermt2ps zmm9,zmm11,ZMMWORD PTR [rsp+0x680]
  a1805b:	1a 
  a1805c:	62 f2 15 40 7f de    	vpermt2ps zmm3,zmm29,zmm6
  a18062:	62 32 15 40 7f f6    	vpermt2ps zmm14,zmm29,zmm22
  a18068:	62 f1 7c 48 10 42 0d 	vmovups zmm0,ZMMWORD PTR [rdx+0x340]
  a1806f:	62 f1 7c 48 10 62 0c 	vmovups zmm4,ZMMWORD PTR [rdx+0x300]
  a18076:	62 f1 0c 48 59 f4    	vmulps zmm6,zmm14,zmm4
  a1807c:	62 f2 65 48 bc f0    	vfnmadd231ps zmm6,zmm3,zmm0
  a18082:	62 71 7c 48 28 de    	vmovaps zmm11,zmm6
  a18088:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm6
  a1808f:	1b 
  a18090:	62 f1 64 48 59 d4    	vmulps zmm2,zmm3,zmm4
  a18096:	62 d2 7d 48 b8 d6    	vfmadd231ps zmm2,zmm0,zmm14
  a1809c:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm2
  a180a3:	0d 
  a180a4:	62 f1 7c 48 10 42 13 	vmovups zmm0,ZMMWORD PTR [rdx+0x4c0]
  a180ab:	62 f1 7c 48 10 5a 12 	vmovups zmm3,ZMMWORD PTR [rdx+0x480]
  a180b2:	62 d1 7c 48 28 e1    	vmovaps zmm4,zmm9
  a180b8:	62 f1 34 48 59 f3    	vmulps zmm6,zmm9,zmm3
  a180be:	62 f2 75 48 bc f0    	vfnmadd231ps zmm6,zmm1,zmm0
  a180c4:	62 71 7c 48 28 ce    	vmovaps zmm9,zmm6
  a180ca:	62 e1 74 48 59 f3    	vmulps zmm22,zmm1,zmm3
  a180d0:	62 e2 7d 48 b8 f4    	vfmadd231ps zmm22,zmm0,zmm4
  a180d6:	62 f1 7c 48 10 42 07 	vmovups zmm0,ZMMWORD PTR [rdx+0x1c0]
  a180dd:	62 f1 7c 48 10 5a 06 	vmovups zmm3,ZMMWORD PTR [rdx+0x180]
  a180e4:	62 f1 04 40 59 e3    	vmulps zmm4,zmm31,zmm3
  a180ea:	62 f2 1d 40 bc e0    	vfnmadd231ps zmm4,zmm28,zmm0
  a180f0:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm4
  a180f7:	17 
  a180f8:	62 e1 1c 40 59 e3    	vmulps zmm20,zmm28,zmm3
  a180fe:	62 82 7d 48 b8 e7    	vfmadd231ps zmm20,zmm0,zmm31
  a18104:	62 e2 15 40 7f 44 24 	vpermt2ps zmm16,zmm29,ZMMWORD PTR [rsp+0x700]
  a1810b:	1c 
  a1810c:	62 e2 15 40 7f 54 24 	vpermt2ps zmm18,zmm29,ZMMWORD PTR [rsp+0x740]
  a18113:	1d 
  a18114:	62 f1 7c 48 10 42 19 	vmovups zmm0,ZMMWORD PTR [rdx+0x640]
  a1811b:	62 f1 7c 48 10 72 18 	vmovups zmm6,ZMMWORD PTR [rdx+0x600]
  a18122:	62 f1 6c 40 59 ce    	vmulps zmm1,zmm18,zmm6
  a18128:	62 f2 7d 40 bc c8    	vfnmadd231ps zmm1,zmm16,zmm0
  a1812e:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a18134:	62 e1 7c 40 59 de    	vmulps zmm19,zmm16,zmm6
  a1813a:	62 a2 7d 48 b8 da    	vfmadd231ps zmm19,zmm0,zmm18
  a18140:	62 f1 7c 48 10 42 0b 	vmovups zmm0,ZMMWORD PTR [rdx+0x2c0]
  a18147:	62 f1 7c 48 10 52 0a 	vmovups zmm2,ZMMWORD PTR [rdx+0x280]
  a1814e:	62 f1 2c 48 59 ca    	vmulps zmm1,zmm10,zmm2
  a18154:	62 f2 3d 48 b8 c8    	vfmadd231ps zmm1,zmm8,zmm0
  a1815a:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a18161:	01 
  a18162:	62 f1 3c 48 59 ca    	vmulps zmm1,zmm8,zmm2
  a18168:	62 d2 7d 48 bc ca    	vfnmadd231ps zmm1,zmm0,zmm10
  a1816e:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm1
  a18175:	06 
  a18176:	62 e2 15 40 7f 7c 24 	vpermt2ps zmm23,zmm29,ZMMWORD PTR [rsp+0x200]
  a1817d:	08 
  a1817e:	62 e2 15 40 7f 6c 24 	vpermt2ps zmm21,zmm29,ZMMWORD PTR [rsp+0x400]
  a18185:	10 
  a18186:	62 f1 7c 48 10 42 15 	vmovups zmm0,ZMMWORD PTR [rdx+0x540]
  a1818d:	62 f1 7c 48 10 52 14 	vmovups zmm2,ZMMWORD PTR [rdx+0x500]
  a18194:	62 f1 54 40 59 ca    	vmulps zmm1,zmm21,zmm2
  a1819a:	62 f2 45 40 b8 c8    	vfmadd231ps zmm1,zmm23,zmm0
  a181a0:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm1
  a181a7:	07 
  a181a8:	62 f1 44 40 59 ca    	vmulps zmm1,zmm23,zmm2
  a181ae:	62 b2 7d 48 bc cd    	vfnmadd231ps zmm1,zmm0,zmm21
  a181b4:	62 61 7c 48 28 c1    	vmovaps zmm24,zmm1
  a181ba:	62 62 15 40 7f f7    	vpermt2ps zmm30,zmm29,zmm7
  a181c0:	62 61 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm30
  a181c7:	05 
  a181c8:	62 92 15 40 7f e9    	vpermt2ps zmm5,zmm29,zmm25
  a181ce:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm5
  a181d5:	03 
  a181d6:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x2c0]
  a181dd:	0b 
  a181de:	62 f1 7c 48 5c 44 24 	vsubps zmm0,zmm0,ZMMWORD PTR [rsp+0x580]
  a181e5:	16 
  a181e6:	62 f2 7d 48 18 15 68 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff65d568]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a181ed:	d5 65 ff 
  a181f0:	62 61 7c 48 28 5c 24 	vmovaps zmm27,ZMMWORD PTR [rsp+0x480]
  a181f7:	12 
  a181f8:	62 61 7c 48 28 7c 24 	vmovaps zmm31,ZMMWORD PTR [rsp+0x440]
  a181ff:	11 
  a18200:	62 91 24 40 5c ff    	vsubps zmm7,zmm27,zmm31
  a18206:	62 f1 44 48 59 ca    	vmulps zmm1,zmm7,zmm2
  a1820c:	62 f2 7d 48 18 2d 8a 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff65d18a]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a18213:	d1 65 ff 
  a18216:	62 f2 7d 48 b8 cd    	vfmadd231ps zmm1,zmm0,zmm5
  a1821c:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  a18223:	02 
  a18224:	62 f1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm2
  a1822a:	62 f2 55 48 bc c7    	vfnmadd231ps zmm0,zmm5,zmm7
  a18230:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm0
  a18237:	19 
  a18238:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x800]
  a1823f:	20 
  a18240:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0x840]
  a18247:	21 
  a18248:	62 d1 7c 40 5c c5    	vsubps zmm0,zmm16,zmm13
  a1824e:	62 e1 7c 48 28 6c 24 	vmovaps zmm21,ZMMWORD PTR [rsp+0x7c0]
  a18255:	1f 
  a18256:	62 d1 54 40 5c fc    	vsubps zmm7,zmm21,zmm12
  a1825c:	62 f1 44 48 59 ca    	vmulps zmm1,zmm7,zmm2
  a18262:	62 f2 7d 48 b8 cd    	vfmadd231ps zmm1,zmm0,zmm5
  a18268:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm1
  a1826f:	04 
  a18270:	62 f1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm2
  a18276:	62 f2 55 48 bc c7    	vfnmadd231ps zmm0,zmm5,zmm7
  a1827c:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm0
  a18283:	18 
  a18284:	62 f1 5c 48 5c c3    	vsubps zmm0,zmm4,zmm3
  a1828a:	62 61 7c 48 28 eb    	vmovaps zmm29,zmm3
  a18290:	62 d1 24 48 5c f9    	vsubps zmm7,zmm11,zmm9
  a18296:	62 41 7c 48 28 c9    	vmovaps zmm25,zmm9
  a1829c:	62 f1 44 48 59 ca    	vmulps zmm1,zmm7,zmm2
  a182a2:	62 f2 7d 48 b8 cd    	vfmadd231ps zmm1,zmm0,zmm5
  a182a8:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm1
  a182af:	08 
  a182b0:	62 61 7c 48 59 e2    	vmulps zmm28,zmm0,zmm2
  a182b6:	62 62 55 48 bc e7    	vfnmadd231ps zmm28,zmm5,zmm7
  a182bc:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x540]
  a182c3:	15 
  a182c4:	62 e1 7c 48 28 54 24 	vmovaps zmm18,ZMMWORD PTR [rsp+0x500]
  a182cb:	14 
  a182cc:	62 b1 2c 48 5c fa    	vsubps zmm7,zmm10,zmm18
  a182d2:	62 61 7c 48 28 74 24 	vmovaps zmm30,ZMMWORD PTR [rsp+0x280]
  a182d9:	0a 
  a182da:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x4c0]
  a182e1:	13 
  a182e2:	62 51 0c 40 5c c1    	vsubps zmm8,zmm30,zmm9
  a182e8:	62 71 3c 48 59 fa    	vmulps zmm15,zmm8,zmm2
  a182ee:	62 72 45 48 b8 fd    	vfmadd231ps zmm15,zmm7,zmm5
  a182f4:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm15
  a182fb:	1a 
  a182fc:	62 61 44 48 59 d2    	vmulps zmm26,zmm7,zmm2
  a18302:	62 42 55 48 bc d0    	vfnmadd231ps zmm26,zmm5,zmm8
  a18308:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x240]
  a1830f:	09 
  a18310:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x3c0]
  a18317:	0f 
  a18318:	62 f1 4c 48 5c fc    	vsubps zmm7,zmm6,zmm4
  a1831e:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x380]
  a18325:	0e 
  a18326:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x300]
  a1832d:	0c 
  a1832e:	62 71 64 48 5c c1    	vsubps zmm8,zmm3,zmm1
  a18334:	62 f1 3c 48 59 c2    	vmulps zmm0,zmm8,zmm2
  a1833a:	62 f2 45 48 b8 c5    	vfmadd231ps zmm0,zmm7,zmm5
  a18340:	62 e1 7c 48 28 c8    	vmovaps zmm17,zmm0
  a18346:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x880],zmm0
  a1834d:	22 
  a1834e:	62 e1 44 48 59 fa    	vmulps zmm23,zmm7,zmm2
  a18354:	62 c2 55 48 bc f8    	vfnmadd231ps zmm23,zmm5,zmm8
  a1835a:	62 b1 5c 40 5c fb    	vsubps zmm7,zmm20,zmm19
  a18360:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x340]
  a18367:	0d 
  a18368:	62 31 7c 48 5c c6    	vsubps zmm8,zmm0,zmm22
  a1836e:	62 71 3c 48 59 e2    	vmulps zmm12,zmm8,zmm2
  a18374:	62 72 45 48 b8 e5    	vfmadd231ps zmm12,zmm7,zmm5
  a1837a:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm12
  a18381:	10 
  a18382:	62 71 44 48 59 f2    	vmulps zmm14,zmm7,zmm2
  a18388:	62 72 3d 48 bc f5    	vfnmadd231ps zmm14,zmm8,zmm5
  a1838e:	62 51 0c 40 58 c9    	vaddps zmm9,zmm30,zmm9
  a18394:	62 a1 2c 48 58 d2    	vaddps zmm18,zmm10,zmm18
  a1839a:	62 71 64 48 58 d1    	vaddps zmm10,zmm3,zmm1
  a183a0:	62 71 4c 48 58 dc    	vaddps zmm11,zmm6,zmm4
  a183a6:	62 21 7c 48 58 f6    	vaddps zmm30,zmm0,zmm22
  a183ac:	62 31 5c 40 58 e3    	vaddps zmm12,zmm20,zmm19
  a183b2:	62 81 24 40 58 f7    	vaddps zmm22,zmm27,zmm31
  a183b8:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x580]
  a183bf:	16 
  a183c0:	62 61 7c 48 58 5c 24 	vaddps zmm27,zmm0,ZMMWORD PTR [rsp+0x2c0]
  a183c7:	0b 
  a183c8:	62 61 54 40 58 7c 24 	vaddps zmm31,zmm21,ZMMWORD PTR [rsp+0x8c0]
  a183cf:	23 
  a183d0:	62 f2 7d 48 18 15 0e 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff65d30e]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a183d7:	d3 65 ff 
  a183da:	62 51 7c 40 58 c5    	vaddps zmm8,zmm16,zmm13
  a183e0:	62 f2 7d 48 18 0d 5a 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff65d25a]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a183e7:	d2 65 ff 
  a183ea:	62 e1 7c 48 28 ea    	vmovaps zmm21,zmm2
  a183f0:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a183f7:	06 
  a183f8:	62 e2 25 40 a8 e8    	vfmadd213ps zmm21,zmm27,zmm0
  a183fe:	62 61 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm27
  a18405:	11 
  a18406:	62 e2 4d 40 bc e9    	vfnmadd231ps zmm21,zmm22,zmm1
  a1840c:	62 e1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm22
  a18413:	0f 
  a18414:	62 e1 7c 48 28 da    	vmovaps zmm19,zmm2
  a1841a:	62 11 7c 48 28 e8    	vmovaps zmm13,zmm24
  a18420:	62 61 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x780],zmm24
  a18427:	1e 
  a18428:	62 82 3d 48 a8 d8    	vfmadd213ps zmm19,zmm8,zmm24
  a1842e:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm8
  a18435:	0e 
  a18436:	62 e2 05 40 bc d9    	vfnmadd231ps zmm19,zmm31,zmm1
  a1843c:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm31
  a18443:	0d 
  a18444:	62 d1 54 40 5c ef    	vsubps zmm5,zmm21,zmm15
  a1844a:	62 b1 64 40 5c f9    	vsubps zmm7,zmm19,zmm17
  a18450:	62 f1 54 48 5c df    	vsubps zmm3,zmm5,zmm7
  a18456:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm3
  a1845d:	15 
  a1845e:	62 f1 54 48 58 df    	vaddps zmm3,zmm5,zmm7
  a18464:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm3
  a1846b:	0a 
  a1846c:	62 61 34 40 58 4c 24 	vaddps zmm25,zmm25,ZMMWORD PTR [rsp+0x6c0]
  a18473:	1b 
  a18474:	62 61 14 40 58 44 24 	vaddps zmm24,zmm29,ZMMWORD PTR [rsp+0x5c0]
  a1847b:	17 
  a1847c:	62 e1 7c 48 28 ca    	vmovaps zmm17,zmm2
  a18482:	62 e1 7c 48 28 64 24 	vmovaps zmm20,ZMMWORD PTR [rsp+0x40]
  a18489:	01 
  a1848a:	62 a2 6d 40 a8 cc    	vfmadd213ps zmm17,zmm18,zmm20
  a18490:	62 b1 7c 48 28 fa    	vmovaps zmm7,zmm18
  a18496:	62 e1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x740],zmm18
  a1849d:	1d 
  a1849e:	62 e2 35 48 bc c9    	vfnmadd231ps zmm17,zmm9,zmm1
  a184a4:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm9
  a184ab:	1c 
  a184ac:	62 e1 7c 48 28 c2    	vmovaps zmm16,zmm2
  a184b2:	62 e1 7c 48 28 54 24 	vmovaps zmm18,ZMMWORD PTR [rsp+0x1c0]
  a184b9:	07 
  a184ba:	62 a2 25 48 a8 c2    	vfmadd213ps zmm16,zmm11,zmm18
  a184c0:	62 e2 2d 48 bc c1    	vfnmadd231ps zmm16,zmm10,zmm1
  a184c6:	62 41 7c 48 28 ea    	vmovaps zmm29,zmm10
  a184cc:	62 f1 74 40 58 5c 24 	vaddps zmm3,zmm17,ZMMWORD PTR [rsp+0x80]
  a184d3:	02 
  a184d4:	62 f1 7c 40 58 64 24 	vaddps zmm4,zmm16,ZMMWORD PTR [rsp+0x100]
  a184db:	04 
  a184dc:	62 f1 64 48 58 ec    	vaddps zmm5,zmm3,zmm4
  a184e2:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm5
  a184e9:	13 
  a184ea:	62 f1 64 48 5c dc    	vsubps zmm3,zmm3,zmm4
  a184f0:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm3
  a184f7:	14 
  a184f8:	62 f1 7c 48 28 e9    	vmovaps zmm5,zmm1
  a184fe:	62 f2 25 40 ac e8    	vfnmadd213ps zmm5,zmm27,zmm0
  a18504:	62 f2 4d 40 b8 ea    	vfmadd231ps zmm5,zmm22,zmm2
  a1850a:	62 f1 7c 48 28 f1    	vmovaps zmm6,zmm1
  a18510:	62 d2 3d 48 ac f5    	vfnmadd213ps zmm6,zmm8,zmm13
  a18516:	62 f2 05 40 b8 f2    	vfmadd231ps zmm6,zmm31,zmm2
  a1851c:	62 91 54 48 5c da    	vsubps zmm3,zmm5,zmm26
  a18522:	62 b1 4c 48 5c e7    	vsubps zmm4,zmm6,zmm23
  a18528:	62 f1 64 48 5c c4    	vsubps zmm0,zmm3,zmm4
  a1852e:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm0
  a18535:	12 
  a18536:	62 f1 64 48 58 c4    	vaddps zmm0,zmm3,zmm4
  a1853c:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm0
  a18543:	09 
  a18544:	62 e1 7c 48 28 f2    	vmovaps zmm22,zmm2
  a1854a:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x140]
  a18551:	05 
  a18552:	62 51 7c 48 28 c4    	vmovaps zmm8,zmm12
  a18558:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x940],zmm12
  a1855f:	25 
  a18560:	62 e2 1d 48 a8 f4    	vfmadd213ps zmm22,zmm12,zmm4
  a18566:	62 11 7c 48 28 d6    	vmovaps zmm10,zmm30
  a1856c:	62 61 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x900],zmm30
  a18573:	24 
  a18574:	62 e2 0d 40 bc f1    	vfnmadd231ps zmm22,zmm30,zmm1
  a1857a:	62 71 7c 48 28 e2    	vmovaps zmm12,zmm2
  a18580:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0xc0]
  a18587:	03 
  a18588:	62 61 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x800],zmm24
  a1858f:	20 
  a18590:	62 72 3d 40 a8 e3    	vfmadd213ps zmm12,zmm24,zmm3
  a18596:	62 61 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x7c0],zmm25
  a1859d:	1f 
  a1859e:	62 72 35 40 bc e1    	vfnmadd231ps zmm12,zmm25,zmm1
  a185a4:	62 71 7c 48 28 e9    	vmovaps zmm13,zmm1
  a185aa:	62 32 45 48 ac ec    	vfnmadd213ps zmm13,zmm7,zmm20
  a185b0:	62 72 35 48 b8 ea    	vfmadd231ps zmm13,zmm9,zmm2
  a185b6:	62 61 7c 48 28 d9    	vmovaps zmm27,zmm1
  a185bc:	62 22 25 48 ac da    	vfnmadd213ps zmm27,zmm11,zmm18
  a185c2:	62 41 7c 48 28 f3    	vmovaps zmm30,zmm11
  a185c8:	62 62 15 40 b8 da    	vfmadd231ps zmm27,zmm29,zmm2
  a185ce:	62 f1 7c 48 28 c1    	vmovaps zmm0,zmm1
  a185d4:	62 f2 3d 48 ac c4    	vfnmadd213ps zmm0,zmm8,zmm4
  a185da:	62 f2 2d 48 b8 c2    	vfmadd231ps zmm0,zmm10,zmm2
  a185e0:	62 f2 3d 40 ac cb    	vfnmadd213ps zmm1,zmm24,zmm3
  a185e6:	62 f2 35 40 b8 ca    	vfmadd231ps zmm1,zmm25,zmm2
  a185ec:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x640]
  a185f3:	19 
  a185f4:	62 f1 14 48 58 dc    	vaddps zmm3,zmm13,zmm4
  a185fa:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x600]
  a18601:	18 
  a18602:	62 f1 24 40 58 d7    	vaddps zmm2,zmm27,zmm7
  a18608:	62 71 64 48 58 c2    	vaddps zmm8,zmm3,zmm2
  a1860e:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x840],zmm8
  a18615:	21 
  a18616:	62 f1 64 48 5c d2    	vsubps zmm2,zmm3,zmm2
  a1861c:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm2
  a18623:	0c 
  a18624:	62 61 1c 40 58 c8    	vaddps zmm25,zmm28,zmm0
  a1862a:	62 91 7c 48 5c d4    	vsubps zmm2,zmm0,zmm28
  a18630:	62 f1 14 48 5c e4    	vsubps zmm4,zmm13,zmm4
  a18636:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm4
  a1863d:	17 
  a1863e:	62 f1 24 40 5c ff    	vsubps zmm7,zmm27,zmm7
  a18644:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm7
  a1864b:	18 
  a1864c:	62 d1 74 48 5c c6    	vsubps zmm0,zmm1,zmm14
  a18652:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm0
  a18659:	19 
  a1865a:	62 51 74 48 58 ee    	vaddps zmm13,zmm1,zmm14
  a18660:	62 91 54 48 58 ea    	vaddps zmm5,zmm5,zmm26
  a18666:	62 b1 4c 48 58 df    	vaddps zmm3,zmm6,zmm23
  a1866c:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm3
  a18673:	1b 
  a18674:	62 f2 7d 48 18 05 e2 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff65cde2]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a1867b:	cd 65 ff 
  a1867e:	62 61 5c 48 58 ff    	vaddps zmm31,zmm4,zmm7
  a18684:	62 91 6c 48 58 cf    	vaddps zmm1,zmm2,zmm31
  a1868a:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm1
  a18691:	0b 
  a18692:	62 62 7d 48 ac fa    	vfnmadd213ps zmm31,zmm0,zmm2
  a18698:	62 71 7c 48 28 d0    	vmovaps zmm10,zmm0
  a1869e:	62 f1 7c 48 28 f8    	vmovaps zmm7,zmm0
  a186a4:	62 71 7c 48 28 f0    	vmovaps zmm14,zmm0
  a186aa:	62 71 7c 48 28 f8    	vmovaps zmm15,zmm0
  a186b0:	62 f1 54 48 58 cb    	vaddps zmm1,zmm5,zmm3
  a186b6:	62 f1 7c 48 28 dd    	vmovaps zmm3,zmm5
  a186bc:	62 e1 7c 48 28 e0    	vmovaps zmm20,zmm0
  a186c2:	62 e1 7c 48 28 d0    	vmovaps zmm18,zmm0
  a186c8:	62 61 7c 48 28 d8    	vmovaps zmm27,zmm0
  a186ce:	62 f1 7c 48 28 e0    	vmovaps zmm4,zmm0
  a186d4:	62 d2 75 48 ac c5    	vfnmadd213ps zmm0,zmm1,zmm13
  a186da:	62 f1 14 48 58 c9    	vaddps zmm1,zmm13,zmm1
  a186e0:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm1
  a186e7:	16 
  a186e8:	62 f1 74 40 5c 4c 24 	vsubps zmm1,zmm17,ZMMWORD PTR [rsp+0x80]
  a186ef:	02 
  a186f0:	62 71 7c 40 5c 44 24 	vsubps zmm8,zmm16,ZMMWORD PTR [rsp+0x100]
  a186f7:	04 
  a186f8:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x200]
  a186ff:	08 
  a18700:	62 31 6c 48 58 ce    	vaddps zmm9,zmm2,zmm22
  a18706:	62 e1 4c 40 5c ca    	vsubps zmm17,zmm22,zmm2
  a1870c:	62 71 54 40 58 5c 24 	vaddps zmm11,zmm21,ZMMWORD PTR [rsp+0x680]
  a18713:	1a 
  a18714:	62 71 64 40 58 6c 24 	vaddps zmm13,zmm19,ZMMWORD PTR [rsp+0x880]
  a1871b:	22 
  a1871c:	62 41 24 48 5c c5    	vsubps zmm24,zmm11,zmm13
  a18722:	62 51 24 48 58 dd    	vaddps zmm11,zmm11,zmm13
  a18728:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x400]
  a1872f:	10 
  a18730:	62 71 1c 48 5c ea    	vsubps zmm13,zmm12,zmm2
  a18736:	62 71 1c 48 58 e2    	vaddps zmm12,zmm12,zmm2
  a1873c:	62 41 74 48 58 d0    	vaddps zmm26,zmm1,zmm8
  a18742:	62 c1 74 48 5c f0    	vsubps zmm22,zmm1,zmm8
  a18748:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x40]
  a1874f:	01 
  a18750:	62 71 74 48 58 44 24 	vaddps zmm8,zmm1,ZMMWORD PTR [rsp+0x740]
  a18757:	1d 
  a18758:	62 71 3c 48 58 44 24 	vaddps zmm8,zmm8,ZMMWORD PTR [rsp+0x700]
  a1875f:	1c 
  a18760:	62 e1 0c 40 58 44 24 	vaddps zmm16,zmm30,ZMMWORD PTR [rsp+0x1c0]
  a18767:	07 
  a18768:	62 81 7c 40 58 c5    	vaddps zmm16,zmm16,zmm29
  a1876e:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x140]
  a18775:	05 
  a18776:	62 e1 74 48 58 5c 24 	vaddps zmm19,zmm1,ZMMWORD PTR [rsp+0x940]
  a1877d:	25 
  a1877e:	62 f1 64 40 58 4c 24 	vaddps zmm1,zmm19,ZMMWORD PTR [rsp+0x900]
  a18785:	24 
  a18786:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm1
  a1878d:	08 
  a1878e:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x180]
  a18795:	06 
  a18796:	62 e1 74 48 58 5c 24 	vaddps zmm19,zmm1,ZMMWORD PTR [rsp+0x440]
  a1879d:	11 
  a1879e:	62 e1 64 40 58 5c 24 	vaddps zmm19,zmm19,ZMMWORD PTR [rsp+0x3c0]
  a187a5:	0f 
  a187a6:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x780]
  a187ad:	1e 
  a187ae:	62 e1 74 48 58 7c 24 	vaddps zmm23,zmm1,ZMMWORD PTR [rsp+0x380]
  a187b5:	0e 
  a187b6:	62 e1 44 40 58 7c 24 	vaddps zmm23,zmm23,ZMMWORD PTR [rsp+0x340]
  a187bd:	0d 
  a187be:	62 21 64 40 5c e7    	vsubps zmm28,zmm19,zmm23
  a187c4:	62 21 64 40 58 f7    	vaddps zmm30,zmm19,zmm23
  a187ca:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0xc0]
  a187d1:	03 
  a187d2:	62 e1 74 48 58 5c 24 	vaddps zmm19,zmm1,ZMMWORD PTR [rsp+0x800]
  a187d9:	20 
  a187da:	62 e1 64 40 58 7c 24 	vaddps zmm23,zmm19,ZMMWORD PTR [rsp+0x7c0]
  a187e1:	1f 
  a187e2:	62 a1 3c 48 58 d8    	vaddps zmm19,zmm8,zmm16
  a187e8:	62 21 3c 48 5c e8    	vsubps zmm29,zmm8,zmm16
  a187ee:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x4c0]
  a187f5:	13 
  a187f6:	62 52 75 48 ac d1    	vfnmadd213ps zmm10,zmm1,zmm9
  a187fc:	62 f1 34 48 58 c9    	vaddps zmm1,zmm9,zmm1
  a18802:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  a18809:	02 
  a1880a:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x280]
  a18811:	0a 
  a18812:	62 d2 75 48 ac fd    	vfnmadd213ps zmm7,zmm1,zmm13
  a18818:	62 f1 14 48 58 c9    	vaddps zmm1,zmm13,zmm1
  a1881e:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm1
  a18825:	06 
  a18826:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x840]
  a1882d:	21 
  a1882e:	62 12 4d 48 ac f1    	vfnmadd213ps zmm14,zmm6,zmm25
  a18834:	62 72 7d 48 18 0d 96 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff65ca96]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a1883b:	ca 65 ff 
  a1883e:	62 71 34 48 59 6c 24 	vmulps zmm13,zmm9,ZMMWORD PTR [rsp+0x480]
  a18845:	12 
  a18846:	62 d1 0c 48 5c cd    	vsubps zmm1,zmm14,zmm13
  a1884c:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm1
  a18853:	05 
  a18854:	62 d1 0c 48 58 cd    	vaddps zmm1,zmm14,zmm13
  a1885a:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a18861:	01 
  a18862:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x240]
  a18869:	09 
  a1886a:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x640]
  a18871:	19 
  a18872:	62 72 7d 40 ac fd    	vfnmadd213ps zmm15,zmm16,zmm5
  a18878:	62 71 34 48 59 6c 24 	vmulps zmm13,zmm9,ZMMWORD PTR [rsp+0x300]
  a1887f:	0c 
  a18880:	62 d1 04 48 58 cd    	vaddps zmm1,zmm15,zmm13
  a18886:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm1
  a1888d:	07 
  a1888e:	62 d1 04 48 5c cd    	vsubps zmm1,zmm15,zmm13
  a18894:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm1
  a1889b:	0a 
  a1889c:	62 71 64 48 5c 6c 24 	vsubps zmm13,zmm3,ZMMWORD PTR [rsp+0x6c0]
  a188a3:	1b 
  a188a4:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x5c0]
  a188ab:	17 
  a188ac:	62 71 74 48 5c 74 24 	vsubps zmm14,zmm1,ZMMWORD PTR [rsp+0x600]
  a188b3:	18 
  a188b4:	62 71 34 48 59 7c 24 	vmulps zmm15,zmm9,ZMMWORD PTR [rsp+0x540]
  a188bb:	15 
  a188bc:	62 e1 34 48 59 6c 24 	vmulps zmm21,zmm9,ZMMWORD PTR [rsp+0x500]
  a188c3:	14 
  a188c4:	62 d1 3c 40 59 d9    	vmulps zmm3,zmm24,zmm9
  a188ca:	62 51 4c 40 59 c1    	vmulps zmm8,zmm22,zmm9
  a188d0:	62 c1 1c 40 59 f1    	vmulps zmm22,zmm28,zmm9
  a188d6:	62 41 14 40 59 c1    	vmulps zmm24,zmm29,zmm9
  a188dc:	62 d1 14 48 59 c9    	vmulps zmm1,zmm13,zmm9
  a188e2:	62 d1 0c 48 59 d1    	vmulps zmm2,zmm14,zmm9
  a188e8:	62 a2 2d 40 ac e1    	vfnmadd213ps zmm20,zmm26,zmm17
  a188ee:	62 11 74 40 58 ea    	vaddps zmm13,zmm17,zmm26
  a188f4:	62 c2 25 48 ac d4    	vfnmadd213ps zmm18,zmm11,zmm12
  a188fa:	62 51 1c 48 58 db    	vaddps zmm11,zmm12,zmm11
  a18900:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x200]
  a18907:	08 
  a18908:	62 42 65 40 ac dc    	vfnmadd213ps zmm27,zmm19,zmm12
  a1890e:	62 21 24 40 5c d6    	vsubps zmm26,zmm27,zmm22
  a18914:	62 21 24 40 58 ee    	vaddps zmm29,zmm27,zmm22
  a1891a:	62 b2 0d 40 ac e7    	vfnmadd213ps zmm4,zmm30,zmm23
  a18920:	62 01 5c 48 58 e0    	vaddps zmm28,zmm4,zmm24
  a18926:	62 11 5c 48 5c c8    	vsubps zmm9,zmm4,zmm24
  a1892c:	62 41 2c 48 58 c7    	vaddps zmm24,zmm10,zmm15
  a18932:	62 41 2c 48 5c df    	vsubps zmm27,zmm10,zmm15
  a18938:	62 b1 44 48 5c e5    	vsubps zmm4,zmm7,zmm21
  a1893e:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm4
  a18945:	04 
  a18946:	62 31 44 48 58 d5    	vaddps zmm10,zmm7,zmm21
  a1894c:	62 71 34 40 58 f6    	vaddps zmm14,zmm25,zmm6
  a18952:	62 b1 54 48 58 e0    	vaddps zmm4,zmm5,zmm16
  a18958:	62 f1 04 40 5c f1    	vsubps zmm6,zmm31,zmm1
  a1895e:	62 71 04 40 58 f9    	vaddps zmm15,zmm31,zmm1
  a18964:	62 e1 7c 48 58 ea    	vaddps zmm21,zmm0,zmm2
  a1896a:	62 f1 7c 48 5c c2    	vsubps zmm0,zmm0,zmm2
  a18970:	62 e1 5c 40 58 f3    	vaddps zmm22,zmm20,zmm3
  a18976:	62 e1 5c 40 5c cb    	vsubps zmm17,zmm20,zmm3
  a1897c:	62 41 6c 40 5c f8    	vsubps zmm31,zmm18,zmm8
  a18982:	62 d1 6c 40 58 c8    	vaddps zmm1,zmm18,zmm8
  a18988:	62 b1 1c 48 58 d3    	vaddps zmm2,zmm12,zmm19
  a1898e:	62 91 44 40 58 de    	vaddps zmm3,zmm23,zmm30
  a18994:	62 f1 7c 48 28 3d 22 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff676b22]        # 8f4c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c970>
  a1899b:	6b 67 ff 
  a1899e:	62 e1 7c 48 28 fa    	vmovaps zmm23,zmm2
  a189a4:	62 e2 45 48 7f fb    	vpermt2ps zmm23,zmm7,zmm3
  a189aa:	62 f1 6c 48 14 eb    	vunpcklps zmm5,zmm2,zmm3
  a189b0:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm5
  a189b7:	03 
  a189b8:	c5 7c 28 05 80 e2 65 	vmovaps ymm8,YMMWORD PTR [rip+0xffffffffff65e280]        # 76c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x40f0>
  a189bf:	ff 
  a189c0:	62 f2 3d 48 7f d3    	vpermt2ps zmm2,zmm8,zmm3
  a189c6:	62 a1 7c 48 28 d9    	vmovaps zmm19,zmm17
  a189cc:	62 e2 45 48 7f d9    	vpermt2ps zmm19,zmm7,zmm1
  a189d2:	62 f1 74 40 14 d9    	vunpcklps zmm3,zmm17,zmm1
  a189d8:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm3
  a189df:	15 
  a189e0:	62 e2 3d 48 7f c9    	vpermt2ps zmm17,zmm8,zmm1
  a189e6:	62 c1 7c 48 28 c7    	vmovaps zmm16,zmm15
  a189ec:	62 e2 45 48 7f c0    	vpermt2ps zmm16,zmm7,zmm0
  a189f2:	62 f1 04 48 14 c8    	vunpcklps zmm1,zmm15,zmm0
  a189f8:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm1
  a189ff:	14 
  a18a00:	62 72 3d 48 7f f8    	vpermt2ps zmm15,zmm8,zmm0
  a18a06:	62 c1 7c 48 28 d6    	vmovaps zmm18,zmm14
  a18a0c:	62 e2 45 48 7f d4    	vpermt2ps zmm18,zmm7,zmm4
  a18a12:	62 f1 0c 48 14 c4    	vunpcklps zmm0,zmm14,zmm4
  a18a18:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm0
  a18a1f:	13 
  a18a20:	62 72 3d 48 7f f4    	vpermt2ps zmm14,zmm8,zmm4
  a18a26:	62 11 7c 48 28 e3    	vmovaps zmm12,zmm27
  a18a2c:	62 52 45 48 7f e2    	vpermt2ps zmm12,zmm7,zmm10
  a18a32:	62 d1 24 40 14 c2    	vunpcklps zmm0,zmm27,zmm10
  a18a38:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm0
  a18a3f:	09 
  a18a40:	62 42 3d 48 7f da    	vpermt2ps zmm27,zmm8,zmm10
  a18a46:	62 11 7c 48 28 d5    	vmovaps zmm10,zmm29
  a18a4c:	62 52 45 48 7f d1    	vpermt2ps zmm10,zmm7,zmm9
  a18a52:	62 d1 14 40 14 c1    	vunpcklps zmm0,zmm29,zmm9
  a18a58:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm0
  a18a5f:	12 
  a18a60:	62 42 3d 48 7f e9    	vpermt2ps zmm29,zmm8,zmm9
  a18a66:	62 41 7c 48 28 f5    	vmovaps zmm30,zmm13
  a18a6c:	62 42 45 48 7f f3    	vpermt2ps zmm30,zmm7,zmm11
  a18a72:	62 d1 14 48 14 c3    	vunpcklps zmm0,zmm13,zmm11
  a18a78:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm0
  a18a7f:	11 
  a18a80:	62 52 3d 48 7f eb    	vpermt2ps zmm13,zmm8,zmm11
  a18a86:	62 71 7c 48 28 de    	vmovaps zmm11,zmm6
  a18a8c:	62 32 45 48 7f dd    	vpermt2ps zmm11,zmm7,zmm21
  a18a92:	62 b1 4c 48 14 c5    	vunpcklps zmm0,zmm6,zmm21
  a18a98:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm0
  a18a9f:	08 
  a18aa0:	62 b2 3d 48 7f f5    	vpermt2ps zmm6,zmm8,zmm21
  a18aa6:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x40]
  a18aad:	01 
  a18aae:	62 e1 7c 48 28 e9    	vmovaps zmm21,zmm1
  a18ab4:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x280]
  a18abb:	0a 
  a18abc:	62 e2 45 48 7f e8    	vpermt2ps zmm21,zmm7,zmm0
  a18ac2:	62 f1 74 48 14 d8    	vunpcklps zmm3,zmm1,zmm0
  a18ac8:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm3
  a18acf:	10 
  a18ad0:	62 f2 3d 48 7f c8    	vpermt2ps zmm1,zmm8,zmm0
  a18ad6:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a18add:	01 
  a18ade:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x80]
  a18ae5:	02 
  a18ae6:	62 61 7c 48 28 c9    	vmovaps zmm25,zmm1
  a18aec:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a18af3:	06 
  a18af4:	62 62 45 48 7f c8    	vpermt2ps zmm25,zmm7,zmm0
  a18afa:	62 f1 74 48 14 d8    	vunpcklps zmm3,zmm1,zmm0
  a18b00:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm3
  a18b07:	0a 
  a18b08:	62 f2 3d 48 7f c8    	vpermt2ps zmm1,zmm8,zmm0
  a18b0e:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  a18b15:	02 
  a18b16:	62 81 7c 48 28 e2    	vmovaps zmm20,zmm26
  a18b1c:	62 82 45 48 7f e4    	vpermt2ps zmm20,zmm7,zmm28
  a18b22:	62 91 2c 40 14 c4    	vunpcklps zmm0,zmm26,zmm28
  a18b28:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm0
  a18b2f:	06 
  a18b30:	62 02 3d 48 7f d4    	vpermt2ps zmm26,zmm8,zmm28
  a18b36:	62 b1 7c 48 28 de    	vmovaps zmm3,zmm22
  a18b3c:	62 92 45 48 7f df    	vpermt2ps zmm3,zmm7,zmm31
  a18b42:	62 91 4c 40 14 c7    	vunpcklps zmm0,zmm22,zmm31
  a18b48:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm0
  a18b4f:	0f 
  a18b50:	62 82 3d 48 7f f7    	vpermt2ps zmm22,zmm8,zmm31
  a18b56:	62 61 7c 48 28 64 24 	vmovaps zmm28,ZMMWORD PTR [rsp+0x2c0]
  a18b5d:	0b 
  a18b5e:	62 91 7c 48 28 ec    	vmovaps zmm5,zmm28
  a18b64:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x580]
  a18b6b:	16 
  a18b6c:	62 f2 45 48 7f ec    	vpermt2ps zmm5,zmm7,zmm4
  a18b72:	62 f1 1c 40 14 c4    	vunpcklps zmm0,zmm28,zmm4
  a18b78:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm0
  a18b7f:	0e 
  a18b80:	62 62 3d 48 7f e4    	vpermt2ps zmm28,zmm8,zmm4
  a18b86:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x140]
  a18b8d:	05 
  a18b8e:	62 61 7c 48 28 f9    	vmovaps zmm31,zmm1
  a18b94:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x1c0]
  a18b9b:	07 
  a18b9c:	62 62 45 48 7f fc    	vpermt2ps zmm31,zmm7,zmm4
  a18ba2:	62 71 74 48 14 cc    	vunpcklps zmm9,zmm1,zmm4
  a18ba8:	62 f2 3d 48 7f cc    	vpermt2ps zmm1,zmm8,zmm4
  a18bae:	62 f1 7c 48 28 e1    	vmovaps zmm4,zmm1
  a18bb4:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x100]
  a18bbb:	04 
  a18bbc:	62 f2 3d 40 77 f8    	vpermi2ps zmm7,zmm24,zmm0
  a18bc2:	62 f1 3c 40 14 c8    	vunpcklps zmm1,zmm24,zmm0
  a18bc8:	62 62 3d 48 7f c0    	vpermt2ps zmm24,zmm8,zmm0
  a18bce:	62 e1 7c 48 11 3e    	vmovups ZMMWORD PTR [rsi],zmm23
  a18bd4:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc0]
  a18bdb:	03 
  a18bdc:	62 f3 7d 48 19 46 06 	vextractf32x4 XMMWORD PTR [rsi+0x60],zmm0,0x3
  a18be3:	03 
  a18be4:	c5 fc 11 56 40       	vmovups YMMWORD PTR [rsi+0x40],ymm2
  a18be9:	62 e1 7c 48 11 9e 70 	vmovups ZMMWORD PTR [rsi+0x70],zmm19
  a18bf0:	00 00 00 
  a18bf3:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x540]
  a18bfa:	15 
  a18bfb:	62 f3 7d 48 19 46 0d 	vextractf32x4 XMMWORD PTR [rsi+0xd0],zmm0,0x3
  a18c02:	03 
  a18c03:	62 e1 7c 28 11 8e b0 	vmovups YMMWORD PTR [rsi+0xb0],ymm17
  a18c0a:	00 00 00 
  a18c0d:	62 e1 7c 48 11 86 e0 	vmovups ZMMWORD PTR [rsi+0xe0],zmm16
  a18c14:	00 00 00 
  a18c17:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x500]
  a18c1e:	14 
  a18c1f:	62 f3 7d 48 19 46 14 	vextractf32x4 XMMWORD PTR [rsi+0x140],zmm0,0x3
  a18c26:	03 
  a18c27:	c5 7c 11 be 20 01 00 	vmovups YMMWORD PTR [rsi+0x120],ymm15
  a18c2e:	00 
  a18c2f:	62 e1 7c 48 11 96 50 	vmovups ZMMWORD PTR [rsi+0x150],zmm18
  a18c36:	01 00 00 
  a18c39:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x4c0]
  a18c40:	13 
  a18c41:	62 f3 7d 48 19 46 1b 	vextractf32x4 XMMWORD PTR [rsi+0x1b0],zmm0,0x3
  a18c48:	03 
  a18c49:	c5 7c 11 b6 90 01 00 	vmovups YMMWORD PTR [rsi+0x190],ymm14
  a18c50:	00 
  a18c51:	62 71 7c 48 11 66 07 	vmovups ZMMWORD PTR [rsi+0x1c0],zmm12
  a18c58:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x240]
  a18c5f:	09 
  a18c60:	62 f3 7d 48 19 46 22 	vextractf32x4 XMMWORD PTR [rsi+0x220],zmm0,0x3
  a18c67:	03 
  a18c68:	62 61 7c 28 11 5e 10 	vmovups YMMWORD PTR [rsi+0x200],ymm27
  a18c6f:	62 71 7c 48 11 96 30 	vmovups ZMMWORD PTR [rsi+0x230],zmm10
  a18c76:	02 00 00 
  a18c79:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x480]
  a18c80:	12 
  a18c81:	62 f3 7d 48 19 46 29 	vextractf32x4 XMMWORD PTR [rsi+0x290],zmm0,0x3
  a18c88:	03 
  a18c89:	62 61 7c 28 11 ae 70 	vmovups YMMWORD PTR [rsi+0x270],ymm29
  a18c90:	02 00 00 
  a18c93:	62 61 7c 48 11 b6 a0 	vmovups ZMMWORD PTR [rsi+0x2a0],zmm30
  a18c9a:	02 00 00 
  a18c9d:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x440]
  a18ca4:	11 
  a18ca5:	62 f3 7d 48 19 46 30 	vextractf32x4 XMMWORD PTR [rsi+0x300],zmm0,0x3
  a18cac:	03 
  a18cad:	c5 7c 11 ae e0 02 00 	vmovups YMMWORD PTR [rsi+0x2e0],ymm13
  a18cb4:	00 
  a18cb5:	62 71 7c 48 11 9e 10 	vmovups ZMMWORD PTR [rsi+0x310],zmm11
  a18cbc:	03 00 00 
  a18cbf:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x200]
  a18cc6:	08 
  a18cc7:	62 f3 7d 48 19 46 37 	vextractf32x4 XMMWORD PTR [rsi+0x370],zmm0,0x3
  a18cce:	03 
  a18ccf:	c5 fc 11 b6 50 03 00 	vmovups YMMWORD PTR [rsi+0x350],ymm6
  a18cd6:	00 
  a18cd7:	62 e1 7c 48 11 6e 0e 	vmovups ZMMWORD PTR [rsi+0x380],zmm21
  a18cde:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x400]
  a18ce5:	10 
  a18ce6:	62 f3 7d 48 19 46 3e 	vextractf32x4 XMMWORD PTR [rsi+0x3e0],zmm0,0x3
  a18ced:	03 
  a18cee:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x40]
  a18cf5:	01 
  a18cf6:	c5 fc 11 86 c0 03 00 	vmovups YMMWORD PTR [rsi+0x3c0],ymm0
  a18cfd:	00 
  a18cfe:	62 61 7c 48 11 8e f0 	vmovups ZMMWORD PTR [rsi+0x3f0],zmm25
  a18d05:	03 00 00 
  a18d08:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x280]
  a18d0f:	0a 
  a18d10:	62 f3 7d 48 19 46 45 	vextractf32x4 XMMWORD PTR [rsi+0x450],zmm0,0x3
  a18d17:	03 
  a18d18:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x80]
  a18d1f:	02 
  a18d20:	c5 fc 11 86 30 04 00 	vmovups YMMWORD PTR [rsi+0x430],ymm0
  a18d27:	00 
  a18d28:	62 e1 7c 48 11 a6 60 	vmovups ZMMWORD PTR [rsi+0x460],zmm20
  a18d2f:	04 00 00 
  a18d32:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a18d39:	06 
  a18d3a:	62 f3 7d 48 19 46 4c 	vextractf32x4 XMMWORD PTR [rsi+0x4c0],zmm0,0x3
  a18d41:	03 
  a18d42:	62 61 7c 28 11 56 25 	vmovups YMMWORD PTR [rsi+0x4a0],ymm26
  a18d49:	62 f1 7c 48 11 9e d0 	vmovups ZMMWORD PTR [rsi+0x4d0],zmm3
  a18d50:	04 00 00 
  a18d53:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x3c0]
  a18d5a:	0f 
  a18d5b:	62 f3 7d 48 19 46 53 	vextractf32x4 XMMWORD PTR [rsi+0x530],zmm0,0x3
  a18d62:	03 
  a18d63:	62 e1 7c 28 11 b6 10 	vmovups YMMWORD PTR [rsi+0x510],ymm22
  a18d6a:	05 00 00 
  a18d6d:	62 f1 7c 48 11 6e 15 	vmovups ZMMWORD PTR [rsi+0x540],zmm5
  a18d74:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x380]
  a18d7b:	0e 
  a18d7c:	62 f3 7d 48 19 46 5a 	vextractf32x4 XMMWORD PTR [rsi+0x5a0],zmm0,0x3
  a18d83:	03 
  a18d84:	62 61 7c 28 11 66 2c 	vmovups YMMWORD PTR [rsi+0x580],ymm28
  a18d8b:	62 61 7c 48 11 be b0 	vmovups ZMMWORD PTR [rsi+0x5b0],zmm31
  a18d92:	05 00 00 
  a18d95:	62 73 7d 48 19 4e 61 	vextractf32x4 XMMWORD PTR [rsi+0x610],zmm9,0x3
  a18d9c:	03 
  a18d9d:	c5 fc 11 a6 f0 05 00 	vmovups YMMWORD PTR [rsi+0x5f0],ymm4
  a18da4:	00 
  a18da5:	62 f1 7c 48 11 be 20 	vmovups ZMMWORD PTR [rsi+0x620],zmm7
  a18dac:	06 00 00 
  a18daf:	62 f3 7d 48 19 4e 68 	vextractf32x4 XMMWORD PTR [rsi+0x680],zmm1,0x3
  a18db6:	03 
  a18db7:	62 61 7c 28 11 46 33 	vmovups YMMWORD PTR [rsi+0x660],ymm24
  a18dbe:	48 89 ec             	mov    rsp,rbp
  a18dc1:	5d                   	pop    rbp
  a18dc2:	c5 f8 77             	vzeroupper
  a18dc5:	c3                   	ret
