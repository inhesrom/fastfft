
target/small-latency/baseline/filtered-diagnostic:     file format elf64-x86-64


Disassembly of section .text:

000000000026ffe0 <<fastfft::isa::x86::F32x4 as fastfft::engine::small::SmallVector>::one>:
  26ffe0:	0f 10 0f             	movups (%rdi),%xmm1
  26ffe3:	0f 10 57 10          	movups 0x10(%rdi),%xmm2
  26ffe7:	0f 10 67 20          	movups 0x20(%rdi),%xmm4
  26ffeb:	0f 10 5f 30          	movups 0x30(%rdi),%xmm3
  26ffef:	0f 28 c1             	movaps %xmm1,%xmm0
  26fff2:	0f c6 c2 88          	shufps $0x88,%xmm2,%xmm0
  26fff6:	0f c6 ca dd          	shufps $0xdd,%xmm2,%xmm1
  26fffa:	0f 28 d4             	movaps %xmm4,%xmm2
  26fffd:	0f c6 d3 88          	shufps $0x88,%xmm3,%xmm2
  270001:	0f c6 e3 dd          	shufps $0xdd,%xmm3,%xmm4
  270005:	0f 10 6f 40          	movups 0x40(%rdi),%xmm5
  270009:	0f 10 5f 50          	movups 0x50(%rdi),%xmm3
  27000d:	0f 28 f5             	movaps %xmm5,%xmm6
  270010:	0f c6 f3 88          	shufps $0x88,%xmm3,%xmm6
  270014:	0f c6 eb dd          	shufps $0xdd,%xmm3,%xmm5
  270018:	0f 28 fa             	movaps %xmm2,%xmm7
  27001b:	0f 58 fe             	addps  %xmm6,%xmm7
  27001e:	0f 28 d8             	movaps %xmm0,%xmm3
  270021:	0f 58 df             	addps  %xmm7,%xmm3
  270024:	44 0f 28 cc          	movaps %xmm4,%xmm9
  270028:	44 0f 58 cd          	addps  %xmm5,%xmm9
  27002c:	44 0f 28 c1          	movaps %xmm1,%xmm8
  270030:	45 0f 58 c1          	addps  %xmm9,%xmm8
  270034:	44 0f 28 15 d4 59 de 	movaps -0x21a62c(%rip),%xmm10        # 55a10 <anon.8aa0f5226d74ca133e21e4badc128bdd.59.llvm.7551729311310402649+0x2310>
  27003b:	ff 
  27003c:	41 0f 59 fa          	mulps  %xmm10,%xmm7
  270040:	0f 5c c7             	subps  %xmm7,%xmm0
  270043:	0f 5c e5             	subps  %xmm5,%xmm4
  270046:	0f 28 2d 63 38 de ff 	movaps -0x21c79d(%rip),%xmm5        # 538b0 <anon.8aa0f5226d74ca133e21e4badc128bdd.59.llvm.7551729311310402649+0x1b0>
  27004d:	0f 59 e5             	mulps  %xmm5,%xmm4
  270050:	0f 28 fc             	movaps %xmm4,%xmm7
  270053:	0f 58 f8             	addps  %xmm0,%xmm7
  270056:	45 0f 59 ca          	mulps  %xmm10,%xmm9
  27005a:	41 0f 5c c9          	subps  %xmm9,%xmm1
  27005e:	0f 5c d6             	subps  %xmm6,%xmm2
  270061:	0f 59 d5             	mulps  %xmm5,%xmm2
  270064:	44 0f 28 c9          	movaps %xmm1,%xmm9
  270068:	44 0f 5c ca          	subps  %xmm2,%xmm9
  27006c:	0f 5c c4             	subps  %xmm4,%xmm0
  27006f:	0f 58 d1             	addps  %xmm1,%xmm2
  270072:	0f 28 eb             	movaps %xmm3,%xmm5
  270075:	0f 14 ef             	unpcklps %xmm7,%xmm5
  270078:	45 0f 57 d2          	xorps  %xmm10,%xmm10
  27007c:	0f 28 e0             	movaps %xmm0,%xmm4
  27007f:	41 0f 14 e2          	unpcklps %xmm10,%xmm4
  270083:	0f 28 cd             	movaps %xmm5,%xmm1
  270086:	0f 16 cc             	movlhps %xmm4,%xmm1
  270089:	0f 12 e5             	movhlps %xmm5,%xmm4
  27008c:	0f 15 df             	unpckhps %xmm7,%xmm3
  27008f:	41 0f 15 c2          	unpckhps %xmm10,%xmm0
  270093:	0f 28 eb             	movaps %xmm3,%xmm5
  270096:	0f 16 e8             	movlhps %xmm0,%xmm5
  270099:	0f 12 c3             	movhlps %xmm3,%xmm0
  27009c:	41 0f 28 f8          	movaps %xmm8,%xmm7
  2700a0:	41 0f 14 f9          	unpcklps %xmm9,%xmm7
  2700a4:	0f 28 f2             	movaps %xmm2,%xmm6
  2700a7:	41 0f 14 f2          	unpcklps %xmm10,%xmm6
  2700ab:	0f 28 df             	movaps %xmm7,%xmm3
  2700ae:	0f 16 de             	movlhps %xmm6,%xmm3
  2700b1:	0f 12 f7             	movhlps %xmm7,%xmm6
  2700b4:	45 0f 15 c1          	unpckhps %xmm9,%xmm8
  2700b8:	41 0f 15 d2          	unpckhps %xmm10,%xmm2
  2700bc:	41 0f 28 f8          	movaps %xmm8,%xmm7
  2700c0:	0f 16 fa             	movlhps %xmm2,%xmm7
  2700c3:	41 0f 12 d0          	movhlps %xmm8,%xmm2
  2700c7:	44 0f 10 62 20       	movups 0x20(%rdx),%xmm12
  2700cc:	44 0f 10 42 30       	movups 0x30(%rdx),%xmm8
  2700d1:	44 0f 10 6a 40       	movups 0x40(%rdx),%xmm13
  2700d6:	44 0f 10 52 50       	movups 0x50(%rdx),%xmm10
  2700db:	44 0f 10 5a 60       	movups 0x60(%rdx),%xmm11
  2700e0:	44 0f 10 4a 70       	movups 0x70(%rdx),%xmm9
  2700e5:	45 0f 28 f2          	movaps %xmm10,%xmm14
  2700e9:	44 0f 59 f7          	mulps  %xmm7,%xmm14
  2700ed:	41 0f 59 fd          	mulps  %xmm13,%xmm7
  2700f1:	44 0f 59 ed          	mulps  %xmm5,%xmm13
  2700f5:	45 0f 5c ee          	subps  %xmm14,%xmm13
  2700f9:	45 0f 28 f0          	movaps %xmm8,%xmm14
  2700fd:	44 0f 59 f6          	mulps  %xmm6,%xmm14
  270101:	41 0f 59 f4          	mulps  %xmm12,%xmm6
  270105:	44 0f 59 e4          	mulps  %xmm4,%xmm12
  270109:	45 0f 5c e6          	subps  %xmm14,%xmm12
  27010d:	45 0f 28 f1          	movaps %xmm9,%xmm14
  270111:	44 0f 59 f2          	mulps  %xmm2,%xmm14
  270115:	41 0f 59 d3          	mulps  %xmm11,%xmm2
  270119:	44 0f 59 d8          	mulps  %xmm0,%xmm11
  27011d:	45 0f 5c de          	subps  %xmm14,%xmm11
  270121:	41 0f 59 ea          	mulps  %xmm10,%xmm5
  270125:	0f 58 ef             	addps  %xmm7,%xmm5
  270128:	41 0f 59 e0          	mulps  %xmm8,%xmm4
  27012c:	0f 58 e6             	addps  %xmm6,%xmm4
  27012f:	41 0f 59 c1          	mulps  %xmm9,%xmm0
  270133:	0f 58 c2             	addps  %xmm2,%xmm0
  270136:	0f 28 d1             	movaps %xmm1,%xmm2
  270139:	41 0f 58 d5          	addps  %xmm13,%xmm2
  27013d:	41 0f 5c cd          	subps  %xmm13,%xmm1
  270141:	0f 28 f4             	movaps %xmm4,%xmm6
  270144:	0f 58 f0             	addps  %xmm0,%xmm6
  270147:	0f 5c e0             	subps  %xmm0,%xmm4
  27014a:	0f 28 c3             	movaps %xmm3,%xmm0
  27014d:	0f 58 c5             	addps  %xmm5,%xmm0
  270150:	0f 5c dd             	subps  %xmm5,%xmm3
  270153:	41 0f 28 ec          	movaps %xmm12,%xmm5
  270157:	41 0f 58 eb          	addps  %xmm11,%xmm5
  27015b:	45 0f 5c dc          	subps  %xmm12,%xmm11
  27015f:	0f 28 fa             	movaps %xmm2,%xmm7
  270162:	0f 58 fd             	addps  %xmm5,%xmm7
  270165:	0f 5c d5             	subps  %xmm5,%xmm2
  270168:	0f 28 e8             	movaps %xmm0,%xmm5
  27016b:	0f 58 ee             	addps  %xmm6,%xmm5
  27016e:	0f 5c c6             	subps  %xmm6,%xmm0
  270171:	0f 28 f1             	movaps %xmm1,%xmm6
  270174:	0f 58 f4             	addps  %xmm4,%xmm6
  270177:	0f 5c cc             	subps  %xmm4,%xmm1
  27017a:	0f 28 e3             	movaps %xmm3,%xmm4
  27017d:	41 0f 58 e3          	addps  %xmm11,%xmm4
  270181:	41 0f 5c db          	subps  %xmm11,%xmm3
  270185:	44 0f 28 c7          	movaps %xmm7,%xmm8
  270189:	44 0f 14 c5          	unpcklps %xmm5,%xmm8
  27018d:	44 0f 11 06          	movups %xmm8,(%rsi)
  270191:	0f 15 fd             	unpckhps %xmm5,%xmm7
  270194:	0f 13 7e 10          	movlps %xmm7,0x10(%rsi)
  270198:	0f 28 ee             	movaps %xmm6,%xmm5
  27019b:	0f 14 ec             	unpcklps %xmm4,%xmm5
  27019e:	0f 11 6e 18          	movups %xmm5,0x18(%rsi)
  2701a2:	0f 15 f4             	unpckhps %xmm4,%xmm6
  2701a5:	0f 13 76 28          	movlps %xmm6,0x28(%rsi)
  2701a9:	0f 28 e2             	movaps %xmm2,%xmm4
  2701ac:	0f 14 e0             	unpcklps %xmm0,%xmm4
  2701af:	0f 11 66 30          	movups %xmm4,0x30(%rsi)
  2701b3:	0f 15 d0             	unpckhps %xmm0,%xmm2
  2701b6:	0f 13 56 40          	movlps %xmm2,0x40(%rsi)
  2701ba:	0f 28 c1             	movaps %xmm1,%xmm0
  2701bd:	0f 14 c3             	unpcklps %xmm3,%xmm0
  2701c0:	0f 11 46 48          	movups %xmm0,0x48(%rsi)
  2701c4:	0f 15 cb             	unpckhps %xmm3,%xmm1
  2701c7:	0f 13 4e 58          	movlps %xmm1,0x58(%rsi)
  2701cb:	c3                   	ret
  2701cc:	cc                   	int3
  2701cd:	cc                   	int3
  2701ce:	cc                   	int3
  2701cf:	cc                   	int3

