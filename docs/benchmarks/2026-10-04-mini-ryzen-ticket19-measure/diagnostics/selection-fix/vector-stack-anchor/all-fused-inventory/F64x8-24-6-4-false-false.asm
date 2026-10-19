
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000093ad40 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  93ad40:	62 f1 fd 48 28 25 76 	vmovapd zmm4,ZMMWORD PTR [rip+0xffffffffff747f76]        # 82cc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x10170>
  93ad47:	7f 74 ff 
  93ad4a:	62 f1 fd 48 10 17    	vmovupd zmm2,ZMMWORD PTR [rdi]
  93ad50:	62 f1 fd 48 10 6f 01 	vmovupd zmm5,ZMMWORD PTR [rdi+0x40]
  93ad57:	62 f1 fd 48 10 77 02 	vmovupd zmm6,ZMMWORD PTR [rdi+0x80]
  93ad5e:	62 f1 fd 48 10 5f 03 	vmovupd zmm3,ZMMWORD PTR [rdi+0xc0]
  93ad65:	c5 f9 57 c0          	vxorpd xmm0,xmm0,xmm0
  93ad69:	62 f1 fd 48 28 fa    	vmovapd zmm7,zmm2
  93ad6f:	62 f2 dd 48 7f f8    	vpermt2pd zmm7,zmm4,zmm0
  93ad75:	62 f1 fd 48 28 0d 81 	vmovapd zmm1,ZMMWORD PTR [rip+0xffffffffff747f81]        # 82d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x101b0>
  93ad7c:	7f 74 ff 
  93ad7f:	62 f2 f5 48 7f d0    	vpermt2pd zmm2,zmm1,zmm0
  93ad85:	62 71 fd 48 28 c5    	vmovapd zmm8,zmm5
  93ad8b:	62 72 dd 48 7f c0    	vpermt2pd zmm8,zmm4,zmm0
  93ad91:	62 f2 f5 48 7f e8    	vpermt2pd zmm5,zmm1,zmm0
  93ad97:	62 71 fd 48 28 ce    	vmovapd zmm9,zmm6
  93ad9d:	62 72 dd 48 7f c8    	vpermt2pd zmm9,zmm4,zmm0
  93ada3:	62 f2 f5 48 7f f0    	vpermt2pd zmm6,zmm1,zmm0
  93ada9:	62 71 fd 48 28 d3    	vmovapd zmm10,zmm3
  93adaf:	62 72 dd 48 7f d0    	vpermt2pd zmm10,zmm4,zmm0
  93adb5:	62 f2 f5 48 7f d8    	vpermt2pd zmm3,zmm1,zmm0
  93adbb:	62 71 fd 48 10 5f 04 	vmovupd zmm11,ZMMWORD PTR [rdi+0x100]
  93adc2:	62 51 fd 48 28 e3    	vmovapd zmm12,zmm11
  93adc8:	62 72 dd 48 7f e0    	vpermt2pd zmm12,zmm4,zmm0
  93adce:	62 72 f5 48 7f d8    	vpermt2pd zmm11,zmm1,zmm0
  93add4:	62 71 fd 48 10 6f 05 	vmovupd zmm13,ZMMWORD PTR [rdi+0x140]
  93addb:	62 f2 95 48 77 e0    	vpermi2pd zmm4,zmm13,zmm0
  93ade1:	62 72 f5 48 7f e8    	vpermt2pd zmm13,zmm1,zmm0
  93ade7:	62 51 b5 48 58 f4    	vaddpd zmm14,zmm9,zmm12
  93aded:	62 51 c5 48 58 fe    	vaddpd zmm15,zmm7,zmm14
  93adf3:	62 c1 dd 48 58 c0    	vaddpd zmm16,zmm4,zmm8
  93adf9:	62 a1 ad 48 58 c8    	vaddpd zmm17,zmm10,zmm16
  93adff:	62 a1 85 48 58 d1    	vaddpd zmm18,zmm15,zmm17
  93ae05:	62 c1 cd 48 58 db    	vaddpd zmm19,zmm6,zmm11
  93ae0b:	62 a1 ed 48 58 e3    	vaddpd zmm20,zmm2,zmm19
  93ae11:	62 e1 95 48 58 ed    	vaddpd zmm21,zmm13,zmm5
  93ae17:	62 a1 e5 48 58 f5    	vaddpd zmm22,zmm3,zmm21
  93ae1d:	62 b1 dd 40 58 ce    	vaddpd zmm1,zmm20,zmm22
  93ae23:	62 e2 fd 48 19 3d 6b 	vbroadcastsd zmm23,QWORD PTR [rip+0xffffffffff739c6b]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  93ae2a:	9c 73 ff 
  93ae2d:	62 d2 c5 40 bc fe    	vfnmadd231pd zmm7,zmm23,zmm14
  93ae33:	62 d1 cd 48 5c f3    	vsubpd zmm6,zmm6,zmm11
  93ae39:	62 72 fd 48 19 1d dd 	vbroadcastsd zmm11,QWORD PTR [rip+0xffffffffff739ddd]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  93ae40:	9d 73 ff 
  93ae43:	62 d1 cd 48 59 f3    	vmulpd zmm6,zmm6,zmm11
  93ae49:	62 71 c5 48 58 f6    	vaddpd zmm14,zmm7,zmm6
  93ae4f:	62 32 c5 40 bc d0    	vfnmadd231pd zmm10,zmm23,zmm16
  93ae55:	62 f1 95 48 5c ed    	vsubpd zmm5,zmm13,zmm5
  93ae5b:	62 d1 d5 48 59 eb    	vmulpd zmm5,zmm5,zmm11
  93ae61:	62 71 ad 48 58 ed    	vaddpd zmm13,zmm10,zmm5
  93ae67:	62 c1 8d 48 5c c5    	vsubpd zmm16,zmm14,zmm13
  93ae6d:	62 b2 c5 40 bc d3    	vfnmadd231pd zmm2,zmm23,zmm19
  93ae73:	62 51 b5 48 5c cc    	vsubpd zmm9,zmm9,zmm12
  93ae79:	62 51 b5 48 59 cb    	vmulpd zmm9,zmm9,zmm11
  93ae7f:	62 51 ed 48 5c e1    	vsubpd zmm12,zmm2,zmm9
  93ae85:	62 b2 d5 40 bc df    	vfnmadd231pd zmm3,zmm21,zmm23
  93ae8b:	62 d1 dd 48 5c e0    	vsubpd zmm4,zmm4,zmm8
  93ae91:	62 d1 dd 48 59 e3    	vmulpd zmm4,zmm4,zmm11
  93ae97:	62 71 e5 48 5c c4    	vsubpd zmm8,zmm3,zmm4
  93ae9d:	62 51 9d 48 5c d8    	vsubpd zmm11,zmm12,zmm8
  93aea3:	62 f1 c5 48 5c f6    	vsubpd zmm6,zmm7,zmm6
  93aea9:	62 f1 ad 48 5c ed    	vsubpd zmm5,zmm10,zmm5
  93aeaf:	62 f1 cd 48 58 fd    	vaddpd zmm7,zmm6,zmm5
  93aeb5:	62 f1 b5 48 58 d2    	vaddpd zmm2,zmm9,zmm2
  93aebb:	62 f1 dd 48 58 db    	vaddpd zmm3,zmm4,zmm3
  93aec1:	62 f1 ed 48 58 e3    	vaddpd zmm4,zmm2,zmm3
  93aec7:	62 31 85 48 5c c9    	vsubpd zmm9,zmm15,zmm17
  93aecd:	62 31 dd 40 5c d6    	vsubpd zmm10,zmm20,zmm22
  93aed3:	62 51 8d 48 58 ed    	vaddpd zmm13,zmm14,zmm13
  93aed9:	62 51 9d 48 58 c0    	vaddpd zmm8,zmm12,zmm8
  93aedf:	62 f1 cd 48 5c ed    	vsubpd zmm5,zmm6,zmm5
  93aee5:	62 f1 ed 48 5c d3    	vsubpd zmm2,zmm2,zmm3
  93aeeb:	62 f1 fd 48 10 1d 73 	vmovupd zmm3,ZMMWORD PTR [rip+0xffffffffff78be73]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  93aef2:	be 78 ff 
  93aef5:	62 c2 e5 48 7f d5    	vpermt2pd zmm18,zmm3,zmm13
  93aefb:	62 e2 e5 48 7f c5    	vpermt2pd zmm16,zmm3,zmm5
  93af01:	62 f2 e5 48 7f f8    	vpermt2pd zmm7,zmm3,zmm0
  93af07:	62 72 e5 48 7f c8    	vpermt2pd zmm9,zmm3,zmm0
  93af0d:	62 f1 fd 48 10 2d d1 	vmovupd zmm5,ZMMWORD PTR [rip+0xffffffffff78bdd1]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  93af14:	bd 78 ff 
  93af17:	62 b1 fd 48 28 f2    	vmovapd zmm6,zmm18
  93af1d:	62 f2 d5 48 7f f7    	vpermt2pd zmm6,zmm5,zmm7
  93af23:	62 71 fd 48 10 25 fb 	vmovupd zmm12,ZMMWORD PTR [rip+0xffffffffff78bdfb]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  93af2a:	bd 78 ff 
  93af2d:	62 e2 9d 48 7f d7    	vpermt2pd zmm18,zmm12,zmm7
  93af33:	62 b1 fd 48 28 f8    	vmovapd zmm7,zmm16
  93af39:	62 d2 d5 48 7f f9    	vpermt2pd zmm7,zmm5,zmm9
  93af3f:	62 c2 9d 48 7f c1    	vpermt2pd zmm16,zmm12,zmm9
  93af45:	62 71 cd 48 14 cf    	vunpcklpd zmm9,zmm6,zmm7
  93af4b:	62 f1 cd 48 15 f7    	vunpckhpd zmm6,zmm6,zmm7
  93af51:	62 b1 ed 40 14 f8    	vunpcklpd zmm7,zmm18,zmm16
  93af57:	62 31 ed 40 15 e8    	vunpckhpd zmm13,zmm18,zmm16
  93af5d:	62 d2 e5 48 7f c8    	vpermt2pd zmm1,zmm3,zmm8
  93af63:	62 72 e5 48 7f da    	vpermt2pd zmm11,zmm3,zmm2
  93af69:	62 f2 e5 48 7f e0    	vpermt2pd zmm4,zmm3,zmm0
  93af6f:	62 72 e5 48 7f d0    	vpermt2pd zmm10,zmm3,zmm0
  93af75:	62 f1 fd 48 28 c1    	vmovapd zmm0,zmm1
  93af7b:	62 f2 d5 48 7f c4    	vpermt2pd zmm0,zmm5,zmm4
  93af81:	62 f2 9d 48 7f cc    	vpermt2pd zmm1,zmm12,zmm4
  93af87:	62 d2 a5 48 77 ea    	vpermi2pd zmm5,zmm11,zmm10
  93af8d:	62 52 9d 48 7f da    	vpermt2pd zmm11,zmm12,zmm10
  93af93:	62 f1 fd 48 14 d5    	vunpcklpd zmm2,zmm0,zmm5
  93af99:	62 f1 fd 48 15 c5    	vunpckhpd zmm0,zmm0,zmm5
  93af9f:	62 d1 f5 48 14 db    	vunpcklpd zmm3,zmm1,zmm11
  93afa5:	62 d1 f5 48 15 cb    	vunpckhpd zmm1,zmm1,zmm11
  93afab:	62 f1 fd 48 10 62 02 	vmovupd zmm4,ZMMWORD PTR [rdx+0x80]
  93afb2:	62 f1 fd 48 10 6a 03 	vmovupd zmm5,ZMMWORD PTR [rdx+0xc0]
  93afb9:	62 71 fd 48 10 42 04 	vmovupd zmm8,ZMMWORD PTR [rdx+0x100]
  93afc0:	62 71 fd 48 10 52 05 	vmovupd zmm10,ZMMWORD PTR [rdx+0x140]
  93afc7:	62 71 fd 48 10 5a 06 	vmovupd zmm11,ZMMWORD PTR [rdx+0x180]
  93afce:	62 71 fd 48 10 62 07 	vmovupd zmm12,ZMMWORD PTR [rdx+0x1c0]
  93afd5:	62 51 c5 48 59 f0    	vmulpd zmm14,zmm7,zmm8
  93afdb:	62 52 e5 48 bc f2    	vfnmadd231pd zmm14,zmm3,zmm10
  93afe1:	62 51 b5 48 58 fe    	vaddpd zmm15,zmm9,zmm14
  93afe7:	62 e1 cd 48 59 c4    	vmulpd zmm16,zmm6,zmm4
  93afed:	62 e2 fd 48 bc c5    	vfnmadd231pd zmm16,zmm0,zmm5
  93aff3:	62 c1 95 48 59 cb    	vmulpd zmm17,zmm13,zmm11
  93aff9:	62 c2 f5 48 bc cc    	vfnmadd231pd zmm17,zmm1,zmm12
  93afff:	62 a1 fd 40 58 d1    	vaddpd zmm18,zmm16,zmm17
  93b005:	62 d1 e5 48 59 d8    	vmulpd zmm3,zmm3,zmm8
  93b00b:	62 d2 c5 48 b8 da    	vfmadd231pd zmm3,zmm7,zmm10
  93b011:	62 f1 e5 48 58 fa    	vaddpd zmm7,zmm3,zmm2
  93b017:	62 f1 fd 48 59 c4    	vmulpd zmm0,zmm0,zmm4
  93b01d:	62 f2 cd 48 b8 c5    	vfmadd231pd zmm0,zmm6,zmm5
  93b023:	62 d1 f5 48 59 cb    	vmulpd zmm1,zmm1,zmm11
  93b029:	62 d2 95 48 b8 cc    	vfmadd231pd zmm1,zmm13,zmm12
  93b02f:	62 f1 fd 48 58 e1    	vaddpd zmm4,zmm0,zmm1
  93b035:	62 d1 b5 48 5c ee    	vsubpd zmm5,zmm9,zmm14
  93b03b:	62 f1 fd 48 5c c1    	vsubpd zmm0,zmm0,zmm1
  93b041:	62 f1 d5 48 58 c8    	vaddpd zmm1,zmm5,zmm0
  93b047:	62 f1 ed 48 5c d3    	vsubpd zmm2,zmm2,zmm3
  93b04d:	62 b1 f5 40 5c d8    	vsubpd zmm3,zmm17,zmm16
  93b053:	62 f1 ed 48 58 f3    	vaddpd zmm6,zmm2,zmm3
  93b059:	c5 7d 28 05 9f bc 73 	vmovapd ymm8,YMMWORD PTR [rip+0xffffffffff73bc9f]        # 76d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x41b0>
  93b060:	ff 
  93b061:	62 71 fd 48 28 c9    	vmovapd zmm9,zmm1
  93b067:	62 72 bd 48 7f ce    	vpermt2pd zmm9,zmm8,zmm6
  93b06d:	62 31 85 48 5c d2    	vsubpd zmm10,zmm15,zmm18
  93b073:	62 71 c5 48 5c dc    	vsubpd zmm11,zmm7,zmm4
  93b079:	62 51 fd 48 28 e2    	vmovapd zmm12,zmm10
  93b07f:	62 52 bd 48 7f e3    	vpermt2pd zmm12,zmm8,zmm11
  93b085:	62 f1 d5 48 5c c0    	vsubpd zmm0,zmm5,zmm0
  93b08b:	62 f1 ed 48 5c d3    	vsubpd zmm2,zmm2,zmm3
  93b091:	62 f1 fd 48 28 d8    	vmovapd zmm3,zmm0
  93b097:	62 f2 bd 48 7f da    	vpermt2pd zmm3,zmm8,zmm2
  93b09d:	62 b1 85 48 58 ea    	vaddpd zmm5,zmm15,zmm18
  93b0a3:	62 f1 c5 48 58 e4    	vaddpd zmm4,zmm7,zmm4
  93b0a9:	62 72 d5 48 77 c4    	vpermi2pd zmm8,zmm5,zmm4
  93b0af:	62 f1 fd 48 28 3d 87 	vmovapd zmm7,ZMMWORD PTR [rip+0xffffffffff747c87]        # 82d40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x101f0>
  93b0b6:	7c 74 ff 
  93b0b9:	62 f2 c5 48 7f ec    	vpermt2pd zmm5,zmm7,zmm4
  93b0bf:	62 f1 fd 48 11 2e    	vmovupd ZMMWORD PTR [rsi],zmm5
  93b0c5:	c5 7d 11 46 40       	vmovupd YMMWORD PTR [rsi+0x40],ymm8
  93b0ca:	62 f2 c5 48 7f ce    	vpermt2pd zmm1,zmm7,zmm6
  93b0d0:	62 f1 fd 48 11 8e 60 	vmovupd ZMMWORD PTR [rsi+0x60],zmm1
  93b0d7:	00 00 00 
  93b0da:	c5 7d 11 8e a0 00 00 	vmovupd YMMWORD PTR [rsi+0xa0],ymm9
  93b0e1:	00 
  93b0e2:	62 52 c5 48 7f d3    	vpermt2pd zmm10,zmm7,zmm11
  93b0e8:	62 71 fd 48 11 56 03 	vmovupd ZMMWORD PTR [rsi+0xc0],zmm10
  93b0ef:	c5 7d 11 a6 00 01 00 	vmovupd YMMWORD PTR [rsi+0x100],ymm12
  93b0f6:	00 
  93b0f7:	62 f2 c5 48 7f c2    	vpermt2pd zmm0,zmm7,zmm2
  93b0fd:	62 f1 fd 48 11 86 20 	vmovupd ZMMWORD PTR [rsi+0x120],zmm0
  93b104:	01 00 00 
  93b107:	c5 fd 11 9e 60 01 00 	vmovupd YMMWORD PTR [rsi+0x160],ymm3
  93b10e:	00 
  93b10f:	c5 f8 77             	vzeroupper
  93b112:	c3                   	ret
