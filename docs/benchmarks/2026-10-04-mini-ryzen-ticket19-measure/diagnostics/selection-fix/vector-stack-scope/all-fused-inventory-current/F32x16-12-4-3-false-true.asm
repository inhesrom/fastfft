
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a57ec0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a57ec0:	62 f1 7c 48 28 05 b6 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff66f0b6]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a57ec7:	f0 66 ff 
  a57eca:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a57ece:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a57ed2:	62 f2 7d 48 7f d2    	vpermt2ps zmm2,zmm0,zmm2
  a57ed8:	62 f1 7c 48 28 1d 1e 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff66f01e]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a57edf:	f0 66 ff 
  a57ee2:	62 f1 7c 48 28 25 14 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff66ef14]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a57ee9:	ef 66 ff 
  a57eec:	62 f1 7c 48 28 2d 4a 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff66ef4a]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a57ef3:	ef 66 ff 
  a57ef6:	48 c1 e2 05          	shl    rdx,0x5
  a57efa:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a57efe:	31 d2                	xor    edx,edx
  a57f00:	62 f1 7c 48 28 35 76 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff63b176]        # 93080 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20530>
  a57f07:	b1 63 ff 
  a57f0a:	62 f2 7d 48 18 3d 4c 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff61d54c]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a57f11:	d5 61 ff 
  a57f14:	62 71 7c 48 28 05 a2 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff63b1a2]        # 930c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20570>
  a57f1b:	b1 63 ff 
  a57f1e:	c5 7c 28 0d ba f2 61 	vmovaps ymm9,YMMWORD PTR [rip+0xffffffffff61f2ba]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  a57f25:	ff 
  a57f26:	c4 62 7d 18 15 a5 d3 	vbroadcastss ymm10,DWORD PTR [rip+0xffffffffff61d3a5]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a57f2d:	61 ff 
  a57f2f:	90                   	nop
  a57f30:	c5 7b 10 5c 17 10    	vmovsd xmm11,QWORD PTR [rdi+rdx*1+0x10]
  a57f36:	c5 78 10 24 17       	vmovups xmm12,XMMWORD PTR [rdi+rdx*1]
  a57f3b:	c5 78 10 6c 17 18    	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0x18]
  a57f41:	c5 78 10 74 17 30    	vmovups xmm14,XMMWORD PTR [rdi+rdx*1+0x30]
  a57f47:	c5 78 10 7c 17 48    	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x48]
  a57f4d:	62 53 1d 48 18 db 01 	vinsertf32x4 zmm11,zmm12,xmm11,0x1
  a57f54:	62 51 7c 48 28 e3    	vmovaps zmm12,zmm11
  a57f5a:	62 72 4d 48 7f e1    	vpermt2ps zmm12,zmm6,zmm1
  a57f60:	62 72 3d 48 7f d9    	vpermt2ps zmm11,zmm8,zmm1
  a57f66:	62 e1 ff 08 10 44 17 	vmovsd xmm16,QWORD PTR [rdi+rdx*1+0x28]
  a57f6d:	05 
  a57f6e:	62 33 15 48 18 e8 01 	vinsertf32x4 zmm13,zmm13,xmm16,0x1
  a57f75:	62 c1 7c 48 28 c5    	vmovaps zmm16,zmm13
  a57f7b:	62 e2 4d 48 7f c1    	vpermt2ps zmm16,zmm6,zmm1
  a57f81:	62 72 3d 48 7f e9    	vpermt2ps zmm13,zmm8,zmm1
  a57f87:	62 e1 ff 08 10 4c 17 	vmovsd xmm17,QWORD PTR [rdi+rdx*1+0x40]
  a57f8e:	08 
  a57f8f:	62 33 0d 48 18 f1 01 	vinsertf32x4 zmm14,zmm14,xmm17,0x1
  a57f96:	62 c1 7c 48 28 ce    	vmovaps zmm17,zmm14
  a57f9c:	62 e2 4d 48 7f c9    	vpermt2ps zmm17,zmm6,zmm1
  a57fa2:	62 72 3d 48 7f f1    	vpermt2ps zmm14,zmm8,zmm1
  a57fa8:	62 e1 ff 08 10 54 17 	vmovsd xmm18,QWORD PTR [rdi+rdx*1+0x58]
  a57faf:	0b 
  a57fb0:	62 33 05 48 18 fa 01 	vinsertf32x4 zmm15,zmm15,xmm18,0x1
  a57fb7:	62 c1 7c 48 28 d7    	vmovaps zmm18,zmm15
  a57fbd:	62 e2 4d 48 7f d1    	vpermt2ps zmm18,zmm6,zmm1
  a57fc3:	62 72 3d 48 7f f9    	vpermt2ps zmm15,zmm8,zmm1
  a57fc9:	62 a1 1c 48 58 d9    	vaddps zmm19,zmm12,zmm17
  a57fcf:	62 a1 7c 40 58 e2    	vaddps zmm20,zmm16,zmm18
  a57fd5:	62 a1 64 40 58 ec    	vaddps zmm21,zmm19,zmm20
  a57fdb:	62 c1 24 48 58 f6    	vaddps zmm22,zmm11,zmm14
  a57fe1:	62 c1 14 48 58 ff    	vaddps zmm23,zmm13,zmm15
  a57fe7:	62 21 4c 40 58 c7    	vaddps zmm24,zmm22,zmm23
  a57fed:	62 31 1c 48 5c e1    	vsubps zmm12,zmm12,zmm17
  a57ff3:	62 51 14 48 5c ef    	vsubps zmm13,zmm13,zmm15
  a57ff9:	62 51 1c 48 58 fd    	vaddps zmm15,zmm12,zmm13
  a57fff:	62 51 24 48 5c de    	vsubps zmm11,zmm11,zmm14
  a58005:	62 31 6c 40 5c f0    	vsubps zmm14,zmm18,zmm16
  a5800b:	62 c1 0c 48 58 c3    	vaddps zmm16,zmm14,zmm11
  a58011:	62 a1 64 40 5c cc    	vsubps zmm17,zmm19,zmm20
  a58017:	62 a1 4c 40 5c d7    	vsubps zmm18,zmm22,zmm23
  a5801d:	62 51 1c 48 5c e5    	vsubps zmm12,zmm12,zmm13
  a58023:	62 51 24 48 5c de    	vsubps zmm11,zmm11,zmm14
  a58029:	62 e2 7d 48 7f e9    	vpermt2ps zmm21,zmm0,zmm1
  a5802f:	62 72 7d 48 7f f9    	vpermt2ps zmm15,zmm0,zmm1
  a58035:	62 e2 7d 48 7f c9    	vpermt2ps zmm17,zmm0,zmm1
  a5803b:	62 72 7d 48 7f e1    	vpermt2ps zmm12,zmm0,zmm1
  a58041:	62 e2 65 48 7f ea    	vpermt2ps zmm21,zmm3,zmm2
  a58047:	62 72 65 48 7f fa    	vpermt2ps zmm15,zmm3,zmm2
  a5804d:	62 e2 65 48 7f ca    	vpermt2ps zmm17,zmm3,zmm2
  a58053:	62 72 65 48 7f e2    	vpermt2ps zmm12,zmm3,zmm2
  a58059:	62 31 d5 40 14 e9    	vunpcklpd zmm13,zmm21,zmm17
  a5805f:	62 31 d5 40 15 f1    	vunpckhpd zmm14,zmm21,zmm17
  a58065:	62 c1 85 48 14 cc    	vunpcklpd zmm17,zmm15,zmm12
  a5806b:	62 51 85 48 15 e4    	vunpckhpd zmm12,zmm15,zmm12
  a58071:	62 51 7c 48 28 fd    	vmovaps zmm15,zmm13
  a58077:	62 32 5d 48 7f f9    	vpermt2ps zmm15,zmm4,zmm17
  a5807d:	62 32 55 48 7f e9    	vpermt2ps zmm13,zmm5,zmm17
  a58083:	62 52 5d 48 7f f4    	vpermt2ps zmm14,zmm4,zmm12
  a58089:	62 62 7d 48 7f c1    	vpermt2ps zmm24,zmm0,zmm1
  a5808f:	62 e2 7d 48 7f c1    	vpermt2ps zmm16,zmm0,zmm1
  a58095:	62 e2 7d 48 7f d1    	vpermt2ps zmm18,zmm0,zmm1
  a5809b:	62 72 7d 48 7f d9    	vpermt2ps zmm11,zmm0,zmm1
  a580a1:	62 62 65 48 7f c2    	vpermt2ps zmm24,zmm3,zmm2
  a580a7:	62 e2 65 48 7f c2    	vpermt2ps zmm16,zmm3,zmm2
  a580ad:	62 e2 65 48 7f d2    	vpermt2ps zmm18,zmm3,zmm2
  a580b3:	62 72 65 48 7f da    	vpermt2ps zmm11,zmm3,zmm2
  a580b9:	62 31 bd 40 14 e2    	vunpcklpd zmm12,zmm24,zmm18
  a580bf:	62 a1 bd 40 15 ca    	vunpckhpd zmm17,zmm24,zmm18
  a580c5:	62 c1 fd 40 14 d3    	vunpcklpd zmm18,zmm16,zmm11
  a580cb:	62 51 fd 40 15 db    	vunpckhpd zmm11,zmm16,zmm11
  a580d1:	62 c1 7c 48 28 c4    	vmovaps zmm16,zmm12
  a580d7:	62 a2 5d 48 7f c2    	vpermt2ps zmm16,zmm4,zmm18
  a580dd:	62 32 55 48 7f e2    	vpermt2ps zmm12,zmm5,zmm18
  a580e3:	62 c2 5d 48 7f cb    	vpermt2ps zmm17,zmm4,zmm11
  a580e9:	62 71 7c 48 10 59 02 	vmovups zmm11,ZMMWORD PTR [rcx+0x80]
  a580f0:	62 e1 7c 48 10 51 03 	vmovups zmm18,ZMMWORD PTR [rcx+0xc0]
  a580f7:	62 e1 7c 48 10 59 04 	vmovups zmm19,ZMMWORD PTR [rcx+0x100]
  a580fe:	62 e1 7c 48 10 61 05 	vmovups zmm20,ZMMWORD PTR [rcx+0x140]
  a58105:	62 c1 14 48 59 eb    	vmulps zmm21,zmm13,zmm11
  a5810b:	62 a2 1d 48 bc ea    	vfnmadd231ps zmm21,zmm12,zmm18
  a58111:	62 a1 0c 48 59 f3    	vmulps zmm22,zmm14,zmm19
  a58117:	62 a2 75 40 bc f4    	vfnmadd231ps zmm22,zmm17,zmm20
  a5811d:	62 a1 54 40 58 fe    	vaddps zmm23,zmm21,zmm22
  a58123:	62 51 1c 48 59 db    	vmulps zmm11,zmm12,zmm11
  a58129:	62 52 6d 40 b8 dd    	vfmadd231ps zmm11,zmm18,zmm13
  a5812f:	62 31 74 40 59 e3    	vmulps zmm12,zmm17,zmm19
  a58135:	62 52 5d 40 b8 e6    	vfmadd231ps zmm12,zmm20,zmm14
  a5813b:	62 51 24 48 58 ec    	vaddps zmm13,zmm11,zmm12
  a58141:	62 71 7c 48 28 f7    	vmovaps zmm14,zmm7
  a58147:	62 52 45 40 ac f7    	vfnmadd213ps zmm14,zmm23,zmm15
  a5814d:	62 e1 7c 48 28 cf    	vmovaps zmm17,zmm7
  a58153:	62 a2 15 48 ac c8    	vfnmadd213ps zmm17,zmm13,zmm16
  a58159:	62 51 7c 20 58 ed    	vaddps ymm13,ymm16,ymm13
  a5815f:	62 31 04 08 58 ff    	vaddps xmm15,xmm15,xmm23
  a58165:	62 52 35 28 7f fd    	vpermt2ps ymm15,ymm9,ymm13
  a5816b:	c5 7c 11 3c 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm15
  a58170:	62 31 54 20 5c ee    	vsubps ymm13,ymm21,ymm22
  a58176:	c4 41 14 59 ea       	vmulps ymm13,ymm13,ymm10
  a5817b:	62 51 74 20 5c fd    	vsubps ymm15,ymm17,ymm13
  a58181:	c4 41 24 5c dc       	vsubps ymm11,ymm11,ymm12
  a58186:	c4 41 24 59 da       	vmulps ymm11,ymm11,ymm10
  a5818b:	c4 41 08 58 e3       	vaddps xmm12,xmm14,xmm11
  a58190:	62 52 35 28 7f e7    	vpermt2ps ymm12,ymm9,ymm15
  a58196:	c5 7c 11 64 16 20    	vmovups YMMWORD PTR [rsi+rdx*1+0x20],ymm12
  a5819c:	62 51 74 20 58 e5    	vaddps ymm12,ymm17,ymm13
  a581a2:	c4 41 08 5c db       	vsubps xmm11,xmm14,xmm11
  a581a7:	62 52 35 28 7f dc    	vpermt2ps ymm11,ymm9,ymm12
  a581ad:	c5 7c 11 5c 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm11
  a581b3:	48 83 c2 60          	add    rdx,0x60
  a581b7:	48 39 d0             	cmp    rax,rdx
  a581ba:	0f 85 70 fd ff ff    	jne    a57f30 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x70>
  a581c0:	c5 f8 77             	vzeroupper
  a581c3:	c3                   	ret
