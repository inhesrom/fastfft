
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a306c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a306c0:	48 81 ec 08 01 00 00 	sub    rsp,0x108
  a306c7:	62 f1 7c 48 10 1f    	vmovups zmm3,ZMMWORD PTR [rdi]
  a306cd:	c5 fc 10 4f 40       	vmovups ymm1,YMMWORD PTR [rdi+0x40]
  a306d2:	62 f1 7c 48 28 15 64 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff660564]        # 90c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e0f0>
  a306d9:	05 66 ff 
  a306dc:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a306e2:	62 f2 6d 48 7f c1    	vpermt2ps zmm0,zmm2,zmm1
  a306e8:	62 f1 7c 48 28 2d 8e 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff66058e]        # 90c80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e130>
  a306ef:	05 66 ff 
  a306f2:	62 f2 55 48 7f d9    	vpermt2ps zmm3,zmm5,zmm1
  a306f8:	62 f1 7c 48 10 b7 60 	vmovups zmm6,ZMMWORD PTR [rdi+0x60]
  a306ff:	00 00 00 
  a30702:	c5 fc 10 8f a0 00 00 	vmovups ymm1,YMMWORD PTR [rdi+0xa0]
  a30709:	00 
  a3070a:	62 f1 7c 48 28 fe    	vmovaps zmm7,zmm6
  a30710:	62 f2 6d 48 7f f9    	vpermt2ps zmm7,zmm2,zmm1
  a30716:	62 f2 55 48 7f f1    	vpermt2ps zmm6,zmm5,zmm1
  a3071c:	62 f1 7c 48 10 67 03 	vmovups zmm4,ZMMWORD PTR [rdi+0xc0]
  a30723:	c5 fc 10 8f 00 01 00 	vmovups ymm1,YMMWORD PTR [rdi+0x100]
  a3072a:	00 
  a3072b:	62 71 7c 48 28 c4    	vmovaps zmm8,zmm4
  a30731:	62 72 6d 48 7f c1    	vpermt2ps zmm8,zmm2,zmm1
  a30737:	62 f2 55 48 7f e1    	vpermt2ps zmm4,zmm5,zmm1
  a3073d:	62 71 7c 48 10 8f 20 	vmovups zmm9,ZMMWORD PTR [rdi+0x120]
  a30744:	01 00 00 
  a30747:	c5 fc 10 8f 60 01 00 	vmovups ymm1,YMMWORD PTR [rdi+0x160]
  a3074e:	00 
  a3074f:	62 51 7c 48 28 d1    	vmovaps zmm10,zmm9
  a30755:	62 72 6d 48 7f d1    	vpermt2ps zmm10,zmm2,zmm1
  a3075b:	62 72 55 48 7f c9    	vpermt2ps zmm9,zmm5,zmm1
  a30761:	62 71 7c 48 10 5f 06 	vmovups zmm11,ZMMWORD PTR [rdi+0x180]
  a30768:	c5 fc 10 8f c0 01 00 	vmovups ymm1,YMMWORD PTR [rdi+0x1c0]
  a3076f:	00 
  a30770:	62 51 7c 48 28 eb    	vmovaps zmm13,zmm11
  a30776:	62 72 6d 48 7f e9    	vpermt2ps zmm13,zmm2,zmm1
  a3077c:	62 72 55 48 7f d9    	vpermt2ps zmm11,zmm5,zmm1
  a30782:	62 71 7c 48 10 a7 e0 	vmovups zmm12,ZMMWORD PTR [rdi+0x1e0]
  a30789:	01 00 00 
  a3078c:	c5 fc 10 8f 20 02 00 	vmovups ymm1,YMMWORD PTR [rdi+0x220]
  a30793:	00 
  a30794:	62 51 7c 48 28 f4    	vmovaps zmm14,zmm12
  a3079a:	62 72 6d 48 7f f1    	vpermt2ps zmm14,zmm2,zmm1
  a307a0:	62 72 55 48 7f e1    	vpermt2ps zmm12,zmm5,zmm1
  a307a6:	62 71 7c 48 10 7f 09 	vmovups zmm15,ZMMWORD PTR [rdi+0x240]
  a307ad:	c5 fc 10 8f 80 02 00 	vmovups ymm1,YMMWORD PTR [rdi+0x280]
  a307b4:	00 
  a307b5:	62 c1 7c 48 28 c7    	vmovaps zmm16,zmm15
  a307bb:	62 e2 6d 48 7f c1    	vpermt2ps zmm16,zmm2,zmm1
  a307c1:	62 72 55 48 7f f9    	vpermt2ps zmm15,zmm5,zmm1
  a307c7:	62 e1 7c 48 10 8f a0 	vmovups zmm17,ZMMWORD PTR [rdi+0x2a0]
  a307ce:	02 00 00 
  a307d1:	c5 fc 10 8f e0 02 00 	vmovups ymm1,YMMWORD PTR [rdi+0x2e0]
  a307d8:	00 
  a307d9:	62 f2 75 40 77 d1    	vpermi2ps zmm2,zmm17,zmm1
  a307df:	62 e2 55 48 7f c9    	vpermt2ps zmm17,zmm5,zmm1
  a307e5:	62 c1 64 48 58 d3    	vaddps zmm18,zmm3,zmm11
  a307eb:	62 c1 5c 48 58 df    	vaddps zmm19,zmm4,zmm15
  a307f1:	62 a1 6c 40 58 e3    	vaddps zmm20,zmm18,zmm19
  a307f7:	62 c1 4c 48 58 ec    	vaddps zmm21,zmm6,zmm12
  a307fd:	62 a1 34 48 58 f1    	vaddps zmm22,zmm9,zmm17
  a30803:	62 a1 54 40 58 fe    	vaddps zmm23,zmm21,zmm22
  a30809:	62 b1 5c 40 58 cf    	vaddps zmm1,zmm20,zmm23
  a3080f:	62 41 7c 48 58 c5    	vaddps zmm24,zmm0,zmm13
  a30815:	62 21 3c 48 58 c8    	vaddps zmm25,zmm8,zmm16
  a3081b:	62 01 3c 40 58 d1    	vaddps zmm26,zmm24,zmm25
  a30821:	62 41 44 48 58 de    	vaddps zmm27,zmm7,zmm14
  a30827:	62 61 2c 48 58 e2    	vaddps zmm28,zmm10,zmm2
  a3082d:	62 01 24 40 58 ec    	vaddps zmm29,zmm27,zmm28
  a30833:	62 91 2c 40 58 ed    	vaddps zmm5,zmm26,zmm29
  a30839:	62 d1 64 48 5c db    	vsubps zmm3,zmm3,zmm11
  a3083f:	62 31 3c 48 5c d8    	vsubps zmm11,zmm8,zmm16
  a30845:	62 c1 64 48 58 c3    	vaddps zmm16,zmm3,zmm11
  a3084b:	62 d1 4c 48 5c f4    	vsubps zmm6,zmm6,zmm12
  a30851:	62 d1 44 48 5c fe    	vsubps zmm7,zmm7,zmm14
  a30857:	62 71 4c 48 58 c7    	vaddps zmm8,zmm6,zmm7
  a3085d:	62 72 7d 48 18 35 35 	vbroadcastss zmm14,DWORD PTR [rip+0xffffffffff644b35]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a30864:	4b 64 ff 
  a30867:	62 41 3c 48 59 f6    	vmulps zmm30,zmm8,zmm14
  a3086d:	62 f1 2c 48 5c d2    	vsubps zmm2,zmm10,zmm2
  a30873:	62 31 34 48 5c c1    	vsubps zmm8,zmm9,zmm17
  a30879:	62 51 6c 48 5c c8    	vsubps zmm9,zmm2,zmm8
  a3087f:	62 51 34 48 59 ce    	vmulps zmm9,zmm9,zmm14
  a30885:	62 c1 0c 40 58 c9    	vaddps zmm17,zmm30,zmm9
  a3088b:	62 31 7c 40 58 e1    	vaddps zmm12,zmm16,zmm17
  a30891:	62 d1 7c 48 5c c5    	vsubps zmm0,zmm0,zmm13
  a30897:	62 f1 04 48 5c e4    	vsubps zmm4,zmm15,zmm4
  a3089d:	62 71 5c 48 58 f8    	vaddps zmm15,zmm4,zmm0
  a308a3:	62 f1 44 48 5c f6    	vsubps zmm6,zmm7,zmm6
  a308a9:	62 d1 4c 48 59 f6    	vmulps zmm6,zmm6,zmm14
  a308af:	62 f1 3c 48 58 d2    	vaddps zmm2,zmm8,zmm2
  a308b5:	62 d1 6c 48 59 d6    	vmulps zmm2,zmm2,zmm14
  a308bb:	62 f1 4c 48 5c fa    	vsubps zmm7,zmm6,zmm2
  a308c1:	62 71 04 48 58 c7    	vaddps zmm8,zmm15,zmm7
  a308c7:	62 a1 6c 40 5c d3    	vsubps zmm18,zmm18,zmm19
  a308cd:	62 01 24 40 5c dc    	vsubps zmm27,zmm27,zmm28
  a308d3:	62 11 6c 40 58 eb    	vaddps zmm13,zmm18,zmm27
  a308d9:	62 01 3c 40 5c c1    	vsubps zmm24,zmm24,zmm25
  a308df:	62 a1 4c 40 5c ed    	vsubps zmm21,zmm22,zmm21
  a308e5:	62 11 54 40 58 d0    	vaddps zmm10,zmm21,zmm24
  a308eb:	62 d1 64 48 5c db    	vsubps zmm3,zmm3,zmm11
  a308f1:	62 f1 4c 48 58 d2    	vaddps zmm2,zmm6,zmm2
  a308f7:	62 e1 64 48 58 da    	vaddps zmm19,zmm3,zmm2
  a308fd:	62 f1 7c 48 5c e4    	vsubps zmm4,zmm0,zmm4
  a30903:	62 91 34 48 5c f6    	vsubps zmm6,zmm9,zmm30
  a30909:	62 f1 5c 48 58 c6    	vaddps zmm0,zmm4,zmm6
  a3090f:	62 31 5c 40 5c df    	vsubps zmm11,zmm20,zmm23
  a30915:	62 11 2c 40 5c f5    	vsubps zmm14,zmm26,zmm29
  a3091b:	62 a1 7c 40 5c e1    	vsubps zmm20,zmm16,zmm17
  a30921:	62 e1 04 48 5c cf    	vsubps zmm17,zmm15,zmm7
  a30927:	62 91 6c 40 5c fb    	vsubps zmm7,zmm18,zmm27
  a3092d:	62 a1 3c 40 5c c5    	vsubps zmm16,zmm24,zmm21
  a30933:	62 f1 64 48 5c d2    	vsubps zmm2,zmm3,zmm2
  a30939:	62 f1 5c 48 5c de    	vsubps zmm3,zmm4,zmm6
  a3093f:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm3
  a30946:	fe 
  a30947:	62 e1 7c 48 28 15 2f 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff69662f]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a3094e:	66 69 ff 
  a30951:	c5 d8 57 e4          	vxorps xmm4,xmm4,xmm4
  a30955:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a3095b:	62 f2 6d 40 7f dc    	vpermt2ps zmm3,zmm18,zmm4
  a30961:	62 71 7c 48 28 0d 55 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff696655]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a30968:	66 69 ff 
  a3096b:	62 f2 35 48 7f cc    	vpermt2ps zmm1,zmm9,zmm4
  a30971:	62 41 7c 48 28 c4    	vmovaps zmm24,zmm12
  a30977:	62 62 6d 40 7f c4    	vpermt2ps zmm24,zmm18,zmm4
  a3097d:	62 72 35 48 7f e4    	vpermt2ps zmm12,zmm9,zmm4
  a30983:	62 41 7c 48 28 cd    	vmovaps zmm25,zmm13
  a30989:	62 62 6d 40 7f cc    	vpermt2ps zmm25,zmm18,zmm4
  a3098f:	62 72 35 48 7f ec    	vpermt2ps zmm13,zmm9,zmm4
  a30995:	62 21 7c 48 28 d3    	vmovaps zmm26,zmm19
  a3099b:	62 62 6d 40 7f d4    	vpermt2ps zmm26,zmm18,zmm4
  a309a1:	62 e2 35 48 7f dc    	vpermt2ps zmm19,zmm9,zmm4
  a309a7:	62 d1 7c 48 28 f3    	vmovaps zmm6,zmm11
  a309ad:	62 f2 6d 40 7f f4    	vpermt2ps zmm6,zmm18,zmm4
  a309b3:	62 72 35 48 7f dc    	vpermt2ps zmm11,zmm9,zmm4
  a309b9:	62 a1 7c 48 28 f4    	vmovaps zmm22,zmm20
  a309bf:	62 e2 6d 40 7f f4    	vpermt2ps zmm22,zmm18,zmm4
  a309c5:	62 e2 35 48 7f e4    	vpermt2ps zmm20,zmm9,zmm4
  a309cb:	62 61 7c 48 28 df    	vmovaps zmm27,zmm7
  a309d1:	62 62 6d 40 7f dc    	vpermt2ps zmm27,zmm18,zmm4
  a309d7:	62 f2 35 48 7f fc    	vpermt2ps zmm7,zmm9,zmm4
  a309dd:	62 61 7c 48 28 e2    	vmovaps zmm28,zmm2
  a309e3:	62 62 6d 40 7f e4    	vpermt2ps zmm28,zmm18,zmm4
  a309e9:	62 f2 35 48 7f d4    	vpermt2ps zmm2,zmm9,zmm4
  a309ef:	62 e1 7c 48 28 2d 07 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff696507]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a309f6:	65 69 ff 
  a309f9:	62 61 7c 48 28 eb    	vmovaps zmm29,zmm3
  a309ff:	62 62 55 40 7f ee    	vpermt2ps zmm29,zmm21,zmm6
  a30a05:	62 e1 7c 48 28 3d 31 	vmovaps zmm23,ZMMWORD PTR [rip+0xffffffffff696531]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a30a0c:	65 69 ff 
  a30a0f:	62 f2 45 40 7f de    	vpermt2ps zmm3,zmm23,zmm6
  a30a15:	62 01 7c 48 28 f0    	vmovaps zmm30,zmm24
  a30a1b:	62 22 55 40 7f f6    	vpermt2ps zmm30,zmm21,zmm22
  a30a21:	62 22 45 40 7f c6    	vpermt2ps zmm24,zmm23,zmm22
  a30a27:	62 91 7c 48 28 f1    	vmovaps zmm6,zmm25
  a30a2d:	62 92 55 40 7f f3    	vpermt2ps zmm6,zmm21,zmm27
  a30a33:	62 02 45 40 7f cb    	vpermt2ps zmm25,zmm23,zmm27
  a30a39:	62 81 7c 48 28 f2    	vmovaps zmm22,zmm26
  a30a3f:	62 82 55 40 7f f4    	vpermt2ps zmm22,zmm21,zmm28
  a30a45:	62 02 45 40 7f d4    	vpermt2ps zmm26,zmm23,zmm28
  a30a4b:	62 d2 55 40 7f cb    	vpermt2ps zmm1,zmm21,zmm11
  a30a51:	62 32 55 40 7f e4    	vpermt2ps zmm12,zmm21,zmm20
  a30a57:	62 72 55 40 7f ef    	vpermt2ps zmm13,zmm21,zmm7
  a30a5d:	62 e2 55 40 7f da    	vpermt2ps zmm19,zmm21,zmm2
  a30a63:	62 f1 95 40 14 d6    	vunpcklpd zmm2,zmm29,zmm6
  a30a69:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm2
  a30a70:	ff 
  a30a71:	62 f1 95 40 15 d6    	vunpckhpd zmm2,zmm29,zmm6
  a30a77:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm2
  a30a7e:	03 
  a30a7f:	62 21 8d 40 14 fe    	vunpcklpd zmm31,zmm30,zmm22
  a30a85:	62 a1 8d 40 15 f6    	vunpckhpd zmm22,zmm30,zmm22
  a30a8b:	62 91 e5 48 14 d1    	vunpcklpd zmm2,zmm3,zmm25
  a30a91:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm2
  a30a98:	01 
  a30a99:	62 91 e5 48 15 d1    	vunpckhpd zmm2,zmm3,zmm25
  a30a9f:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm2
  a30aa6:	02 
  a30aa7:	62 01 bd 40 14 e2    	vunpcklpd zmm28,zmm24,zmm26
  a30aad:	62 81 bd 40 15 e2    	vunpckhpd zmm20,zmm24,zmm26
  a30ab3:	62 d1 f5 48 14 fd    	vunpcklpd zmm7,zmm1,zmm13
  a30ab9:	62 d1 f5 48 15 cd    	vunpckhpd zmm1,zmm1,zmm13
  a30abf:	62 f1 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm1
  a30ac6:	62 21 9d 48 14 db    	vunpcklpd zmm27,zmm12,zmm19
  a30acc:	62 21 9d 48 15 d3    	vunpckhpd zmm26,zmm12,zmm19
  a30ad2:	62 61 7c 48 28 c5    	vmovaps zmm24,zmm5
  a30ad8:	62 62 6d 40 7f c4    	vpermt2ps zmm24,zmm18,zmm4
  a30ade:	62 f2 35 48 7f ec    	vpermt2ps zmm5,zmm9,zmm4
  a30ae4:	62 41 7c 48 28 c8    	vmovaps zmm25,zmm8
  a30aea:	62 62 6d 40 7f cc    	vpermt2ps zmm25,zmm18,zmm4
  a30af0:	62 72 35 48 7f c4    	vpermt2ps zmm8,zmm9,zmm4
  a30af6:	62 41 7c 48 28 f2    	vmovaps zmm30,zmm10
  a30afc:	62 62 6d 40 7f f4    	vpermt2ps zmm30,zmm18,zmm4
  a30b02:	62 72 35 48 7f d4    	vpermt2ps zmm10,zmm9,zmm4
  a30b08:	62 71 7c 48 28 d8    	vmovaps zmm11,zmm0
  a30b0e:	62 72 6d 40 7f dc    	vpermt2ps zmm11,zmm18,zmm4
  a30b14:	62 f2 35 48 7f c4    	vpermt2ps zmm0,zmm9,zmm4
  a30b1a:	62 d1 7c 48 28 f6    	vmovaps zmm6,zmm14
  a30b20:	62 72 6d 40 7f f4    	vpermt2ps zmm14,zmm18,zmm4
  a30b26:	62 f2 35 48 7f f4    	vpermt2ps zmm6,zmm9,zmm4
  a30b2c:	62 31 7c 48 28 f9    	vmovaps zmm15,zmm17
  a30b32:	62 72 6d 40 7f fc    	vpermt2ps zmm15,zmm18,zmm4
  a30b38:	62 e2 35 48 7f cc    	vpermt2ps zmm17,zmm9,zmm4
  a30b3e:	62 b1 7c 48 28 d8    	vmovaps zmm3,zmm16
  a30b44:	62 e2 6d 40 7f c4    	vpermt2ps zmm16,zmm18,zmm4
  a30b4a:	62 f2 35 48 7f dc    	vpermt2ps zmm3,zmm9,zmm4
  a30b50:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp-0x80]
  a30b57:	fe 
  a30b58:	62 e2 6d 48 77 d4    	vpermi2ps zmm18,zmm2,zmm4
  a30b5e:	62 f2 35 48 7f d4    	vpermt2ps zmm2,zmm9,zmm4
  a30b64:	62 71 7c 48 28 2d 92 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff696292]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a30b6b:	62 69 ff 
  a30b6e:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp-0x40]
  a30b75:	ff 
  a30b76:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a30b7c:	62 92 15 48 7f cf    	vpermt2ps zmm1,zmm13,zmm31
  a30b82:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a30b89:	fe 
  a30b8a:	62 61 7c 48 28 2d ac 	vmovaps zmm29,ZMMWORD PTR [rip+0xffffffffff6962ac]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a30b91:	62 69 ff 
  a30b94:	62 92 15 40 7f e7    	vpermt2ps zmm4,zmm29,zmm31
  a30b9a:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm4
  a30ba1:	ff 
  a30ba2:	62 61 7c 48 10 7c 24 	vmovups zmm31,ZMMWORD PTR [rsp+0xc0]
  a30ba9:	03 
  a30baa:	62 11 7c 48 28 cf    	vmovaps zmm9,zmm31
  a30bb0:	62 32 15 48 7f ce    	vpermt2ps zmm9,zmm13,zmm22
  a30bb6:	62 22 15 40 7f fe    	vpermt2ps zmm31,zmm29,zmm22
  a30bbc:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x40]
  a30bc3:	01 
  a30bc4:	62 e1 7c 48 28 d9    	vmovaps zmm19,zmm1
  a30bca:	62 82 15 48 7f dc    	vpermt2ps zmm19,zmm13,zmm28
  a30bd0:	62 92 15 40 7f cc    	vpermt2ps zmm1,zmm29,zmm28
  a30bd6:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm1
  a30bdd:	01 
  a30bde:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x80]
  a30be5:	02 
  a30be6:	62 e1 7c 48 28 f1    	vmovaps zmm22,zmm1
  a30bec:	62 a2 15 48 7f f4    	vpermt2ps zmm22,zmm13,zmm20
  a30bf2:	62 b2 15 40 7f cc    	vpermt2ps zmm1,zmm29,zmm20
  a30bf8:	62 71 7c 48 28 e7    	vmovaps zmm12,zmm7
  a30bfe:	62 12 15 48 7f e3    	vpermt2ps zmm12,zmm13,zmm27
  a30c04:	62 92 15 40 7f fb    	vpermt2ps zmm7,zmm29,zmm27
  a30c0a:	62 f1 7c 48 10 24 24 	vmovups zmm4,ZMMWORD PTR [rsp]
  a30c11:	62 e1 7c 48 28 e4    	vmovaps zmm20,zmm4
  a30c17:	62 82 15 48 7f e2    	vpermt2ps zmm20,zmm13,zmm26
  a30c1d:	62 92 15 40 7f e2    	vpermt2ps zmm4,zmm29,zmm26
  a30c23:	62 f1 7c 48 11 24 24 	vmovups ZMMWORD PTR [rsp],zmm4
  a30c2a:	62 01 7c 48 28 d0    	vmovaps zmm26,zmm24
  a30c30:	62 42 55 40 7f d6    	vpermt2ps zmm26,zmm21,zmm14
  a30c36:	62 42 45 40 7f c6    	vpermt2ps zmm24,zmm23,zmm14
  a30c3c:	62 11 7c 48 28 f1    	vmovaps zmm14,zmm25
  a30c42:	62 52 55 40 7f f7    	vpermt2ps zmm14,zmm21,zmm15
  a30c48:	62 42 45 40 7f cf    	vpermt2ps zmm25,zmm23,zmm15
  a30c4e:	62 01 7c 48 28 de    	vmovaps zmm27,zmm30
  a30c54:	62 22 55 40 7f d8    	vpermt2ps zmm27,zmm21,zmm16
  a30c5a:	62 22 45 40 7f f0    	vpermt2ps zmm30,zmm23,zmm16
  a30c60:	62 c1 7c 48 28 c3    	vmovaps zmm16,zmm11
  a30c66:	62 32 45 40 7f da    	vpermt2ps zmm11,zmm23,zmm18
  a30c6c:	62 a2 55 40 7f c2    	vpermt2ps zmm16,zmm21,zmm18
  a30c72:	62 f2 55 40 7f ee    	vpermt2ps zmm5,zmm21,zmm6
  a30c78:	62 32 55 40 7f c1    	vpermt2ps zmm8,zmm21,zmm17
  a30c7e:	62 72 55 40 7f d3    	vpermt2ps zmm10,zmm21,zmm3
  a30c84:	62 f2 55 40 7f c2    	vpermt2ps zmm0,zmm21,zmm2
  a30c8a:	62 11 ad 40 14 fb    	vunpcklpd zmm15,zmm26,zmm27
  a30c90:	62 01 ad 40 15 d3    	vunpckhpd zmm26,zmm26,zmm27
  a30c96:	62 a1 8d 48 14 c8    	vunpcklpd zmm17,zmm14,zmm16
  a30c9c:	62 a1 8d 48 15 d0    	vunpckhpd zmm18,zmm14,zmm16
  a30ca2:	62 11 bd 40 14 f6    	vunpcklpd zmm14,zmm24,zmm30
  a30ca8:	62 81 bd 40 15 c6    	vunpckhpd zmm16,zmm24,zmm30
  a30cae:	62 c1 b5 40 14 eb    	vunpcklpd zmm21,zmm25,zmm11
  a30cb4:	62 51 b5 40 15 db    	vunpckhpd zmm11,zmm25,zmm11
  a30cba:	62 41 d5 48 14 da    	vunpcklpd zmm27,zmm5,zmm10
  a30cc0:	62 51 d5 48 15 d2    	vunpckhpd zmm10,zmm5,zmm10
  a30cc6:	62 61 bd 48 14 c0    	vunpcklpd zmm24,zmm8,zmm0
  a30ccc:	62 f1 bd 48 15 c0    	vunpckhpd zmm0,zmm8,zmm0
  a30cd2:	62 d1 7c 48 28 ef    	vmovaps zmm5,zmm15
  a30cd8:	62 b2 15 48 7f e9    	vpermt2ps zmm5,zmm13,zmm17
  a30cde:	62 32 15 40 7f f9    	vpermt2ps zmm15,zmm29,zmm17
  a30ce4:	62 11 7c 48 28 c2    	vmovaps zmm8,zmm26
  a30cea:	62 32 15 48 7f c2    	vpermt2ps zmm8,zmm13,zmm18
  a30cf0:	62 22 15 40 7f d2    	vpermt2ps zmm26,zmm29,zmm18
  a30cf6:	62 41 7c 48 28 e6    	vmovaps zmm28,zmm14
  a30cfc:	62 22 15 48 7f e5    	vpermt2ps zmm28,zmm13,zmm21
  a30d02:	62 32 15 40 7f f5    	vpermt2ps zmm14,zmm29,zmm21
  a30d08:	62 a1 7c 48 28 f8    	vmovaps zmm23,zmm16
  a30d0e:	62 c2 15 48 7f fb    	vpermt2ps zmm23,zmm13,zmm11
  a30d14:	62 c2 15 40 7f c3    	vpermt2ps zmm16,zmm29,zmm11
  a30d1a:	62 81 7c 48 28 cb    	vmovaps zmm17,zmm27
  a30d20:	62 82 15 48 7f c8    	vpermt2ps zmm17,zmm13,zmm24
  a30d26:	62 02 15 40 7f d8    	vpermt2ps zmm27,zmm29,zmm24
  a30d2c:	62 72 2d 48 77 e8    	vpermi2ps zmm13,zmm10,zmm0
  a30d32:	62 72 15 40 7f d0    	vpermt2ps zmm10,zmm29,zmm0
  a30d38:	62 61 7c 48 10 4a 02 	vmovups zmm25,ZMMWORD PTR [rdx+0x80]
  a30d3f:	62 61 7c 48 10 42 03 	vmovups zmm24,ZMMWORD PTR [rdx+0xc0]
  a30d46:	62 f1 7c 48 10 62 04 	vmovups zmm4,ZMMWORD PTR [rdx+0x100]
  a30d4d:	62 e1 7c 48 10 52 05 	vmovups zmm18,ZMMWORD PTR [rdx+0x140]
  a30d54:	62 f1 7c 48 10 42 06 	vmovups zmm0,ZMMWORD PTR [rdx+0x180]
  a30d5b:	62 61 7c 48 10 6a 0c 	vmovups zmm29,ZMMWORD PTR [rdx+0x300]
  a30d62:	62 61 7c 48 10 72 0d 	vmovups zmm30,ZMMWORD PTR [rdx+0x340]
  a30d69:	62 11 4c 40 59 dd    	vmulps zmm11,zmm22,zmm29
  a30d6f:	62 12 45 40 bc de    	vfnmadd231ps zmm11,zmm23,zmm30
  a30d75:	62 81 44 40 59 fd    	vmulps zmm23,zmm23,zmm29
  a30d7b:	62 61 7c 48 10 6a 07 	vmovups zmm29,ZMMWORD PTR [rdx+0x1c0]
  a30d82:	62 a2 0d 40 b8 fe    	vfmadd231ps zmm23,zmm30,zmm22
  a30d88:	62 61 7c 48 10 72 08 	vmovups zmm30,ZMMWORD PTR [rdx+0x200]
  a30d8f:	62 e1 04 40 59 f0    	vmulps zmm22,zmm31,zmm0
  a30d95:	62 82 2d 40 bc f5    	vfnmadd231ps zmm22,zmm26,zmm29
  a30d9b:	62 61 2c 40 59 d0    	vmulps zmm26,zmm26,zmm0
  a30da1:	62 f1 7c 48 10 42 12 	vmovups zmm0,ZMMWORD PTR [rdx+0x480]
  a30da8:	62 02 15 40 b8 d7    	vfmadd231ps zmm26,zmm29,zmm31
  a30dae:	62 61 7c 48 10 6a 13 	vmovups zmm29,ZMMWORD PTR [rdx+0x4c0]
  a30db5:	62 f1 44 48 59 f0    	vmulps zmm6,zmm7,zmm0
  a30dbb:	62 92 25 40 bc f5    	vfnmadd231ps zmm6,zmm27,zmm29
  a30dc1:	62 61 24 40 59 d8    	vmulps zmm27,zmm27,zmm0
  a30dc7:	62 f1 7c 48 10 42 09 	vmovups zmm0,ZMMWORD PTR [rdx+0x240]
  a30dce:	62 62 15 40 b8 df    	vfmadd231ps zmm27,zmm29,zmm7
  a30dd4:	62 61 7c 48 10 6a 0a 	vmovups zmm29,ZMMWORD PTR [rdx+0x280]
  a30ddb:	62 91 64 40 59 fe    	vmulps zmm7,zmm19,zmm30
  a30de1:	62 f2 1d 40 bc f8    	vfnmadd231ps zmm7,zmm28,zmm0
  a30de7:	62 01 1c 40 59 e6    	vmulps zmm28,zmm28,zmm30
  a30ded:	62 61 7c 48 10 72 14 	vmovups zmm30,ZMMWORD PTR [rdx+0x500]
  a30df4:	62 22 7d 48 b8 e3    	vfmadd231ps zmm28,zmm0,zmm19
  a30dfa:	62 f1 7c 48 10 42 15 	vmovups zmm0,ZMMWORD PTR [rdx+0x540]
  a30e01:	62 81 5c 40 59 de    	vmulps zmm19,zmm20,zmm30
  a30e07:	62 e2 15 48 bc d8    	vfnmadd231ps zmm19,zmm13,zmm0
  a30e0d:	62 11 14 48 59 ee    	vmulps zmm13,zmm13,zmm30
  a30e13:	62 61 7c 48 10 72 0e 	vmovups zmm30,ZMMWORD PTR [rdx+0x380]
  a30e1a:	62 32 7d 48 b8 ec    	vfmadd231ps zmm13,zmm0,zmm20
  a30e20:	62 e1 7c 48 10 62 0f 	vmovups zmm20,ZMMWORD PTR [rdx+0x3c0]
  a30e27:	62 91 74 48 59 c6    	vmulps zmm0,zmm1,zmm30
  a30e2d:	62 b2 7d 40 bc c4    	vfnmadd231ps zmm0,zmm16,zmm20
  a30e33:	62 81 7c 40 59 c6    	vmulps zmm16,zmm16,zmm30
  a30e39:	62 61 7c 48 10 72 0b 	vmovups zmm30,ZMMWORD PTR [rdx+0x2c0]
  a30e40:	62 e2 5d 40 b8 c1    	vfmadd231ps zmm16,zmm20,zmm1
  a30e46:	62 f1 7c 48 10 5a 10 	vmovups zmm3,ZMMWORD PTR [rdx+0x400]
  a30e4d:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x40]
  a30e54:	ff 
  a30e55:	62 81 74 48 59 e1    	vmulps zmm20,zmm1,zmm25
  a30e5b:	62 82 05 48 bc e0    	vfnmadd231ps zmm20,zmm15,zmm24
  a30e61:	62 01 04 48 59 c9    	vmulps zmm25,zmm15,zmm25
  a30e67:	62 71 7c 48 10 7a 11 	vmovups zmm15,ZMMWORD PTR [rdx+0x440]
  a30e6e:	62 62 3d 40 b8 c9    	vfmadd231ps zmm25,zmm24,zmm1
  a30e74:	62 61 7c 48 10 42 16 	vmovups zmm24,ZMMWORD PTR [rdx+0x580]
  a30e7b:	62 61 1c 48 59 fb    	vmulps zmm31,zmm12,zmm3
  a30e81:	62 42 75 40 bc ff    	vfnmadd231ps zmm31,zmm17,zmm15
  a30e87:	62 f1 74 40 59 db    	vmulps zmm3,zmm17,zmm3
  a30e8d:	62 e1 7c 48 10 4a 17 	vmovups zmm17,ZMMWORD PTR [rdx+0x5c0]
  a30e94:	62 d2 05 48 b8 dc    	vfmadd231ps zmm3,zmm15,zmm12
  a30e9a:	62 e1 7c 48 10 6c 24 	vmovups zmm21,ZMMWORD PTR [rsp-0x80]
  a30ea1:	fe 
  a30ea2:	62 51 54 40 58 e3    	vaddps zmm12,zmm21,zmm11
  a30ea8:	62 f1 34 48 59 d4    	vmulps zmm2,zmm9,zmm4
  a30eae:	62 b2 3d 48 bc d2    	vfnmadd231ps zmm2,zmm8,zmm18
  a30eb4:	62 71 3c 48 59 c4    	vmulps zmm8,zmm8,zmm4
  a30eba:	62 71 4c 40 58 fe    	vaddps zmm15,zmm22,zmm6
  a30ec0:	62 52 6d 40 b8 c1    	vfmadd231ps zmm8,zmm18,zmm9
  a30ec6:	62 d1 1c 48 58 cf    	vaddps zmm1,zmm12,zmm15
  a30ecc:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a30ed3:	ff 
  a30ed4:	62 f1 7c 48 10 0c 24 	vmovups zmm1,ZMMWORD PTR [rsp]
  a30edb:	62 81 74 48 59 d0    	vmulps zmm18,zmm1,zmm24
  a30ee1:	62 a2 2d 48 bc d1    	vfnmadd231ps zmm18,zmm10,zmm17
  a30ee7:	62 01 2c 48 59 c0    	vmulps zmm24,zmm10,zmm24
  a30eed:	62 b1 44 48 58 e3    	vaddps zmm4,zmm7,zmm19
  a30ef3:	62 62 75 40 b8 c1    	vfmadd231ps zmm24,zmm17,zmm1
  a30ef9:	62 31 7c 48 58 cc    	vaddps zmm9,zmm0,zmm20
  a30eff:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x40]
  a30f06:	01 
  a30f07:	62 11 74 48 59 d5    	vmulps zmm10,zmm1,zmm29
  a30f0d:	62 12 0d 48 bc d6    	vfnmadd231ps zmm10,zmm14,zmm30
  a30f13:	62 81 0c 48 59 cd    	vmulps zmm17,zmm14,zmm29
  a30f19:	62 41 5c 48 58 e9    	vaddps zmm29,zmm4,zmm9
  a30f1f:	62 e2 0d 40 b8 c9    	vfmadd231ps zmm17,zmm30,zmm1
  a30f25:	62 61 04 40 58 f2    	vaddps zmm30,zmm31,zmm2
  a30f2b:	62 d1 6c 40 58 ca    	vaddps zmm1,zmm18,zmm10
  a30f31:	62 31 44 48 5c f3    	vsubps zmm14,zmm7,zmm19
  a30f37:	62 91 7c 40 58 f9    	vaddps zmm7,zmm16,zmm25
  a30f3d:	62 81 7c 40 5c d9    	vsubps zmm19,zmm16,zmm25
  a30f43:	62 61 0c 40 58 c9    	vaddps zmm25,zmm30,zmm1
  a30f49:	62 e1 04 40 5c c2    	vsubps zmm16,zmm31,zmm2
  a30f4f:	62 21 3c 40 58 f9    	vaddps zmm31,zmm24,zmm17
  a30f55:	62 a1 3c 40 5c c9    	vsubps zmm17,zmm24,zmm17
  a30f5b:	62 61 44 40 58 c5    	vaddps zmm24,zmm23,zmm5
  a30f61:	62 51 54 40 5c db    	vsubps zmm11,zmm21,zmm11
  a30f67:	62 91 2c 40 58 d3    	vaddps zmm2,zmm26,zmm27
  a30f6d:	62 01 2c 40 5c d3    	vsubps zmm26,zmm26,zmm27
  a30f73:	62 41 1c 40 58 dd    	vaddps zmm27,zmm28,zmm13
  a30f79:	62 41 1c 40 5c e5    	vsubps zmm28,zmm28,zmm13
  a30f7f:	62 51 64 48 58 e8    	vaddps zmm13,zmm3,zmm8
  a30f85:	62 e1 5c 40 5c e0    	vsubps zmm20,zmm20,zmm0
  a30f8b:	62 b1 1c 40 58 c4    	vaddps zmm0,zmm28,zmm20
  a30f91:	62 d1 64 48 5c d8    	vsubps zmm3,zmm3,zmm8
  a30f97:	62 a1 2c 48 5c d2    	vsubps zmm18,zmm10,zmm18
  a30f9d:	62 31 64 48 58 d2    	vaddps zmm10,zmm3,zmm18
  a30fa3:	62 51 7c 48 5c c2    	vsubps zmm8,zmm0,zmm10
  a30fa9:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm8
  a30fb0:	01 
  a30fb1:	62 d1 7c 48 58 c2    	vaddps zmm0,zmm0,zmm10
  a30fb7:	62 f1 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm0
  a30fbe:	62 31 0c 48 58 d3    	vaddps zmm10,zmm14,zmm19
  a30fc4:	62 b1 54 48 5c c7    	vsubps zmm0,zmm5,zmm23
  a30fca:	62 b1 7c 40 58 e9    	vaddps zmm5,zmm16,zmm17
  a30fd0:	62 b1 4c 48 5c f6    	vsubps zmm6,zmm6,zmm22
  a30fd6:	62 e1 2c 48 58 f5    	vaddps zmm22,zmm10,zmm5
  a30fdc:	62 f1 2c 48 5c ed    	vsubps zmm5,zmm10,zmm5
  a30fe2:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm5
  a30fe9:	02 
  a30fea:	62 81 6c 48 58 f8    	vaddps zmm23,zmm2,zmm24
  a30ff0:	62 51 5c 48 5c c9    	vsubps zmm9,zmm4,zmm9
  a30ff6:	62 71 24 40 58 c7    	vaddps zmm8,zmm27,zmm7
  a30ffc:	62 f1 0c 40 5c c9    	vsubps zmm1,zmm30,zmm1
  a31002:	62 91 14 48 58 e7    	vaddps zmm4,zmm13,zmm31
  a31008:	62 51 1c 48 5c ff    	vsubps zmm15,zmm12,zmm15
  a3100e:	62 01 24 48 58 f2    	vaddps zmm30,zmm11,zmm26
  a31014:	62 f1 24 40 5c ff    	vsubps zmm7,zmm27,zmm7
  a3101a:	62 f2 7d 48 18 2d 3c 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff64443c]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a31021:	44 64 ff 
  a31024:	62 11 14 48 5c e7    	vsubps zmm12,zmm13,zmm31
  a3102a:	62 41 44 48 5c dc    	vsubps zmm27,zmm7,zmm12
  a31030:	62 51 44 48 58 ec    	vaddps zmm13,zmm7,zmm12
  a31036:	62 f1 7c 48 28 fd    	vmovaps zmm7,zmm5
  a3103c:	62 61 3c 40 5c c2    	vsubps zmm24,zmm24,zmm2
  a31042:	62 61 34 48 58 f9    	vaddps zmm31,zmm9,zmm1
  a31048:	62 e1 34 48 5c e9    	vsubps zmm21,zmm9,zmm1
  a3104e:	62 71 4c 48 58 e0    	vaddps zmm12,zmm6,zmm0
  a31054:	62 91 24 48 5c ca    	vsubps zmm1,zmm11,zmm26
  a3105a:	62 71 7c 48 28 dd    	vmovaps zmm11,zmm5
  a31060:	62 a1 0c 48 5c db    	vsubps zmm19,zmm14,zmm19
  a31066:	62 71 7c 48 28 f5    	vmovaps zmm14,zmm5
  a3106c:	62 21 7c 40 5c d1    	vsubps zmm26,zmm16,zmm17
  a31072:	62 e1 7c 48 28 c5    	vmovaps zmm16,zmm5
  a31078:	62 f1 7c 48 5c f6    	vsubps zmm6,zmm0,zmm6
  a3107e:	62 81 64 40 58 ca    	vaddps zmm17,zmm19,zmm26
  a31084:	62 a1 1c 40 5c e4    	vsubps zmm20,zmm28,zmm20
  a3108a:	62 b1 74 48 58 c1    	vaddps zmm0,zmm1,zmm17
  a31090:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a31097:	fe 
  a31098:	62 b1 64 48 5c da    	vsubps zmm3,zmm3,zmm18
  a3109e:	62 71 5c 40 58 cb    	vaddps zmm9,zmm20,zmm3
  a310a4:	62 e2 55 48 ac c9    	vfnmadd213ps zmm17,zmm5,zmm1
  a310aa:	62 e1 7c 48 28 d5    	vmovaps zmm18,zmm5
  a310b0:	62 61 7c 48 28 e5    	vmovaps zmm28,zmm5
  a310b6:	62 f2 35 48 ac ee    	vfnmadd213ps zmm5,zmm9,zmm6
  a310bc:	62 51 4c 48 58 c9    	vaddps zmm9,zmm6,zmm9
  a310c2:	62 f1 3c 48 58 f4    	vaddps zmm6,zmm8,zmm4
  a310c8:	62 f1 3c 48 5c e4    	vsubps zmm4,zmm8,zmm4
  a310ce:	62 91 14 40 58 c1    	vaddps zmm0,zmm29,zmm25
  a310d4:	62 01 14 40 5c c9    	vsubps zmm25,zmm29,zmm25
  a310da:	62 92 4d 40 ac fe    	vfnmadd213ps zmm7,zmm22,zmm30
  a310e0:	62 62 7d 48 18 2d ea 	vbroadcastss zmm29,DWORD PTR [rip+0xffffffffff6441ea]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a310e7:	41 64 ff 
  a310ea:	62 f1 14 40 59 4c 24 	vmulps zmm1,zmm29,ZMMWORD PTR [rsp+0x40]
  a310f1:	01 
  a310f2:	62 f1 44 48 58 d1    	vaddps zmm2,zmm7,zmm1
  a310f8:	62 71 44 48 5c d1    	vsubps zmm10,zmm7,zmm1
  a310fe:	62 71 7c 48 10 04 24 	vmovups zmm8,ZMMWORD PTR [rsp]
  a31105:	62 52 3d 48 ac dc    	vfnmadd213ps zmm11,zmm8,zmm12
  a3110b:	62 f1 14 40 59 4c 24 	vmulps zmm1,zmm29,ZMMWORD PTR [rsp+0x80]
  a31112:	02 
  a31113:	62 f1 24 48 5c f9    	vsubps zmm7,zmm11,zmm1
  a31119:	62 f1 24 48 58 c9    	vaddps zmm1,zmm11,zmm1
  a3111f:	62 52 05 40 ac f7    	vfnmadd213ps zmm14,zmm31,zmm15
  a31125:	62 11 04 48 58 df    	vaddps zmm11,zmm15,zmm31
  a3112b:	62 82 15 48 ac c0    	vfnmadd213ps zmm16,zmm13,zmm24
  a31131:	62 41 3c 40 58 fd    	vaddps zmm31,zmm24,zmm13
  a31137:	62 f1 5c 40 5c db    	vsubps zmm3,zmm20,zmm3
  a3113d:	62 11 64 40 5c ea    	vsubps zmm13,zmm19,zmm26
  a31143:	62 11 24 40 59 fd    	vmulps zmm15,zmm27,zmm29
  a31149:	62 81 54 40 59 dd    	vmulps zmm19,zmm21,zmm29
  a3114f:	62 61 7c 48 10 54 24 	vmovups zmm26,ZMMWORD PTR [rsp-0x40]
  a31156:	ff 
  a31157:	62 82 7d 48 ac d2    	vfnmadd213ps zmm18,zmm0,zmm26
  a3115d:	62 91 5c 48 59 e5    	vmulps zmm4,zmm4,zmm29
  a31163:	62 81 34 40 59 e5    	vmulps zmm20,zmm25,zmm29
  a31169:	62 91 64 48 59 dd    	vmulps zmm3,zmm3,zmm29
  a3116f:	62 11 14 48 59 ed    	vmulps zmm13,zmm13,zmm29
  a31175:	62 e1 6c 40 58 ec    	vaddps zmm21,zmm18,zmm4
  a3117b:	62 22 4d 48 ac e7    	vfnmadd213ps zmm28,zmm6,zmm23
  a31181:	62 f1 6c 40 5c e4    	vsubps zmm4,zmm18,zmm4
  a31187:	62 a1 1c 40 5c d4    	vsubps zmm18,zmm28,zmm20
  a3118d:	62 a1 1c 40 58 e4    	vaddps zmm20,zmm28,zmm20
  a31193:	62 a1 0c 40 58 f6    	vaddps zmm22,zmm30,zmm22
  a31199:	62 51 1c 48 58 e0    	vaddps zmm12,zmm12,zmm8
  a3119f:	62 41 0c 48 5c c7    	vsubps zmm24,zmm14,zmm15
  a311a5:	62 51 0c 48 58 f7    	vaddps zmm14,zmm14,zmm15
  a311ab:	62 31 7c 40 58 fb    	vaddps zmm15,zmm16,zmm19
  a311b1:	62 a1 7c 40 5c c3    	vsubps zmm16,zmm16,zmm19
  a311b7:	62 e1 74 40 58 db    	vaddps zmm19,zmm17,zmm3
  a311bd:	62 f1 74 40 5c db    	vsubps zmm3,zmm17,zmm3
  a311c3:	62 c1 54 48 5c cd    	vsubps zmm17,zmm5,zmm13
  a311c9:	62 d1 54 48 58 ed    	vaddps zmm5,zmm5,zmm13
  a311cf:	62 f1 44 40 58 f6    	vaddps zmm6,zmm23,zmm6
  a311d5:	62 f1 2c 40 58 c0    	vaddps zmm0,zmm26,zmm0
  a311db:	62 71 7c 48 28 2d db 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff65fadb]        # 90cc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e170>
  a311e2:	fa 65 ff 
  a311e5:	62 f2 15 48 7f f0    	vpermt2ps zmm6,zmm13,zmm0
  a311eb:	62 f2 15 48 7f fa    	vpermt2ps zmm7,zmm13,zmm2
  a311f1:	62 12 15 48 7f f8    	vpermt2ps zmm15,zmm13,zmm24
  a311f7:	62 72 15 48 7f 4c 24 	vpermt2ps zmm9,zmm13,ZMMWORD PTR [rsp-0x80]
  a311fe:	fe 
  a311ff:	62 a2 15 48 7f d5    	vpermt2ps zmm18,zmm13,zmm21
  a31205:	62 d2 15 48 7f ca    	vpermt2ps zmm1,zmm13,zmm10
  a3120b:	62 42 15 48 7f fb    	vpermt2ps zmm31,zmm13,zmm11
  a31211:	62 a2 15 48 7f cb    	vpermt2ps zmm17,zmm13,zmm19
  a31217:	62 e2 15 48 7f e4    	vpermt2ps zmm20,zmm13,zmm4
  a3121d:	62 32 15 48 7f e6    	vpermt2ps zmm12,zmm13,zmm22
  a31223:	62 c2 15 48 7f c6    	vpermt2ps zmm16,zmm13,zmm14
  a31229:	62 f2 15 48 7f eb    	vpermt2ps zmm5,zmm13,zmm3
  a3122f:	62 f1 7c 48 11 36    	vmovups ZMMWORD PTR [rsi],zmm6
  a31235:	62 f1 7c 48 11 7e 01 	vmovups ZMMWORD PTR [rsi+0x40],zmm7
  a3123c:	62 71 7c 48 11 7e 02 	vmovups ZMMWORD PTR [rsi+0x80],zmm15
  a31243:	62 71 7c 48 11 4e 03 	vmovups ZMMWORD PTR [rsi+0xc0],zmm9
  a3124a:	62 e1 7c 48 11 56 04 	vmovups ZMMWORD PTR [rsi+0x100],zmm18
  a31251:	62 f1 7c 48 11 4e 05 	vmovups ZMMWORD PTR [rsi+0x140],zmm1
  a31258:	62 61 7c 48 11 7e 06 	vmovups ZMMWORD PTR [rsi+0x180],zmm31
  a3125f:	62 e1 7c 48 11 4e 07 	vmovups ZMMWORD PTR [rsi+0x1c0],zmm17
  a31266:	62 e1 7c 48 11 66 08 	vmovups ZMMWORD PTR [rsi+0x200],zmm20
  a3126d:	62 71 7c 48 11 66 09 	vmovups ZMMWORD PTR [rsi+0x240],zmm12
  a31274:	62 e1 7c 48 11 46 0a 	vmovups ZMMWORD PTR [rsi+0x280],zmm16
  a3127b:	62 f1 7c 48 11 6e 0b 	vmovups ZMMWORD PTR [rsi+0x2c0],zmm5
  a31282:	48 81 c4 08 01 00 00 	add    rsp,0x108
  a31289:	c5 f8 77             	vzeroupper
  a3128c:	c3                   	ret