00000000002701d0 <<fastfft::isa::x86::F32x4 as fastfft::engine::small::SmallVector>::one>:
  2701d0:	0f 10 07             	movups (%rdi),%xmm0
  2701d3:	0f 10 6f 10          	movups 0x10(%rdi),%xmm5
  2701d7:	0f 57 f6             	xorps  %xmm6,%xmm6
  2701da:	0f 28 e0             	movaps %xmm0,%xmm4
  2701dd:	0f c6 e6 5d          	shufps $0x5d,%xmm6,%xmm4
  2701e1:	0f 28 cc             	movaps %xmm4,%xmm1
  2701e4:	0f c6 ce 48          	shufps $0x48,%xmm6,%xmm1
  2701e8:	0f c6 e6 4d          	shufps $0x4d,%xmm6,%xmm4
  2701ec:	0f 28 d5             	movaps %xmm5,%xmm2
  2701ef:	0f c6 d6 5d          	shufps $0x5d,%xmm6,%xmm2
  2701f3:	44 0f 28 ca          	movaps %xmm2,%xmm9
  2701f7:	44 0f c6 ce 48       	shufps $0x48,%xmm6,%xmm9
  2701fc:	0f c6 d6 4d          	shufps $0x4d,%xmm6,%xmm2
  270200:	0f 57 db             	xorps  %xmm3,%xmm3
  270203:	f3 0f 10 d8          	movss  %xmm0,%xmm3
  270207:	0f c6 c6 d8          	shufps $0xd8,%xmm6,%xmm0
  27020b:	0f c6 c6 4d          	shufps $0x4d,%xmm6,%xmm0
  27020f:	45 0f 57 d2          	xorps  %xmm10,%xmm10
  270213:	f3 44 0f 10 d5       	movss  %xmm5,%xmm10
  270218:	0f c6 ee d8          	shufps $0xd8,%xmm6,%xmm5
  27021c:	0f c6 ee 4d          	shufps $0x4d,%xmm6,%xmm5
  270220:	0f 28 f9             	movaps %xmm1,%xmm7
  270223:	41 0f 58 f9          	addps  %xmm9,%xmm7
  270227:	44 0f 28 dc          	movaps %xmm4,%xmm11
  27022b:	44 0f 58 da          	addps  %xmm2,%xmm11
  27022f:	44 0f 28 e7          	movaps %xmm7,%xmm12
  270233:	45 0f 58 e3          	addps  %xmm11,%xmm12
  270237:	0f 28 f3             	movaps %xmm3,%xmm6
  27023a:	41 0f 58 f2          	addps  %xmm10,%xmm6
  27023e:	44 0f 28 e8          	movaps %xmm0,%xmm13
  270242:	44 0f 58 ed          	addps  %xmm5,%xmm13
  270246:	44 0f 28 c6          	movaps %xmm6,%xmm8
  27024a:	45 0f 58 c5          	addps  %xmm13,%xmm8
  27024e:	45 0f 14 c4          	unpcklps %xmm12,%xmm8
  270252:	41 0f 5c c9          	subps  %xmm9,%xmm1
  270256:	0f 5c c5             	subps  %xmm5,%xmm0
  270259:	0f 28 e9             	movaps %xmm1,%xmm5
  27025c:	0f 58 e8             	addps  %xmm0,%xmm5
  27025f:	41 0f 5c da          	subps  %xmm10,%xmm3
  270263:	0f 5c d4             	subps  %xmm4,%xmm2
  270266:	0f 28 e2             	movaps %xmm2,%xmm4
  270269:	0f 58 e3             	addps  %xmm3,%xmm4
  27026c:	0f 14 e5             	unpcklps %xmm5,%xmm4
  27026f:	44 0f 16 c4          	movlhps %xmm4,%xmm8
  270273:	41 0f 5c fb          	subps  %xmm11,%xmm7
  270277:	41 0f 5c f5          	subps  %xmm13,%xmm6
  27027b:	0f 14 f7             	unpcklps %xmm7,%xmm6
  27027e:	0f 5c c8             	subps  %xmm0,%xmm1
  270281:	0f 5c da             	subps  %xmm2,%xmm3
  270284:	0f 14 d9             	unpcklps %xmm1,%xmm3
  270287:	0f 16 f3             	movlhps %xmm3,%xmm6
  27028a:	44 0f 11 06          	movups %xmm8,(%rsi)
  27028e:	0f 11 76 10          	movups %xmm6,0x10(%rsi)
  270292:	c3                   	ret
  270293:	cc                   	int3
  270294:	cc                   	int3
  270295:	cc                   	int3
  270296:	cc                   	int3
  270297:	cc                   	int3
  270298:	cc                   	int3
  270299:	cc                   	int3
  27029a:	cc                   	int3
  27029b:	cc                   	int3
  27029c:	cc                   	int3
  27029d:	cc                   	int3
  27029e:	cc                   	int3
  27029f:	cc                   	int3

