
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a56840 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a56840:	62 f1 7c 48 28 05 36 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff670736]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a56847:	07 67 ff 
  a5684a:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a5684e:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a56852:	62 f2 7d 48 7f d2    	vpermt2ps zmm2,zmm0,zmm2
  a56858:	62 f1 7c 48 28 1d 9e 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff67069e]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a5685f:	06 67 ff 
  a56862:	62 f1 7c 48 28 25 94 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff670594]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a56869:	05 67 ff 
  a5686c:	62 f1 7c 48 28 2d ca 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff6705ca]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a56873:	05 67 ff 
  a56876:	48 c1 e2 05          	shl    rdx,0x5
  a5687a:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a5687e:	31 d2                	xor    edx,edx
  a56880:	62 f1 7c 48 28 35 f6 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff63c7f6]        # 93080 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20530>
  a56887:	c7 63 ff 
  a5688a:	62 f2 7d 48 18 3d cc 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff61ebcc]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a56891:	eb 61 ff 
  a56894:	62 71 7c 48 28 05 22 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff63c822]        # 930c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20570>
  a5689b:	c8 63 ff 
  a5689e:	c5 7c 28 0d 3a 09 62 	vmovaps ymm9,YMMWORD PTR [rip+0xffffffffff62093a]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  a568a5:	ff 
  a568a6:	c4 62 7d 18 15 25 ea 	vbroadcastss ymm10,DWORD PTR [rip+0xffffffffff61ea25]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a568ad:	61 ff 
  a568af:	90                   	nop
  a568b0:	c5 7b 10 5c 17 10    	vmovsd xmm11,QWORD PTR [rdi+rdx*1+0x10]
  a568b6:	c5 78 10 24 17       	vmovups xmm12,XMMWORD PTR [rdi+rdx*1]
  a568bb:	c5 78 10 6c 17 18    	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0x18]
  a568c1:	c5 78 10 74 17 30    	vmovups xmm14,XMMWORD PTR [rdi+rdx*1+0x30]
  a568c7:	c5 78 10 7c 17 48    	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x48]
  a568cd:	62 53 1d 48 18 db 01 	vinsertf32x4 zmm11,zmm12,xmm11,0x1
  a568d4:	62 51 7c 48 28 e3    	vmovaps zmm12,zmm11
  a568da:	62 72 4d 48 7f e1    	vpermt2ps zmm12,zmm6,zmm1
  a568e0:	62 72 3d 48 7f d9    	vpermt2ps zmm11,zmm8,zmm1
  a568e6:	62 e1 ff 08 10 44 17 	vmovsd xmm16,QWORD PTR [rdi+rdx*1+0x28]
  a568ed:	05 
  a568ee:	62 33 15 48 18 e8 01 	vinsertf32x4 zmm13,zmm13,xmm16,0x1
  a568f5:	62 c1 7c 48 28 c5    	vmovaps zmm16,zmm13
  a568fb:	62 e2 4d 48 7f c1    	vpermt2ps zmm16,zmm6,zmm1
  a56901:	62 72 3d 48 7f e9    	vpermt2ps zmm13,zmm8,zmm1
  a56907:	62 e1 ff 08 10 4c 17 	vmovsd xmm17,QWORD PTR [rdi+rdx*1+0x40]
  a5690e:	08 
  a5690f:	62 33 0d 48 18 f1 01 	vinsertf32x4 zmm14,zmm14,xmm17,0x1
  a56916:	62 c1 7c 48 28 ce    	vmovaps zmm17,zmm14
  a5691c:	62 e2 4d 48 7f c9    	vpermt2ps zmm17,zmm6,zmm1
  a56922:	62 72 3d 48 7f f1    	vpermt2ps zmm14,zmm8,zmm1
  a56928:	62 e1 ff 08 10 54 17 	vmovsd xmm18,QWORD PTR [rdi+rdx*1+0x58]
  a5692f:	0b 
  a56930:	62 33 05 48 18 fa 01 	vinsertf32x4 zmm15,zmm15,xmm18,0x1
  a56937:	62 c1 7c 48 28 d7    	vmovaps zmm18,zmm15
  a5693d:	62 e2 4d 48 7f d1    	vpermt2ps zmm18,zmm6,zmm1
  a56943:	62 72 3d 48 7f f9    	vpermt2ps zmm15,zmm8,zmm1
  a56949:	62 a1 1c 48 58 d9    	vaddps zmm19,zmm12,zmm17
  a5694f:	62 a1 7c 40 58 e2    	vaddps zmm20,zmm16,zmm18
  a56955:	62 a1 64 40 58 ec    	vaddps zmm21,zmm19,zmm20
  a5695b:	62 c1 24 48 58 f6    	vaddps zmm22,zmm11,zmm14
  a56961:	62 c1 14 48 58 ff    	vaddps zmm23,zmm13,zmm15
  a56967:	62 21 4c 40 58 c7    	vaddps zmm24,zmm22,zmm23
  a5696d:	62 31 1c 48 5c e1    	vsubps zmm12,zmm12,zmm17
  a56973:	62 51 14 48 5c ef    	vsubps zmm13,zmm13,zmm15
  a56979:	62 51 1c 48 58 fd    	vaddps zmm15,zmm12,zmm13
  a5697f:	62 51 24 48 5c de    	vsubps zmm11,zmm11,zmm14
  a56985:	62 31 6c 40 5c f0    	vsubps zmm14,zmm18,zmm16
  a5698b:	62 c1 0c 48 58 c3    	vaddps zmm16,zmm14,zmm11
  a56991:	62 a1 64 40 5c cc    	vsubps zmm17,zmm19,zmm20
  a56997:	62 a1 4c 40 5c d7    	vsubps zmm18,zmm22,zmm23
  a5699d:	62 51 1c 48 5c e5    	vsubps zmm12,zmm12,zmm13
  a569a3:	62 51 24 48 5c de    	vsubps zmm11,zmm11,zmm14
  a569a9:	62 e2 7d 48 7f e9    	vpermt2ps zmm21,zmm0,zmm1
  a569af:	62 72 7d 48 7f f9    	vpermt2ps zmm15,zmm0,zmm1
  a569b5:	62 e2 7d 48 7f c9    	vpermt2ps zmm17,zmm0,zmm1
  a569bb:	62 72 7d 48 7f e1    	vpermt2ps zmm12,zmm0,zmm1
  a569c1:	62 e2 65 48 7f ea    	vpermt2ps zmm21,zmm3,zmm2
  a569c7:	62 72 65 48 7f fa    	vpermt2ps zmm15,zmm3,zmm2
  a569cd:	62 e2 65 48 7f ca    	vpermt2ps zmm17,zmm3,zmm2
  a569d3:	62 72 65 48 7f e2    	vpermt2ps zmm12,zmm3,zmm2
  a569d9:	62 31 d5 40 14 e9    	vunpcklpd zmm13,zmm21,zmm17
  a569df:	62 31 d5 40 15 f1    	vunpckhpd zmm14,zmm21,zmm17
  a569e5:	62 c1 85 48 14 cc    	vunpcklpd zmm17,zmm15,zmm12
  a569eb:	62 51 85 48 15 e4    	vunpckhpd zmm12,zmm15,zmm12
  a569f1:	62 51 7c 48 28 fd    	vmovaps zmm15,zmm13
  a569f7:	62 32 5d 48 7f f9    	vpermt2ps zmm15,zmm4,zmm17
  a569fd:	62 32 55 48 7f e9    	vpermt2ps zmm13,zmm5,zmm17
  a56a03:	62 52 5d 48 7f f4    	vpermt2ps zmm14,zmm4,zmm12
  a56a09:	62 62 7d 48 7f c1    	vpermt2ps zmm24,zmm0,zmm1
  a56a0f:	62 e2 7d 48 7f c1    	vpermt2ps zmm16,zmm0,zmm1
  a56a15:	62 e2 7d 48 7f d1    	vpermt2ps zmm18,zmm0,zmm1
  a56a1b:	62 72 7d 48 7f d9    	vpermt2ps zmm11,zmm0,zmm1
  a56a21:	62 62 65 48 7f c2    	vpermt2ps zmm24,zmm3,zmm2
  a56a27:	62 e2 65 48 7f c2    	vpermt2ps zmm16,zmm3,zmm2
  a56a2d:	62 e2 65 48 7f d2    	vpermt2ps zmm18,zmm3,zmm2
  a56a33:	62 72 65 48 7f da    	vpermt2ps zmm11,zmm3,zmm2
  a56a39:	62 31 bd 40 14 e2    	vunpcklpd zmm12,zmm24,zmm18
  a56a3f:	62 a1 bd 40 15 ca    	vunpckhpd zmm17,zmm24,zmm18
  a56a45:	62 c1 fd 40 14 d3    	vunpcklpd zmm18,zmm16,zmm11
  a56a4b:	62 51 fd 40 15 db    	vunpckhpd zmm11,zmm16,zmm11
  a56a51:	62 c1 7c 48 28 c4    	vmovaps zmm16,zmm12
  a56a57:	62 a2 5d 48 7f c2    	vpermt2ps zmm16,zmm4,zmm18
  a56a5d:	62 32 55 48 7f e2    	vpermt2ps zmm12,zmm5,zmm18
  a56a63:	62 c2 5d 48 7f cb    	vpermt2ps zmm17,zmm4,zmm11
  a56a69:	62 71 7c 48 10 59 02 	vmovups zmm11,ZMMWORD PTR [rcx+0x80]
  a56a70:	62 e1 7c 48 10 51 03 	vmovups zmm18,ZMMWORD PTR [rcx+0xc0]
  a56a77:	62 e1 7c 48 10 59 04 	vmovups zmm19,ZMMWORD PTR [rcx+0x100]
  a56a7e:	62 e1 7c 48 10 61 05 	vmovups zmm20,ZMMWORD PTR [rcx+0x140]
  a56a85:	62 c1 14 48 59 eb    	vmulps zmm21,zmm13,zmm11
  a56a8b:	62 a2 1d 48 bc ea    	vfnmadd231ps zmm21,zmm12,zmm18
  a56a91:	62 a1 0c 48 59 f3    	vmulps zmm22,zmm14,zmm19
  a56a97:	62 a2 75 40 bc f4    	vfnmadd231ps zmm22,zmm17,zmm20
  a56a9d:	62 a1 54 40 58 fe    	vaddps zmm23,zmm21,zmm22
  a56aa3:	62 51 1c 48 59 db    	vmulps zmm11,zmm12,zmm11
  a56aa9:	62 52 6d 40 b8 dd    	vfmadd231ps zmm11,zmm18,zmm13
  a56aaf:	62 31 74 40 59 e3    	vmulps zmm12,zmm17,zmm19
  a56ab5:	62 52 5d 40 b8 e6    	vfmadd231ps zmm12,zmm20,zmm14
  a56abb:	62 51 24 48 58 ec    	vaddps zmm13,zmm11,zmm12
  a56ac1:	62 71 7c 48 28 f7    	vmovaps zmm14,zmm7
  a56ac7:	62 52 45 40 ac f7    	vfnmadd213ps zmm14,zmm23,zmm15
  a56acd:	62 e1 7c 48 28 cf    	vmovaps zmm17,zmm7
  a56ad3:	62 a2 15 48 ac c8    	vfnmadd213ps zmm17,zmm13,zmm16
  a56ad9:	62 51 7c 20 58 ed    	vaddps ymm13,ymm16,ymm13
  a56adf:	62 31 04 08 58 ff    	vaddps xmm15,xmm15,xmm23
  a56ae5:	62 52 35 28 7f fd    	vpermt2ps ymm15,ymm9,ymm13
  a56aeb:	c5 7c 11 3c 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm15
  a56af0:	62 31 54 20 5c ee    	vsubps ymm13,ymm21,ymm22
  a56af6:	c4 41 14 59 ea       	vmulps ymm13,ymm13,ymm10
  a56afb:	62 51 74 20 5c fd    	vsubps ymm15,ymm17,ymm13
  a56b01:	c4 41 24 5c dc       	vsubps ymm11,ymm11,ymm12
  a56b06:	c4 41 24 59 da       	vmulps ymm11,ymm11,ymm10
  a56b0b:	c4 41 08 58 e3       	vaddps xmm12,xmm14,xmm11
  a56b10:	62 52 35 28 7f e7    	vpermt2ps ymm12,ymm9,ymm15
  a56b16:	c5 7c 11 64 16 20    	vmovups YMMWORD PTR [rsi+rdx*1+0x20],ymm12
  a56b1c:	62 51 74 20 58 e5    	vaddps ymm12,ymm17,ymm13
  a56b22:	c4 41 08 5c db       	vsubps xmm11,xmm14,xmm11
  a56b27:	62 52 35 28 7f dc    	vpermt2ps ymm11,ymm9,ymm12
  a56b2d:	c5 7c 11 5c 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm11
  a56b33:	48 83 c2 60          	add    rdx,0x60
  a56b37:	48 39 d0             	cmp    rax,rdx
  a56b3a:	0f 85 70 fd ff ff    	jne    a568b0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x70>
  a56b40:	c5 f8 77             	vzeroupper
  a56b43:	c3                   	ret
