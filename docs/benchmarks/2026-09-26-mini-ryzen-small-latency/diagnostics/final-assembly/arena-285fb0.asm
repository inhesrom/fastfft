
target/small-latency/final-source/executable-0:     file format elf64-x86-64


Disassembly of section .text:

0000000000285fb0 <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<fastfft::isa::x86::small::F32x4f>>::one>:
  285fb0:	c5 f8 10 07          	vmovups (%rdi),%xmm0
  285fb4:	c5 f8 10 4f 10       	vmovups 0x10(%rdi),%xmm1
  285fb9:	c5 f8 10 57 20       	vmovups 0x20(%rdi),%xmm2
  285fbe:	c5 f8 10 5f 30       	vmovups 0x30(%rdi),%xmm3
  285fc3:	c5 f8 c6 e1 88       	vshufps $0x88,%xmm1,%xmm0,%xmm4
  285fc8:	c5 f8 c6 c1 dd       	vshufps $0xdd,%xmm1,%xmm0,%xmm0
  285fcd:	c5 e8 c6 cb 88       	vshufps $0x88,%xmm3,%xmm2,%xmm1
  285fd2:	c5 e8 c6 d3 dd       	vshufps $0xdd,%xmm3,%xmm2,%xmm2
  285fd7:	c5 d8 58 d9          	vaddps %xmm1,%xmm4,%xmm3
  285fdb:	c5 f8 58 ea          	vaddps %xmm2,%xmm0,%xmm5
  285fdf:	c5 d8 5c c9          	vsubps %xmm1,%xmm4,%xmm1
  285fe3:	c5 f8 5c c2          	vsubps %xmm2,%xmm0,%xmm0
  285fe7:	c5 f8 28 15 f1 01 df 	vmovaps -0x20fe0f(%rip),%xmm2        # 761e0 <__abi_tag+0x75ee4>
  285fee:	ff 
  285fef:	c5 f8 59 e2          	vmulps %xmm2,%xmm0,%xmm4
  285ff3:	c5 f8 28 35 f5 1a df 	vmovaps -0x20e50b(%rip),%xmm6        # 77af0 <__abi_tag+0x777f4>
  285ffa:	ff 
  285ffb:	c4 e2 71 b8 e6       	vfmadd231ps %xmm6,%xmm1,%xmm4
  286000:	c5 f8 59 c6          	vmulps %xmm6,%xmm0,%xmm0
  286004:	c4 e2 71 bc c2       	vfnmadd231ps %xmm2,%xmm1,%xmm0
  286009:	c5 e0 14 cc          	vunpcklps %xmm4,%xmm3,%xmm1
  28600d:	c5 e0 15 d4          	vunpckhps %xmm4,%xmm3,%xmm2
  286011:	c5 f1 c6 d9 03       	vshufpd $0x3,%xmm1,%xmm1,%xmm3
  286016:	c5 e9 c6 e2 03       	vshufpd $0x3,%xmm2,%xmm2,%xmm4
  28601b:	c5 d0 14 f0          	vunpcklps %xmm0,%xmm5,%xmm6
  28601f:	c5 d0 15 c0          	vunpckhps %xmm0,%xmm5,%xmm0
  286023:	c5 c9 c6 ee 03       	vshufpd $0x3,%xmm6,%xmm6,%xmm5
  286028:	c5 f9 c6 f8 03       	vshufpd $0x3,%xmm0,%xmm0,%xmm7
  28602d:	c5 70 58 c2          	vaddps %xmm2,%xmm1,%xmm8
  286031:	c5 f0 5c ca          	vsubps %xmm2,%xmm1,%xmm1
  286035:	c5 e0 58 d4          	vaddps %xmm4,%xmm3,%xmm2
  286039:	c5 e0 5c dc          	vsubps %xmm4,%xmm3,%xmm3
  28603d:	c5 c8 58 e0          	vaddps %xmm0,%xmm6,%xmm4
  286041:	c5 c8 5c c0          	vsubps %xmm0,%xmm6,%xmm0
  286045:	c5 d0 58 f7          	vaddps %xmm7,%xmm5,%xmm6
  286049:	c5 d0 5c ef          	vsubps %xmm7,%xmm5,%xmm5
  28604d:	c5 b8 58 fa          	vaddps %xmm2,%xmm8,%xmm7
  286051:	c5 70 58 cd          	vaddps %xmm5,%xmm1,%xmm9
  286055:	c5 b8 5c d2          	vsubps %xmm2,%xmm8,%xmm2
  286059:	c5 f0 5c cd          	vsubps %xmm5,%xmm1,%xmm1
  28605d:	c5 d8 58 ee          	vaddps %xmm6,%xmm4,%xmm5
  286061:	c5 c0 14 ed          	vunpcklps %xmm5,%xmm7,%xmm5
  286065:	c5 f8 5c fb          	vsubps %xmm3,%xmm0,%xmm7
  286069:	c5 b0 14 ff          	vunpcklps %xmm7,%xmm9,%xmm7
  28606d:	c5 d8 5c e6          	vsubps %xmm6,%xmm4,%xmm4
  286071:	c5 e8 14 d4          	vunpcklps %xmm4,%xmm2,%xmm2
  286075:	c5 f8 58 c3          	vaddps %xmm3,%xmm0,%xmm0
  286079:	c5 f0 14 c0          	vunpcklps %xmm0,%xmm1,%xmm0
  28607d:	c5 f8 11 2e          	vmovups %xmm5,(%rsi)
  286081:	c5 f8 11 7e 10       	vmovups %xmm7,0x10(%rsi)
  286086:	c5 f8 11 56 20       	vmovups %xmm2,0x20(%rsi)
  28608b:	c5 f8 11 46 30       	vmovups %xmm0,0x30(%rsi)
  286090:	c3                   	ret
  286091:	cc                   	int3
  286092:	cc                   	int3
  286093:	cc                   	int3
  286094:	cc                   	int3
  286095:	cc                   	int3
  286096:	cc                   	int3
  286097:	cc                   	int3
  286098:	cc                   	int3
  286099:	cc                   	int3
  28609a:	cc                   	int3
  28609b:	cc                   	int3
  28609c:	cc                   	int3
  28609d:	cc                   	int3
  28609e:	cc                   	int3
  28609f:	cc                   	int3