00000000002702a0 <<fastfft::isa::x86::F32x4 as fastfft::engine::small::SmallVector>::one>:
  2702a0:	0f 10 17             	movups (%rdi),%xmm2
  2702a3:	0f 10 47 10          	movups 0x10(%rdi),%xmm0
  2702a7:	0f 10 4f 20          	movups 0x20(%rdi),%xmm1
  2702ab:	0f 10 5f 30          	movups 0x30(%rdi),%xmm3
  2702af:	0f 28 ea             	movaps %xmm2,%xmm5
  2702b2:	0f c6 e8 88          	shufps $0x88,%xmm0,%xmm5
  2702b6:	0f c6 d0 dd          	shufps $0xdd,%xmm0,%xmm2
  2702ba:	0f 28 c1             	movaps %xmm1,%xmm0
  2702bd:	0f c6 c3 88          	shufps $0x88,%xmm3,%xmm0
  2702c1:	0f c6 cb dd          	shufps $0xdd,%xmm3,%xmm1
  2702c5:	0f 28 da             	movaps %xmm2,%xmm3
  2702c8:	0f 58 d9             	addps  %xmm1,%xmm3
  2702cb:	0f 28 f5             	movaps %xmm5,%xmm6
  2702ce:	0f 58 f0             	addps  %xmm0,%xmm6
  2702d1:	0f 5c d1             	subps  %xmm1,%xmm2
  2702d4:	0f 5c e8             	subps  %xmm0,%xmm5
  2702d7:	0f 28 cb             	movaps %xmm3,%xmm1
  2702da:	0f 14 ca             	unpcklps %xmm2,%xmm1
  2702dd:	f3 44 0f 7e c9       	movq   %xmm1,%xmm9
  2702e2:	0f 57 c0             	xorps  %xmm0,%xmm0
  2702e5:	66 0f 15 c8          	unpckhpd %xmm0,%xmm1
  2702e9:	0f 15 da             	unpckhps %xmm2,%xmm3
  2702ec:	f3 0f 7e e3          	movq   %xmm3,%xmm4
  2702f0:	66 0f 7f 64 24 e8    	movdqa %xmm4,-0x18(%rsp)
  2702f6:	66 0f 15 d8          	unpckhpd %xmm0,%xmm3
  2702fa:	0f 28 fe             	movaps %xmm6,%xmm7
  2702fd:	0f 14 fd             	unpcklps %xmm5,%xmm7
  270300:	f3 0f 7e d7          	movq   %xmm7,%xmm2
  270304:	66 0f 15 f8          	unpckhpd %xmm0,%xmm7
  270308:	0f 15 f5             	unpckhps %xmm5,%xmm6
  27030b:	f3 44 0f 7e e6       	movq   %xmm6,%xmm12
  270310:	66 0f 15 f0          	unpckhpd %xmm0,%xmm6
  270314:	44 0f 10 7a 20       	movups 0x20(%rdx),%xmm15
  270319:	44 0f 10 6a 30       	movups 0x30(%rdx),%xmm13
  27031e:	44 0f 29 6c 24 d8    	movaps %xmm13,-0x28(%rsp)
  270324:	0f 10 42 40          	movups 0x40(%rdx),%xmm0
  270328:	0f 10 6a 50          	movups 0x50(%rdx),%xmm5
  27032c:	44 0f 10 52 60       	movups 0x60(%rdx),%xmm10
  270331:	44 0f 10 42 70       	movups 0x70(%rdx),%xmm8
  270336:	44 0f 28 f0          	movaps %xmm0,%xmm14
  27033a:	44 0f 59 f4          	mulps  %xmm4,%xmm14
  27033e:	44 0f 28 dd          	movaps %xmm5,%xmm11
  270342:	45 0f 59 dc          	mulps  %xmm12,%xmm11
  270346:	45 0f 5c f3          	subps  %xmm11,%xmm14
  27034a:	45 0f 28 dd          	movaps %xmm13,%xmm11
  27034e:	44 0f 59 df          	mulps  %xmm7,%xmm11
  270352:	41 0f 59 ff          	mulps  %xmm15,%xmm7
  270356:	44 0f 59 f9          	mulps  %xmm1,%xmm15
  27035a:	45 0f 5c fb          	subps  %xmm11,%xmm15
  27035e:	44 0f 28 db          	movaps %xmm3,%xmm11
  270362:	45 0f 59 da          	mulps  %xmm10,%xmm11
  270366:	0f 28 e6             	movaps %xmm6,%xmm4
  270369:	41 0f 59 e0          	mulps  %xmm8,%xmm4
  27036d:	45 0f 28 e8          	movaps %xmm8,%xmm13
  270371:	44 0f 5c dc          	subps  %xmm4,%xmm11
  270375:	41 0f 59 c4          	mulps  %xmm12,%xmm0
  270379:	0f 59 6c 24 e8       	mulps  -0x18(%rsp),%xmm5
  27037e:	0f 58 e8             	addps  %xmm0,%xmm5
  270381:	66 45 0f 6f c1       	movdqa %xmm9,%xmm8
  270386:	45 0f 58 c6          	addps  %xmm14,%xmm8
  27038a:	0f 59 4c 24 d8       	mulps  -0x28(%rsp),%xmm1
  27038f:	45 0f 28 e7          	movaps %xmm15,%xmm12
  270393:	45 0f 58 e3          	addps  %xmm11,%xmm12
  270397:	0f 58 cf             	addps  %xmm7,%xmm1
  27039a:	41 0f 28 c0          	movaps %xmm8,%xmm0
  27039e:	41 0f 58 c4          	addps  %xmm12,%xmm0
  2703a2:	41 0f 59 f2          	mulps  %xmm10,%xmm6
  2703a6:	66 0f 6f fa          	movdqa %xmm2,%xmm7
  2703aa:	0f 58 fd             	addps  %xmm5,%xmm7
  2703ad:	41 0f 59 dd          	mulps  %xmm13,%xmm3
  2703b1:	0f 58 de             	addps  %xmm6,%xmm3
  2703b4:	0f 28 e1             	movaps %xmm1,%xmm4
  2703b7:	0f 58 e3             	addps  %xmm3,%xmm4
  2703ba:	0f 28 f7             	movaps %xmm7,%xmm6
  2703bd:	0f 58 f4             	addps  %xmm4,%xmm6
  2703c0:	0f 14 f0             	unpcklps %xmm0,%xmm6
  2703c3:	45 0f 5c ce          	subps  %xmm14,%xmm9
  2703c7:	0f 5c cb             	subps  %xmm3,%xmm1
  2703ca:	0f 5c d5             	subps  %xmm5,%xmm2
  2703cd:	41 0f 28 c1          	movaps %xmm9,%xmm0
  2703d1:	0f 58 c1             	addps  %xmm1,%xmm0
  2703d4:	45 0f 5c df          	subps  %xmm15,%xmm11
  2703d8:	0f 28 da             	movaps %xmm2,%xmm3
  2703db:	41 0f 58 db          	addps  %xmm11,%xmm3
  2703df:	0f 14 d8             	unpcklps %xmm0,%xmm3
  2703e2:	45 0f 5c c4          	subps  %xmm12,%xmm8
  2703e6:	0f 5c fc             	subps  %xmm4,%xmm7
  2703e9:	41 0f 14 f8          	unpcklps %xmm8,%xmm7
  2703ed:	44 0f 5c c9          	subps  %xmm1,%xmm9
  2703f1:	41 0f 5c d3          	subps  %xmm11,%xmm2
  2703f5:	41 0f 14 d1          	unpcklps %xmm9,%xmm2
  2703f9:	0f 11 36             	movups %xmm6,(%rsi)
  2703fc:	0f 11 5e 10          	movups %xmm3,0x10(%rsi)
  270400:	0f 11 7e 20          	movups %xmm7,0x20(%rsi)
  270404:	0f 11 56 30          	movups %xmm2,0x30(%rsi)
  270408:	c3                   	ret
  270409:	cc                   	int3
  27040a:	cc                   	int3
  27040b:	cc                   	int3
  27040c:	cc                   	int3
  27040d:	cc                   	int3
  27040e:	cc                   	int3
  27040f:	cc                   	int3

