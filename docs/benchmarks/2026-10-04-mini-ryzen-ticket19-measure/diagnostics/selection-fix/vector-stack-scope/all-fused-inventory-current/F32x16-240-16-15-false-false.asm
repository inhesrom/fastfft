
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a5bb80 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a5bb80:	55                   	push   rbp
  a5bb81:	48 89 e5             	mov    rbp,rsp
  a5bb84:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a5bb88:	48 81 ec 80 09 00 00 	sub    rsp,0x980
  a5bb8f:	c6 84 24 00 09 00 00 	mov    BYTE PTR [rsp+0x900],0x0
  a5bb96:	00 
  a5bb97:	48 8d 84 24 00 09 00 	lea    rax,[rsp+0x900]
  a5bb9e:	00 
  a5bb9f:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a5bba4:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a5bba9:	62 f1 7c 48 10 1f    	vmovups zmm3,ZMMWORD PTR [rdi]
  a5bbaf:	c5 f8 10 47 60       	vmovups xmm0,XMMWORD PTR [rdi+0x60]
  a5bbb4:	c4 e3 79 21 47 64 10 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x64],0x10
  a5bbbb:	c4 e2 79 18 4f 68    	vbroadcastss xmm1,DWORD PTR [rdi+0x68]
  a5bbc1:	c5 fc 10 57 40       	vmovups ymm2,YMMWORD PTR [rdi+0x40]
  a5bbc6:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a5bbcc:	c4 e3 79 21 47 6c 30 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x6c],0x30
  a5bbd3:	c5 fb 10 4f 70       	vmovsd xmm1,QWORD PTR [rdi+0x70]
  a5bbd8:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a5bbde:	62 f3 ed 48 1a c0 01 	vinsertf64x4 zmm0,zmm2,ymm0,0x1
  a5bbe5:	b0 7f                	mov    al,0x7f
  a5bbe7:	c5 fb 92 c8          	kmovd  k1,eax
  a5bbeb:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a5bbf1:	62 f1 7c 48 28 2d 05 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff637805]        # 93400 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x208b0>
  a5bbf8:	78 63 ff 
  a5bbfb:	62 f1 7c 48 28 cb    	vmovaps zmm1,zmm3
  a5bc01:	62 f2 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm0
  a5bc07:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm1
  a5bc0e:	04 
  a5bc0f:	62 e1 7c 48 28 1d 27 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff637827]        # 93440 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x208f0>
  a5bc16:	78 63 ff 
  a5bc19:	62 f2 65 40 7f d8    	vpermt2ps zmm3,zmm19,zmm0
  a5bc1f:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm3
  a5bc26:	05 
  a5bc27:	c5 f8 10 87 d8 00 00 	vmovups xmm0,XMMWORD PTR [rdi+0xd8]
  a5bc2e:	00 
  a5bc2f:	c4 e3 79 21 87 dc 00 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0xdc],0x10
  a5bc36:	00 00 10 
  a5bc39:	c4 e2 79 18 8f e0 00 	vbroadcastss xmm1,DWORD PTR [rdi+0xe0]
  a5bc40:	00 00 
  a5bc42:	62 f1 7c 48 10 97 78 	vmovups zmm2,ZMMWORD PTR [rdi+0x78]
  a5bc49:	00 00 00 
  a5bc4c:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a5bc52:	c4 e3 79 21 87 e4 00 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0xe4],0x30
  a5bc59:	00 00 30 
  a5bc5c:	c5 fc 10 8f b8 00 00 	vmovups ymm1,YMMWORD PTR [rdi+0xb8]
  a5bc63:	00 
  a5bc64:	c5 fb 10 9f e8 00 00 	vmovsd xmm3,QWORD PTR [rdi+0xe8]
  a5bc6b:	00 
  a5bc6c:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a5bc72:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a5bc79:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a5bc7f:	62 f1 7c 48 28 ca    	vmovaps zmm1,zmm2
  a5bc85:	62 f2 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm0
  a5bc8b:	62 f1 7c 48 28 f9    	vmovaps zmm7,zmm1
  a5bc91:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm1
  a5bc98:	10 
  a5bc99:	62 f2 65 40 7f d0    	vpermt2ps zmm2,zmm19,zmm0
  a5bc9f:	62 f1 7c 48 28 f2    	vmovaps zmm6,zmm2
  a5bca5:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm2
  a5bcac:	16 
  a5bcad:	62 f1 7c 48 10 97 f0 	vmovups zmm2,ZMMWORD PTR [rdi+0xf0]
  a5bcb4:	00 00 00 
  a5bcb7:	c5 f8 10 87 50 01 00 	vmovups xmm0,XMMWORD PTR [rdi+0x150]
  a5bcbe:	00 
  a5bcbf:	c4 e3 79 21 87 54 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x154],0x10
  a5bcc6:	00 00 10 
  a5bcc9:	c5 fc 10 8f 30 01 00 	vmovups ymm1,YMMWORD PTR [rdi+0x130]
  a5bcd0:	00 
  a5bcd1:	c4 e2 79 18 9f 58 01 	vbroadcastss xmm3,DWORD PTR [rdi+0x158]
  a5bcd8:	00 00 
  a5bcda:	c4 e3 61 0c c0 03    	vblendps xmm0,xmm3,xmm0,0x3
  a5bce0:	c4 e3 79 21 87 5c 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x15c],0x30
  a5bce7:	00 00 30 
  a5bcea:	c5 fb 10 9f 60 01 00 	vmovsd xmm3,QWORD PTR [rdi+0x160]
  a5bcf1:	00 
  a5bcf2:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a5bcf8:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a5bcff:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a5bd05:	62 f1 7c 48 28 ca    	vmovaps zmm1,zmm2
  a5bd0b:	62 f2 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm0
  a5bd11:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm1
  a5bd18:	07 
  a5bd19:	62 f2 65 40 7f d0    	vpermt2ps zmm2,zmm19,zmm0
  a5bd1f:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm2
  a5bd26:	03 
  a5bd27:	62 f1 7c 48 10 97 68 	vmovups zmm2,ZMMWORD PTR [rdi+0x168]
  a5bd2e:	01 00 00 
  a5bd31:	c5 f8 10 87 c8 01 00 	vmovups xmm0,XMMWORD PTR [rdi+0x1c8]
  a5bd38:	00 
  a5bd39:	c5 fc 10 8f a8 01 00 	vmovups ymm1,YMMWORD PTR [rdi+0x1a8]
  a5bd40:	00 
  a5bd41:	c4 e3 79 21 87 cc 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x1cc],0x10
  a5bd48:	00 00 10 
  a5bd4b:	c4 e2 79 18 9f d0 01 	vbroadcastss xmm3,DWORD PTR [rdi+0x1d0]
  a5bd52:	00 00 
  a5bd54:	c4 e3 61 0c c0 03    	vblendps xmm0,xmm3,xmm0,0x3
  a5bd5a:	c4 e3 79 21 87 d4 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x1d4],0x30
  a5bd61:	00 00 30 
  a5bd64:	c5 fb 10 9f d8 01 00 	vmovsd xmm3,QWORD PTR [rdi+0x1d8]
  a5bd6b:	00 
  a5bd6c:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a5bd72:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a5bd79:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a5bd7f:	62 71 7c 48 28 fa    	vmovaps zmm15,zmm2
  a5bd85:	62 72 55 48 7f f8    	vpermt2ps zmm15,zmm5,zmm0
  a5bd8b:	62 f2 65 40 7f d0    	vpermt2ps zmm2,zmm19,zmm0
  a5bd91:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm2
  a5bd98:	0a 
  a5bd99:	62 f1 7c 48 10 97 e0 	vmovups zmm2,ZMMWORD PTR [rdi+0x1e0]
  a5bda0:	01 00 00 
  a5bda3:	c5 f8 10 87 40 02 00 	vmovups xmm0,XMMWORD PTR [rdi+0x240]
  a5bdaa:	00 
  a5bdab:	c4 e3 79 21 87 44 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x244],0x10
  a5bdb2:	00 00 10 
  a5bdb5:	c4 e2 79 18 8f 48 02 	vbroadcastss xmm1,DWORD PTR [rdi+0x248]
  a5bdbc:	00 00 
  a5bdbe:	c5 fc 10 9f 20 02 00 	vmovups ymm3,YMMWORD PTR [rdi+0x220]
  a5bdc5:	00 
  a5bdc6:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a5bdcc:	c4 e3 79 21 87 4c 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x24c],0x30
  a5bdd3:	00 00 30 
  a5bdd6:	c5 fb 10 8f 50 02 00 	vmovsd xmm1,QWORD PTR [rdi+0x250]
  a5bddd:	00 
  a5bdde:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a5bde4:	62 f3 e5 48 1a c0 01 	vinsertf64x4 zmm0,zmm3,ymm0,0x1
  a5bdeb:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a5bdf1:	62 f1 7c 48 28 ca    	vmovaps zmm1,zmm2
  a5bdf7:	62 f2 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm0
  a5bdfd:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  a5be04:	02 
  a5be05:	62 f2 65 40 7f d0    	vpermt2ps zmm2,zmm19,zmm0
  a5be0b:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm2
  a5be12:	01 
  a5be13:	c5 f8 10 87 b8 02 00 	vmovups xmm0,XMMWORD PTR [rdi+0x2b8]
  a5be1a:	00 
  a5be1b:	c4 e3 79 21 87 bc 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x2bc],0x10
  a5be22:	00 00 10 
  a5be25:	c4 e2 79 18 8f c0 02 	vbroadcastss xmm1,DWORD PTR [rdi+0x2c0]
  a5be2c:	00 00 
  a5be2e:	62 f1 7c 48 10 97 58 	vmovups zmm2,ZMMWORD PTR [rdi+0x258]
  a5be35:	02 00 00 
  a5be38:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a5be3e:	c4 e3 79 21 87 c4 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x2c4],0x30
  a5be45:	00 00 30 
  a5be48:	c5 fc 10 8f 98 02 00 	vmovups ymm1,YMMWORD PTR [rdi+0x298]
  a5be4f:	00 
  a5be50:	c5 fb 10 9f c8 02 00 	vmovsd xmm3,QWORD PTR [rdi+0x2c8]
  a5be57:	00 
  a5be58:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a5be5e:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a5be65:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a5be6b:	62 f1 7c 48 28 ca    	vmovaps zmm1,zmm2
  a5be71:	62 f2 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm0
  a5be77:	62 71 7c 48 28 c9    	vmovaps zmm9,zmm1
  a5be7d:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm1
  a5be84:	0f 
  a5be85:	62 f2 65 40 7f d0    	vpermt2ps zmm2,zmm19,zmm0
  a5be8b:	62 71 7c 48 28 c2    	vmovaps zmm8,zmm2
  a5be91:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm2
  a5be98:	17 
  a5be99:	62 f1 7c 48 10 97 d0 	vmovups zmm2,ZMMWORD PTR [rdi+0x2d0]
  a5bea0:	02 00 00 
  a5bea3:	c5 f8 10 87 30 03 00 	vmovups xmm0,XMMWORD PTR [rdi+0x330]
  a5beaa:	00 
  a5beab:	c4 e3 79 21 87 34 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x334],0x10
  a5beb2:	00 00 10 
  a5beb5:	c5 fc 10 8f 10 03 00 	vmovups ymm1,YMMWORD PTR [rdi+0x310]
  a5bebc:	00 
  a5bebd:	c4 e2 79 18 9f 38 03 	vbroadcastss xmm3,DWORD PTR [rdi+0x338]
  a5bec4:	00 00 
  a5bec6:	c4 e3 61 0c c0 03    	vblendps xmm0,xmm3,xmm0,0x3
  a5becc:	c4 e3 79 21 87 3c 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x33c],0x30
  a5bed3:	00 00 30 
  a5bed6:	c5 fb 10 9f 40 03 00 	vmovsd xmm3,QWORD PTR [rdi+0x340]
  a5bedd:	00 
  a5bede:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a5bee4:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a5beeb:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a5bef1:	62 f1 7c 48 28 ca    	vmovaps zmm1,zmm2
  a5bef7:	62 f2 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm0
  a5befd:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm1
  a5bf04:	06 
  a5bf05:	62 f2 65 40 7f d0    	vpermt2ps zmm2,zmm19,zmm0
  a5bf0b:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm2
  a5bf12:	0b 
  a5bf13:	62 e1 7c 48 10 8f 48 	vmovups zmm17,ZMMWORD PTR [rdi+0x348]
  a5bf1a:	03 00 00 
  a5bf1d:	c5 f8 10 87 a8 03 00 	vmovups xmm0,XMMWORD PTR [rdi+0x3a8]
  a5bf24:	00 
  a5bf25:	c5 fc 10 8f 88 03 00 	vmovups ymm1,YMMWORD PTR [rdi+0x388]
  a5bf2c:	00 
  a5bf2d:	c4 e3 79 21 87 ac 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x3ac],0x10
  a5bf34:	00 00 10 
  a5bf37:	c4 e2 79 18 9f b0 03 	vbroadcastss xmm3,DWORD PTR [rdi+0x3b0]
  a5bf3e:	00 00 
  a5bf40:	c4 e3 61 0c c0 03    	vblendps xmm0,xmm3,xmm0,0x3
  a5bf46:	c4 e3 79 21 87 b4 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x3b4],0x30
  a5bf4d:	00 00 30 
  a5bf50:	c5 fb 10 9f b8 03 00 	vmovsd xmm3,QWORD PTR [rdi+0x3b8]
  a5bf57:	00 
  a5bf58:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a5bf5e:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a5bf65:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a5bf6b:	62 31 7c 48 28 f1    	vmovaps zmm14,zmm17
  a5bf71:	62 72 55 48 7f f0    	vpermt2ps zmm14,zmm5,zmm0
  a5bf77:	62 e2 65 40 7f c8    	vpermt2ps zmm17,zmm19,zmm0
  a5bf7d:	62 e1 7c 48 10 47 0f 	vmovups zmm16,ZMMWORD PTR [rdi+0x3c0]
  a5bf84:	c5 f8 10 87 20 04 00 	vmovups xmm0,XMMWORD PTR [rdi+0x420]
  a5bf8b:	00 
  a5bf8c:	c4 e3 79 21 87 24 04 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x424],0x10
  a5bf93:	00 00 10 
  a5bf96:	c4 e2 79 18 8f 28 04 	vbroadcastss xmm1,DWORD PTR [rdi+0x428]
  a5bf9d:	00 00 
  a5bf9f:	c5 fc 10 9f 00 04 00 	vmovups ymm3,YMMWORD PTR [rdi+0x400]
  a5bfa6:	00 
  a5bfa7:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a5bfad:	c4 e3 79 21 87 2c 04 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x42c],0x30
  a5bfb4:	00 00 30 
  a5bfb7:	c5 fb 10 8f 30 04 00 	vmovsd xmm1,QWORD PTR [rdi+0x430]
  a5bfbe:	00 
  a5bfbf:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a5bfc5:	62 f3 e5 48 1a c0 01 	vinsertf64x4 zmm0,zmm3,ymm0,0x1
  a5bfcc:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a5bfd2:	62 b1 7c 48 28 c8    	vmovaps zmm1,zmm16
  a5bfd8:	62 f2 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm0
  a5bfde:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm1
  a5bfe5:	09 
  a5bfe6:	62 e2 65 40 7f c0    	vpermt2ps zmm16,zmm19,zmm0
  a5bfec:	c5 f8 10 87 98 04 00 	vmovups xmm0,XMMWORD PTR [rdi+0x498]
  a5bff3:	00 
  a5bff4:	c4 e3 79 21 87 9c 04 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x49c],0x10
  a5bffb:	00 00 10 
  a5bffe:	c4 e2 79 18 8f a0 04 	vbroadcastss xmm1,DWORD PTR [rdi+0x4a0]
  a5c005:	00 00 
  a5c007:	62 e1 7c 48 10 a7 38 	vmovups zmm20,ZMMWORD PTR [rdi+0x438]
  a5c00e:	04 00 00 
  a5c011:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a5c017:	c4 e3 79 21 87 a4 04 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x4a4],0x30
  a5c01e:	00 00 30 
  a5c021:	c5 fc 10 8f 78 04 00 	vmovups ymm1,YMMWORD PTR [rdi+0x478]
  a5c028:	00 
  a5c029:	c5 fb 10 9f a8 04 00 	vmovsd xmm3,QWORD PTR [rdi+0x4a8]
  a5c030:	00 
  a5c031:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a5c037:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a5c03e:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a5c044:	62 a1 7c 48 28 f4    	vmovaps zmm22,zmm20
  a5c04a:	62 e2 55 48 7f f0    	vpermt2ps zmm22,zmm5,zmm0
  a5c050:	62 e2 65 40 7f e0    	vpermt2ps zmm20,zmm19,zmm0
  a5c056:	62 e1 7c 48 10 af b0 	vmovups zmm21,ZMMWORD PTR [rdi+0x4b0]
  a5c05d:	04 00 00 
  a5c060:	c5 f8 10 87 10 05 00 	vmovups xmm0,XMMWORD PTR [rdi+0x510]
  a5c067:	00 
  a5c068:	c4 e3 79 21 87 14 05 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x514],0x10
  a5c06f:	00 00 10 
  a5c072:	c5 fc 10 8f f0 04 00 	vmovups ymm1,YMMWORD PTR [rdi+0x4f0]
  a5c079:	00 
  a5c07a:	c4 e2 79 18 9f 18 05 	vbroadcastss xmm3,DWORD PTR [rdi+0x518]
  a5c081:	00 00 
  a5c083:	c4 e3 61 0c c0 03    	vblendps xmm0,xmm3,xmm0,0x3
  a5c089:	c4 e3 79 21 87 1c 05 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x51c],0x30
  a5c090:	00 00 30 
  a5c093:	c5 fb 10 9f 20 05 00 	vmovsd xmm3,QWORD PTR [rdi+0x520]
  a5c09a:	00 
  a5c09b:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a5c0a1:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a5c0a8:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a5c0ae:	62 a1 7c 48 28 fd    	vmovaps zmm23,zmm21
  a5c0b4:	62 e2 55 48 7f f8    	vpermt2ps zmm23,zmm5,zmm0
  a5c0ba:	62 e2 65 40 7f e8    	vpermt2ps zmm21,zmm19,zmm0
  a5c0c0:	62 61 7c 48 10 87 28 	vmovups zmm24,ZMMWORD PTR [rdi+0x528]
  a5c0c7:	05 00 00 
  a5c0ca:	c5 f8 10 87 88 05 00 	vmovups xmm0,XMMWORD PTR [rdi+0x588]
  a5c0d1:	00 
  a5c0d2:	c5 fc 10 8f 68 05 00 	vmovups ymm1,YMMWORD PTR [rdi+0x568]
  a5c0d9:	00 
  a5c0da:	c4 e3 79 21 87 8c 05 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x58c],0x10
  a5c0e1:	00 00 10 
  a5c0e4:	c4 e2 79 18 9f 90 05 	vbroadcastss xmm3,DWORD PTR [rdi+0x590]
  a5c0eb:	00 00 
  a5c0ed:	c4 e3 61 0c c0 03    	vblendps xmm0,xmm3,xmm0,0x3
  a5c0f3:	c4 e3 79 21 87 94 05 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x594],0x30
  a5c0fa:	00 00 30 
  a5c0fd:	c5 fb 10 9f 98 05 00 	vmovsd xmm3,QWORD PTR [rdi+0x598]
  a5c104:	00 
  a5c105:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a5c10b:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a5c112:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a5c118:	62 01 7c 48 28 d8    	vmovaps zmm27,zmm24
  a5c11e:	62 62 55 48 7f d8    	vpermt2ps zmm27,zmm5,zmm0
  a5c124:	62 62 65 40 7f c0    	vpermt2ps zmm24,zmm19,zmm0
  a5c12a:	62 61 7c 48 10 8f a0 	vmovups zmm25,ZMMWORD PTR [rdi+0x5a0]
  a5c131:	05 00 00 
  a5c134:	c5 f8 10 87 00 06 00 	vmovups xmm0,XMMWORD PTR [rdi+0x600]
  a5c13b:	00 
  a5c13c:	c4 e3 79 21 87 04 06 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x604],0x10
  a5c143:	00 00 10 
  a5c146:	c4 e2 79 18 8f 08 06 	vbroadcastss xmm1,DWORD PTR [rdi+0x608]
  a5c14d:	00 00 
  a5c14f:	c5 fc 10 9f e0 05 00 	vmovups ymm3,YMMWORD PTR [rdi+0x5e0]
  a5c156:	00 
  a5c157:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a5c15d:	c4 e3 79 21 87 0c 06 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x60c],0x30
  a5c164:	00 00 30 
  a5c167:	c5 fb 10 8f 10 06 00 	vmovsd xmm1,QWORD PTR [rdi+0x610]
  a5c16e:	00 
  a5c16f:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a5c175:	62 f3 e5 48 1a c0 01 	vinsertf64x4 zmm0,zmm3,ymm0,0x1
  a5c17c:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a5c182:	62 01 7c 48 28 d1    	vmovaps zmm26,zmm25
  a5c188:	62 62 55 48 7f d0    	vpermt2ps zmm26,zmm5,zmm0
  a5c18e:	62 62 65 40 7f c8    	vpermt2ps zmm25,zmm19,zmm0
  a5c194:	c5 f8 10 87 78 06 00 	vmovups xmm0,XMMWORD PTR [rdi+0x678]
  a5c19b:	00 
  a5c19c:	c4 e3 79 21 87 7c 06 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x67c],0x10
  a5c1a3:	00 00 10 
  a5c1a6:	c4 e2 79 18 8f 80 06 	vbroadcastss xmm1,DWORD PTR [rdi+0x680]
  a5c1ad:	00 00 
  a5c1af:	62 61 7c 48 10 a7 18 	vmovups zmm28,ZMMWORD PTR [rdi+0x618]
  a5c1b6:	06 00 00 
  a5c1b9:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a5c1bf:	c4 e3 79 21 87 84 06 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x684],0x30
  a5c1c6:	00 00 30 
  a5c1c9:	c5 fc 10 8f 58 06 00 	vmovups ymm1,YMMWORD PTR [rdi+0x658]
  a5c1d0:	00 
  a5c1d1:	c5 fb 10 9f 88 06 00 	vmovsd xmm3,QWORD PTR [rdi+0x688]
  a5c1d8:	00 
  a5c1d9:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a5c1df:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a5c1e6:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a5c1ec:	62 01 7c 48 28 ec    	vmovaps zmm29,zmm28
  a5c1f2:	62 62 55 48 7f e8    	vpermt2ps zmm29,zmm5,zmm0
  a5c1f8:	c5 f8 10 8f f0 06 00 	vmovups xmm1,XMMWORD PTR [rdi+0x6f0]
  a5c1ff:	00 
  a5c200:	c4 e3 71 21 8f f4 06 	vinsertps xmm1,xmm1,DWORD PTR [rdi+0x6f4],0x10
  a5c207:	00 00 10 
  a5c20a:	c4 e2 79 18 9f f8 06 	vbroadcastss xmm3,DWORD PTR [rdi+0x6f8]
  a5c211:	00 00 
  a5c213:	62 62 65 40 7f e0    	vpermt2ps zmm28,zmm19,zmm0
  a5c219:	c4 e3 61 0c c1 03    	vblendps xmm0,xmm3,xmm1,0x3
  a5c21f:	c4 e3 79 21 87 fc 06 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x6fc],0x30
  a5c226:	00 00 30 
  a5c229:	c5 f8 10 8f 68 07 00 	vmovups xmm1,XMMWORD PTR [rdi+0x768]
  a5c230:	00 
  a5c231:	c4 e3 71 21 8f 6c 07 	vinsertps xmm1,xmm1,DWORD PTR [rdi+0x76c],0x10
  a5c238:	00 00 10 
  a5c23b:	c5 fb 10 9f 00 07 00 	vmovsd xmm3,QWORD PTR [rdi+0x700]
  a5c242:	00 
  a5c243:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a5c249:	c5 fc 10 9f d0 06 00 	vmovups ymm3,YMMWORD PTR [rdi+0x6d0]
  a5c250:	00 
  a5c251:	c4 e2 79 18 a7 70 07 	vbroadcastss xmm4,DWORD PTR [rdi+0x770]
  a5c258:	00 00 
  a5c25a:	62 f3 e5 48 1a c0 01 	vinsertf64x4 zmm0,zmm3,ymm0,0x1
  a5c261:	c4 e3 59 0c c9 03    	vblendps xmm1,xmm4,xmm1,0x3
  a5c267:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a5c26d:	62 61 7c 48 10 bf 90 	vmovups zmm31,ZMMWORD PTR [rdi+0x690]
  a5c274:	06 00 00 
  a5c277:	62 01 7c 48 28 f7    	vmovaps zmm30,zmm31
  a5c27d:	62 62 55 48 7f f0    	vpermt2ps zmm30,zmm5,zmm0
  a5c283:	c4 e3 71 21 8f 74 07 	vinsertps xmm1,xmm1,DWORD PTR [rdi+0x774],0x30
  a5c28a:	00 00 30 
  a5c28d:	62 62 65 40 7f f8    	vpermt2ps zmm31,zmm19,zmm0
  a5c293:	c5 fb 10 87 78 07 00 	vmovsd xmm0,QWORD PTR [rdi+0x778]
  a5c29a:	00 
  a5c29b:	c4 e3 75 18 c0 01    	vinsertf128 ymm0,ymm1,xmm0,0x1
  a5c2a1:	c5 fc 10 8f 48 07 00 	vmovups ymm1,YMMWORD PTR [rdi+0x748]
  a5c2a8:	00 
  a5c2a9:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a5c2b0:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a5c2b6:	62 71 7c 48 10 97 08 	vmovups zmm10,ZMMWORD PTR [rdi+0x708]
  a5c2bd:	07 00 00 
  a5c2c0:	62 f2 2d 48 77 e8    	vpermi2ps zmm5,zmm10,zmm0
  a5c2c6:	62 72 65 40 7f d0    	vpermt2ps zmm10,zmm19,zmm0
  a5c2cc:	62 a1 44 48 5c de    	vsubps zmm19,zmm7,zmm22
  a5c2d2:	62 11 3c 48 5c ec    	vsubps zmm13,zmm8,zmm28
  a5c2d8:	62 d1 64 40 58 fd    	vaddps zmm7,zmm19,zmm13
  a5c2de:	62 31 4c 48 5c e4    	vsubps zmm12,zmm6,zmm20
  a5c2e4:	62 51 14 40 5c d9    	vsubps zmm11,zmm29,zmm9
  a5c2ea:	62 72 7d 48 18 05 70 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff619370]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a5c2f1:	93 61 ff 
  a5c2f4:	62 51 24 48 58 cc    	vaddps zmm9,zmm11,zmm12
  a5c2fa:	62 d1 34 48 59 c0    	vmulps zmm0,zmm9,zmm8
  a5c300:	62 f2 7d 48 18 35 f6 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff6193f6]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a5c307:	93 61 ff 
  a5c30a:	62 f2 45 48 b8 c6    	vfmadd231ps zmm0,zmm7,zmm6
  a5c310:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm0
  a5c317:	0e 
  a5c318:	62 f1 34 48 59 c6    	vmulps zmm0,zmm9,zmm6
  a5c31e:	62 f2 3d 48 bc c7    	vfnmadd231ps zmm0,zmm8,zmm7
  a5c324:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm0
  a5c32b:	0d 
  a5c32c:	62 91 04 48 5c e3    	vsubps zmm4,zmm15,zmm27
  a5c332:	62 d1 74 40 5c da    	vsubps zmm3,zmm17,zmm10
  a5c338:	62 f1 5c 48 58 c3    	vaddps zmm0,zmm4,zmm3
  a5c33e:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x280]
  a5c345:	0a 
  a5c346:	62 91 34 48 5c d0    	vsubps zmm2,zmm9,zmm24
  a5c34c:	62 d1 54 48 5c ce    	vsubps zmm1,zmm5,zmm14
  a5c352:	62 f1 74 48 58 fa    	vaddps zmm7,zmm1,zmm2
  a5c358:	62 e1 44 48 59 d6    	vmulps zmm18,zmm7,zmm6
  a5c35e:	62 c2 7d 48 b8 d0    	vfmadd231ps zmm18,zmm0,zmm8
  a5c364:	62 e1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm18
  a5c36b:	08 
  a5c36c:	62 d1 44 48 59 f8    	vmulps zmm7,zmm7,zmm8
  a5c372:	62 f2 4d 48 bc f8    	vfnmadd231ps zmm7,zmm6,zmm0
  a5c378:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm7
  a5c37f:	0c 
  a5c380:	62 d1 64 40 5c c5    	vsubps zmm0,zmm19,zmm13
  a5c386:	62 51 1c 48 5c db    	vsubps zmm11,zmm12,zmm11
  a5c38c:	62 f1 5c 48 5c e3    	vsubps zmm4,zmm4,zmm3
  a5c392:	62 71 6c 48 5c e1    	vsubps zmm12,zmm2,zmm1
  a5c398:	62 f1 24 48 59 ce    	vmulps zmm1,zmm11,zmm6
  a5c39e:	62 d2 7d 48 b8 c8    	vfmadd231ps zmm1,zmm0,zmm8
  a5c3a4:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm1
  a5c3ab:	12 
  a5c3ac:	62 d1 24 48 59 c8    	vmulps zmm1,zmm11,zmm8
  a5c3b2:	62 f2 4d 48 bc c8    	vfnmadd231ps zmm1,zmm6,zmm0
  a5c3b8:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm1
  a5c3bf:	18 
  a5c3c0:	62 d1 1c 48 59 c0    	vmulps zmm0,zmm12,zmm8
  a5c3c6:	62 f2 5d 48 b8 c6    	vfmadd231ps zmm0,zmm4,zmm6
  a5c3cc:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm0
  a5c3d3:	11 
  a5c3d4:	62 c1 5c 48 59 d8    	vmulps zmm19,zmm4,zmm8
  a5c3da:	62 e2 1d 48 bc de    	vfnmadd231ps zmm19,zmm12,zmm6
  a5c3e0:	62 f1 4c 40 58 64 24 	vaddps zmm4,zmm22,ZMMWORD PTR [rsp+0x400]
  a5c3e7:	10 
  a5c3e8:	62 f1 14 40 58 74 24 	vaddps zmm6,zmm29,ZMMWORD PTR [rsp+0x3c0]
  a5c3ef:	0f 
  a5c3f0:	62 11 04 48 58 c3    	vaddps zmm8,zmm15,zmm27
  a5c3f6:	62 f1 0c 48 58 ed    	vaddps zmm5,zmm14,zmm5
  a5c3fc:	62 71 5c 40 58 5c 24 	vaddps zmm11,zmm20,ZMMWORD PTR [rsp+0x580]
  a5c403:	16 
  a5c404:	62 71 1c 40 58 64 24 	vaddps zmm12,zmm28,ZMMWORD PTR [rsp+0x5c0]
  a5c40b:	17 
  a5c40c:	62 11 34 48 58 e8    	vaddps zmm13,zmm9,zmm24
  a5c412:	62 51 74 40 58 d2    	vaddps zmm10,zmm17,zmm10
  a5c418:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x100]
  a5c41f:	04 
  a5c420:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x240]
  a5c427:	09 
  a5c428:	62 71 7c 48 58 f1    	vaddps zmm14,zmm0,zmm1
  a5c42e:	62 e1 7c 48 5c c9    	vsubps zmm17,zmm0,zmm1
  a5c434:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x40]
  a5c43b:	01 
  a5c43c:	62 81 7c 48 58 e1    	vaddps zmm20,zmm0,zmm25
  a5c442:	62 81 7c 48 5c f1    	vsubps zmm22,zmm0,zmm25
  a5c448:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x1c0]
  a5c44f:	07 
  a5c450:	62 21 7c 48 58 c7    	vaddps zmm24,zmm0,zmm23
  a5c456:	62 a1 7c 48 5c ff    	vsubps zmm23,zmm0,zmm23
  a5c45c:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc0]
  a5c463:	03 
  a5c464:	62 21 7c 48 58 cd    	vaddps zmm25,zmm0,zmm21
  a5c46a:	62 a1 7c 48 5c ed    	vsubps zmm21,zmm0,zmm21
  a5c470:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x2c0]
  a5c477:	0b 
  a5c478:	62 01 7c 48 58 df    	vaddps zmm27,zmm0,zmm31
  a5c47e:	62 81 7c 48 5c d7    	vsubps zmm18,zmm0,zmm31
  a5c484:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a5c48b:	06 
  a5c48c:	62 01 7c 48 58 e6    	vaddps zmm28,zmm0,zmm30
  a5c492:	62 01 7c 48 5c ee    	vsubps zmm29,zmm0,zmm30
  a5c498:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x140]
  a5c49f:	05 
  a5c4a0:	62 21 7c 48 58 f0    	vaddps zmm30,zmm0,zmm16
  a5c4a6:	62 a1 7c 48 5c c0    	vsubps zmm16,zmm0,zmm16
  a5c4ac:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x80]
  a5c4b3:	02 
  a5c4b4:	62 01 7c 48 58 fa    	vaddps zmm31,zmm0,zmm26
  a5c4ba:	62 61 2c 40 5c d0    	vsubps zmm26,zmm26,zmm0
  a5c4c0:	62 b1 44 40 58 c5    	vaddps zmm0,zmm23,zmm21
  a5c4c6:	62 a1 54 40 5c ef    	vsubps zmm21,zmm21,zmm23
  a5c4cc:	62 81 6c 40 5c fd    	vsubps zmm23,zmm18,zmm29
  a5c4d2:	62 a1 14 40 58 d2    	vaddps zmm18,zmm29,zmm18
  a5c4d8:	62 01 0c 48 58 ef    	vaddps zmm29,zmm14,zmm31
  a5c4de:	62 11 0c 48 5c f7    	vsubps zmm14,zmm14,zmm31
  a5c4e4:	62 01 34 40 58 fb    	vaddps zmm31,zmm25,zmm27
  a5c4ea:	62 01 34 40 5c cb    	vsubps zmm25,zmm25,zmm27
  a5c4f0:	62 61 5c 48 58 de    	vaddps zmm27,zmm4,zmm6
  a5c4f6:	62 f1 5c 48 5c e6    	vsubps zmm4,zmm4,zmm6
  a5c4fc:	62 d1 24 48 58 f4    	vaddps zmm6,zmm11,zmm12
  a5c502:	62 51 24 48 5c dc    	vsubps zmm11,zmm11,zmm12
  a5c508:	62 51 14 48 58 e2    	vaddps zmm12,zmm13,zmm10
  a5c50e:	62 51 14 48 5c d2    	vsubps zmm10,zmm13,zmm10
  a5c514:	62 71 3c 48 58 ed    	vaddps zmm13,zmm8,zmm5
  a5c51a:	62 f1 3c 48 5c ed    	vsubps zmm5,zmm8,zmm5
  a5c520:	62 31 0c 40 58 c4    	vaddps zmm8,zmm30,zmm20
  a5c526:	62 a1 0c 40 5c e4    	vsubps zmm20,zmm30,zmm20
  a5c52c:	62 01 3c 40 58 f4    	vaddps zmm30,zmm24,zmm28
  a5c532:	62 01 1c 40 5c c0    	vsubps zmm24,zmm28,zmm24
  a5c538:	62 41 5c 48 58 e3    	vaddps zmm28,zmm4,zmm11
  a5c53e:	62 f1 24 48 5c e4    	vsubps zmm4,zmm11,zmm4
  a5c544:	62 71 2c 48 5c dd    	vsubps zmm11,zmm10,zmm5
  a5c54a:	62 d1 54 48 58 ea    	vaddps zmm5,zmm5,zmm10
  a5c550:	62 72 7d 48 18 15 42 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff618e42]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a5c557:	8e 61 ff 
  a5c55a:	62 d1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm10
  a5c560:	62 c1 44 40 59 fa    	vmulps zmm23,zmm23,zmm10
  a5c566:	62 c1 54 40 59 ea    	vmulps zmm21,zmm21,zmm10
  a5c56c:	62 c1 6c 40 59 d2    	vmulps zmm18,zmm18,zmm10
  a5c572:	62 41 1c 40 59 e2    	vmulps zmm28,zmm28,zmm10
  a5c578:	62 51 24 48 59 da    	vmulps zmm11,zmm11,zmm10
  a5c57e:	62 d1 5c 48 59 e2    	vmulps zmm4,zmm4,zmm10
  a5c584:	62 d1 54 48 59 ea    	vmulps zmm5,zmm5,zmm10
  a5c58a:	62 31 74 40 58 d6    	vaddps zmm10,zmm17,zmm22
  a5c590:	62 a1 74 40 5c ce    	vsubps zmm17,zmm17,zmm22
  a5c596:	62 a1 54 40 5c f2    	vsubps zmm22,zmm21,zmm18
  a5c59c:	62 a1 54 40 58 d2    	vaddps zmm18,zmm21,zmm18
  a5c5a2:	62 a1 2c 40 58 e8    	vaddps zmm21,zmm26,zmm16
  a5c5a8:	62 81 7c 40 5c c2    	vsubps zmm16,zmm16,zmm26
  a5c5ae:	62 21 7c 48 58 d7    	vaddps zmm26,zmm0,zmm23
  a5c5b4:	62 f1 44 40 5c f8    	vsubps zmm7,zmm23,zmm0
  a5c5ba:	62 81 14 40 58 fe    	vaddps zmm23,zmm29,zmm30
  a5c5c0:	62 91 14 40 5c c6    	vsubps zmm0,zmm29,zmm30
  a5c5c6:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a5c5cd:	03 
  a5c5ce:	62 41 4c 48 58 f4    	vaddps zmm30,zmm6,zmm12
  a5c5d4:	62 d1 4c 48 5c c4    	vsubps zmm0,zmm6,zmm12
  a5c5da:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a5c5e1:	02 
  a5c5e2:	62 91 3c 48 58 f7    	vaddps zmm6,zmm8,zmm31
  a5c5e8:	62 91 3c 48 5c c7    	vsubps zmm0,zmm8,zmm31
  a5c5ee:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a5c5f5:	01 
  a5c5f6:	62 51 24 40 58 c5    	vaddps zmm8,zmm27,zmm13
  a5c5fc:	62 01 14 48 5c fb    	vsubps zmm31,zmm13,zmm27
  a5c602:	62 11 2c 48 58 e2    	vaddps zmm12,zmm10,zmm26
  a5c608:	62 01 2c 48 5c ea    	vsubps zmm29,zmm10,zmm26
  a5c60e:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x340]
  a5c615:	0d 
  a5c616:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x300]
  a5c61d:	0c 
  a5c61e:	62 61 7c 48 58 d1    	vaddps zmm26,zmm0,zmm1
  a5c624:	62 71 7c 48 5c f9    	vsubps zmm15,zmm0,zmm1
  a5c62a:	62 21 54 40 58 de    	vaddps zmm27,zmm21,zmm22
  a5c630:	62 31 54 40 5c ee    	vsubps zmm13,zmm21,zmm22
  a5c636:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x380]
  a5c63d:	0e 
  a5c63e:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x200]
  a5c645:	08 
  a5c646:	62 e1 7c 48 58 e9    	vaddps zmm21,zmm0,zmm1
  a5c64c:	62 71 74 48 5c d0    	vsubps zmm10,zmm1,zmm0
  a5c652:	62 91 0c 48 58 d9    	vaddps zmm3,zmm14,zmm25
  a5c658:	62 11 0c 48 5c f1    	vsubps zmm14,zmm14,zmm25
  a5c65e:	62 61 5c 48 5c cd    	vsubps zmm25,zmm4,zmm5
  a5c664:	62 71 5c 48 58 cd    	vaddps zmm9,zmm4,zmm5
  a5c66a:	62 b1 3c 40 58 d4    	vaddps zmm2,zmm24,zmm20
  a5c670:	62 81 5c 40 5c e0    	vsubps zmm20,zmm20,zmm24
  a5c676:	62 41 1c 40 58 c3    	vaddps zmm24,zmm28,zmm11
  a5c67c:	62 11 24 48 5c dc    	vsubps zmm11,zmm11,zmm28
  a5c682:	62 21 74 40 58 e2    	vaddps zmm28,zmm17,zmm18
  a5c688:	62 a1 74 40 5c d2    	vsubps zmm18,zmm17,zmm18
  a5c68e:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x600]
  a5c695:	18 
  a5c696:	62 b1 7c 48 58 cb    	vaddps zmm1,zmm0,zmm19
  a5c69c:	62 a1 7c 48 5c db    	vsubps zmm19,zmm0,zmm19
  a5c6a2:	62 f1 7c 40 58 c7    	vaddps zmm0,zmm16,zmm7
  a5c6a8:	62 e1 7c 40 5c c7    	vsubps zmm16,zmm16,zmm7
  a5c6ae:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x480]
  a5c6b5:	12 
  a5c6b6:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x440]
  a5c6bd:	11 
  a5c6be:	62 f1 5c 48 5c fd    	vsubps zmm7,zmm4,zmm5
  a5c6c4:	62 f1 5c 48 58 e5    	vaddps zmm4,zmm4,zmm5
  a5c6ca:	62 c1 44 40 58 c8    	vaddps zmm17,zmm23,zmm8
  a5c6d0:	62 d1 44 40 5c e8    	vsubps zmm5,zmm23,zmm8
  a5c6d6:	62 11 4c 48 58 c6    	vaddps zmm8,zmm6,zmm30
  a5c6dc:	62 91 4c 48 5c f6    	vsubps zmm6,zmm6,zmm30
  a5c6e2:	62 a1 1c 48 58 fd    	vaddps zmm23,zmm12,zmm21
  a5c6e8:	62 21 1c 48 5c f5    	vsubps zmm30,zmm12,zmm21
  a5c6ee:	62 11 24 40 58 e2    	vaddps zmm12,zmm27,zmm26
  a5c6f4:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm12
  a5c6fb:	04 
  a5c6fc:	62 11 24 40 5c e2    	vsubps zmm12,zmm27,zmm26
  a5c702:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm12
  a5c709:	08 
  a5c70a:	62 81 64 48 58 f0    	vaddps zmm22,zmm3,zmm24
  a5c710:	62 91 64 48 5c d8    	vsubps zmm3,zmm3,zmm24
  a5c716:	62 11 6c 48 58 e1    	vaddps zmm12,zmm2,zmm25
  a5c71c:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm12
  a5c723:	07 
  a5c724:	62 91 6c 48 5c d1    	vsubps zmm2,zmm2,zmm25
  a5c72a:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm2
  a5c731:	09 
  a5c732:	62 61 1c 40 58 cf    	vaddps zmm25,zmm28,zmm7
  a5c738:	62 f1 1c 40 5c d7    	vsubps zmm2,zmm28,zmm7
  a5c73e:	62 f1 7c 48 58 f9    	vaddps zmm7,zmm0,zmm1
  a5c744:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm7
  a5c74b:	05 
  a5c74c:	62 f1 7c 48 5c f9    	vsubps zmm7,zmm0,zmm1
  a5c752:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc0]
  a5c759:	03 
  a5c75a:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x80]
  a5c761:	02 
  a5c762:	62 61 7c 48 58 c1    	vaddps zmm24,zmm0,zmm1
  a5c768:	62 f1 7c 48 5c c1    	vsubps zmm0,zmm0,zmm1
  a5c76e:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x40]
  a5c775:	01 
  a5c776:	62 d1 04 40 58 cc    	vaddps zmm1,zmm31,zmm12
  a5c77c:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm1
  a5c783:	0b 
  a5c784:	62 91 1c 48 5c cf    	vsubps zmm1,zmm12,zmm31
  a5c78a:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm1
  a5c791:	0e 
  a5c792:	62 c1 14 40 58 ef    	vaddps zmm21,zmm29,zmm15
  a5c798:	62 d1 14 40 5c cf    	vsubps zmm1,zmm29,zmm15
  a5c79e:	62 51 14 48 58 e2    	vaddps zmm12,zmm13,zmm10
  a5c7a4:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm12
  a5c7ab:	0a 
  a5c7ac:	62 51 14 48 5c fa    	vsubps zmm15,zmm13,zmm10
  a5c7b2:	62 51 0c 48 58 e1    	vaddps zmm12,zmm14,zmm9
  a5c7b8:	62 41 0c 48 5c f9    	vsubps zmm31,zmm14,zmm9
  a5c7be:	62 51 5c 40 58 cb    	vaddps zmm9,zmm20,zmm11
  a5c7c4:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm9
  a5c7cb:	03 
  a5c7cc:	62 51 5c 40 5c cb    	vsubps zmm9,zmm20,zmm11
  a5c7d2:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm9
  a5c7d9:	0d 
  a5c7da:	62 21 6c 40 58 db    	vaddps zmm27,zmm18,zmm19
  a5c7e0:	62 31 6c 40 5c db    	vsubps zmm11,zmm18,zmm19
  a5c7e6:	62 e1 7c 40 5c dc    	vsubps zmm19,zmm16,zmm4
  a5c7ec:	62 61 7c 40 58 e4    	vaddps zmm28,zmm16,zmm4
  a5c7f2:	62 71 7c 48 28 35 84 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff66a784]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a5c7f9:	a7 66 ff 
  a5c7fc:	62 b1 7c 48 28 e1    	vmovaps zmm4,zmm17
  a5c802:	62 f2 0d 48 7f e5    	vpermt2ps zmm4,zmm14,zmm5
  a5c808:	62 61 7c 48 28 2d ae 	vmovaps zmm29,ZMMWORD PTR [rip+0xffffffffff66a7ae]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a5c80f:	a7 66 ff 
  a5c812:	62 e2 15 40 7f cd    	vpermt2ps zmm17,zmm29,zmm5
  a5c818:	62 31 7c 48 28 ef    	vmovaps zmm13,zmm23
  a5c81e:	62 12 0d 48 7f ee    	vpermt2ps zmm13,zmm14,zmm30
  a5c824:	62 82 15 40 7f fe    	vpermt2ps zmm23,zmm29,zmm30
  a5c82a:	62 a1 7c 48 28 c6    	vmovaps zmm16,zmm22
  a5c830:	62 e2 0d 48 7f c3    	vpermt2ps zmm16,zmm14,zmm3
  a5c836:	62 e2 15 40 7f f3    	vpermt2ps zmm22,zmm29,zmm3
  a5c83c:	62 e1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm22
  a5c843:	01 
  a5c844:	62 01 7c 48 28 f1    	vmovaps zmm30,zmm25
  a5c84a:	62 62 0d 48 7f f2    	vpermt2ps zmm30,zmm14,zmm2
  a5c850:	62 62 15 40 7f ca    	vpermt2ps zmm25,zmm29,zmm2
  a5c856:	62 61 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm25
  a5c85d:	06 
  a5c85e:	62 91 7c 48 28 d8    	vmovaps zmm3,zmm24
  a5c864:	62 f2 0d 48 7f d8    	vpermt2ps zmm3,zmm14,zmm0
  a5c86a:	62 62 15 40 7f c0    	vpermt2ps zmm24,zmm29,zmm0
  a5c870:	62 a1 7c 48 28 d5    	vmovaps zmm18,zmm21
  a5c876:	62 e2 0d 48 7f d1    	vpermt2ps zmm18,zmm14,zmm1
  a5c87c:	62 e2 15 40 7f e9    	vpermt2ps zmm21,zmm29,zmm1
  a5c882:	62 d1 7c 48 28 cc    	vmovaps zmm1,zmm12
  a5c888:	62 92 0d 48 7f cf    	vpermt2ps zmm1,zmm14,zmm31
  a5c88e:	62 12 15 40 7f e7    	vpermt2ps zmm12,zmm29,zmm31
  a5c894:	62 81 7c 48 28 e3    	vmovaps zmm20,zmm27
  a5c89a:	62 c2 0d 48 7f e3    	vpermt2ps zmm20,zmm14,zmm11
  a5c8a0:	62 42 15 40 7f db    	vpermt2ps zmm27,zmm29,zmm11
  a5c8a6:	62 d1 7c 48 28 c0    	vmovaps zmm0,zmm8
  a5c8ac:	62 72 0d 48 7f c6    	vpermt2ps zmm8,zmm14,zmm6
  a5c8b2:	62 f2 15 40 7f c6    	vpermt2ps zmm0,zmm29,zmm6
  a5c8b8:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a5c8bf:	02 
  a5c8c0:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x100]
  a5c8c7:	04 
  a5c8c8:	62 61 7c 48 28 d0    	vmovaps zmm26,zmm0
  a5c8ce:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x200]
  a5c8d5:	08 
  a5c8d6:	62 62 0d 48 7f d2    	vpermt2ps zmm26,zmm14,zmm2
  a5c8dc:	62 f2 15 40 7f c2    	vpermt2ps zmm0,zmm29,zmm2
  a5c8e2:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a5c8e9:	04 
  a5c8ea:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x1c0]
  a5c8f1:	07 
  a5c8f2:	62 51 7c 48 28 da    	vmovaps zmm11,zmm10
  a5c8f8:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x240]
  a5c8ff:	09 
  a5c900:	62 72 0d 48 7f d8    	vpermt2ps zmm11,zmm14,zmm0
  a5c906:	62 72 15 40 7f d0    	vpermt2ps zmm10,zmm29,zmm0
  a5c90c:	62 d1 7c 48 28 d2    	vmovaps zmm2,zmm10
  a5c912:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x140]
  a5c919:	05 
  a5c91a:	62 61 7c 48 28 c8    	vmovaps zmm25,zmm0
  a5c920:	62 62 0d 48 7f cf    	vpermt2ps zmm25,zmm14,zmm7
  a5c926:	62 f2 15 40 7f c7    	vpermt2ps zmm0,zmm29,zmm7
  a5c92c:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  a5c933:	05 
  a5c934:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x2c0]
  a5c93b:	0b 
  a5c93c:	62 f1 7c 48 28 c7    	vmovaps zmm0,zmm7
  a5c942:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x380]
  a5c949:	0e 
  a5c94a:	62 f2 0d 48 7f c6    	vpermt2ps zmm0,zmm14,zmm6
  a5c950:	62 f2 15 40 7f fe    	vpermt2ps zmm7,zmm29,zmm6
  a5c956:	62 e1 7c 48 28 74 24 	vmovaps zmm22,ZMMWORD PTR [rsp+0x280]
  a5c95d:	0a 
  a5c95e:	62 b1 7c 48 28 ee    	vmovaps zmm5,zmm22
  a5c964:	62 d2 0d 48 7f ef    	vpermt2ps zmm5,zmm14,zmm15
  a5c96a:	62 c2 15 40 7f f7    	vpermt2ps zmm22,zmm29,zmm15
  a5c970:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0xc0]
  a5c977:	03 
  a5c978:	62 41 7c 48 28 f9    	vmovaps zmm31,zmm9
  a5c97e:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x340]
  a5c985:	0d 
  a5c986:	62 62 0d 48 7f fe    	vpermt2ps zmm31,zmm14,zmm6
  a5c98c:	62 72 15 40 7f ce    	vpermt2ps zmm9,zmm29,zmm6
  a5c992:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm9
  a5c999:	03 
  a5c99a:	62 12 65 40 77 f4    	vpermi2ps zmm14,zmm19,zmm28
  a5c9a0:	62 82 15 40 7f dc    	vpermt2ps zmm19,zmm29,zmm28
  a5c9a6:	62 e1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm19
  a5c9ad:	09 
  a5c9ae:	62 61 7c 48 28 25 48 	vmovaps zmm28,ZMMWORD PTR [rip+0xffffffffff66a548]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a5c9b5:	a5 66 ff 
  a5c9b8:	62 71 7c 48 28 cc    	vmovaps zmm9,zmm4
  a5c9be:	62 72 1d 40 7f cb    	vpermt2ps zmm9,zmm28,zmm3
  a5c9c4:	62 e1 7c 48 28 1d 72 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff66a572]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a5c9cb:	a5 66 ff 
  a5c9ce:	62 f2 65 40 7f e3    	vpermt2ps zmm4,zmm19,zmm3
  a5c9d4:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm4
  a5c9db:	0b 
  a5c9dc:	62 d1 7c 48 28 dd    	vmovaps zmm3,zmm13
  a5c9e2:	62 b2 1d 40 7f da    	vpermt2ps zmm3,zmm28,zmm18
  a5c9e8:	62 32 65 40 7f ea    	vpermt2ps zmm13,zmm19,zmm18
  a5c9ee:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm13
  a5c9f5:	0a 
  a5c9f6:	62 b1 7c 48 28 f0    	vmovaps zmm6,zmm16
  a5c9fc:	62 31 7c 48 28 f8    	vmovaps zmm15,zmm16
  a5ca02:	62 72 1d 40 7f f9    	vpermt2ps zmm15,zmm28,zmm1
  a5ca08:	62 f2 65 40 7f f1    	vpermt2ps zmm6,zmm19,zmm1
  a5ca0e:	62 11 7c 48 28 d6    	vmovaps zmm10,zmm30
  a5ca14:	62 81 7c 48 28 c6    	vmovaps zmm16,zmm30
  a5ca1a:	62 a2 1d 40 7f c4    	vpermt2ps zmm16,zmm28,zmm20
  a5ca20:	62 32 65 40 7f d4    	vpermt2ps zmm10,zmm19,zmm20
  a5ca26:	62 a1 7c 48 28 e1    	vmovaps zmm20,zmm17
  a5ca2c:	62 82 1d 40 7f e0    	vpermt2ps zmm20,zmm28,zmm24
  a5ca32:	62 82 65 40 7f c8    	vpermt2ps zmm17,zmm19,zmm24
  a5ca38:	62 21 7c 48 28 c1    	vmovaps zmm24,zmm17
  a5ca3e:	62 a1 7c 48 28 cf    	vmovaps zmm17,zmm23
  a5ca44:	62 a2 1d 40 7f fd    	vpermt2ps zmm23,zmm28,zmm21
  a5ca4a:	62 a2 65 40 7f cd    	vpermt2ps zmm17,zmm19,zmm21
  a5ca50:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x40]
  a5ca57:	01 
  a5ca58:	62 e1 7c 48 28 e9    	vmovaps zmm21,zmm1
  a5ca5e:	62 c2 1d 40 7f ec    	vpermt2ps zmm21,zmm28,zmm12
  a5ca64:	62 d2 65 40 7f cc    	vpermt2ps zmm1,zmm19,zmm12
  a5ca6a:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0x180]
  a5ca71:	06 
  a5ca72:	62 51 7c 48 28 e5    	vmovaps zmm12,zmm13
  a5ca78:	62 12 1d 40 7f e3    	vpermt2ps zmm12,zmm28,zmm27
  a5ca7e:	62 12 65 40 7f eb    	vpermt2ps zmm13,zmm19,zmm27
  a5ca84:	62 41 7c 48 28 f0    	vmovaps zmm30,zmm8
  a5ca8a:	62 62 1d 40 7f f0    	vpermt2ps zmm30,zmm28,zmm0
  a5ca90:	62 72 65 40 7f c0    	vpermt2ps zmm8,zmm19,zmm0
  a5ca96:	62 81 7c 48 28 d2    	vmovaps zmm18,zmm26
  a5ca9c:	62 e2 1d 40 7f d5    	vpermt2ps zmm18,zmm28,zmm5
  a5caa2:	62 62 65 40 7f d5    	vpermt2ps zmm26,zmm19,zmm5
  a5caa8:	62 41 7c 48 28 db    	vmovaps zmm27,zmm11
  a5caae:	62 02 1d 40 7f df    	vpermt2ps zmm27,zmm28,zmm31
  a5cab4:	62 12 65 40 7f df    	vpermt2ps zmm11,zmm19,zmm31
  a5caba:	62 91 7c 48 28 e1    	vmovaps zmm4,zmm25
  a5cac0:	62 d2 1d 40 7f e6    	vpermt2ps zmm4,zmm28,zmm14
  a5cac6:	62 42 65 40 7f ce    	vpermt2ps zmm25,zmm19,zmm14
  a5cacc:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x80]
  a5cad3:	02 
  a5cad4:	62 61 7c 48 28 e8    	vmovaps zmm29,zmm0
  a5cada:	62 62 1d 40 7f ef    	vpermt2ps zmm29,zmm28,zmm7
  a5cae0:	62 f2 65 40 7f c7    	vpermt2ps zmm0,zmm19,zmm7
  a5cae6:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a5caed:	02 
  a5caee:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x100]
  a5caf5:	04 
  a5caf6:	62 f1 7c 48 28 f8    	vmovaps zmm7,zmm0
  a5cafc:	62 b2 1d 40 7f fe    	vpermt2ps zmm7,zmm28,zmm22
  a5cb02:	62 b2 65 40 7f c6    	vpermt2ps zmm0,zmm19,zmm22
  a5cb08:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a5cb0f:	04 
  a5cb10:	62 61 7c 48 28 fa    	vmovaps zmm31,zmm2
  a5cb16:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc0]
  a5cb1d:	03 
  a5cb1e:	62 62 1d 40 7f f8    	vpermt2ps zmm31,zmm28,zmm0
  a5cb24:	62 f2 65 40 7f d0    	vpermt2ps zmm2,zmm19,zmm0
  a5cb2a:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm2
  a5cb31:	07 
  a5cb32:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x140]
  a5cb39:	05 
  a5cb3a:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x240]
  a5cb41:	09 
  a5cb42:	62 62 7d 48 77 e2    	vpermi2ps zmm28,zmm0,zmm2
  a5cb48:	62 f2 65 40 7f c2    	vpermt2ps zmm0,zmm19,zmm2
  a5cb4e:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  a5cb55:	05 
  a5cb56:	62 d1 b5 48 14 c7    	vunpcklpd zmm0,zmm9,zmm15
  a5cb5c:	62 d1 b5 48 15 ef    	vunpckhpd zmm5,zmm9,zmm15
  a5cb62:	62 31 e5 48 14 f0    	vunpcklpd zmm14,zmm3,zmm16
  a5cb68:	62 31 e5 48 15 c8    	vunpckhpd zmm9,zmm3,zmm16
  a5cb6e:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x2c0]
  a5cb75:	0b 
  a5cb76:	62 f1 ed 48 14 de    	vunpcklpd zmm3,zmm2,zmm6
  a5cb7c:	62 71 ed 48 15 fe    	vunpckhpd zmm15,zmm2,zmm6
  a5cb82:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x280]
  a5cb89:	0a 
  a5cb8a:	62 d1 ed 48 14 f2    	vunpcklpd zmm6,zmm2,zmm10
  a5cb90:	62 c1 ed 48 15 f2    	vunpckhpd zmm22,zmm2,zmm10
  a5cb96:	62 31 dd 40 14 d5    	vunpcklpd zmm10,zmm20,zmm21
  a5cb9c:	62 a1 dd 40 15 dd    	vunpckhpd zmm19,zmm20,zmm21
  a5cba2:	62 c1 c5 40 14 ec    	vunpcklpd zmm21,zmm23,zmm12
  a5cba8:	62 51 c5 40 15 e4    	vunpckhpd zmm12,zmm23,zmm12
  a5cbae:	62 e1 bd 40 14 f9    	vunpcklpd zmm23,zmm24,zmm1
  a5cbb4:	62 f1 bd 40 15 c9    	vunpckhpd zmm1,zmm24,zmm1
  a5cbba:	62 d1 f5 40 14 d5    	vunpcklpd zmm2,zmm17,zmm13
  a5cbc0:	62 c1 f5 40 15 c5    	vunpckhpd zmm16,zmm17,zmm13
  a5cbc6:	62 61 7c 48 28 05 30 	vmovaps zmm24,ZMMWORD PTR [rip+0xffffffffff66a230]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a5cbcd:	a2 66 ff 
  a5cbd0:	62 71 7c 48 28 e8    	vmovaps zmm13,zmm0
  a5cbd6:	62 d2 3d 40 7f c6    	vpermt2ps zmm0,zmm24,zmm14
  a5cbdc:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a5cbe3:	03 
  a5cbe4:	62 f1 7c 48 28 05 52 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff66a252]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a5cbeb:	a2 66 ff 
  a5cbee:	62 52 7d 48 7f ee    	vpermt2ps zmm13,zmm0,zmm14
  a5cbf4:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm13
  a5cbfb:	0c 
  a5cbfc:	62 71 7c 48 28 f5    	vmovaps zmm14,zmm5
  a5cc02:	62 52 3d 40 7f f1    	vpermt2ps zmm14,zmm24,zmm9
  a5cc08:	62 d2 7d 48 7f e9    	vpermt2ps zmm5,zmm0,zmm9
  a5cc0e:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm5
  a5cc15:	09 
  a5cc16:	62 71 7c 48 28 eb    	vmovaps zmm13,zmm3
  a5cc1c:	62 72 3d 40 7f ee    	vpermt2ps zmm13,zmm24,zmm6
  a5cc22:	62 f2 7d 48 7f de    	vpermt2ps zmm3,zmm0,zmm6
  a5cc28:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm3
  a5cc2f:	06 
  a5cc30:	62 d1 7c 48 28 df    	vmovaps zmm3,zmm15
  a5cc36:	62 c1 7c 48 28 cf    	vmovaps zmm17,zmm15
  a5cc3c:	62 a2 3d 40 7f ce    	vpermt2ps zmm17,zmm24,zmm22
  a5cc42:	62 31 7c 48 28 f9    	vmovaps zmm15,zmm17
  a5cc48:	62 b2 7d 48 7f de    	vpermt2ps zmm3,zmm0,zmm22
  a5cc4e:	62 e1 7c 48 28 cb    	vmovaps zmm17,zmm3
  a5cc54:	62 c1 7c 48 28 e2    	vmovaps zmm20,zmm10
  a5cc5a:	62 a2 3d 40 7f e5    	vpermt2ps zmm20,zmm24,zmm21
  a5cc60:	62 32 7d 48 7f d5    	vpermt2ps zmm10,zmm0,zmm21
  a5cc66:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm10
  a5cc6d:	08 
  a5cc6e:	62 b1 7c 48 28 db    	vmovaps zmm3,zmm19
  a5cc74:	62 d2 3d 40 7f dc    	vpermt2ps zmm3,zmm24,zmm12
  a5cc7a:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm3
  a5cc81:	01 
  a5cc82:	62 c2 7d 48 7f dc    	vpermt2ps zmm19,zmm0,zmm12
  a5cc88:	62 b1 7c 48 28 df    	vmovaps zmm3,zmm23
  a5cc8e:	62 f2 3d 40 7f da    	vpermt2ps zmm3,zmm24,zmm2
  a5cc94:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm3
  a5cc9b:	0e 
  a5cc9c:	62 e2 7d 48 7f fa    	vpermt2ps zmm23,zmm0,zmm2
  a5cca2:	62 b2 3d 40 7f c8    	vpermt2ps zmm1,zmm24,zmm16
  a5cca8:	62 71 7c 48 28 d1    	vmovaps zmm10,zmm1
  a5ccae:	62 91 8d 40 14 db    	vunpcklpd zmm3,zmm30,zmm27
  a5ccb4:	62 01 8d 40 15 db    	vunpckhpd zmm27,zmm30,zmm27
  a5ccba:	62 f1 ed 40 14 cc    	vunpcklpd zmm1,zmm18,zmm4
  a5ccc0:	62 f1 ed 40 15 e4    	vunpckhpd zmm4,zmm18,zmm4
  a5ccc6:	62 c1 bd 48 14 d3    	vunpcklpd zmm18,zmm8,zmm11
  a5cccc:	62 d1 bd 48 15 f3    	vunpckhpd zmm6,zmm8,zmm11
  a5ccd2:	62 11 ad 40 14 c1    	vunpcklpd zmm8,zmm26,zmm25
  a5ccd8:	62 81 ad 40 15 e9    	vunpckhpd zmm21,zmm26,zmm25
  a5ccde:	62 01 95 40 14 f7    	vunpcklpd zmm30,zmm29,zmm31
  a5cce4:	62 11 95 40 15 df    	vunpckhpd zmm11,zmm29,zmm31
  a5ccea:	62 81 c5 48 14 f4    	vunpcklpd zmm22,zmm7,zmm28
  a5ccf0:	62 91 c5 48 15 fc    	vunpckhpd zmm7,zmm7,zmm28
  a5ccf6:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x80]
  a5ccfd:	02 
  a5ccfe:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x1c0]
  a5cd05:	07 
  a5cd06:	62 d1 d5 48 14 d1    	vunpcklpd zmm2,zmm5,zmm9
  a5cd0c:	62 51 d5 48 15 c9    	vunpckhpd zmm9,zmm5,zmm9
  a5cd12:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x100]
  a5cd19:	04 
  a5cd1a:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x140]
  a5cd21:	05 
  a5cd22:	62 41 d5 48 14 cc    	vunpcklpd zmm25,zmm5,zmm12
  a5cd28:	62 41 d5 48 15 e4    	vunpckhpd zmm28,zmm5,zmm12
  a5cd2e:	62 71 7c 48 28 e3    	vmovaps zmm12,zmm3
  a5cd34:	62 72 3d 40 7f e1    	vpermt2ps zmm12,zmm24,zmm1
  a5cd3a:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm12
  a5cd41:	05 
  a5cd42:	62 f2 7d 48 7f d9    	vpermt2ps zmm3,zmm0,zmm1
  a5cd48:	62 11 7c 48 28 e3    	vmovaps zmm12,zmm27
  a5cd4e:	62 72 3d 40 7f e4    	vpermt2ps zmm12,zmm24,zmm4
  a5cd54:	62 62 7d 48 7f dc    	vpermt2ps zmm27,zmm0,zmm4
  a5cd5a:	62 b1 7c 48 28 ca    	vmovaps zmm1,zmm18
  a5cd60:	62 d2 3d 40 7f c8    	vpermt2ps zmm1,zmm24,zmm8
  a5cd66:	62 c2 7d 48 7f d0    	vpermt2ps zmm18,zmm0,zmm8
  a5cd6c:	62 f1 7c 48 28 e6    	vmovaps zmm4,zmm6
  a5cd72:	62 b2 3d 40 7f e5    	vpermt2ps zmm4,zmm24,zmm21
  a5cd78:	62 b2 7d 48 7f f5    	vpermt2ps zmm6,zmm0,zmm21
  a5cd7e:	62 11 7c 48 28 c6    	vmovaps zmm8,zmm30
  a5cd84:	62 32 3d 40 7f c6    	vpermt2ps zmm8,zmm24,zmm22
  a5cd8a:	62 22 7d 48 7f f6    	vpermt2ps zmm30,zmm0,zmm22
  a5cd90:	62 c1 7c 48 28 f3    	vmovaps zmm22,zmm11
  a5cd96:	62 e2 3d 40 7f f7    	vpermt2ps zmm22,zmm24,zmm7
  a5cd9c:	62 72 7d 48 7f df    	vpermt2ps zmm11,zmm0,zmm7
  a5cda2:	62 e1 7c 48 28 ea    	vmovaps zmm21,zmm2
  a5cda8:	62 92 7d 48 7f d1    	vpermt2ps zmm2,zmm0,zmm25
  a5cdae:	62 82 3d 40 7f e9    	vpermt2ps zmm21,zmm24,zmm25
  a5cdb4:	62 12 3d 40 7f cc    	vpermt2ps zmm9,zmm24,zmm28
  a5cdba:	62 f1 7c 48 10 42 11 	vmovups zmm0,ZMMWORD PTR [rdx+0x440]
  a5cdc1:	62 f1 7c 48 10 7a 10 	vmovups zmm7,ZMMWORD PTR [rdx+0x400]
  a5cdc8:	62 f1 3c 48 59 ef    	vmulps zmm5,zmm8,zmm7
  a5cdce:	62 f2 5d 40 b8 e8    	vfmadd231ps zmm5,zmm20,zmm0
  a5cdd4:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm5
  a5cddb:	0b 
  a5cddc:	62 61 5c 40 59 d7    	vmulps zmm26,zmm20,zmm7
  a5cde2:	62 42 7d 48 bc d0    	vfnmadd231ps zmm26,zmm0,zmm8
  a5cde8:	62 61 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm26
  a5cdef:	10 
  a5cdf0:	62 f1 7c 48 10 42 04 	vmovups zmm0,ZMMWORD PTR [rdx+0x100]
  a5cdf7:	62 f1 7c 48 10 7a 05 	vmovups zmm7,ZMMWORD PTR [rdx+0x140]
  a5cdfe:	62 f1 1c 48 59 e8    	vmulps zmm5,zmm12,zmm0
  a5ce04:	62 f2 0d 48 b8 ef    	vfmadd231ps zmm5,zmm14,zmm7
  a5ce0a:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm5
  a5ce11:	0a 
  a5ce12:	62 f1 0c 48 59 c0    	vmulps zmm0,zmm14,zmm0
  a5ce18:	62 d2 45 48 bc c4    	vfnmadd231ps zmm0,zmm7,zmm12
  a5ce1e:	62 71 7c 48 28 f0    	vmovaps zmm14,zmm0
  a5ce24:	62 f1 7c 48 10 42 17 	vmovups zmm0,ZMMWORD PTR [rdx+0x5c0]
  a5ce2b:	62 f1 7c 48 10 7a 16 	vmovups zmm7,ZMMWORD PTR [rdx+0x580]
  a5ce32:	62 61 24 48 59 c7    	vmulps zmm24,zmm11,zmm7
  a5ce38:	62 62 65 40 b8 c0    	vfmadd231ps zmm24,zmm19,zmm0
  a5ce3e:	62 f1 64 40 59 ef    	vmulps zmm5,zmm19,zmm7
  a5ce44:	62 d2 7d 48 bc eb    	vfnmadd231ps zmm5,zmm0,zmm11
  a5ce4a:	62 61 7c 48 28 cd    	vmovaps zmm25,zmm5
  a5ce50:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm5
  a5ce57:	15 
  a5ce58:	62 f1 7c 48 10 42 1d 	vmovups zmm0,ZMMWORD PTR [rdx+0x740]
  a5ce5f:	62 f1 7c 48 10 7a 1c 	vmovups zmm7,ZMMWORD PTR [rdx+0x700]
  a5ce66:	62 f1 34 48 59 ef    	vmulps zmm5,zmm9,zmm7
  a5ce6c:	62 f2 2d 48 b8 e8    	vfmadd231ps zmm5,zmm10,zmm0
  a5ce72:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm5
  a5ce79:	11 
  a5ce7a:	62 f1 2c 48 59 ef    	vmulps zmm5,zmm10,zmm7
  a5ce80:	62 d2 7d 48 bc e9    	vfnmadd231ps zmm5,zmm0,zmm9
  a5ce86:	62 e1 7c 48 28 c5    	vmovaps zmm16,zmm5
  a5ce8c:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm5
  a5ce93:	0f 
  a5ce94:	62 f1 7c 48 10 42 1b 	vmovups zmm0,ZMMWORD PTR [rdx+0x6c0]
  a5ce9b:	62 f1 7c 48 10 7a 1a 	vmovups zmm7,ZMMWORD PTR [rdx+0x680]
  a5cea2:	62 f1 6c 48 59 ef    	vmulps zmm5,zmm2,zmm7
  a5cea8:	62 f2 45 40 b8 e8    	vfmadd231ps zmm5,zmm23,zmm0
  a5ceae:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm5
  a5ceb5:	0d 
  a5ceb6:	62 71 44 40 59 df    	vmulps zmm11,zmm23,zmm7
  a5cebc:	62 72 7d 48 bc da    	vfnmadd231ps zmm11,zmm0,zmm2
  a5cec2:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm11
  a5cec9:	13 
  a5ceca:	62 f1 7c 48 10 42 0f 	vmovups zmm0,ZMMWORD PTR [rdx+0x3c0]
  a5ced1:	62 f1 7c 48 10 52 0e 	vmovups zmm2,ZMMWORD PTR [rdx+0x380]
  a5ced8:	62 e1 4c 48 59 fa    	vmulps zmm23,zmm6,zmm2
  a5cede:	62 e2 75 40 b8 f8    	vfmadd231ps zmm23,zmm17,zmm0
  a5cee4:	62 f1 74 40 59 d2    	vmulps zmm2,zmm17,zmm2
  a5ceea:	62 f2 7d 48 bc d6    	vfnmadd231ps zmm2,zmm0,zmm6
  a5cef0:	62 71 7c 48 28 d2    	vmovaps zmm10,zmm2
  a5cef6:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm2
  a5cefd:	14 
  a5cefe:	62 f1 7c 48 10 42 02 	vmovups zmm0,ZMMWORD PTR [rdx+0x80]
  a5cf05:	62 f1 7c 48 10 52 03 	vmovups zmm2,ZMMWORD PTR [rdx+0xc0]
  a5cf0c:	62 f1 64 48 59 f0    	vmulps zmm6,zmm3,zmm0
  a5cf12:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x300]
  a5cf19:	0c 
  a5cf1a:	62 f2 55 48 b8 f2    	vfmadd231ps zmm6,zmm5,zmm2
  a5cf20:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm6
  a5cf27:	12 
  a5cf28:	62 f1 54 48 59 c0    	vmulps zmm0,zmm5,zmm0
  a5cf2e:	62 f2 6d 48 bc c3    	vfnmadd231ps zmm0,zmm2,zmm3
  a5cf34:	62 e1 7c 48 28 c8    	vmovaps zmm17,zmm0
  a5cf3a:	62 f1 7c 48 10 42 09 	vmovups zmm0,ZMMWORD PTR [rdx+0x240]
  a5cf41:	62 f1 7c 48 10 52 08 	vmovups zmm2,ZMMWORD PTR [rdx+0x200]
  a5cf48:	62 71 74 48 59 e2    	vmulps zmm12,zmm1,zmm2
  a5cf4e:	62 72 15 48 b8 e0    	vfmadd231ps zmm12,zmm13,zmm0
  a5cf54:	62 61 14 48 59 ea    	vmulps zmm29,zmm13,zmm2
  a5cf5a:	62 62 7d 48 bc e9    	vfnmadd231ps zmm29,zmm0,zmm1
  a5cf60:	62 f1 7c 48 10 42 0d 	vmovups zmm0,ZMMWORD PTR [rdx+0x340]
  a5cf67:	62 f1 7c 48 10 4a 0c 	vmovups zmm1,ZMMWORD PTR [rdx+0x300]
  a5cf6e:	62 71 04 48 59 e9    	vmulps zmm13,zmm15,zmm1
  a5cf74:	62 72 5d 48 bc e8    	vfnmadd231ps zmm13,zmm4,zmm0
  a5cf7a:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm13
  a5cf81:	0c 
  a5cf82:	62 e1 5c 48 59 e1    	vmulps zmm20,zmm4,zmm1
  a5cf88:	62 c2 7d 48 b8 e7    	vfmadd231ps zmm20,zmm0,zmm15
  a5cf8e:	62 f1 7c 48 10 42 13 	vmovups zmm0,ZMMWORD PTR [rdx+0x4c0]
  a5cf95:	62 f1 7c 48 10 4a 12 	vmovups zmm1,ZMMWORD PTR [rdx+0x480]
  a5cf9c:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x200]
  a5cfa3:	08 
  a5cfa4:	62 e1 6c 48 59 d9    	vmulps zmm19,zmm2,zmm1
  a5cfaa:	62 e2 0d 40 bc d8    	vfnmadd231ps zmm19,zmm30,zmm0
  a5cfb0:	62 71 0c 40 59 c9    	vmulps zmm9,zmm30,zmm1
  a5cfb6:	62 72 7d 48 b8 ca    	vfmadd231ps zmm9,zmm0,zmm2
  a5cfbc:	62 f1 7c 48 10 42 07 	vmovups zmm0,ZMMWORD PTR [rdx+0x1c0]
  a5cfc3:	62 f1 7c 48 10 4a 06 	vmovups zmm1,ZMMWORD PTR [rdx+0x180]
  a5cfca:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x240]
  a5cfd1:	09 
  a5cfd2:	62 61 6c 48 59 f1    	vmulps zmm30,zmm2,zmm1
  a5cfd8:	62 62 25 40 bc f0    	vfnmadd231ps zmm30,zmm27,zmm0
  a5cfde:	62 71 24 40 59 c1    	vmulps zmm8,zmm27,zmm1
  a5cfe4:	62 72 7d 48 b8 c2    	vfmadd231ps zmm8,zmm0,zmm2
  a5cfea:	62 f1 7c 48 10 42 19 	vmovups zmm0,ZMMWORD PTR [rdx+0x640]
  a5cff1:	62 f1 7c 48 10 4a 18 	vmovups zmm1,ZMMWORD PTR [rdx+0x600]
  a5cff8:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x380]
  a5cfff:	0e 
  a5d000:	62 61 64 48 59 d9    	vmulps zmm27,zmm3,zmm1
  a5d006:	62 62 55 40 bc d8    	vfnmadd231ps zmm27,zmm21,zmm0
  a5d00c:	62 f1 54 40 59 f1    	vmulps zmm6,zmm21,zmm1
  a5d012:	62 f2 7d 48 b8 f3    	vfmadd231ps zmm6,zmm0,zmm3
  a5d018:	62 f1 7c 48 10 42 0b 	vmovups zmm0,ZMMWORD PTR [rdx+0x2c0]
  a5d01f:	62 f1 7c 48 10 5a 0a 	vmovups zmm3,ZMMWORD PTR [rdx+0x280]
  a5d026:	62 f1 6c 40 59 cb    	vmulps zmm1,zmm18,zmm3
  a5d02c:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x180]
  a5d033:	06 
  a5d034:	62 f2 45 48 b8 c8    	vfmadd231ps zmm1,zmm7,zmm0
  a5d03a:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm1
  a5d041:	04 
  a5d042:	62 f1 44 48 59 cb    	vmulps zmm1,zmm7,zmm3
  a5d048:	62 b2 7d 48 bc ca    	vfnmadd231ps zmm1,zmm0,zmm18
  a5d04e:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  a5d055:	02 
  a5d056:	62 f1 7c 48 10 42 15 	vmovups zmm0,ZMMWORD PTR [rdx+0x540]
  a5d05d:	62 f1 7c 48 10 5a 14 	vmovups zmm3,ZMMWORD PTR [rdx+0x500]
  a5d064:	62 f1 4c 40 59 cb    	vmulps zmm1,zmm22,zmm3
  a5d06a:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x40]
  a5d071:	01 
  a5d072:	62 f2 45 48 b8 c8    	vfmadd231ps zmm1,zmm7,zmm0
  a5d078:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm1
  a5d07f:	07 
  a5d080:	62 f1 44 48 59 cb    	vmulps zmm1,zmm7,zmm3
  a5d086:	62 b2 7d 48 bc ce    	vfnmadd231ps zmm1,zmm0,zmm22
  a5d08c:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm1
  a5d093:	06 
  a5d094:	62 d1 2c 40 5c c6    	vsubps zmm0,zmm26,zmm14
  a5d09a:	62 c1 7c 48 28 ee    	vmovaps zmm21,zmm14
  a5d0a0:	62 b1 34 40 5c f8    	vsubps zmm7,zmm25,zmm16
  a5d0a6:	62 f2 7d 48 18 1d a8 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff6186a8]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a5d0ad:	86 61 ff 
  a5d0b0:	62 f1 44 48 59 cb    	vmulps zmm1,zmm7,zmm3
  a5d0b6:	62 f2 7d 48 18 2d e0 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff6182e0]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a5d0bd:	82 61 ff 
  a5d0c0:	62 f2 7d 48 b8 cd    	vfmadd231ps zmm1,zmm0,zmm5
  a5d0c6:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a5d0cd:	01 
  a5d0ce:	62 f1 7c 48 59 c3    	vmulps zmm0,zmm0,zmm3
  a5d0d4:	62 f2 55 48 bc c7    	vfnmadd231ps zmm0,zmm5,zmm7
  a5d0da:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm0
  a5d0e1:	08 
  a5d0e2:	62 d1 24 48 5c c2    	vsubps zmm0,zmm11,zmm10
  a5d0e8:	62 91 74 40 5c fd    	vsubps zmm7,zmm17,zmm29
  a5d0ee:	62 a1 7c 48 28 d1    	vmovaps zmm18,zmm17
  a5d0f4:	62 71 44 48 59 fb    	vmulps zmm15,zmm7,zmm3
  a5d0fa:	62 72 7d 48 b8 fd    	vfmadd231ps zmm15,zmm0,zmm5
  a5d100:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x880],zmm15
  a5d107:	22 
  a5d108:	62 61 7c 48 59 fb    	vmulps zmm31,zmm0,zmm3
  a5d10e:	62 62 55 48 bc ff    	vfnmadd231ps zmm31,zmm5,zmm7
  a5d114:	62 91 0c 40 5c c3    	vsubps zmm0,zmm30,zmm27
  a5d11a:	62 b1 14 48 5c fb    	vsubps zmm7,zmm13,zmm19
  a5d120:	62 f1 44 48 59 cb    	vmulps zmm1,zmm7,zmm3
  a5d126:	62 f2 7d 48 b8 cd    	vfmadd231ps zmm1,zmm0,zmm5
  a5d12c:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm1
  a5d133:	09 
  a5d134:	62 61 7c 48 59 d3    	vmulps zmm26,zmm0,zmm3
  a5d13a:	62 62 55 48 bc d7    	vfnmadd231ps zmm26,zmm5,zmm7
  a5d140:	62 e1 7c 48 28 4c 24 	vmovaps zmm17,ZMMWORD PTR [rsp+0x2c0]
  a5d147:	0b 
  a5d148:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x280]
  a5d14f:	0a 
  a5d150:	62 f1 74 40 5c fa    	vsubps zmm7,zmm17,zmm2
  a5d156:	62 61 7c 48 28 64 24 	vmovaps zmm28,ZMMWORD PTR [rsp+0x440]
  a5d15d:	11 
  a5d15e:	62 11 3c 40 5c ec    	vsubps zmm13,zmm24,zmm28
  a5d164:	62 f1 14 48 59 e3    	vmulps zmm4,zmm13,zmm3
  a5d16a:	62 f2 45 48 b8 e5    	vfmadd231ps zmm4,zmm7,zmm5
  a5d170:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm4
  a5d177:	17 
  a5d178:	62 61 44 48 59 cb    	vmulps zmm25,zmm7,zmm3
  a5d17e:	62 42 55 48 bc cd    	vfnmadd231ps zmm25,zmm5,zmm13
  a5d184:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x340]
  a5d18b:	0d 
  a5d18c:	62 b1 74 48 5c ff    	vsubps zmm7,zmm1,zmm23
  a5d192:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x480]
  a5d199:	12 
  a5d19a:	62 51 7c 48 5c ec    	vsubps zmm13,zmm0,zmm12
  a5d1a0:	62 71 14 48 59 db    	vmulps zmm11,zmm13,zmm3
  a5d1a6:	62 72 45 48 b8 dd    	vfmadd231ps zmm11,zmm7,zmm5
  a5d1ac:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm11
  a5d1b3:	16 
  a5d1b4:	62 e1 44 48 59 f3    	vmulps zmm22,zmm7,zmm3
  a5d1ba:	62 c2 55 48 bc f5    	vfnmadd231ps zmm22,zmm5,zmm13
  a5d1c0:	62 f1 3c 48 5c fe    	vsubps zmm7,zmm8,zmm6
  a5d1c6:	62 51 5c 40 5c f1    	vsubps zmm14,zmm20,zmm9
  a5d1cc:	62 71 0c 48 59 d3    	vmulps zmm10,zmm14,zmm3
  a5d1d2:	62 72 45 48 b8 d5    	vfmadd231ps zmm10,zmm7,zmm5
  a5d1d8:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm10
  a5d1df:	18 
  a5d1e0:	62 71 44 48 59 eb    	vmulps zmm13,zmm7,zmm3
  a5d1e6:	62 72 0d 48 bc ed    	vfnmadd231ps zmm13,zmm14,zmm5
  a5d1ec:	62 11 3c 40 58 d4    	vaddps zmm10,zmm24,zmm28
  a5d1f2:	62 e1 74 40 58 ca    	vaddps zmm17,zmm17,zmm2
  a5d1f8:	62 51 7c 48 58 f4    	vaddps zmm14,zmm0,zmm12
  a5d1fe:	62 21 74 48 58 e7    	vaddps zmm28,zmm1,zmm23
  a5d204:	62 41 5c 40 58 c1    	vaddps zmm24,zmm20,zmm9
  a5d20a:	62 e1 3c 48 58 c6    	vaddps zmm16,zmm8,zmm6
  a5d210:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x540]
  a5d217:	15 
  a5d218:	62 f1 7c 48 58 44 24 	vaddps zmm0,zmm0,ZMMWORD PTR [rsp+0x3c0]
  a5d21f:	0f 
  a5d220:	62 71 54 40 58 4c 24 	vaddps zmm9,zmm21,ZMMWORD PTR [rsp+0x400]
  a5d227:	10 
  a5d228:	62 11 6c 40 58 c5    	vaddps zmm8,zmm18,zmm29
  a5d22e:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x4c0]
  a5d235:	13 
  a5d236:	62 f1 74 48 58 7c 24 	vaddps zmm7,zmm1,ZMMWORD PTR [rsp+0x500]
  a5d23d:	14 
  a5d23e:	62 f2 7d 48 18 0d a0 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff6184a0]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a5d245:	84 61 ff 
  a5d248:	62 e1 7c 48 28 e9    	vmovaps zmm21,zmm1
  a5d24e:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x80]
  a5d255:	02 
  a5d256:	62 e2 35 48 a8 ed    	vfmadd213ps zmm21,zmm9,zmm5
  a5d25c:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm9
  a5d263:	10 
  a5d264:	62 f2 7d 48 18 15 d6 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff6183d6]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a5d26b:	83 61 ff 
  a5d26e:	62 e2 7d 48 bc ea    	vfnmadd231ps zmm21,zmm0,zmm2
  a5d274:	62 61 7c 48 28 e8    	vmovaps zmm29,zmm0
  a5d27a:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm0
  a5d281:	0f 
  a5d282:	62 e1 7c 48 28 e1    	vmovaps zmm20,zmm1
  a5d288:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a5d28f:	06 
  a5d290:	62 e2 45 48 a8 e0    	vfmadd213ps zmm20,zmm7,zmm0
  a5d296:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm7
  a5d29d:	15 
  a5d29e:	62 e2 3d 48 bc e2    	vfnmadd231ps zmm20,zmm8,zmm2
  a5d2a4:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x8c0],zmm8
  a5d2ab:	23 
  a5d2ac:	62 f1 54 40 5c dc    	vsubps zmm3,zmm21,zmm4
  a5d2b2:	62 d1 5c 40 5c e3    	vsubps zmm4,zmm20,zmm11
  a5d2b8:	62 f1 64 48 5c f4    	vsubps zmm6,zmm3,zmm4
  a5d2be:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm6
  a5d2c5:	0a 
  a5d2c6:	62 f1 64 48 58 dc    	vaddps zmm3,zmm3,zmm4
  a5d2cc:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm3
  a5d2d3:	0d 
  a5d2d4:	62 e1 64 40 58 7c 24 	vaddps zmm23,zmm19,ZMMWORD PTR [rsp+0x300]
  a5d2db:	0c 
  a5d2dc:	62 01 0c 40 58 db    	vaddps zmm27,zmm30,zmm27
  a5d2e2:	62 e1 7c 48 28 d1    	vmovaps zmm18,zmm1
  a5d2e8:	62 e1 7c 48 28 5c 24 	vmovaps zmm19,ZMMWORD PTR [rsp+0x100]
  a5d2ef:	04 
  a5d2f0:	62 a2 75 40 a8 d3    	vfmadd213ps zmm18,zmm17,zmm19
  a5d2f6:	62 e1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x740],zmm17
  a5d2fd:	1d 
  a5d2fe:	62 e2 2d 48 bc d2    	vfnmadd231ps zmm18,zmm10,zmm2
  a5d304:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm10
  a5d30b:	1c 
  a5d30c:	62 61 7c 48 28 f1    	vmovaps zmm30,zmm1
  a5d312:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x1c0]
  a5d319:	07 
  a5d31a:	62 42 1d 40 a8 f4    	vfmadd213ps zmm30,zmm28,zmm12
  a5d320:	62 62 0d 48 bc f2    	vfnmadd231ps zmm30,zmm14,zmm2
  a5d326:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm14
  a5d32d:	1a 
  a5d32e:	62 f1 6c 40 58 5c 24 	vaddps zmm3,zmm18,ZMMWORD PTR [rsp+0x40]
  a5d335:	01 
  a5d336:	62 d1 0c 40 58 e7    	vaddps zmm4,zmm30,zmm15
  a5d33c:	62 f1 64 48 58 f4    	vaddps zmm6,zmm3,zmm4
  a5d342:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm6
  a5d349:	0c 
  a5d34a:	62 f1 64 48 5c dc    	vsubps zmm3,zmm3,zmm4
  a5d350:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm3
  a5d357:	0e 
  a5d358:	62 f1 7c 48 28 e2    	vmovaps zmm4,zmm2
  a5d35e:	62 f2 35 48 ac e5    	vfnmadd213ps zmm4,zmm9,zmm5
  a5d364:	62 f2 15 40 b8 e1    	vfmadd231ps zmm4,zmm29,zmm1
  a5d36a:	62 f1 7c 48 28 ea    	vmovaps zmm5,zmm2
  a5d370:	62 f2 45 48 ac e8    	vfnmadd213ps zmm5,zmm7,zmm0
  a5d376:	62 f2 3d 48 b8 e9    	vfmadd231ps zmm5,zmm8,zmm1
  a5d37c:	62 91 5c 48 5c d9    	vsubps zmm3,zmm4,zmm25
  a5d382:	62 31 54 48 5c c6    	vsubps zmm8,zmm5,zmm22
  a5d388:	62 d1 64 48 5c c0    	vsubps zmm0,zmm3,zmm8
  a5d38e:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm0
  a5d395:	11 
  a5d396:	62 d1 64 48 58 c0    	vaddps zmm0,zmm3,zmm8
  a5d39c:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm0
  a5d3a3:	12 
  a5d3a4:	62 f1 7c 48 28 f1    	vmovaps zmm6,zmm1
  a5d3aa:	62 71 7c 48 28 7c 24 	vmovaps zmm15,ZMMWORD PTR [rsp+0x140]
  a5d3b1:	05 
  a5d3b2:	62 21 7c 48 28 e8    	vmovaps zmm29,zmm16
  a5d3b8:	62 d2 7d 40 a8 f7    	vfmadd213ps zmm6,zmm16,zmm15
  a5d3be:	62 61 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm24
  a5d3c5:	19 
  a5d3c6:	62 f2 3d 40 bc f2    	vfnmadd231ps zmm6,zmm24,zmm2
  a5d3cc:	62 e1 7c 48 28 c1    	vmovaps zmm16,zmm1
  a5d3d2:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0xc0]
  a5d3d9:	03 
  a5d3da:	62 61 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x840],zmm27
  a5d3e1:	21 
  a5d3e2:	62 e2 25 40 a8 c3    	vfmadd213ps zmm16,zmm27,zmm3
  a5d3e8:	62 b1 7c 48 28 ff    	vmovaps zmm7,zmm23
  a5d3ee:	62 e1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x7c0],zmm23
  a5d3f5:	1f 
  a5d3f6:	62 e2 45 40 bc c2    	vfnmadd231ps zmm16,zmm23,zmm2
  a5d3fc:	62 71 7c 48 28 c2    	vmovaps zmm8,zmm2
  a5d402:	62 32 75 40 ac c3    	vfnmadd213ps zmm8,zmm17,zmm19
  a5d408:	62 72 2d 48 b8 c1    	vfmadd231ps zmm8,zmm10,zmm1
  a5d40e:	62 71 7c 48 28 ca    	vmovaps zmm9,zmm2
  a5d414:	62 52 1d 40 ac cc    	vfnmadd213ps zmm9,zmm28,zmm12
  a5d41a:	62 72 0d 48 b8 c9    	vfmadd231ps zmm9,zmm14,zmm1
  a5d420:	62 e1 7c 48 28 da    	vmovaps zmm19,zmm2
  a5d426:	62 c2 15 40 ac df    	vfnmadd213ps zmm19,zmm29,zmm15
  a5d42c:	62 81 7c 48 28 fd    	vmovaps zmm23,zmm29
  a5d432:	62 e2 3d 40 b8 d9    	vfmadd231ps zmm19,zmm24,zmm1
  a5d438:	62 f2 25 40 ac d3    	vfnmadd213ps zmm2,zmm27,zmm3
  a5d43e:	62 f2 45 48 b8 d1    	vfmadd231ps zmm2,zmm7,zmm1
  a5d444:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x200]
  a5d44b:	08 
  a5d44c:	62 f1 3c 48 58 c8    	vaddps zmm1,zmm8,zmm0
  a5d452:	62 01 34 48 58 df    	vaddps zmm27,zmm9,zmm31
  a5d458:	62 91 74 48 58 db    	vaddps zmm3,zmm1,zmm27
  a5d45e:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm3
  a5d465:	13 
  a5d466:	62 91 74 48 5c cb    	vsubps zmm1,zmm1,zmm27
  a5d46c:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm1
  a5d473:	14 
  a5d474:	62 b1 2c 40 58 cb    	vaddps zmm1,zmm26,zmm19
  a5d47a:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x800],zmm1
  a5d481:	20 
  a5d482:	62 91 64 40 5c ca    	vsubps zmm1,zmm19,zmm26
  a5d488:	62 f1 3c 48 5c d8    	vsubps zmm3,zmm8,zmm0
  a5d48e:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm3
  a5d495:	1b 
  a5d496:	62 01 34 48 5c df    	vsubps zmm27,zmm9,zmm31
  a5d49c:	62 d1 6c 48 5c c5    	vsubps zmm0,zmm2,zmm13
  a5d4a2:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x780],zmm0
  a5d4a9:	1e 
  a5d4aa:	62 d1 6c 48 58 fd    	vaddps zmm7,zmm2,zmm13
  a5d4b0:	62 91 5c 48 58 d1    	vaddps zmm2,zmm4,zmm25
  a5d4b6:	62 a1 54 48 58 de    	vaddps zmm19,zmm5,zmm22
  a5d4bc:	62 f2 7d 48 18 05 9a 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff617f9a]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a5d4c3:	7f 61 ff 
  a5d4c6:	62 01 64 48 58 eb    	vaddps zmm29,zmm3,zmm27
  a5d4cc:	62 91 74 48 58 dd    	vaddps zmm3,zmm1,zmm29
  a5d4d2:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm3
  a5d4d9:	0b 
  a5d4da:	62 62 7d 48 ac e9    	vfnmadd213ps zmm29,zmm0,zmm1
  a5d4e0:	62 71 7c 48 28 c8    	vmovaps zmm9,zmm0
  a5d4e6:	62 71 7c 48 28 f8    	vmovaps zmm15,zmm0
  a5d4ec:	62 71 7c 48 28 e8    	vmovaps zmm13,zmm0
  a5d4f2:	62 f1 7c 48 28 c8    	vmovaps zmm1,zmm0
  a5d4f8:	62 21 6c 48 58 c3    	vaddps zmm24,zmm2,zmm19
  a5d4fe:	62 61 7c 48 28 f8    	vmovaps zmm31,zmm0
  a5d504:	62 e1 7c 48 28 c8    	vmovaps zmm17,zmm0
  a5d50a:	62 61 7c 48 28 c8    	vmovaps zmm25,zmm0
  a5d510:	62 f1 7c 48 28 e8    	vmovaps zmm5,zmm0
  a5d516:	62 f2 3d 40 ac c7    	vfnmadd213ps zmm0,zmm24,zmm7
  a5d51c:	62 91 44 48 58 d8    	vaddps zmm3,zmm7,zmm24
  a5d522:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm3
  a5d529:	08 
  a5d52a:	62 71 6c 40 5c 54 24 	vsubps zmm10,zmm18,ZMMWORD PTR [rsp+0x40]
  a5d531:	01 
  a5d532:	62 f1 0c 40 5c 7c 24 	vsubps zmm7,zmm30,ZMMWORD PTR [rsp+0x880]
  a5d539:	22 
  a5d53a:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x240]
  a5d541:	09 
  a5d542:	62 61 64 48 58 f6    	vaddps zmm30,zmm3,zmm6
  a5d548:	62 61 4c 48 5c d3    	vsubps zmm26,zmm6,zmm3
  a5d54e:	62 71 54 40 58 64 24 	vaddps zmm12,zmm21,ZMMWORD PTR [rsp+0x5c0]
  a5d555:	17 
  a5d556:	62 71 5c 40 58 5c 24 	vaddps zmm11,zmm20,ZMMWORD PTR [rsp+0x580]
  a5d55d:	16 
  a5d55e:	62 d1 1c 48 5c db    	vsubps zmm3,zmm12,zmm11
  a5d564:	62 c1 1c 48 58 e3    	vaddps zmm20,zmm12,zmm11
  a5d56a:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x600]
  a5d571:	18 
  a5d572:	62 71 7c 40 5c e4    	vsubps zmm12,zmm16,zmm4
  a5d578:	62 e1 7c 40 58 ec    	vaddps zmm21,zmm16,zmm4
  a5d57e:	62 71 2c 48 58 df    	vaddps zmm11,zmm10,zmm7
  a5d584:	62 e1 2c 48 5c d7    	vsubps zmm18,zmm10,zmm7
  a5d58a:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x100]
  a5d591:	04 
  a5d592:	62 71 5c 48 58 54 24 	vaddps zmm10,zmm4,ZMMWORD PTR [rsp+0x740]
  a5d599:	1d 
  a5d59a:	62 71 2c 48 58 54 24 	vaddps zmm10,zmm10,ZMMWORD PTR [rsp+0x700]
  a5d5a1:	1c 
  a5d5a2:	62 71 1c 40 58 74 24 	vaddps zmm14,zmm28,ZMMWORD PTR [rsp+0x1c0]
  a5d5a9:	07 
  a5d5aa:	62 71 0c 48 58 74 24 	vaddps zmm14,zmm14,ZMMWORD PTR [rsp+0x680]
  a5d5b1:	1a 
  a5d5b2:	62 e1 44 40 58 74 24 	vaddps zmm22,zmm23,ZMMWORD PTR [rsp+0x140]
  a5d5b9:	05 
  a5d5ba:	62 e1 4c 40 58 44 24 	vaddps zmm16,zmm22,ZMMWORD PTR [rsp+0x640]
  a5d5c1:	19 
  a5d5c2:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x80]
  a5d5c9:	02 
  a5d5ca:	62 61 5c 48 58 64 24 	vaddps zmm28,zmm4,ZMMWORD PTR [rsp+0x400]
  a5d5d1:	10 
  a5d5d2:	62 61 1c 40 58 64 24 	vaddps zmm28,zmm28,ZMMWORD PTR [rsp+0x3c0]
  a5d5d9:	0f 
  a5d5da:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x180]
  a5d5e1:	06 
  a5d5e2:	62 e1 5c 48 58 7c 24 	vaddps zmm23,zmm4,ZMMWORD PTR [rsp+0x540]
  a5d5e9:	15 
  a5d5ea:	62 e1 44 40 58 7c 24 	vaddps zmm23,zmm23,ZMMWORD PTR [rsp+0x8c0]
  a5d5f1:	23 
  a5d5f2:	62 b1 1c 40 5c ff    	vsubps zmm7,zmm28,zmm23
  a5d5f8:	62 a1 1c 40 58 ff    	vaddps zmm23,zmm28,zmm23
  a5d5fe:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0xc0]
  a5d605:	03 
  a5d606:	62 61 5c 48 58 44 24 	vaddps zmm24,zmm4,ZMMWORD PTR [rsp+0x840]
  a5d60d:	21 
  a5d60e:	62 e1 3c 40 58 74 24 	vaddps zmm22,zmm24,ZMMWORD PTR [rsp+0x7c0]
  a5d615:	1f 
  a5d616:	62 41 2c 48 58 e6    	vaddps zmm28,zmm10,zmm14
  a5d61c:	62 51 2c 48 5c d6    	vsubps zmm10,zmm10,zmm14
  a5d622:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x300]
  a5d629:	0c 
  a5d62a:	62 12 5d 48 ac ce    	vfnmadd213ps zmm9,zmm4,zmm30
  a5d630:	62 f1 0c 40 58 e4    	vaddps zmm4,zmm30,zmm4
  a5d636:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm4
  a5d63d:	03 
  a5d63e:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x340]
  a5d645:	0d 
  a5d646:	62 52 5d 48 ac fc    	vfnmadd213ps zmm15,zmm4,zmm12
  a5d64c:	62 f1 1c 48 58 e4    	vaddps zmm4,zmm12,zmm4
  a5d652:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm4
  a5d659:	07 
  a5d65a:	62 72 7d 48 18 25 70 	vbroadcastss zmm12,DWORD PTR [rip+0xffffffffff617c70]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a5d661:	7c 61 ff 
  a5d664:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x4c0]
  a5d66b:	13 
  a5d66c:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x800]
  a5d673:	20 
  a5d674:	62 72 3d 48 ac ee    	vfnmadd213ps zmm13,zmm8,zmm6
  a5d67a:	62 71 1c 48 59 74 24 	vmulps zmm14,zmm12,ZMMWORD PTR [rsp+0x440]
  a5d681:	11 
  a5d682:	62 d1 14 48 5c e6    	vsubps zmm4,zmm13,zmm14
  a5d688:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm4
  a5d68f:	05 
  a5d690:	62 d1 14 48 58 e6    	vaddps zmm4,zmm13,zmm14
  a5d696:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm4
  a5d69d:	01 
  a5d69e:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x480]
  a5d6a5:	12 
  a5d6a6:	62 71 7c 48 28 74 24 	vmovaps zmm14,ZMMWORD PTR [rsp+0x780]
  a5d6ad:	1e 
  a5d6ae:	62 d2 5d 48 ac ce    	vfnmadd213ps zmm1,zmm4,zmm14
  a5d6b4:	62 71 1c 48 59 6c 24 	vmulps zmm13,zmm12,ZMMWORD PTR [rsp+0x500]
  a5d6bb:	14 
  a5d6bc:	62 41 74 48 58 c5    	vaddps zmm24,zmm1,zmm13
  a5d6c2:	62 61 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm24
  a5d6c9:	04 
  a5d6ca:	62 41 74 48 5c f5    	vsubps zmm30,zmm1,zmm13
  a5d6d0:	62 b1 6c 48 5c cb    	vsubps zmm1,zmm2,zmm19
  a5d6d6:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x6c0]
  a5d6dd:	1b 
  a5d6de:	62 11 6c 48 5c eb    	vsubps zmm13,zmm2,zmm27
  a5d6e4:	62 e1 1c 48 59 5c 24 	vmulps zmm19,zmm12,ZMMWORD PTR [rsp+0x280]
  a5d6eb:	0a 
  a5d6ec:	62 61 1c 48 59 5c 24 	vmulps zmm27,zmm12,ZMMWORD PTR [rsp+0x380]
  a5d6f3:	0e 
  a5d6f4:	62 d1 64 48 59 dc    	vmulps zmm3,zmm3,zmm12
  a5d6fa:	62 c1 6c 40 59 d4    	vmulps zmm18,zmm18,zmm12
  a5d700:	62 d1 44 48 59 fc    	vmulps zmm7,zmm7,zmm12
  a5d706:	62 51 2c 48 59 d4    	vmulps zmm10,zmm10,zmm12
  a5d70c:	62 d1 74 48 59 cc    	vmulps zmm1,zmm1,zmm12
  a5d712:	62 d1 14 48 59 d4    	vmulps zmm2,zmm13,zmm12
  a5d718:	62 02 25 48 ac fa    	vfnmadd213ps zmm31,zmm11,zmm26
  a5d71e:	62 41 2c 40 58 d3    	vaddps zmm26,zmm26,zmm11
  a5d724:	62 a2 5d 40 ac cd    	vfnmadd213ps zmm17,zmm20,zmm21
  a5d72a:	62 a1 54 40 58 ec    	vaddps zmm21,zmm21,zmm20
  a5d730:	62 22 1d 40 ac c8    	vfnmadd213ps zmm25,zmm28,zmm16
  a5d736:	62 71 34 40 5c df    	vsubps zmm11,zmm25,zmm7
  a5d73c:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm11
  a5d743:	06 
  a5d744:	62 71 34 40 58 df    	vaddps zmm11,zmm25,zmm7
  a5d74a:	62 b2 45 40 ac ee    	vfnmadd213ps zmm5,zmm23,zmm22
  a5d750:	62 41 54 48 58 ca    	vaddps zmm25,zmm5,zmm10
  a5d756:	62 51 54 48 5c ea    	vsubps zmm13,zmm5,zmm10
  a5d75c:	62 b1 34 48 58 eb    	vaddps zmm5,zmm9,zmm19
  a5d762:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm5
  a5d769:	02 
  a5d76a:	62 31 34 48 5c d3    	vsubps zmm10,zmm9,zmm19
  a5d770:	62 01 04 48 5c c3    	vsubps zmm24,zmm15,zmm27
  a5d776:	62 01 04 48 58 db    	vaddps zmm27,zmm15,zmm27
  a5d77c:	62 51 4c 48 58 c0    	vaddps zmm8,zmm6,zmm8
  a5d782:	62 e1 0c 48 58 e4    	vaddps zmm20,zmm14,zmm4
  a5d788:	62 f1 14 40 5c e1    	vsubps zmm4,zmm29,zmm1
  a5d78e:	62 f1 14 40 58 f9    	vaddps zmm7,zmm29,zmm1
  a5d794:	62 71 7c 48 58 e2    	vaddps zmm12,zmm0,zmm2
  a5d79a:	62 f1 7c 48 5c ca    	vsubps zmm1,zmm0,zmm2
  a5d7a0:	62 61 04 40 58 eb    	vaddps zmm29,zmm31,zmm3
  a5d7a6:	62 f1 04 40 5c eb    	vsubps zmm5,zmm31,zmm3
  a5d7ac:	62 b1 74 40 5c da    	vsubps zmm3,zmm17,zmm18
  a5d7b2:	62 a1 74 40 58 d2    	vaddps zmm18,zmm17,zmm18
  a5d7b8:	62 11 7c 40 58 cc    	vaddps zmm9,zmm16,zmm28
  a5d7be:	62 a1 4c 40 58 df    	vaddps zmm19,zmm22,zmm23
  a5d7c4:	62 f1 7c 48 28 05 b2 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff635cb2]        # 93480 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20930>
  a5d7cb:	5c 63 ff 
  a5d7ce:	62 b1 7c 48 28 d3    	vmovaps zmm2,zmm19
  a5d7d4:	62 d2 7d 48 7f d1    	vpermt2ps zmm2,zmm0,zmm9
  a5d7da:	62 e1 7c 48 28 35 dc 	vmovaps zmm22,ZMMWORD PTR [rip+0xffffffffff635cdc]        # 934c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20970>
  a5d7e1:	5c 63 ff 
  a5d7e4:	62 c2 4d 40 7f d9    	vpermt2ps zmm19,zmm22,zmm9
  a5d7ea:	62 a1 7c 48 28 fa    	vmovaps zmm23,zmm18
  a5d7f0:	62 e2 7d 48 7f fd    	vpermt2ps zmm23,zmm0,zmm5
  a5d7f6:	62 e2 4d 40 7f d5    	vpermt2ps zmm18,zmm22,zmm5
  a5d7fc:	62 f1 7c 48 28 e9    	vmovaps zmm5,zmm1
  a5d802:	62 f2 7d 48 7f ef    	vpermt2ps zmm5,zmm0,zmm7
  a5d808:	62 f2 4d 40 7f cf    	vpermt2ps zmm1,zmm22,zmm7
  a5d80e:	62 b1 7c 48 28 fc    	vmovaps zmm7,zmm20
  a5d814:	62 d2 7d 48 7f f8    	vpermt2ps zmm7,zmm0,zmm8
  a5d81a:	62 c2 4d 40 7f e0    	vpermt2ps zmm20,zmm22,zmm8
  a5d820:	62 11 7c 48 28 c3    	vmovaps zmm8,zmm27
  a5d826:	62 52 7d 48 7f c2    	vpermt2ps zmm8,zmm0,zmm10
  a5d82c:	62 42 4d 40 7f da    	vpermt2ps zmm27,zmm22,zmm10
  a5d832:	62 51 7c 48 28 d5    	vmovaps zmm10,zmm13
  a5d838:	62 52 7d 48 7f d3    	vpermt2ps zmm10,zmm0,zmm11
  a5d83e:	62 52 4d 40 7f eb    	vpermt2ps zmm13,zmm22,zmm11
  a5d844:	62 31 7c 48 28 cd    	vmovaps zmm9,zmm21
  a5d84a:	62 12 7d 48 7f ca    	vpermt2ps zmm9,zmm0,zmm26
  a5d850:	62 82 4d 40 7f ea    	vpermt2ps zmm21,zmm22,zmm26
  a5d856:	62 d1 7c 48 28 f4    	vmovaps zmm6,zmm12
  a5d85c:	62 f2 7d 48 7f f4    	vpermt2ps zmm6,zmm0,zmm4
  a5d862:	62 72 4d 40 7f e4    	vpermt2ps zmm12,zmm22,zmm4
  a5d868:	62 91 7c 48 28 e6    	vmovaps zmm4,zmm30
  a5d86e:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x40]
  a5d875:	01 
  a5d876:	62 d2 7d 48 7f e3    	vpermt2ps zmm4,zmm0,zmm11
  a5d87c:	62 42 4d 40 7f f3    	vpermt2ps zmm30,zmm22,zmm11
  a5d882:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x1c0]
  a5d889:	07 
  a5d88a:	62 51 7c 48 28 f3    	vmovaps zmm14,zmm11
  a5d890:	62 71 7c 48 28 7c 24 	vmovaps zmm15,ZMMWORD PTR [rsp+0xc0]
  a5d897:	03 
  a5d898:	62 52 7d 48 7f f7    	vpermt2ps zmm14,zmm0,zmm15
  a5d89e:	62 52 4d 40 7f df    	vpermt2ps zmm11,zmm22,zmm15
  a5d8a4:	62 41 7c 48 28 fb    	vmovaps zmm31,zmm11
  a5d8aa:	62 11 7c 48 28 f9    	vmovaps zmm15,zmm25
  a5d8b0:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x180]
  a5d8b7:	06 
  a5d8b8:	62 52 7d 48 7f fb    	vpermt2ps zmm15,zmm0,zmm11
  a5d8be:	62 42 4d 40 7f cb    	vpermt2ps zmm25,zmm22,zmm11
  a5d8c4:	62 e1 7c 48 28 c3    	vmovaps zmm16,zmm3
  a5d8ca:	62 82 7d 48 7f c5    	vpermt2ps zmm16,zmm0,zmm29
  a5d8d0:	62 92 4d 40 7f dd    	vpermt2ps zmm3,zmm22,zmm29
  a5d8d6:	62 61 7c 48 28 64 24 	vmovaps zmm28,ZMMWORD PTR [rsp+0x200]
  a5d8dd:	08 
  a5d8de:	62 81 7c 48 28 cc    	vmovaps zmm17,zmm28
  a5d8e4:	62 61 7c 48 28 54 24 	vmovaps zmm26,ZMMWORD PTR [rsp+0x2c0]
  a5d8eb:	0b 
  a5d8ec:	62 82 7d 48 7f ca    	vpermt2ps zmm17,zmm0,zmm26
  a5d8f2:	62 02 4d 40 7f e2    	vpermt2ps zmm28,zmm22,zmm26
  a5d8f8:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x100]
  a5d8ff:	04 
  a5d900:	62 41 7c 48 28 d3    	vmovaps zmm26,zmm11
  a5d906:	62 61 7c 48 28 6c 24 	vmovaps zmm29,ZMMWORD PTR [rsp+0x140]
  a5d90d:	05 
  a5d90e:	62 02 7d 48 7f d5    	vpermt2ps zmm26,zmm0,zmm29
  a5d914:	62 12 4d 40 7f dd    	vpermt2ps zmm11,zmm22,zmm29
  a5d91a:	62 61 7c 48 28 6c 24 	vmovaps zmm29,ZMMWORD PTR [rsp+0x80]
  a5d921:	02 
  a5d922:	62 92 3d 40 77 c5    	vpermi2ps zmm0,zmm24,zmm29
  a5d928:	62 02 4d 40 7f c5    	vpermt2ps zmm24,zmm22,zmm29
  a5d92e:	62 e1 7c 48 11 1e    	vmovups ZMMWORD PTR [rsi],zmm19
  a5d934:	62 f1 7c 48 11 56 01 	vmovups ZMMWORD PTR [rsi+0x40],zmm2
  a5d93b:	62 e1 7c 48 11 56 02 	vmovups ZMMWORD PTR [rsi+0x80],zmm18
  a5d942:	62 e1 7c 48 11 7e 03 	vmovups ZMMWORD PTR [rsi+0xc0],zmm23
  a5d949:	62 f1 7c 48 11 4e 04 	vmovups ZMMWORD PTR [rsi+0x100],zmm1
  a5d950:	62 f1 7c 48 11 6e 05 	vmovups ZMMWORD PTR [rsi+0x140],zmm5
  a5d957:	62 e1 7c 48 11 66 06 	vmovups ZMMWORD PTR [rsi+0x180],zmm20
  a5d95e:	62 f1 7c 48 11 7e 07 	vmovups ZMMWORD PTR [rsi+0x1c0],zmm7
  a5d965:	62 61 7c 48 11 5e 08 	vmovups ZMMWORD PTR [rsi+0x200],zmm27
  a5d96c:	62 71 7c 48 11 46 09 	vmovups ZMMWORD PTR [rsi+0x240],zmm8
  a5d973:	62 71 7c 48 11 6e 0a 	vmovups ZMMWORD PTR [rsi+0x280],zmm13
  a5d97a:	62 71 7c 48 11 56 0b 	vmovups ZMMWORD PTR [rsi+0x2c0],zmm10
  a5d981:	62 e1 7c 48 11 6e 0c 	vmovups ZMMWORD PTR [rsi+0x300],zmm21
  a5d988:	62 71 7c 48 11 4e 0d 	vmovups ZMMWORD PTR [rsi+0x340],zmm9
  a5d98f:	62 71 7c 48 11 66 0e 	vmovups ZMMWORD PTR [rsi+0x380],zmm12
  a5d996:	62 f1 7c 48 11 76 0f 	vmovups ZMMWORD PTR [rsi+0x3c0],zmm6
  a5d99d:	62 61 7c 48 11 76 10 	vmovups ZMMWORD PTR [rsi+0x400],zmm30
  a5d9a4:	62 f1 7c 48 11 66 11 	vmovups ZMMWORD PTR [rsi+0x440],zmm4
  a5d9ab:	62 61 7c 48 11 7e 12 	vmovups ZMMWORD PTR [rsi+0x480],zmm31
  a5d9b2:	62 71 7c 48 11 76 13 	vmovups ZMMWORD PTR [rsi+0x4c0],zmm14
  a5d9b9:	62 61 7c 48 11 4e 14 	vmovups ZMMWORD PTR [rsi+0x500],zmm25
  a5d9c0:	62 71 7c 48 11 7e 15 	vmovups ZMMWORD PTR [rsi+0x540],zmm15
  a5d9c7:	62 f1 7c 48 11 5e 16 	vmovups ZMMWORD PTR [rsi+0x580],zmm3
  a5d9ce:	62 e1 7c 48 11 46 17 	vmovups ZMMWORD PTR [rsi+0x5c0],zmm16
  a5d9d5:	62 61 7c 48 11 66 18 	vmovups ZMMWORD PTR [rsi+0x600],zmm28
  a5d9dc:	62 e1 7c 48 11 4e 19 	vmovups ZMMWORD PTR [rsi+0x640],zmm17
  a5d9e3:	62 71 7c 48 11 5e 1a 	vmovups ZMMWORD PTR [rsi+0x680],zmm11
  a5d9ea:	62 61 7c 48 11 56 1b 	vmovups ZMMWORD PTR [rsi+0x6c0],zmm26
  a5d9f1:	62 61 7c 48 11 46 1c 	vmovups ZMMWORD PTR [rsi+0x700],zmm24
  a5d9f8:	62 f1 7c 48 11 46 1d 	vmovups ZMMWORD PTR [rsi+0x740],zmm0
  a5d9ff:	48 89 ec             	mov    rsp,rbp
  a5da02:	5d                   	pop    rbp
  a5da03:	c5 f8 77             	vzeroupper
  a5da06:	c3                   	ret
