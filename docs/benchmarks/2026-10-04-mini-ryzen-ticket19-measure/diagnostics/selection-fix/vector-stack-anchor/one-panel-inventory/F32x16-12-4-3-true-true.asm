
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a72bc0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a72bc0:	62 f1 7c 48 28 05 b6 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6543b6]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a72bc7:	43 65 ff 
  a72bca:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a72bce:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a72bd2:	62 f2 7d 48 7f d2    	vpermt2ps zmm2,zmm0,zmm2
  a72bd8:	62 f1 7c 48 28 1d 1e 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff65431e]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a72bdf:	43 65 ff 
  a72be2:	62 f1 7c 48 28 25 14 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff654214]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a72be9:	42 65 ff 
  a72bec:	62 f1 7c 48 28 2d 4a 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff65424a]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a72bf3:	42 65 ff 
  a72bf6:	48 c1 e2 05          	shl    rdx,0x5
  a72bfa:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a72bfe:	31 d2                	xor    edx,edx
  a72c00:	62 f1 7c 48 28 35 b6 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff6220b6]        # 94cc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x22170>
  a72c07:	20 62 ff 
  a72c0a:	62 f2 7d 48 18 3d 4c 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff60284c]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a72c11:	28 60 ff 
  a72c14:	62 71 7c 48 28 05 e2 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff6220e2]        # 94d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x221b0>
  a72c1b:	20 62 ff 
  a72c1e:	c5 7c 28 0d ba 45 60 	vmovaps ymm9,YMMWORD PTR [rip+0xffffffffff6045ba]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  a72c25:	ff 
  a72c26:	c4 62 7d 18 15 a5 26 	vbroadcastss ymm10,DWORD PTR [rip+0xffffffffff6026a5]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a72c2d:	60 ff 
  a72c2f:	90                   	nop
  a72c30:	c5 7b 10 5c 17 10    	vmovsd xmm11,QWORD PTR [rdi+rdx*1+0x10]
  a72c36:	c5 78 10 24 17       	vmovups xmm12,XMMWORD PTR [rdi+rdx*1]
  a72c3b:	c5 78 10 6c 17 18    	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0x18]
  a72c41:	c5 78 10 74 17 30    	vmovups xmm14,XMMWORD PTR [rdi+rdx*1+0x30]
  a72c47:	c5 78 10 7c 17 48    	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x48]
  a72c4d:	62 53 1d 48 18 db 01 	vinsertf32x4 zmm11,zmm12,xmm11,0x1
  a72c54:	62 51 7c 48 28 e3    	vmovaps zmm12,zmm11
  a72c5a:	62 72 4d 48 7f e1    	vpermt2ps zmm12,zmm6,zmm1
  a72c60:	62 72 3d 48 7f d9    	vpermt2ps zmm11,zmm8,zmm1
  a72c66:	62 e1 ff 08 10 44 17 	vmovsd xmm16,QWORD PTR [rdi+rdx*1+0x28]
  a72c6d:	05 
  a72c6e:	62 33 15 48 18 e8 01 	vinsertf32x4 zmm13,zmm13,xmm16,0x1
  a72c75:	62 c1 7c 48 28 c5    	vmovaps zmm16,zmm13
  a72c7b:	62 e2 4d 48 7f c1    	vpermt2ps zmm16,zmm6,zmm1
  a72c81:	62 72 3d 48 7f e9    	vpermt2ps zmm13,zmm8,zmm1
  a72c87:	62 e1 ff 08 10 4c 17 	vmovsd xmm17,QWORD PTR [rdi+rdx*1+0x40]
  a72c8e:	08 
  a72c8f:	62 33 0d 48 18 f1 01 	vinsertf32x4 zmm14,zmm14,xmm17,0x1
  a72c96:	62 c1 7c 48 28 ce    	vmovaps zmm17,zmm14
  a72c9c:	62 e2 4d 48 7f c9    	vpermt2ps zmm17,zmm6,zmm1
  a72ca2:	62 72 3d 48 7f f1    	vpermt2ps zmm14,zmm8,zmm1
  a72ca8:	62 e1 ff 08 10 54 17 	vmovsd xmm18,QWORD PTR [rdi+rdx*1+0x58]
  a72caf:	0b 
  a72cb0:	62 33 05 48 18 fa 01 	vinsertf32x4 zmm15,zmm15,xmm18,0x1
  a72cb7:	62 c1 7c 48 28 d7    	vmovaps zmm18,zmm15
  a72cbd:	62 e2 4d 48 7f d1    	vpermt2ps zmm18,zmm6,zmm1
  a72cc3:	62 72 3d 48 7f f9    	vpermt2ps zmm15,zmm8,zmm1
  a72cc9:	62 c1 24 48 58 de    	vaddps zmm19,zmm11,zmm14
  a72ccf:	62 c1 14 48 58 e7    	vaddps zmm20,zmm13,zmm15
  a72cd5:	62 a1 64 40 58 ec    	vaddps zmm21,zmm19,zmm20
  a72cdb:	62 a1 1c 48 58 f1    	vaddps zmm22,zmm12,zmm17
  a72ce1:	62 a1 7c 40 58 fa    	vaddps zmm23,zmm16,zmm18
  a72ce7:	62 21 4c 40 58 c7    	vaddps zmm24,zmm22,zmm23
  a72ced:	62 51 24 48 5c de    	vsubps zmm11,zmm11,zmm14
  a72cf3:	62 31 7c 40 5c f2    	vsubps zmm14,zmm16,zmm18
  a72cf9:	62 c1 24 48 58 c6    	vaddps zmm16,zmm11,zmm14
  a72cff:	62 31 1c 48 5c e1    	vsubps zmm12,zmm12,zmm17
  a72d05:	62 51 04 48 5c ed    	vsubps zmm13,zmm15,zmm13
  a72d0b:	62 51 14 48 58 fc    	vaddps zmm15,zmm13,zmm12
  a72d11:	62 a1 64 40 5c cc    	vsubps zmm17,zmm19,zmm20
  a72d17:	62 a1 4c 40 5c d7    	vsubps zmm18,zmm22,zmm23
  a72d1d:	62 51 24 48 5c de    	vsubps zmm11,zmm11,zmm14
  a72d23:	62 51 1c 48 5c e5    	vsubps zmm12,zmm12,zmm13
  a72d29:	62 e2 7d 48 7f e9    	vpermt2ps zmm21,zmm0,zmm1
  a72d2f:	62 e2 7d 48 7f c1    	vpermt2ps zmm16,zmm0,zmm1
  a72d35:	62 e2 7d 48 7f c9    	vpermt2ps zmm17,zmm0,zmm1
  a72d3b:	62 72 7d 48 7f d9    	vpermt2ps zmm11,zmm0,zmm1
  a72d41:	62 e2 65 48 7f ea    	vpermt2ps zmm21,zmm3,zmm2
  a72d47:	62 e2 65 48 7f c2    	vpermt2ps zmm16,zmm3,zmm2
  a72d4d:	62 e2 65 48 7f ca    	vpermt2ps zmm17,zmm3,zmm2
  a72d53:	62 72 65 48 7f da    	vpermt2ps zmm11,zmm3,zmm2
  a72d59:	62 31 d5 40 14 e9    	vunpcklpd zmm13,zmm21,zmm17
  a72d5f:	62 31 d5 40 15 f1    	vunpckhpd zmm14,zmm21,zmm17
  a72d65:	62 c1 fd 40 14 cb    	vunpcklpd zmm17,zmm16,zmm11
  a72d6b:	62 51 fd 40 15 db    	vunpckhpd zmm11,zmm16,zmm11
  a72d71:	62 c1 7c 48 28 c5    	vmovaps zmm16,zmm13
  a72d77:	62 a2 5d 48 7f c1    	vpermt2ps zmm16,zmm4,zmm17
  a72d7d:	62 32 55 48 7f e9    	vpermt2ps zmm13,zmm5,zmm17
  a72d83:	62 52 5d 48 7f f3    	vpermt2ps zmm14,zmm4,zmm11
  a72d89:	62 62 7d 48 7f c1    	vpermt2ps zmm24,zmm0,zmm1
  a72d8f:	62 72 7d 48 7f f9    	vpermt2ps zmm15,zmm0,zmm1
  a72d95:	62 e2 7d 48 7f d1    	vpermt2ps zmm18,zmm0,zmm1
  a72d9b:	62 72 7d 48 7f e1    	vpermt2ps zmm12,zmm0,zmm1
  a72da1:	62 62 65 48 7f c2    	vpermt2ps zmm24,zmm3,zmm2
  a72da7:	62 72 65 48 7f fa    	vpermt2ps zmm15,zmm3,zmm2
  a72dad:	62 e2 65 48 7f d2    	vpermt2ps zmm18,zmm3,zmm2
  a72db3:	62 72 65 48 7f e2    	vpermt2ps zmm12,zmm3,zmm2
  a72db9:	62 31 bd 40 14 da    	vunpcklpd zmm11,zmm24,zmm18
  a72dbf:	62 a1 bd 40 15 ca    	vunpckhpd zmm17,zmm24,zmm18
  a72dc5:	62 c1 85 48 14 d4    	vunpcklpd zmm18,zmm15,zmm12
  a72dcb:	62 51 85 48 15 e4    	vunpckhpd zmm12,zmm15,zmm12
  a72dd1:	62 51 7c 48 28 fb    	vmovaps zmm15,zmm11
  a72dd7:	62 32 5d 48 7f fa    	vpermt2ps zmm15,zmm4,zmm18
  a72ddd:	62 32 55 48 7f da    	vpermt2ps zmm11,zmm5,zmm18
  a72de3:	62 c2 5d 48 7f cc    	vpermt2ps zmm17,zmm4,zmm12
  a72de9:	62 71 7c 48 10 61 02 	vmovups zmm12,ZMMWORD PTR [rcx+0x80]
  a72df0:	62 e1 7c 48 10 51 03 	vmovups zmm18,ZMMWORD PTR [rcx+0xc0]
  a72df7:	62 e1 7c 48 10 59 04 	vmovups zmm19,ZMMWORD PTR [rcx+0x100]
  a72dfe:	62 e1 7c 48 10 61 05 	vmovups zmm20,ZMMWORD PTR [rcx+0x140]
  a72e05:	62 c1 14 48 59 ec    	vmulps zmm21,zmm13,zmm12
  a72e0b:	62 a2 25 48 bc ea    	vfnmadd231ps zmm21,zmm11,zmm18
  a72e11:	62 a1 0c 48 59 f3    	vmulps zmm22,zmm14,zmm19
  a72e17:	62 a2 75 40 bc f4    	vfnmadd231ps zmm22,zmm17,zmm20
  a72e1d:	62 a1 54 40 58 fe    	vaddps zmm23,zmm21,zmm22
  a72e23:	62 51 24 48 59 dc    	vmulps zmm11,zmm11,zmm12
  a72e29:	62 52 6d 40 b8 dd    	vfmadd231ps zmm11,zmm18,zmm13
  a72e2f:	62 31 74 40 59 e3    	vmulps zmm12,zmm17,zmm19
  a72e35:	62 52 5d 40 b8 e6    	vfmadd231ps zmm12,zmm20,zmm14
  a72e3b:	62 51 24 48 58 ec    	vaddps zmm13,zmm11,zmm12
  a72e41:	62 71 7c 48 28 f7    	vmovaps zmm14,zmm7
  a72e47:	62 32 45 40 ac f0    	vfnmadd213ps zmm14,zmm23,zmm16
  a72e4d:	62 e1 7c 48 28 cf    	vmovaps zmm17,zmm7
  a72e53:	62 c2 15 48 ac cf    	vfnmadd213ps zmm17,zmm13,zmm15
  a72e59:	62 a1 7c 20 58 c7    	vaddps ymm16,ymm16,ymm23
  a72e5f:	c4 41 00 58 ed       	vaddps xmm13,xmm15,xmm13
  a72e64:	62 32 35 28 7f e8    	vpermt2ps ymm13,ymm9,ymm16
  a72e6a:	c5 7c 11 2c 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm13
  a72e6f:	c4 41 24 5c dc       	vsubps ymm11,ymm11,ymm12
  a72e74:	c4 41 24 59 da       	vmulps ymm11,ymm11,ymm10
  a72e79:	c4 41 0c 58 e3       	vaddps ymm12,ymm14,ymm11
  a72e7e:	62 31 54 20 5c ee    	vsubps ymm13,ymm21,ymm22
  a72e84:	c4 41 14 59 ea       	vmulps ymm13,ymm13,ymm10
  a72e89:	62 51 74 00 5c fd    	vsubps xmm15,xmm17,xmm13
  a72e8f:	62 52 35 28 7f fc    	vpermt2ps ymm15,ymm9,ymm12
  a72e95:	c5 7c 11 7c 16 20    	vmovups YMMWORD PTR [rsi+rdx*1+0x20],ymm15
  a72e9b:	c4 41 0c 5c db       	vsubps ymm11,ymm14,ymm11
  a72ea0:	62 51 74 00 58 e5    	vaddps xmm12,xmm17,xmm13
  a72ea6:	62 52 35 28 7f e3    	vpermt2ps ymm12,ymm9,ymm11
  a72eac:	c5 7c 11 64 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm12
  a72eb2:	48 83 c2 60          	add    rdx,0x60
  a72eb6:	48 39 d0             	cmp    rax,rdx
  a72eb9:	0f 85 71 fd ff ff    	jne    a72c30 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x70>
  a72ebf:	c5 f8 77             	vzeroupper
  a72ec2:	c3                   	ret