0000000000270410 <<fastfft::isa::x86::F32x4 as fastfft::engine::small::SmallVector>::one>:
  270410:	0f 10 17             	movups (%rdi),%xmm2
  270413:	0f 10 47 10          	movups 0x10(%rdi),%xmm0
  270417:	0f 10 5f 20          	movups 0x20(%rdi),%xmm3
  27041b:	0f 10 4f 30          	movups 0x30(%rdi),%xmm1
  27041f:	0f 28 f2             	movaps %xmm2,%xmm6
  270422:	0f c6 f0 88          	shufps $0x88,%xmm0,%xmm6
  270426:	0f c6 d0 dd          	shufps $0xdd,%xmm0,%xmm2
  27042a:	0f 28 c3             	movaps %xmm3,%xmm0
  27042d:	0f c6 c1 88          	shufps $0x88,%xmm1,%xmm0
  270431:	0f c6 d9 dd          	shufps $0xdd,%xmm1,%xmm3
  270435:	44 0f 10 4f 40       	movups 0x40(%rdi),%xmm9
  27043a:	0f 10 4f 50          	movups 0x50(%rdi),%xmm1
  27043e:	45 0f 28 d1          	movaps %xmm9,%xmm10
  270442:	44 0f c6 d1 88       	shufps $0x88,%xmm1,%xmm10
  270447:	44 0f c6 c9 dd       	shufps $0xdd,%xmm1,%xmm9
  27044c:	0f 10 6f 60          	movups 0x60(%rdi),%xmm5
  270450:	0f 10 4f 70          	movups 0x70(%rdi),%xmm1
  270454:	44 0f 28 dd          	movaps %xmm5,%xmm11
  270458:	44 0f c6 d9 88       	shufps $0x88,%xmm1,%xmm11
  27045d:	0f c6 e9 dd          	shufps $0xdd,%xmm1,%xmm5
  270461:	0f 28 ca             	movaps %xmm2,%xmm1
  270464:	41 0f 58 c9          	addps  %xmm9,%xmm1
  270468:	44 0f 28 e3          	movaps %xmm3,%xmm12
  27046c:	44 0f 58 e5          	addps  %xmm5,%xmm12
  270470:	0f 28 f9             	movaps %xmm1,%xmm7
  270473:	41 0f 58 fc          	addps  %xmm12,%xmm7
  270477:	0f 28 e6             	movaps %xmm6,%xmm4
  27047a:	41 0f 58 e2          	addps  %xmm10,%xmm4
  27047e:	44 0f 28 e8          	movaps %xmm0,%xmm13
  270482:	45 0f 58 eb          	addps  %xmm11,%xmm13
  270486:	44 0f 28 c4          	movaps %xmm4,%xmm8
  27048a:	45 0f 58 c5          	addps  %xmm13,%xmm8
  27048e:	41 0f 5c d1          	subps  %xmm9,%xmm2
  270492:	41 0f 5c c3          	subps  %xmm11,%xmm0
  270496:	44 0f 28 da          	movaps %xmm2,%xmm11
  27049a:	44 0f 58 d8          	addps  %xmm0,%xmm11
  27049e:	41 0f 5c f2          	subps  %xmm10,%xmm6
  2704a2:	0f 5c eb             	subps  %xmm3,%xmm5
  2704a5:	44 0f 28 ce          	movaps %xmm6,%xmm9
  2704a9:	44 0f 58 cd          	addps  %xmm5,%xmm9
  2704ad:	41 0f 5c cc          	subps  %xmm12,%xmm1
  2704b1:	41 0f 5c e5          	subps  %xmm13,%xmm4
  2704b5:	0f 5c d0             	subps  %xmm0,%xmm2
  2704b8:	0f 5c f5             	subps  %xmm5,%xmm6
  2704bb:	0f 28 ef             	movaps %xmm7,%xmm5
  2704be:	41 0f 14 eb          	unpcklps %xmm11,%xmm5
  2704c2:	0f 28 d9             	movaps %xmm1,%xmm3
  2704c5:	0f 14 da             	unpcklps %xmm2,%xmm3
  2704c8:	0f 28 c5             	movaps %xmm5,%xmm0
  2704cb:	0f 16 c3             	movlhps %xmm3,%xmm0
  2704ce:	0f 12 dd             	movhlps %xmm5,%xmm3
  2704d1:	41 0f 15 fb          	unpckhps %xmm11,%xmm7
  2704d5:	0f 15 ca             	unpckhps %xmm2,%xmm1
  2704d8:	0f 28 ef             	movaps %xmm7,%xmm5
  2704db:	0f 16 e9             	movlhps %xmm1,%xmm5
  2704de:	0f 12 cf             	movhlps %xmm7,%xmm1
  2704e1:	45 0f 28 d0          	movaps %xmm8,%xmm10
  2704e5:	45 0f 14 d1          	unpcklps %xmm9,%xmm10
  2704e9:	0f 28 fc             	movaps %xmm4,%xmm7
  2704ec:	0f 14 fe             	unpcklps %xmm6,%xmm7
  2704ef:	41 0f 28 d2          	movaps %xmm10,%xmm2
  2704f3:	0f 16 d7             	movlhps %xmm7,%xmm2
  2704f6:	41 0f 12 fa          	movhlps %xmm10,%xmm7
  2704fa:	45 0f 15 c1          	unpckhps %xmm9,%xmm8
  2704fe:	0f 15 e6             	unpckhps %xmm6,%xmm4
  270501:	41 0f 28 f0          	movaps %xmm8,%xmm6
  270505:	0f 16 f4             	movlhps %xmm4,%xmm6
  270508:	41 0f 12 e0          	movhlps %xmm8,%xmm4
  27050c:	44 0f 10 5a 20       	movups 0x20(%rdx),%xmm11
  270511:	44 0f 10 4a 30       	movups 0x30(%rdx),%xmm9
  270516:	44 0f 10 72 40       	movups 0x40(%rdx),%xmm14
  27051b:	44 0f 10 62 50       	movups 0x50(%rdx),%xmm12
  270520:	44 0f 10 42 60       	movups 0x60(%rdx),%xmm8
  270525:	44 0f 10 52 70       	movups 0x70(%rdx),%xmm10
  27052a:	45 0f 28 ec          	movaps %xmm12,%xmm13
  27052e:	44 0f 59 ee          	mulps  %xmm6,%xmm13
  270532:	41 0f 59 f6          	mulps  %xmm14,%xmm6
  270536:	44 0f 59 f5          	mulps  %xmm5,%xmm14
  27053a:	45 0f 5c f5          	subps  %xmm13,%xmm14
  27053e:	45 0f 28 f9          	movaps %xmm9,%xmm15
  270542:	44 0f 59 ff          	mulps  %xmm7,%xmm15
  270546:	41 0f 59 fb          	mulps  %xmm11,%xmm7
  27054a:	45 0f 28 eb          	movaps %xmm11,%xmm13
  27054e:	44 0f 59 eb          	mulps  %xmm3,%xmm13
  270552:	45 0f 5c ef          	subps  %xmm15,%xmm13
  270556:	45 0f 28 d8          	movaps %xmm8,%xmm11
  27055a:	44 0f 59 d9          	mulps  %xmm1,%xmm11
  27055e:	44 0f 59 c4          	mulps  %xmm4,%xmm8
  270562:	41 0f 59 e2          	mulps  %xmm10,%xmm4
  270566:	44 0f 5c dc          	subps  %xmm4,%xmm11
  27056a:	41 0f 59 ec          	mulps  %xmm12,%xmm5
  27056e:	0f 58 ee             	addps  %xmm6,%xmm5
  270571:	41 0f 59 d9          	mulps  %xmm9,%xmm3
  270575:	0f 58 df             	addps  %xmm7,%xmm3
  270578:	41 0f 59 ca          	mulps  %xmm10,%xmm1
  27057c:	41 0f 58 c8          	addps  %xmm8,%xmm1
  270580:	0f 28 e0             	movaps %xmm0,%xmm4
  270583:	41 0f 58 e6          	addps  %xmm14,%xmm4
  270587:	41 0f 5c c6          	subps  %xmm14,%xmm0
  27058b:	0f 28 f3             	movaps %xmm3,%xmm6
  27058e:	0f 58 f1             	addps  %xmm1,%xmm6
  270591:	0f 5c d9             	subps  %xmm1,%xmm3
  270594:	0f 28 ca             	movaps %xmm2,%xmm1
  270597:	0f 58 cd             	addps  %xmm5,%xmm1
  27059a:	0f 5c d5             	subps  %xmm5,%xmm2
  27059d:	41 0f 28 ed          	movaps %xmm13,%xmm5
  2705a1:	41 0f 58 eb          	addps  %xmm11,%xmm5
  2705a5:	45 0f 5c dd          	subps  %xmm13,%xmm11
  2705a9:	0f 28 fc             	movaps %xmm4,%xmm7
  2705ac:	0f 58 fd             	addps  %xmm5,%xmm7
  2705af:	0f 5c e5             	subps  %xmm5,%xmm4
  2705b2:	0f 28 e9             	movaps %xmm1,%xmm5
  2705b5:	0f 58 ee             	addps  %xmm6,%xmm5
  2705b8:	0f 5c ce             	subps  %xmm6,%xmm1
  2705bb:	0f 28 f0             	movaps %xmm0,%xmm6
  2705be:	0f 58 f3             	addps  %xmm3,%xmm6
  2705c1:	0f 5c c3             	subps  %xmm3,%xmm0
  2705c4:	0f 28 da             	movaps %xmm2,%xmm3
  2705c7:	41 0f 58 db          	addps  %xmm11,%xmm3
  2705cb:	41 0f 5c d3          	subps  %xmm11,%xmm2
  2705cf:	44 0f 28 c5          	movaps %xmm5,%xmm8
  2705d3:	44 0f 14 c7          	unpcklps %xmm7,%xmm8
  2705d7:	0f 15 ef             	unpckhps %xmm7,%xmm5
  2705da:	44 0f 11 06          	movups %xmm8,(%rsi)
  2705de:	0f 11 6e 10          	movups %xmm5,0x10(%rsi)
  2705e2:	0f 28 eb             	movaps %xmm3,%xmm5
  2705e5:	0f 14 ee             	unpcklps %xmm6,%xmm5
  2705e8:	0f 15 de             	unpckhps %xmm6,%xmm3
  2705eb:	0f 11 6e 20          	movups %xmm5,0x20(%rsi)
  2705ef:	0f 11 5e 30          	movups %xmm3,0x30(%rsi)
  2705f3:	0f 28 d9             	movaps %xmm1,%xmm3
  2705f6:	0f 14 dc             	unpcklps %xmm4,%xmm3
  2705f9:	0f 15 cc             	unpckhps %xmm4,%xmm1
  2705fc:	0f 11 5e 40          	movups %xmm3,0x40(%rsi)
  270600:	0f 11 4e 50          	movups %xmm1,0x50(%rsi)
  270604:	0f 28 ca             	movaps %xmm2,%xmm1
  270607:	0f 14 c8             	unpcklps %xmm0,%xmm1
  27060a:	0f 15 d0             	unpckhps %xmm0,%xmm2
  27060d:	0f 11 4e 60          	movups %xmm1,0x60(%rsi)
  270611:	0f 11 56 70          	movups %xmm2,0x70(%rsi)
  270615:	c3                   	ret
  270616:	cc                   	int3
  270617:	cc                   	int3
  270618:	cc                   	int3
  270619:	cc                   	int3
  27061a:	cc                   	int3
  27061b:	cc                   	int3
  27061c:	cc                   	int3
  27061d:	cc                   	int3
  27061e:	cc                   	int3
  27061f:	cc                   	int3

0000000000270620 <<fastfft::isa::x86::F32x4 as fastfft::engine::small::SmallVector>::one>:
  270620:	0f 10 0f             	movups (%rdi),%xmm1
  270623:	0f 10 77 10          	movups 0x10(%rdi),%xmm6
  270627:	0f 57 ed             	xorps  %xmm5,%xmm5
  27062a:	0f 28 e1             	movaps %xmm1,%xmm4
  27062d:	0f c6 e5 d8          	shufps $0xd8,%xmm5,%xmm4
  270631:	0f 57 c0             	xorps  %xmm0,%xmm0
  270634:	f3 0f 10 c1          	movss  %xmm1,%xmm0
  270638:	0f c6 e5 4d          	shufps $0x4d,%xmm5,%xmm4
  27063c:	0f 28 d6             	movaps %xmm6,%xmm2
  27063f:	0f c6 d5 d8          	shufps $0xd8,%xmm5,%xmm2
  270643:	45 0f 57 c0          	xorps  %xmm8,%xmm8
  270647:	f3 44 0f 10 c6       	movss  %xmm6,%xmm8
  27064c:	0f c6 d5 4d          	shufps $0x4d,%xmm5,%xmm2
  270650:	0f c6 cd 5d          	shufps $0x5d,%xmm5,%xmm1
  270654:	0f 28 d9             	movaps %xmm1,%xmm3
  270657:	0f c6 dd 48          	shufps $0x48,%xmm5,%xmm3
  27065b:	0f c6 cd 4d          	shufps $0x4d,%xmm5,%xmm1
  27065f:	0f c6 f5 5d          	shufps $0x5d,%xmm5,%xmm6
  270663:	44 0f 28 ce          	movaps %xmm6,%xmm9
  270667:	44 0f c6 cd 48       	shufps $0x48,%xmm5,%xmm9
  27066c:	0f c6 f5 4d          	shufps $0x4d,%xmm5,%xmm6
  270670:	0f 28 e8             	movaps %xmm0,%xmm5
  270673:	41 0f 58 e8          	addps  %xmm8,%xmm5
  270677:	44 0f 28 d4          	movaps %xmm4,%xmm10
  27067b:	44 0f 58 d2          	addps  %xmm2,%xmm10
  27067f:	0f 28 fd             	movaps %xmm5,%xmm7
  270682:	41 0f 58 fa          	addps  %xmm10,%xmm7
  270686:	44 0f 28 db          	movaps %xmm3,%xmm11
  27068a:	45 0f 58 d9          	addps  %xmm9,%xmm11
  27068e:	44 0f 28 e1          	movaps %xmm1,%xmm12
  270692:	44 0f 58 e6          	addps  %xmm6,%xmm12
  270696:	45 0f 28 eb          	movaps %xmm11,%xmm13
  27069a:	45 0f 58 ec          	addps  %xmm12,%xmm13
  27069e:	41 0f 14 fd          	unpcklps %xmm13,%xmm7
  2706a2:	41 0f 5c c0          	subps  %xmm8,%xmm0
  2706a6:	0f 5c ce             	subps  %xmm6,%xmm1
  2706a9:	0f 28 f0             	movaps %xmm0,%xmm6
  2706ac:	0f 58 f1             	addps  %xmm1,%xmm6
  2706af:	41 0f 5c d9          	subps  %xmm9,%xmm3
  2706b3:	0f 5c d4             	subps  %xmm4,%xmm2
  2706b6:	0f 28 e2             	movaps %xmm2,%xmm4
  2706b9:	0f 58 e3             	addps  %xmm3,%xmm4
  2706bc:	0f 14 f4             	unpcklps %xmm4,%xmm6
  2706bf:	0f 16 fe             	movlhps %xmm6,%xmm7
  2706c2:	41 0f 5c ea          	subps  %xmm10,%xmm5
  2706c6:	45 0f 5c dc          	subps  %xmm12,%xmm11
  2706ca:	41 0f 14 eb          	unpcklps %xmm11,%xmm5
  2706ce:	0f 5c c1             	subps  %xmm1,%xmm0
  2706d1:	0f 5c da             	subps  %xmm2,%xmm3
  2706d4:	0f 14 c3             	unpcklps %xmm3,%xmm0
  2706d7:	0f 16 e8             	movlhps %xmm0,%xmm5
  2706da:	0f 11 3e             	movups %xmm7,(%rsi)
  2706dd:	0f 11 6e 10          	movups %xmm5,0x10(%rsi)
  2706e1:	c3                   	ret
  2706e2:	cc                   	int3
  2706e3:	cc                   	int3
  2706e4:	cc                   	int3
  2706e5:	cc                   	int3
  2706e6:	cc                   	int3
  2706e7:	cc                   	int3
  2706e8:	cc                   	int3
  2706e9:	cc                   	int3
  2706ea:	cc                   	int3
  2706eb:	cc                   	int3
  2706ec:	cc                   	int3
  2706ed:	cc                   	int3
  2706ee:	cc                   	int3
  2706ef:	cc                   	int3

00000000002706f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::small::SmallVector>::one>:
  2706f0:	0f 10 07             	movups (%rdi),%xmm0
  2706f3:	0f 10 5f 10          	movups 0x10(%rdi),%xmm3
  2706f7:	0f 10 57 20          	movups 0x20(%rdi),%xmm2
  2706fb:	0f 10 6f 30          	movups 0x30(%rdi),%xmm5
  2706ff:	0f 28 c8             	movaps %xmm0,%xmm1
  270702:	0f c6 cb 88          	shufps $0x88,%xmm3,%xmm1
  270706:	0f c6 c3 dd          	shufps $0xdd,%xmm3,%xmm0
  27070a:	0f 28 e2             	movaps %xmm2,%xmm4
  27070d:	0f c6 e5 88          	shufps $0x88,%xmm5,%xmm4
  270711:	0f c6 d5 dd          	shufps $0xdd,%xmm5,%xmm2
  270715:	0f 10 6f 40          	movups 0x40(%rdi),%xmm5
  270719:	0f 10 5f 50          	movups 0x50(%rdi),%xmm3
  27071d:	0f 28 f5             	movaps %xmm5,%xmm6
  270720:	0f c6 f3 88          	shufps $0x88,%xmm3,%xmm6
  270724:	0f c6 eb dd          	shufps $0xdd,%xmm3,%xmm5
  270728:	0f 28 fa             	movaps %xmm2,%xmm7
  27072b:	0f 58 fd             	addps  %xmm5,%xmm7
  27072e:	0f 28 d8             	movaps %xmm0,%xmm3
  270731:	0f 58 df             	addps  %xmm7,%xmm3
  270734:	44 0f 28 cc          	movaps %xmm4,%xmm9
  270738:	44 0f 58 ce          	addps  %xmm6,%xmm9
  27073c:	44 0f 28 c1          	movaps %xmm1,%xmm8
  270740:	45 0f 58 c1          	addps  %xmm9,%xmm8
  270744:	44 0f 28 15 c4 52 de 	movaps -0x21ad3c(%rip),%xmm10        # 55a10 <anon.8aa0f5226d74ca133e21e4badc128bdd.59.llvm.7551729311310402649+0x2310>
  27074b:	ff 
  27074c:	41 0f 59 fa          	mulps  %xmm10,%xmm7
  270750:	0f 5c c7             	subps  %xmm7,%xmm0
  270753:	0f 5c e6             	subps  %xmm6,%xmm4
  270756:	0f 28 35 53 31 de ff 	movaps -0x21cead(%rip),%xmm6        # 538b0 <anon.8aa0f5226d74ca133e21e4badc128bdd.59.llvm.7551729311310402649+0x1b0>
  27075d:	0f 59 e6             	mulps  %xmm6,%xmm4
  270760:	0f 28 fc             	movaps %xmm4,%xmm7
  270763:	0f 58 f8             	addps  %xmm0,%xmm7
  270766:	45 0f 59 ca          	mulps  %xmm10,%xmm9
  27076a:	41 0f 5c c9          	subps  %xmm9,%xmm1
  27076e:	0f 5c d5             	subps  %xmm5,%xmm2
  270771:	0f 59 d6             	mulps  %xmm6,%xmm2
  270774:	44 0f 28 c9          	movaps %xmm1,%xmm9
  270778:	44 0f 5c ca          	subps  %xmm2,%xmm9
  27077c:	0f 5c c4             	subps  %xmm4,%xmm0
  27077f:	0f 58 d1             	addps  %xmm1,%xmm2
  270782:	0f 28 eb             	movaps %xmm3,%xmm5
  270785:	0f 14 ef             	unpcklps %xmm7,%xmm5
  270788:	45 0f 57 d2          	xorps  %xmm10,%xmm10
  27078c:	0f 28 e0             	movaps %xmm0,%xmm4
  27078f:	41 0f 14 e2          	unpcklps %xmm10,%xmm4
  270793:	0f 28 cd             	movaps %xmm5,%xmm1
  270796:	0f 16 cc             	movlhps %xmm4,%xmm1
  270799:	0f 12 e5             	movhlps %xmm5,%xmm4
  27079c:	0f 15 df             	unpckhps %xmm7,%xmm3
  27079f:	41 0f 15 c2          	unpckhps %xmm10,%xmm0
  2707a3:	0f 28 eb             	movaps %xmm3,%xmm5
  2707a6:	0f 16 e8             	movlhps %xmm0,%xmm5
  2707a9:	0f 12 c3             	movhlps %xmm3,%xmm0
  2707ac:	41 0f 28 f8          	movaps %xmm8,%xmm7
  2707b0:	41 0f 14 f9          	unpcklps %xmm9,%xmm7
  2707b4:	0f 28 f2             	movaps %xmm2,%xmm6
  2707b7:	41 0f 14 f2          	unpcklps %xmm10,%xmm6
  2707bb:	0f 28 df             	movaps %xmm7,%xmm3
  2707be:	0f 16 de             	movlhps %xmm6,%xmm3
  2707c1:	0f 12 f7             	movhlps %xmm7,%xmm6
  2707c4:	45 0f 15 c1          	unpckhps %xmm9,%xmm8
  2707c8:	41 0f 15 d2          	unpckhps %xmm10,%xmm2
  2707cc:	41 0f 28 f8          	movaps %xmm8,%xmm7
  2707d0:	0f 16 fa             	movlhps %xmm2,%xmm7
  2707d3:	41 0f 12 d0          	movhlps %xmm8,%xmm2
  2707d7:	44 0f 10 62 20       	movups 0x20(%rdx),%xmm12
  2707dc:	44 0f 10 42 30       	movups 0x30(%rdx),%xmm8
  2707e1:	44 0f 10 6a 40       	movups 0x40(%rdx),%xmm13
  2707e6:	44 0f 10 52 50       	movups 0x50(%rdx),%xmm10
  2707eb:	44 0f 10 5a 60       	movups 0x60(%rdx),%xmm11
  2707f0:	44 0f 10 4a 70       	movups 0x70(%rdx),%xmm9
  2707f5:	45 0f 28 f2          	movaps %xmm10,%xmm14
  2707f9:	44 0f 59 f7          	mulps  %xmm7,%xmm14
  2707fd:	41 0f 59 fd          	mulps  %xmm13,%xmm7
  270801:	44 0f 59 ed          	mulps  %xmm5,%xmm13
  270805:	45 0f 5c ee          	subps  %xmm14,%xmm13
  270809:	45 0f 28 f0          	movaps %xmm8,%xmm14
  27080d:	44 0f 59 f6          	mulps  %xmm6,%xmm14
  270811:	41 0f 59 f4          	mulps  %xmm12,%xmm6
  270815:	44 0f 59 e4          	mulps  %xmm4,%xmm12
  270819:	45 0f 5c e6          	subps  %xmm14,%xmm12
  27081d:	45 0f 28 f1          	movaps %xmm9,%xmm14
  270821:	44 0f 59 f2          	mulps  %xmm2,%xmm14
  270825:	41 0f 59 d3          	mulps  %xmm11,%xmm2
  270829:	44 0f 59 d8          	mulps  %xmm0,%xmm11
  27082d:	45 0f 5c de          	subps  %xmm14,%xmm11
  270831:	41 0f 59 ea          	mulps  %xmm10,%xmm5
  270835:	0f 58 ef             	addps  %xmm7,%xmm5
  270838:	41 0f 59 e0          	mulps  %xmm8,%xmm4
  27083c:	0f 58 e6             	addps  %xmm6,%xmm4
  27083f:	41 0f 59 c1          	mulps  %xmm9,%xmm0
  270843:	0f 58 c2             	addps  %xmm2,%xmm0
  270846:	0f 28 d1             	movaps %xmm1,%xmm2
  270849:	41 0f 58 d5          	addps  %xmm13,%xmm2
  27084d:	41 0f 5c cd          	subps  %xmm13,%xmm1
  270851:	0f 28 f4             	movaps %xmm4,%xmm6
  270854:	0f 58 f0             	addps  %xmm0,%xmm6
  270857:	0f 5c e0             	subps  %xmm0,%xmm4
  27085a:	0f 28 c3             	movaps %xmm3,%xmm0
  27085d:	0f 58 c5             	addps  %xmm5,%xmm0
  270860:	0f 5c dd             	subps  %xmm5,%xmm3
  270863:	41 0f 28 ec          	movaps %xmm12,%xmm5
  270867:	41 0f 58 eb          	addps  %xmm11,%xmm5
  27086b:	45 0f 5c dc          	subps  %xmm12,%xmm11
  27086f:	0f 28 fa             	movaps %xmm2,%xmm7
  270872:	0f 58 fd             	addps  %xmm5,%xmm7
  270875:	0f 5c d5             	subps  %xmm5,%xmm2
  270878:	0f 28 e8             	movaps %xmm0,%xmm5
  27087b:	0f 58 ee             	addps  %xmm6,%xmm5
  27087e:	0f 5c c6             	subps  %xmm6,%xmm0
  270881:	0f 28 f1             	movaps %xmm1,%xmm6
  270884:	0f 58 f4             	addps  %xmm4,%xmm6
  270887:	0f 5c cc             	subps  %xmm4,%xmm1
  27088a:	0f 28 e3             	movaps %xmm3,%xmm4
  27088d:	41 0f 58 e3          	addps  %xmm11,%xmm4
  270891:	41 0f 5c db          	subps  %xmm11,%xmm3
  270895:	44 0f 28 c5          	movaps %xmm5,%xmm8
  270899:	44 0f 14 c7          	unpcklps %xmm7,%xmm8
  27089d:	44 0f 11 06          	movups %xmm8,(%rsi)
  2708a1:	0f 15 ef             	unpckhps %xmm7,%xmm5
  2708a4:	0f 13 6e 10          	movlps %xmm5,0x10(%rsi)
  2708a8:	0f 28 ec             	movaps %xmm4,%xmm5
  2708ab:	0f 14 ee             	unpcklps %xmm6,%xmm5
  2708ae:	0f 11 6e 18          	movups %xmm5,0x18(%rsi)
  2708b2:	0f 15 e6             	unpckhps %xmm6,%xmm4
  2708b5:	0f 13 66 28          	movlps %xmm4,0x28(%rsi)
  2708b9:	0f 28 e0             	movaps %xmm0,%xmm4
  2708bc:	0f 14 e2             	unpcklps %xmm2,%xmm4
  2708bf:	0f 11 66 30          	movups %xmm4,0x30(%rsi)
  2708c3:	0f 15 c2             	unpckhps %xmm2,%xmm0
  2708c6:	0f 13 46 40          	movlps %xmm0,0x40(%rsi)
  2708ca:	0f 28 c3             	movaps %xmm3,%xmm0
  2708cd:	0f 14 c1             	unpcklps %xmm1,%xmm0
  2708d0:	0f 11 46 48          	movups %xmm0,0x48(%rsi)
  2708d4:	0f 15 d9             	unpckhps %xmm1,%xmm3
  2708d7:	0f 13 5e 58          	movlps %xmm3,0x58(%rsi)
  2708db:	c3                   	ret
  2708dc:	cc                   	int3
  2708dd:	cc                   	int3
  2708de:	cc                   	int3
  2708df:	cc                   	int3

00000000002708e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::small::SmallVector>::one>:
  2708e0:	0f 10 37             	movups (%rdi),%xmm6
  2708e3:	0f 10 4f 10          	movups 0x10(%rdi),%xmm1
  2708e7:	0f 10 47 20          	movups 0x20(%rdi),%xmm0
  2708eb:	0f 10 67 30          	movups 0x30(%rdi),%xmm4
  2708ef:	0f 28 d6             	movaps %xmm6,%xmm2
  2708f2:	0f c6 d1 88          	shufps $0x88,%xmm1,%xmm2
  2708f6:	0f c6 f1 dd          	shufps $0xdd,%xmm1,%xmm6
  2708fa:	0f 28 d8             	movaps %xmm0,%xmm3
  2708fd:	0f c6 dc 88          	shufps $0x88,%xmm4,%xmm3
  270901:	0f c6 c4 dd          	shufps $0xdd,%xmm4,%xmm0
  270905:	44 0f 10 4f 40       	movups 0x40(%rdi),%xmm9
  27090a:	0f 10 4f 50          	movups 0x50(%rdi),%xmm1
  27090e:	45 0f 28 d1          	movaps %xmm9,%xmm10
  270912:	44 0f c6 d1 88       	shufps $0x88,%xmm1,%xmm10
  270917:	44 0f c6 c9 dd       	shufps $0xdd,%xmm1,%xmm9
  27091c:	44 0f 10 5f 60       	movups 0x60(%rdi),%xmm11
  270921:	0f 10 4f 70          	movups 0x70(%rdi),%xmm1
  270925:	41 0f 28 eb          	movaps %xmm11,%xmm5
  270929:	0f c6 e9 88          	shufps $0x88,%xmm1,%xmm5
  27092d:	44 0f c6 d9 dd       	shufps $0xdd,%xmm1,%xmm11
  270932:	0f 28 ca             	movaps %xmm2,%xmm1
  270935:	41 0f 58 ca          	addps  %xmm10,%xmm1
  270939:	44 0f 28 e3          	movaps %xmm3,%xmm12
  27093d:	44 0f 58 e5          	addps  %xmm5,%xmm12
  270941:	0f 28 f9             	movaps %xmm1,%xmm7
  270944:	41 0f 58 fc          	addps  %xmm12,%xmm7
  270948:	0f 28 e6             	movaps %xmm6,%xmm4
  27094b:	41 0f 58 e1          	addps  %xmm9,%xmm4
  27094f:	44 0f 28 e8          	movaps %xmm0,%xmm13
  270953:	45 0f 58 eb          	addps  %xmm11,%xmm13
  270957:	44 0f 28 c4          	movaps %xmm4,%xmm8
  27095b:	45 0f 58 c5          	addps  %xmm13,%xmm8
  27095f:	41 0f 5c d2          	subps  %xmm10,%xmm2
  270963:	41 0f 5c c3          	subps  %xmm11,%xmm0
  270967:	44 0f 28 d2          	movaps %xmm2,%xmm10
  27096b:	44 0f 58 d0          	addps  %xmm0,%xmm10
  27096f:	41 0f 5c f1          	subps  %xmm9,%xmm6
  270973:	0f 5c eb             	subps  %xmm3,%xmm5
  270976:	44 0f 28 ce          	movaps %xmm6,%xmm9
  27097a:	44 0f 58 cd          	addps  %xmm5,%xmm9
  27097e:	41 0f 5c cc          	subps  %xmm12,%xmm1
  270982:	41 0f 5c e5          	subps  %xmm13,%xmm4
  270986:	0f 5c d0             	subps  %xmm0,%xmm2
  270989:	0f 5c f5             	subps  %xmm5,%xmm6
  27098c:	0f 28 ef             	movaps %xmm7,%xmm5
  27098f:	41 0f 14 ea          	unpcklps %xmm10,%xmm5
  270993:	0f 28 d9             	movaps %xmm1,%xmm3
  270996:	0f 14 da             	unpcklps %xmm2,%xmm3
  270999:	0f 28 c5             	movaps %xmm5,%xmm0
  27099c:	0f 16 c3             	movlhps %xmm3,%xmm0
  27099f:	0f 12 dd             	movhlps %xmm5,%xmm3
  2709a2:	41 0f 15 fa          	unpckhps %xmm10,%xmm7
  2709a6:	0f 15 ca             	unpckhps %xmm2,%xmm1
  2709a9:	0f 28 ef             	movaps %xmm7,%xmm5
  2709ac:	0f 16 e9             	movlhps %xmm1,%xmm5
  2709af:	0f 12 cf             	movhlps %xmm7,%xmm1
  2709b2:	45 0f 28 d0          	movaps %xmm8,%xmm10
  2709b6:	45 0f 14 d1          	unpcklps %xmm9,%xmm10
  2709ba:	0f 28 fc             	movaps %xmm4,%xmm7
  2709bd:	0f 14 fe             	unpcklps %xmm6,%xmm7
  2709c0:	41 0f 28 d2          	movaps %xmm10,%xmm2
  2709c4:	0f 16 d7             	movlhps %xmm7,%xmm2
  2709c7:	41 0f 12 fa          	movhlps %xmm10,%xmm7
  2709cb:	45 0f 15 c1          	unpckhps %xmm9,%xmm8
  2709cf:	0f 15 e6             	unpckhps %xmm6,%xmm4
  2709d2:	41 0f 28 f0          	movaps %xmm8,%xmm6
  2709d6:	0f 16 f4             	movlhps %xmm4,%xmm6
  2709d9:	41 0f 12 e0          	movhlps %xmm8,%xmm4
  2709dd:	44 0f 10 5a 20       	movups 0x20(%rdx),%xmm11
  2709e2:	44 0f 10 4a 30       	movups 0x30(%rdx),%xmm9
  2709e7:	44 0f 10 72 40       	movups 0x40(%rdx),%xmm14
  2709ec:	44 0f 10 62 50       	movups 0x50(%rdx),%xmm12
  2709f1:	44 0f 10 42 60       	movups 0x60(%rdx),%xmm8
  2709f6:	44 0f 10 52 70       	movups 0x70(%rdx),%xmm10
  2709fb:	45 0f 28 ec          	movaps %xmm12,%xmm13
  2709ff:	44 0f 59 ee          	mulps  %xmm6,%xmm13
  270a03:	41 0f 59 f6          	mulps  %xmm14,%xmm6
  270a07:	44 0f 59 f5          	mulps  %xmm5,%xmm14
  270a0b:	45 0f 5c f5          	subps  %xmm13,%xmm14
  270a0f:	45 0f 28 f9          	movaps %xmm9,%xmm15
  270a13:	44 0f 59 ff          	mulps  %xmm7,%xmm15
  270a17:	41 0f 59 fb          	mulps  %xmm11,%xmm7
  270a1b:	45 0f 28 eb          	movaps %xmm11,%xmm13
  270a1f:	44 0f 59 eb          	mulps  %xmm3,%xmm13
  270a23:	45 0f 5c ef          	subps  %xmm15,%xmm13
  270a27:	45 0f 28 d8          	movaps %xmm8,%xmm11
  270a2b:	44 0f 59 d9          	mulps  %xmm1,%xmm11
  270a2f:	44 0f 59 c4          	mulps  %xmm4,%xmm8
  270a33:	41 0f 59 e2          	mulps  %xmm10,%xmm4
  270a37:	44 0f 5c dc          	subps  %xmm4,%xmm11
  270a3b:	41 0f 59 ec          	mulps  %xmm12,%xmm5
  270a3f:	0f 58 ee             	addps  %xmm6,%xmm5
  270a42:	41 0f 59 d9          	mulps  %xmm9,%xmm3
  270a46:	0f 58 df             	addps  %xmm7,%xmm3
  270a49:	41 0f 59 ca          	mulps  %xmm10,%xmm1
  270a4d:	41 0f 58 c8          	addps  %xmm8,%xmm1
  270a51:	0f 28 e0             	movaps %xmm0,%xmm4
  270a54:	41 0f 58 e6          	addps  %xmm14,%xmm4
  270a58:	41 0f 5c c6          	subps  %xmm14,%xmm0
  270a5c:	0f 28 f3             	movaps %xmm3,%xmm6
  270a5f:	0f 58 f1             	addps  %xmm1,%xmm6
  270a62:	0f 5c d9             	subps  %xmm1,%xmm3
  270a65:	0f 28 ca             	movaps %xmm2,%xmm1
  270a68:	0f 58 cd             	addps  %xmm5,%xmm1
  270a6b:	0f 5c d5             	subps  %xmm5,%xmm2
  270a6e:	41 0f 28 ed          	movaps %xmm13,%xmm5
  270a72:	41 0f 58 eb          	addps  %xmm11,%xmm5
  270a76:	45 0f 5c dd          	subps  %xmm13,%xmm11
  270a7a:	0f 28 fc             	movaps %xmm4,%xmm7
  270a7d:	0f 58 fd             	addps  %xmm5,%xmm7
  270a80:	0f 5c e5             	subps  %xmm5,%xmm4
  270a83:	0f 28 e9             	movaps %xmm1,%xmm5
  270a86:	0f 58 ee             	addps  %xmm6,%xmm5
  270a89:	0f 5c ce             	subps  %xmm6,%xmm1
  270a8c:	0f 28 f0             	movaps %xmm0,%xmm6
  270a8f:	0f 58 f3             	addps  %xmm3,%xmm6
  270a92:	0f 5c c3             	subps  %xmm3,%xmm0
  270a95:	0f 28 da             	movaps %xmm2,%xmm3
  270a98:	41 0f 58 db          	addps  %xmm11,%xmm3
  270a9c:	41 0f 5c d3          	subps  %xmm11,%xmm2
  270aa0:	44 0f 28 c7          	movaps %xmm7,%xmm8
  270aa4:	44 0f 14 c5          	unpcklps %xmm5,%xmm8
  270aa8:	0f 15 fd             	unpckhps %xmm5,%xmm7
  270aab:	44 0f 11 06          	movups %xmm8,(%rsi)
  270aaf:	0f 11 7e 10          	movups %xmm7,0x10(%rsi)
  270ab3:	0f 28 ee             	movaps %xmm6,%xmm5
  270ab6:	0f 14 eb             	unpcklps %xmm3,%xmm5
  270ab9:	0f 15 f3             	unpckhps %xmm3,%xmm6
  270abc:	0f 11 6e 20          	movups %xmm5,0x20(%rsi)
  270ac0:	0f 11 76 30          	movups %xmm6,0x30(%rsi)
  270ac4:	0f 28 dc             	movaps %xmm4,%xmm3
  270ac7:	0f 14 d9             	unpcklps %xmm1,%xmm3
  270aca:	0f 15 e1             	unpckhps %xmm1,%xmm4
  270acd:	0f 11 5e 40          	movups %xmm3,0x40(%rsi)
  270ad1:	0f 11 66 50          	movups %xmm4,0x50(%rsi)
  270ad5:	0f 28 c8             	movaps %xmm0,%xmm1
  270ad8:	0f 14 ca             	unpcklps %xmm2,%xmm1
  270adb:	0f 15 c2             	unpckhps %xmm2,%xmm0
  270ade:	0f 11 4e 60          	movups %xmm1,0x60(%rsi)
  270ae2:	0f 11 46 70          	movups %xmm0,0x70(%rsi)
  270ae6:	c3                   	ret
  270ae7:	cc                   	int3
  270ae8:	cc                   	int3
  270ae9:	cc                   	int3
  270aea:	cc                   	int3
  270aeb:	cc                   	int3
  270aec:	cc                   	int3
  270aed:	cc                   	int3
  270aee:	cc                   	int3
  270aef:	cc                   	int3

0000000000270af0 <<fastfft::isa::x86::F32x4 as fastfft::engine::small::SmallVector>::one>:
  270af0:	0f 10 2f             	movups (%rdi),%xmm5
  270af3:	0f 10 47 10          	movups 0x10(%rdi),%xmm0
  270af7:	0f 10 4f 20          	movups 0x20(%rdi),%xmm1
  270afb:	0f 10 57 30          	movups 0x30(%rdi),%xmm2
  270aff:	0f 28 f5             	movaps %xmm5,%xmm6
  270b02:	0f c6 f0 88          	shufps $0x88,%xmm0,%xmm6
  270b06:	0f c6 e8 dd          	shufps $0xdd,%xmm0,%xmm5
  270b0a:	0f 28 c1             	movaps %xmm1,%xmm0
  270b0d:	0f c6 c2 88          	shufps $0x88,%xmm2,%xmm0
  270b11:	0f c6 ca dd          	shufps $0xdd,%xmm2,%xmm1
  270b15:	0f 28 de             	movaps %xmm6,%xmm3
  270b18:	0f 58 d8             	addps  %xmm0,%xmm3
  270b1b:	0f 28 fd             	movaps %xmm5,%xmm7
  270b1e:	0f 58 f9             	addps  %xmm1,%xmm7
  270b21:	0f 5c f0             	subps  %xmm0,%xmm6
  270b24:	0f 5c e9             	subps  %xmm1,%xmm5
  270b27:	0f 28 cb             	movaps %xmm3,%xmm1
  270b2a:	0f 14 ce             	unpcklps %xmm6,%xmm1
  270b2d:	f3 0f 7e d1          	movq   %xmm1,%xmm2
  270b31:	0f 57 e4             	xorps  %xmm4,%xmm4
  270b34:	66 0f 15 cc          	unpckhpd %xmm4,%xmm1
  270b38:	0f 15 de             	unpckhps %xmm6,%xmm3
  270b3b:	f3 44 0f 7e db       	movq   %xmm3,%xmm11
  270b40:	66 44 0f 7f 5c 24 e8 	movdqa %xmm11,-0x18(%rsp)
  270b47:	66 0f 15 dc          	unpckhpd %xmm4,%xmm3
  270b4b:	0f 28 c7             	movaps %xmm7,%xmm0
  270b4e:	0f 14 c5             	unpcklps %xmm5,%xmm0
  270b51:	f3 44 0f 7e c8       	movq   %xmm0,%xmm9
  270b56:	66 0f 15 c4          	unpckhpd %xmm4,%xmm0
  270b5a:	0f 15 fd             	unpckhps %xmm5,%xmm7
  270b5d:	f3 44 0f 7e e7       	movq   %xmm7,%xmm12
  270b62:	66 0f 15 fc          	unpckhpd %xmm4,%xmm7
  270b66:	44 0f 10 7a 20       	movups 0x20(%rdx),%xmm15
  270b6b:	44 0f 10 52 30       	movups 0x30(%rdx),%xmm10
  270b70:	44 0f 29 54 24 d8    	movaps %xmm10,-0x28(%rsp)
  270b76:	44 0f 10 72 40       	movups 0x40(%rdx),%xmm14
  270b7b:	0f 10 6a 50          	movups 0x50(%rdx),%xmm5
  270b7f:	0f 10 62 60          	movups 0x60(%rdx),%xmm4
  270b83:	44 0f 10 6a 70       	movups 0x70(%rdx),%xmm13
  270b88:	41 0f 28 f6          	movaps %xmm14,%xmm6
  270b8c:	41 0f 59 f3          	mulps  %xmm11,%xmm6
  270b90:	44 0f 28 dd          	movaps %xmm5,%xmm11
  270b94:	45 0f 59 dc          	mulps  %xmm12,%xmm11
  270b98:	41 0f 5c f3          	subps  %xmm11,%xmm6
  270b9c:	45 0f 28 da          	movaps %xmm10,%xmm11
  270ba0:	44 0f 59 d8          	mulps  %xmm0,%xmm11
  270ba4:	41 0f 59 c7          	mulps  %xmm15,%xmm0
  270ba8:	44 0f 59 f9          	mulps  %xmm1,%xmm15
  270bac:	45 0f 5c fb          	subps  %xmm11,%xmm15
  270bb0:	44 0f 28 db          	movaps %xmm3,%xmm11
  270bb4:	44 0f 59 dc          	mulps  %xmm4,%xmm11
  270bb8:	44 0f 28 d4          	movaps %xmm4,%xmm10
  270bbc:	0f 28 e7             	movaps %xmm7,%xmm4
  270bbf:	41 0f 59 e5          	mulps  %xmm13,%xmm4
  270bc3:	44 0f 5c dc          	subps  %xmm4,%xmm11
  270bc7:	45 0f 59 f4          	mulps  %xmm12,%xmm14
  270bcb:	0f 59 6c 24 e8       	mulps  -0x18(%rsp),%xmm5
  270bd0:	41 0f 58 ee          	addps  %xmm14,%xmm5
  270bd4:	66 44 0f 6f c2       	movdqa %xmm2,%xmm8
  270bd9:	44 0f 58 c6          	addps  %xmm6,%xmm8
  270bdd:	0f 59 4c 24 d8       	mulps  -0x28(%rsp),%xmm1
  270be2:	45 0f 28 e7          	movaps %xmm15,%xmm12
  270be6:	45 0f 58 e3          	addps  %xmm11,%xmm12
  270bea:	0f 58 c8             	addps  %xmm0,%xmm1
  270bed:	41 0f 28 c0          	movaps %xmm8,%xmm0
  270bf1:	41 0f 58 c4          	addps  %xmm12,%xmm0
  270bf5:	41 0f 59 fa          	mulps  %xmm10,%xmm7
  270bf9:	66 45 0f 6f d1       	movdqa %xmm9,%xmm10
  270bfe:	44 0f 58 d5          	addps  %xmm5,%xmm10
  270c02:	41 0f 59 dd          	mulps  %xmm13,%xmm3
  270c06:	0f 58 df             	addps  %xmm7,%xmm3
  270c09:	0f 28 e1             	movaps %xmm1,%xmm4
  270c0c:	0f 58 e3             	addps  %xmm3,%xmm4
  270c0f:	41 0f 28 fa          	movaps %xmm10,%xmm7
  270c13:	0f 58 fc             	addps  %xmm4,%xmm7
  270c16:	0f 14 c7             	unpcklps %xmm7,%xmm0
  270c19:	0f 5c d6             	subps  %xmm6,%xmm2
  270c1c:	0f 5c cb             	subps  %xmm3,%xmm1
  270c1f:	44 0f 5c cd          	subps  %xmm5,%xmm9
  270c23:	0f 28 da             	movaps %xmm2,%xmm3
  270c26:	0f 58 d9             	addps  %xmm1,%xmm3
  270c29:	45 0f 5c df          	subps  %xmm15,%xmm11
  270c2d:	41 0f 28 e9          	movaps %xmm9,%xmm5
  270c31:	41 0f 58 eb          	addps  %xmm11,%xmm5
  270c35:	0f 14 dd             	unpcklps %xmm5,%xmm3
  270c38:	45 0f 5c c4          	subps  %xmm12,%xmm8
  270c3c:	44 0f 5c d4          	subps  %xmm4,%xmm10
  270c40:	45 0f 14 c2          	unpcklps %xmm10,%xmm8
  270c44:	0f 5c d1             	subps  %xmm1,%xmm2
  270c47:	45 0f 5c cb          	subps  %xmm11,%xmm9
  270c4b:	41 0f 14 d1          	unpcklps %xmm9,%xmm2
  270c4f:	0f 11 06             	movups %xmm0,(%rsi)
  270c52:	0f 11 5e 10          	movups %xmm3,0x10(%rsi)
  270c56:	44 0f 11 46 20       	movups %xmm8,0x20(%rsi)
  270c5b:	0f 11 56 30          	movups %xmm2,0x30(%rsi)
  270c5f:	c3                   	ret
