
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a141c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a141c0:	sub    rsp,0x8c8
  a141c7:	vmovups xmm0,XMMWORD PTR [rdi+0x60]
  a141cc:	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x64],0x10
  a141d3:	vbroadcastss xmm1,DWORD PTR [rdi+0x68]
  a141d9:	vmovups zmm3,ZMMWORD PTR [rdi]
  a141df:	vblendps xmm0,xmm1,xmm0,0x3
  a141e5:	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x6c],0x30
  a141ec:	vmovups ymm1,YMMWORD PTR [rdi+0x40]
  a141f1:	vmovsd xmm2,QWORD PTR [rdi+0x70]
  a141f6:	vinsertf128 ymm0,ymm0,xmm2,0x1
  a141fc:	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a14203:	mov    al,0x7f
  a14205:	kmovd  k1,eax
  a14209:	vexpandpd zmm17{k1}{z},zmm0
  a1420f:	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff67b227]        # 8f440 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c8f0>
  a14219:	vmovaps zmm0,zmm3
  a1421f:	vmovaps zmm18,zmm3
  a14225:	vpermt2ps zmm0,zmm13,zmm17
  a1422b:	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a14233:	vmovups zmm3,ZMMWORD PTR [rdi+0xf0]
  a1423d:	vmovups xmm0,XMMWORD PTR [rdi+0x150]
  a14245:	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x154],0x10
  a1424f:	vbroadcastss xmm1,DWORD PTR [rdi+0x158]
  a14258:	vmovups ymm2,YMMWORD PTR [rdi+0x130]
  a14260:	vblendps xmm0,xmm1,xmm0,0x3
  a14266:	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x15c],0x30
  a14270:	vmovsd xmm1,QWORD PTR [rdi+0x160]
  a14278:	vinsertf128 ymm0,ymm0,xmm1,0x1
  a1427e:	vinsertf64x4 zmm0,zmm2,ymm0,0x1
  a14285:	vexpandpd zmm19{k1}{z},zmm0
  a1428b:	vmovaps zmm0,zmm3
  a14291:	vmovaps zmm9,zmm3
  a14297:	vpermt2ps zmm0,zmm13,zmm19
  a1429d:	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a142a5:	vmovups zmm3,ZMMWORD PTR [rdi+0x5a0]
  a142af:	vmovups xmm0,XMMWORD PTR [rdi+0x600]
  a142b7:	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x604],0x10
  a142c1:	vbroadcastss xmm1,DWORD PTR [rdi+0x608]
  a142ca:	vmovups ymm2,YMMWORD PTR [rdi+0x5e0]
  a142d2:	vblendps xmm0,xmm1,xmm0,0x3
  a142d8:	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x60c],0x30
  a142e2:	vmovsd xmm1,QWORD PTR [rdi+0x610]
  a142ea:	vinsertf128 ymm0,ymm0,xmm1,0x1
  a142f0:	vinsertf64x4 zmm0,zmm2,ymm0,0x1
  a142f7:	vexpandpd zmm20{k1}{z},zmm0
  a142fd:	vmovaps zmm0,zmm3
  a14303:	vmovaps zmm10,zmm3
  a14309:	vpermt2ps zmm0,zmm13,zmm20
  a1430f:	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a14317:	vmovups zmm3,ZMMWORD PTR [rdi+0x1e0]
  a14321:	vmovups xmm0,XMMWORD PTR [rdi+0x240]
  a14329:	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x244],0x10
  a14333:	vbroadcastss xmm1,DWORD PTR [rdi+0x248]
  a1433c:	vmovups ymm2,YMMWORD PTR [rdi+0x220]
  a14344:	vblendps xmm0,xmm1,xmm0,0x3
  a1434a:	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x24c],0x30
  a14354:	vmovsd xmm1,QWORD PTR [rdi+0x250]
  a1435c:	vinsertf128 ymm0,ymm0,xmm1,0x1
  a14362:	vinsertf64x4 zmm0,zmm2,ymm0,0x1
  a14369:	vexpandpd zmm21{k1}{z},zmm0
  a1436f:	vmovaps zmm0,zmm3
  a14375:	vmovaps zmm11,zmm3
  a1437b:	vpermt2ps zmm0,zmm13,zmm21
  a14381:	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a14389:	vmovups zmm3,ZMMWORD PTR [rdi+0x4b0]
  a14393:	vmovups xmm0,XMMWORD PTR [rdi+0x510]
  a1439b:	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x514],0x10
  a143a5:	vbroadcastss xmm1,DWORD PTR [rdi+0x518]
  a143ae:	vmovups ymm2,YMMWORD PTR [rdi+0x4f0]
  a143b6:	vblendps xmm0,xmm1,xmm0,0x3
  a143bc:	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x51c],0x30
  a143c6:	vmovsd xmm1,QWORD PTR [rdi+0x520]
  a143ce:	vinsertf128 ymm0,ymm0,xmm1,0x1
  a143d4:	vinsertf64x4 zmm0,zmm2,ymm0,0x1
  a143db:	vexpandpd zmm15{k1}{z},zmm0
  a143e1:	vmovaps zmm0,zmm3
  a143e7:	vmovaps zmm12,zmm3
  a143ed:	vpermt2ps zmm0,zmm13,zmm15
  a143f3:	vmovups ZMMWORD PTR [rsp],zmm0
  a143fa:	vmovups zmm3,ZMMWORD PTR [rdi+0x2d0]
  a14404:	vmovups xmm0,XMMWORD PTR [rdi+0x330]
  a1440c:	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x334],0x10
  a14416:	vbroadcastss xmm1,DWORD PTR [rdi+0x338]
  a1441f:	vmovups ymm2,YMMWORD PTR [rdi+0x310]
  a14427:	vblendps xmm0,xmm1,xmm0,0x3
  a1442d:	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x33c],0x30
  a14437:	vmovsd xmm1,QWORD PTR [rdi+0x340]
  a1443f:	vinsertf128 ymm0,ymm0,xmm1,0x1
  a14445:	vinsertf64x4 zmm0,zmm2,ymm0,0x1
  a1444c:	vexpandpd zmm0{k1}{z},zmm0
  a14452:	vmovaps zmm1,zmm3
  a14458:	vmovaps zmm16,zmm3
  a1445e:	vpermt2ps zmm1,zmm13,zmm0
  a14464:	vmovaps zmm22,zmm1
  a1446a:	vmovups zmm25,ZMMWORD PTR [rdi+0x3c0]
  a14471:	vmovups xmm1,XMMWORD PTR [rdi+0x420]
  a14479:	vinsertps xmm1,xmm1,DWORD PTR [rdi+0x424],0x10
  a14483:	vbroadcastss xmm2,DWORD PTR [rdi+0x428]
  a1448c:	vmovups ymm3,YMMWORD PTR [rdi+0x400]
  a14494:	vblendps xmm1,xmm2,xmm1,0x3
  a1449a:	vinsertps xmm1,xmm1,DWORD PTR [rdi+0x42c],0x30
  a144a4:	vmovsd xmm2,QWORD PTR [rdi+0x430]
  a144ac:	vinsertf128 ymm1,ymm1,xmm2,0x1
  a144b2:	vinsertf64x4 zmm1,zmm3,ymm1,0x1
  a144b9:	vexpandpd zmm1{k1}{z},zmm1
  a144bf:	vmovaps zmm2,zmm25
  a144c5:	vpermt2ps zmm2,zmm13,zmm1
  a144cb:	vmovups ZMMWORD PTR [rsp+0x100],zmm2
  a144d3:	vmovups zmm23,ZMMWORD PTR [rdi+0x348]
  a144dd:	vmovups xmm2,XMMWORD PTR [rdi+0x3a8]
  a144e5:	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x3ac],0x10
  a144ef:	vbroadcastss xmm3,DWORD PTR [rdi+0x3b0]
  a144f8:	vmovups ymm4,YMMWORD PTR [rdi+0x388]
  a14500:	vblendps xmm2,xmm3,xmm2,0x3
  a14506:	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x3b4],0x30
  a14510:	vmovsd xmm3,QWORD PTR [rdi+0x3b8]
  a14518:	vinsertf128 ymm2,ymm2,xmm3,0x1
  a1451e:	vinsertf64x4 zmm2,zmm4,ymm2,0x1
  a14525:	vexpandpd zmm31{k1}{z},zmm2
  a1452b:	vmovaps zmm14,zmm23
  a14531:	vpermt2ps zmm14,zmm13,zmm31
  a14537:	vmovups xmm2,XMMWORD PTR [rdi+0x498]
  a1453f:	vmovups ymm3,YMMWORD PTR [rdi+0x478]
  a14547:	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x49c],0x10
  a14551:	vbroadcastss xmm4,DWORD PTR [rdi+0x4a0]
  a1455a:	vblendps xmm2,xmm4,xmm2,0x3
  a14560:	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x4a4],0x30
  a1456a:	vmovsd xmm4,QWORD PTR [rdi+0x4a8]
  a14572:	vinsertf128 ymm2,ymm2,xmm4,0x1
  a14578:	vinsertf64x4 zmm3,zmm3,ymm2,0x1
  a1457f:	vmovups xmm2,XMMWORD PTR [rdi+0x2b8]
  a14587:	vmovups ymm4,YMMWORD PTR [rdi+0x298]
  a1458f:	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x2bc],0x10
  a14599:	vbroadcastss xmm5,DWORD PTR [rdi+0x2c0]
  a145a2:	vblendps xmm2,xmm5,xmm2,0x3
  a145a8:	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x2c4],0x30
  a145b2:	vmovsd xmm5,QWORD PTR [rdi+0x2c8]
  a145ba:	vinsertf128 ymm2,ymm2,xmm5,0x1
  a145c0:	vinsertf64x4 zmm5,zmm4,ymm2,0x1
  a145c7:	vmovups xmm2,XMMWORD PTR [rdi+0x588]
  a145cf:	vmovups ymm4,YMMWORD PTR [rdi+0x568]
  a145d7:	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x58c],0x10
  a145e1:	vbroadcastss xmm6,DWORD PTR [rdi+0x590]
  a145ea:	vblendps xmm2,xmm6,xmm2,0x3
  a145f0:	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x594],0x30
  a145fa:	vmovsd xmm6,QWORD PTR [rdi+0x598]
  a14602:	vinsertf128 ymm2,ymm2,xmm6,0x1
  a14608:	vinsertf64x4 zmm2,zmm4,ymm2,0x1
  a1460f:	vmovups xmm4,XMMWORD PTR [rdi+0x1c8]
  a14617:	vmovups ymm6,YMMWORD PTR [rdi+0x1a8]
  a1461f:	vinsertps xmm4,xmm4,DWORD PTR [rdi+0x1cc],0x10
  a14629:	vbroadcastss xmm7,DWORD PTR [rdi+0x1d0]
  a14632:	vblendps xmm4,xmm7,xmm4,0x3
  a14638:	vinsertps xmm4,xmm4,DWORD PTR [rdi+0x1d4],0x30
  a14642:	vmovsd xmm7,QWORD PTR [rdi+0x1d8]
  a1464a:	vinsertf128 ymm4,ymm4,xmm7,0x1
  a14650:	vinsertf64x4 zmm4,zmm6,ymm4,0x1
  a14657:	vmovups xmm6,XMMWORD PTR [rdi+0x678]
  a1465f:	vmovups ymm7,YMMWORD PTR [rdi+0x658]
  a14667:	vinsertps xmm6,xmm6,DWORD PTR [rdi+0x67c],0x10
  a14671:	vbroadcastss xmm8,DWORD PTR [rdi+0x680]
  a1467a:	vblendps xmm6,xmm8,xmm6,0x3
  a14680:	vinsertps xmm6,xmm6,DWORD PTR [rdi+0x684],0x30
  a1468a:	vmovsd xmm8,QWORD PTR [rdi+0x688]
  a14692:	vinsertf128 ymm6,ymm6,xmm8,0x1
  a14698:	vmovups xmm8,XMMWORD PTR [rdi+0xd8]
  a146a0:	vinsertps xmm8,xmm8,DWORD PTR [rdi+0xdc],0x10
  a146aa:	vinsertf64x4 zmm7,zmm7,ymm6,0x1
  a146b1:	vbroadcastss xmm6,DWORD PTR [rdi+0xe0]
  a146ba:	vblendps xmm6,xmm6,xmm8,0x3
  a146c0:	vinsertps xmm6,xmm6,DWORD PTR [rdi+0xe4],0x30
  a146ca:	vmovsd xmm8,QWORD PTR [rdi+0xe8]
  a146d2:	vinsertf128 ymm6,ymm6,xmm8,0x1
  a146d8:	vmovups ymm8,YMMWORD PTR [rdi+0xb8]
  a146e0:	vinsertf64x4 zmm6,zmm8,ymm6,0x1
  a146e7:	vmovaps zmm30,ZMMWORD PTR [rip+0xffffffffff67ad8f]        # 8f480 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c930>
  a146f1:	vmovaps zmm8,zmm16
  a146f7:	vpermt2ps zmm8,zmm30,zmm0
  a146fd:	vmovups ZMMWORD PTR [rsp+0x380],zmm8
  a14705:	vmovups zmm16,ZMMWORD PTR [rdi+0x438]
  a1470f:	vexpandpd zmm0{k1}{z},zmm3
  a14715:	vpermt2ps zmm25,zmm30,zmm1
  a1471b:	vmovups ZMMWORD PTR [rsp+0x3c0],zmm25
  a14723:	vmovaps zmm24,zmm16
  a14729:	vpermt2ps zmm24,zmm13,zmm0
  a1472f:	vpermt2ps zmm9,zmm30,zmm19
  a14735:	vmovups ZMMWORD PTR [rsp+0x4c0],zmm9
  a1473d:	vmovups zmm3,ZMMWORD PTR [rdi+0x258]
  a14747:	vexpandpd zmm1{k1}{z},zmm5
  a1474d:	vpermt2ps zmm10,zmm30,zmm20
  a14753:	vmovups ZMMWORD PTR [rsp+0x200],zmm10
  a1475b:	vmovaps zmm26,zmm3
  a14761:	vmovaps zmm5,zmm3
  a14767:	vpermt2ps zmm26,zmm13,zmm1
  a1476d:	vpermt2ps zmm11,zmm30,zmm21
  a14773:	vmovups ZMMWORD PTR [rsp+0x400],zmm11
  a1477b:	vmovups zmm19,ZMMWORD PTR [rdi+0x618]
  a14785:	vexpandpd zmm3{k1}{z},zmm7
  a1478b:	vpermt2ps zmm12,zmm30,zmm15
  a14791:	vmovups ZMMWORD PTR [rsp+0x1c0],zmm12
  a14799:	vmovaps zmm27,zmm19
  a1479f:	vpermt2ps zmm27,zmm13,zmm3
  a147a5:	vpermt2ps zmm19,zmm30,zmm3
  a147ab:	vmovaps zmm20,zmm19
  a147b1:	vmovups ZMMWORD PTR [rsp+0x240],zmm19
  a147b9:	vmovups zmm3,ZMMWORD PTR [rdi+0x528]
  a147c3:	vexpandpd zmm2{k1}{z},zmm2
  a147c9:	vmovaps zmm28,zmm3
  a147cf:	vmovaps zmm7,zmm3
  a147d5:	vpermt2ps zmm28,zmm13,zmm2
  a147db:	vexpandpd zmm3{k1}{z},zmm4
  a147e1:	vmovups zmm4,ZMMWORD PTR [rdi+0x168]
  a147eb:	vmovaps zmm29,zmm4
  a147f1:	vmovaps zmm15,zmm4
  a147f7:	vpermt2ps zmm29,zmm13,zmm3
  a147fd:	vexpandpd zmm4{k1}{z},zmm6
  a14803:	vmovups zmm6,ZMMWORD PTR [rdi+0x78]
  a1480d:	vpermi2ps zmm13,zmm6,zmm4
  a14813:	vpermt2ps zmm6,zmm30,zmm4
  a14819:	vmovups ZMMWORD PTR [rsp+0x5c0],zmm6
  a14821:	vpermt2ps zmm16,zmm30,zmm0
  a14827:	vmovups ZMMWORD PTR [rsp+0x300],zmm16
  a1482f:	vpermt2ps zmm5,zmm30,zmm1
  a14835:	vmovups ZMMWORD PTR [rsp+0x140],zmm5
  a1483d:	vpermt2ps zmm7,zmm30,zmm2
  a14843:	vmovaps zmm0,zmm7
  a14849:	vmovups ZMMWORD PTR [rsp+0x2c0],zmm7
  a14851:	vpermt2ps zmm15,zmm30,zmm3
  a14857:	vmovups ZMMWORD PTR [rsp+0x340],zmm15
  a1485f:	vsubps zmm2,zmm9,zmm10
  a14865:	vpermt2ps zmm18,zmm30,zmm17
  a1486b:	vmovups ZMMWORD PTR [rsp+0x440],zmm18
  a14873:	vsubps zmm3,zmm11,zmm12
  a14879:	vpermt2ps zmm23,zmm30,zmm31
  a1487f:	vbroadcastss zmm19,DWORD PTR [rip+0xffffffffff660c07]        # 75490 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2940>
  a14889:	vmulps zmm17,zmm3,zmm19
  a1488f:	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff660dc7]        # 75660 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b10>
  a14899:	vfmadd231ps zmm17,zmm2,zmm7
  a1489f:	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff660d3f]        # 755e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a98>
  a148a9:	vmulps zmm31,zmm2,zmm4
  a148af:	vfnmadd231ps zmm31,zmm3,zmm7
  a148b5:	vmulps zmm11,zmm2,zmm19
  a148bb:	vfnmadd231ps zmm11,zmm4,zmm3
  a148c1:	vsubps zmm2,zmm8,zmm25
  a148c7:	vfmadd231ps zmm17,zmm2,zmm4
  a148cd:	vfmadd231ps zmm31,zmm2,zmm19
  a148d3:	vfnmadd231ps zmm11,zmm7,zmm2
  a148d9:	vsubps zmm2,zmm16,zmm5
  a148df:	vsubps zmm3,zmm0,zmm15
  a148e5:	vmulps zmm15,zmm3,zmm19
  a148eb:	vfmadd231ps zmm15,zmm2,zmm7
  a148f1:	vmulps zmm9,zmm2,zmm4
  a148f7:	vfnmadd231ps zmm9,zmm3,zmm7
  a148fd:	vmulps zmm8,zmm2,zmm19
  a14903:	vfnmadd231ps zmm8,zmm4,zmm3
  a14909:	vsubps zmm2,zmm20,zmm6
  a1490f:	vfmadd231ps zmm15,zmm2,zmm4
  a14915:	vfmadd231ps zmm9,zmm2,zmm19
  a1491b:	vfnmadd231ps zmm8,zmm7,zmm2
  a14921:	vmovups zmm20,ZMMWORD PTR [rsp-0x40]
  a14929:	vmovups zmm18,ZMMWORD PTR [rsp+0x80]
  a14931:	vsubps zmm2,zmm20,zmm18
  a14937:	vmovups zmm21,ZMMWORD PTR [rsp+0x40]
  a1493f:	vmovups zmm16,ZMMWORD PTR [rsp]
  a14946:	vsubps zmm3,zmm21,zmm16
  a1494c:	vmulps zmm25,zmm3,zmm19
  a14952:	vfmadd231ps zmm25,zmm2,zmm7
  a14958:	vmulps zmm30,zmm2,zmm4
  a1495e:	vfnmadd231ps zmm30,zmm3,zmm7
  a14964:	vmulps zmm12,zmm2,zmm19
  a1496a:	vfnmadd231ps zmm12,zmm4,zmm3
  a14970:	vmovaps zmm6,zmm22
  a14976:	vmovups zmm5,ZMMWORD PTR [rsp+0x100]
  a1497e:	vsubps zmm3,zmm22,zmm5
  a14984:	vfmadd231ps zmm25,zmm3,zmm4
  a1498a:	vsubps zmm2,zmm24,zmm26
  a14990:	vsubps zmm0,zmm28,zmm29
  a14996:	vmulps zmm22,zmm0,zmm19
  a1499c:	vfmadd231ps zmm22,zmm2,zmm7
  a149a2:	vsubps zmm1,zmm27,zmm13
  a149a8:	vfmadd231ps zmm22,zmm1,zmm4
  a149ae:	vmulps zmm10,zmm2,zmm4
  a149b4:	vmulps zmm2,zmm2,zmm19
  a149ba:	vfnmadd231ps zmm2,zmm0,zmm4
  a149c0:	vfnmadd231ps zmm10,zmm0,zmm7
  a149c6:	vfmadd231ps zmm30,zmm3,zmm19
  a149cc:	vfmadd231ps zmm10,zmm1,zmm19
  a149d2:	vfnmadd231ps zmm12,zmm7,zmm3
  a149d8:	vfnmadd231ps zmm2,zmm1,zmm7
  a149de:	vaddps zmm3,zmm20,zmm18
  a149e4:	vaddps zmm4,zmm21,zmm16
  a149ea:	vaddps zmm5,zmm6,zmm5
  a149f0:	vaddps zmm19,zmm24,zmm26
  a149f6:	vaddps zmm26,zmm28,zmm29
  a149fc:	vaddps zmm13,zmm27,zmm13
  a14a02:	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff660be8]        # 755f4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa4>
  a14a0c:	vmovaps zmm27,zmm0
  a14a12:	vmovups zmm6,ZMMWORD PTR [rsp-0x80]
  a14a1a:	vfmadd213ps zmm27,zmm3,zmm6
  a14a20:	vbroadcastss zmm24,DWORD PTR [rip+0xffffffffff660bae]        # 755d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a88>
  a14a2a:	vmovaps zmm28,zmm24
  a14a30:	vfnmadd213ps zmm28,zmm3,zmm6
  a14a36:	vaddps zmm29,zmm6,zmm3
  a14a3c:	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff660886]        # 752cc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x277c>
  a14a46:	vfnmadd231ps zmm6,zmm1,zmm3
  a14a4c:	vaddps zmm3,zmm29,zmm4
  a14a52:	vfnmadd231ps zmm27,zmm4,zmm1
  a14a58:	vfmadd231ps zmm28,zmm4,zmm0
  a14a5e:	vfnmadd231ps zmm6,zmm24,zmm4
  a14a64:	vaddps zmm4,zmm3,zmm5
  a14a6a:	vfnmadd231ps zmm27,zmm5,zmm24
  a14a70:	vfnmadd231ps zmm28,zmm5,zmm1
  a14a76:	vfmadd231ps zmm6,zmm0,zmm5
  a14a7c:	vmovaps zmm3,zmm0
  a14a82:	vfmadd213ps zmm3,zmm19,zmm14
  a14a88:	vmovaps zmm5,zmm24
  a14a8e:	vfnmadd213ps zmm5,zmm19,zmm14
  a14a94:	vaddps zmm29,zmm14,zmm19
  a14a9a:	vfnmadd231ps zmm14,zmm1,zmm19
  a14aa0:	vaddps zmm19,zmm29,zmm26
  a14aa6:	vfnmadd231ps zmm3,zmm26,zmm1
  a14aac:	vfmadd231ps zmm5,zmm26,zmm0
  a14ab2:	vfnmadd231ps zmm14,zmm24,zmm26
  a14ab8:	vaddps zmm19,zmm19,zmm13
  a14abe:	vfnmadd231ps zmm3,zmm13,zmm24
  a14ac4:	vfnmadd231ps zmm5,zmm13,zmm1
  a14aca:	vfmadd231ps zmm14,zmm0,zmm13
  a14ad0:	vsubps zmm13,zmm6,zmm11
  a14ad6:	vaddps zmm11,zmm6,zmm11
  a14adc:	vsubps zmm16,zmm14,zmm8
  a14ae2:	vaddps zmm7,zmm14,zmm8
  a14ae8:	vsubps zmm14,zmm28,zmm31
  a14aee:	vaddps zmm28,zmm28,zmm31
  a14af4:	vsubps zmm31,zmm5,zmm9
  a14afa:	vaddps zmm9,zmm5,zmm9
  a14b00:	vaddps zmm5,zmm27,zmm17
  a14b06:	vsubps zmm17,zmm27,zmm17
  a14b0c:	vaddps zmm27,zmm3,zmm15
  a14b12:	vsubps zmm3,zmm3,zmm15
  a14b18:	vaddps zmm26,zmm5,zmm27
  a14b1e:	vsubps zmm5,zmm5,zmm27
  a14b24:	vmovups ZMMWORD PTR [rsp+0x80],zmm5
  a14b2c:	vaddps zmm5,zmm11,zmm7
  a14b32:	vmovups ZMMWORD PTR [rsp-0x40],zmm5
  a14b3a:	vsubps zmm5,zmm11,zmm7
  a14b40:	vmovups ZMMWORD PTR [rsp+0x280],zmm5
  a14b48:	vaddps zmm5,zmm13,zmm16
  a14b4e:	vsubps zmm6,zmm13,zmm16
  a14b54:	vmovups ZMMWORD PTR [rsp+0x40],zmm6
  a14b5c:	vaddps zmm6,zmm17,zmm3
  a14b62:	vmovups ZMMWORD PTR [rsp+0xc0],zmm6
  a14b6a:	vsubps zmm3,zmm17,zmm3
  a14b70:	vmovups ZMMWORD PTR [rsp+0x180],zmm3
  a14b78:	vaddps zmm3,zmm28,zmm9
  a14b7e:	vsubps zmm6,zmm28,zmm9
  a14b84:	vmovups ZMMWORD PTR [rsp-0x80],zmm6
  a14b8c:	vaddps zmm6,zmm14,zmm31
  a14b92:	vsubps zmm7,zmm14,zmm31
  a14b98:	vmovups ZMMWORD PTR [rsp],zmm7
  a14b9f:	vaddps zmm8,zmm4,zmm19
  a14ba5:	vsubps zmm4,zmm4,zmm19
  a14bab:	vmovups ZMMWORD PTR [rsp+0x480],zmm4
  a14bb3:	vmovups zmm4,ZMMWORD PTR [rsp+0x4c0]
  a14bbb:	vaddps zmm4,zmm4,ZMMWORD PTR [rsp+0x200]
  a14bc3:	vmovups zmm7,ZMMWORD PTR [rsp+0x400]
  a14bcb:	vaddps zmm7,zmm7,ZMMWORD PTR [rsp+0x1c0]
  a14bd3:	vmovups zmm9,ZMMWORD PTR [rsp+0x380]
  a14bdb:	vaddps zmm11,zmm9,ZMMWORD PTR [rsp+0x3c0]
  a14be3:	vmovups zmm9,ZMMWORD PTR [rsp+0x300]
  a14beb:	vaddps zmm13,zmm9,ZMMWORD PTR [rsp+0x140]
  a14bf3:	vmovups zmm9,ZMMWORD PTR [rsp+0x2c0]
  a14bfb:	vaddps zmm14,zmm9,ZMMWORD PTR [rsp+0x340]
  a14c03:	vmovups zmm9,ZMMWORD PTR [rsp+0x240]
  a14c0b:	vaddps zmm16,zmm9,ZMMWORD PTR [rsp+0x5c0]
  a14c13:	vmovaps zmm17,zmm0
  a14c19:	vmovups zmm9,ZMMWORD PTR [rsp+0x440]
  a14c21:	vfmadd213ps zmm17,zmm4,zmm9
  a14c27:	vmovaps zmm19,zmm24
  a14c2d:	vfnmadd213ps zmm19,zmm4,zmm9
  a14c33:	vaddps zmm20,zmm9,zmm4
  a14c39:	vfnmadd231ps zmm9,zmm1,zmm4
  a14c3f:	vaddps zmm4,zmm20,zmm7
  a14c45:	vfnmadd231ps zmm17,zmm7,zmm1
  a14c4b:	vfmadd231ps zmm19,zmm7,zmm0
  a14c51:	vfnmadd231ps zmm9,zmm24,zmm7
  a14c57:	vmovaps zmm7,zmm0
  a14c5d:	vfmadd213ps zmm7,zmm13,zmm23
  a14c63:	vmovaps zmm20,zmm24
  a14c69:	vfnmadd213ps zmm20,zmm13,zmm23
  a14c6f:	vaddps zmm21,zmm23,zmm13
  a14c75:	vfnmadd231ps zmm23,zmm13,zmm1
  a14c7b:	vfnmadd231ps zmm17,zmm11,zmm24
  a14c81:	vfnmadd231ps zmm7,zmm14,zmm1
  a14c87:	vfnmadd231ps zmm7,zmm16,zmm24
  a14c8d:	vfnmadd231ps zmm23,zmm14,zmm24
  a14c93:	vaddps zmm13,zmm21,zmm14
  a14c99:	vfmadd231ps zmm20,zmm14,zmm0
  a14c9f:	vfnmadd231ps zmm19,zmm11,zmm1
  a14ca5:	vfnmadd231ps zmm20,zmm16,zmm1
  a14cab:	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6b230b]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a14cb5:	vaddps zmm14,zmm4,zmm11
  a14cbb:	vfmadd231ps zmm9,zmm0,zmm11
  a14cc1:	vmovaps zmm21,zmm8
  a14cc7:	vmovaps zmm27,zmm8
  a14ccd:	vpermt2ps zmm21,zmm1,zmm26
  a14cd3:	vfmadd231ps zmm23,zmm16,zmm0
  a14cd9:	vmovaps zmm29,zmm6
  a14cdf:	vmovaps zmm24,zmm6
  a14ce5:	vpermt2ps zmm29,zmm1,zmm5
  a14ceb:	vaddps zmm16,zmm13,zmm16
  a14cf1:	vaddps zmm0,zmm12,zmm9
  a14cf7:	vsubps zmm4,zmm9,zmm12
  a14cfd:	vaddps zmm8,zmm2,zmm23
  a14d03:	vsubps zmm2,zmm23,zmm2
  a14d09:	vaddps zmm11,zmm30,zmm19
  a14d0f:	vsubps zmm15,zmm19,zmm30
  a14d15:	vaddps zmm19,zmm10,zmm20
  a14d1b:	vsubps zmm6,zmm20,zmm10
  a14d21:	vsubps zmm13,zmm17,zmm25
  a14d27:	vaddps zmm17,zmm25,zmm17
  a14d2d:	vsubps zmm18,zmm7,zmm22
  a14d33:	vaddps zmm7,zmm22,zmm7
  a14d39:	vaddps zmm23,zmm13,zmm18
  a14d3f:	vsubps zmm30,zmm13,zmm18
  a14d45:	vaddps zmm22,zmm4,zmm2
  a14d4b:	vsubps zmm12,zmm4,zmm2
  a14d51:	vaddps zmm4,zmm0,zmm8
  a14d57:	vsubps zmm28,zmm0,zmm8
  a14d5d:	vaddps zmm13,zmm17,zmm7
  a14d63:	vsubps zmm8,zmm17,zmm7
  a14d69:	vaddps zmm25,zmm15,zmm6
  a14d6f:	vsubps zmm31,zmm15,zmm6
  a14d75:	vaddps zmm18,zmm11,zmm19
  a14d7b:	vsubps zmm11,zmm11,zmm19
  a14d81:	vaddps zmm17,zmm14,zmm16
  a14d87:	vsubps zmm16,zmm14,zmm16
  a14d8d:	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff6b21e9]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a14d97:	vpermt2ps zmm27,zmm15,zmm26
  a14d9d:	vmovups ZMMWORD PTR [rsp+0x100],zmm27
  a14da5:	vmovups zmm0,ZMMWORD PTR [rsp-0x40]
  a14dad:	vmovaps zmm9,zmm0
  a14db3:	vpermt2ps zmm9,zmm1,zmm3
  a14db9:	vpermt2ps zmm24,zmm15,zmm5
  a14dbf:	vmovups ZMMWORD PTR [rsp+0x200],zmm24
  a14dc7:	vxorps xmm19,xmm19,xmm19
  a14dcd:	vpermt2ps zmm0,zmm15,zmm3
  a14dd3:	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a14ddb:	vmovups zmm2,ZMMWORD PTR [rsp+0x80]
  a14de3:	vmovaps zmm6,zmm2
  a14de9:	vmovups zmm0,ZMMWORD PTR [rsp+0x280]
  a14df1:	vpermt2ps zmm6,zmm1,zmm0
  a14df7:	vpermt2ps zmm2,zmm15,zmm0
  a14dfd:	vmovups ZMMWORD PTR [rsp+0x80],zmm2
  a14e05:	vmovups zmm27,ZMMWORD PTR [rsp+0x40]
  a14e0d:	vmovaps zmm20,zmm27
  a14e13:	vmovups zmm0,ZMMWORD PTR [rsp+0x180]
  a14e1b:	vpermt2ps zmm20,zmm1,zmm0
  a14e21:	vpermt2ps zmm27,zmm15,zmm0
  a14e27:	vmovups zmm2,ZMMWORD PTR [rsp-0x80]
  a14e2f:	vmovaps zmm5,zmm2
  a14e35:	vmovups zmm0,ZMMWORD PTR [rsp]
  a14e3c:	vpermt2ps zmm5,zmm1,zmm0
  a14e42:	vpermt2ps zmm2,zmm15,zmm0
  a14e48:	vmovups ZMMWORD PTR [rsp-0x80],zmm2
  a14e50:	vmovaps zmm14,zmm17
  a14e56:	vpermt2ps zmm14,zmm1,zmm23
  a14e5c:	vpermt2ps zmm17,zmm15,zmm23
  a14e62:	vmovaps zmm10,zmm18
  a14e68:	vpermt2ps zmm10,zmm1,zmm4
  a14e6e:	vpermt2ps zmm18,zmm15,zmm4
  a14e74:	vmovaps zmm0,zmm22
  a14e7a:	vpermt2ps zmm22,zmm1,zmm25
  a14e80:	vpermt2ps zmm0,zmm15,zmm25
  a14e86:	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a14e8e:	vmovaps zmm3,zmm30
  a14e94:	vpermt2ps zmm3,zmm1,zmm12
  a14e9a:	vpermt2ps zmm30,zmm15,zmm12
  a14ea0:	vmovups ZMMWORD PTR [rsp],zmm30
  a14ea7:	vmovaps zmm12,zmm28
  a14ead:	vpermt2ps zmm12,zmm1,zmm8
  a14eb3:	vpermt2ps zmm28,zmm15,zmm8
  a14eb9:	vmovaps zmm24,zmm31
  a14ebf:	vpermt2ps zmm24,zmm1,zmm11
  a14ec5:	vpermt2ps zmm31,zmm15,zmm11
  a14ecb:	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a14ed3:	vmovaps zmm4,zmm0
  a14ed9:	vpermt2ps zmm4,zmm1,zmm19
  a14edf:	vmovups zmm2,ZMMWORD PTR [rsp+0x480]
  a14ee7:	vmovaps zmm8,zmm2
  a14eed:	vpermt2ps zmm8,zmm1,zmm19
  a14ef3:	vmovaps zmm30,zmm13
  a14ef9:	vpermt2ps zmm30,zmm1,zmm19
  a14eff:	vpermi2ps zmm1,zmm16,zmm19
  a14f05:	vpermt2ps zmm0,zmm15,zmm19
  a14f0b:	vpermt2ps zmm2,zmm15,zmm19
  a14f11:	vpermt2ps zmm13,zmm15,zmm19
  a14f17:	vpermt2ps zmm16,zmm15,zmm19
  a14f1d:	vmovaps zmm25,ZMMWORD PTR [rip+0xffffffffff6b1fd9]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a14f27:	vmovaps zmm23,zmm21
  a14f2d:	vpermt2ps zmm23,zmm25,zmm29
  a14f33:	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff6b2003]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a14f3d:	vpermt2ps zmm21,zmm11,zmm29
  a14f43:	vmovups ZMMWORD PTR [rsp+0x180],zmm21
  a14f4b:	vmovaps zmm7,zmm9
  a14f51:	vpermt2ps zmm7,zmm25,zmm4
  a14f57:	vpermt2ps zmm9,zmm11,zmm4
  a14f5d:	vmovaps zmm19,zmm6
  a14f63:	vpermt2ps zmm19,zmm25,zmm20
  a14f69:	vpermt2ps zmm6,zmm11,zmm20
  a14f6f:	vmovaps zmm20,zmm5
  a14f75:	vpermt2ps zmm20,zmm25,zmm8
  a14f7b:	vpermt2ps zmm5,zmm11,zmm8
  a14f81:	vmovaps zmm21,zmm14
  a14f87:	vpermt2ps zmm21,zmm25,zmm10
  a14f8d:	vpermt2ps zmm14,zmm11,zmm10
  a14f93:	vmovaps zmm26,zmm22
  a14f99:	vpermt2ps zmm26,zmm25,zmm30
  a14f9f:	vpermt2ps zmm22,zmm11,zmm30
  a14fa5:	vmovaps zmm4,zmm3
  a14fab:	vpermt2ps zmm4,zmm25,zmm12
  a14fb1:	vpermt2ps zmm3,zmm11,zmm12
  a14fb7:	vmovaps zmm8,zmm24
  a14fbd:	vpermt2ps zmm8,zmm25,zmm1
  a14fc3:	vpermt2ps zmm24,zmm11,zmm1
  a14fc9:	vmovups zmm1,ZMMWORD PTR [rsp+0x100]
  a14fd1:	vmovaps zmm12,zmm1
  a14fd7:	vmovups zmm10,ZMMWORD PTR [rsp+0x200]
  a14fdf:	vpermt2ps zmm12,zmm25,zmm10
  a14fe5:	vmovups ZMMWORD PTR [rsp+0xc0],zmm12
  a14fed:	vpermt2ps zmm1,zmm11,zmm10
  a14ff3:	vmovups ZMMWORD PTR [rsp+0x100],zmm1
  a14ffb:	vmovups zmm1,ZMMWORD PTR [rsp-0x40]
  a15003:	vmovaps zmm15,zmm1
  a15009:	vpermt2ps zmm15,zmm25,zmm0
  a1500f:	vpermt2ps zmm1,zmm11,zmm0
  a15015:	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a1501d:	vmovups zmm0,ZMMWORD PTR [rsp+0x80]
  a15025:	vmovaps zmm12,zmm0
  a1502b:	vpermt2ps zmm12,zmm25,zmm27
  a15031:	vpermt2ps zmm0,zmm11,zmm27
  a15037:	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a1503f:	vmovups zmm0,ZMMWORD PTR [rsp-0x80]
  a15047:	vmovaps zmm30,zmm0
  a1504d:	vpermt2ps zmm30,zmm25,zmm2
  a15053:	vpermt2ps zmm0,zmm11,zmm2
  a15059:	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a15061:	vmovaps zmm0,zmm17
  a15067:	vpermt2ps zmm17,zmm25,zmm18
  a1506d:	vpermt2ps zmm0,zmm11,zmm18
  a15073:	vmovups ZMMWORD PTR [rsp+0x240],zmm0
  a1507b:	vmovups zmm0,ZMMWORD PTR [rsp+0x40]
  a15083:	vmovaps zmm10,zmm0
  a15089:	vpermt2ps zmm10,zmm25,zmm13
  a1508f:	vpermt2ps zmm0,zmm11,zmm13
  a15095:	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a1509d:	vmovups zmm0,ZMMWORD PTR [rsp]
  a150a4:	vmovaps zmm13,zmm0
  a150aa:	vpermt2ps zmm13,zmm25,zmm28
  a150b0:	vpermt2ps zmm0,zmm11,zmm28
  a150b6:	vmovups ZMMWORD PTR [rsp],zmm0
  a150bd:	vpermi2ps zmm25,zmm31,zmm16
  a150c3:	vpermt2ps zmm31,zmm11,zmm16
  a150c9:	vmovups ZMMWORD PTR [rsp+0x500],zmm31
  a150d1:	vmovaps zmm29,ZMMWORD PTR [rip+0xffffffffff6b1d25]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a150db:	vunpcklpd zmm0,zmm23,zmm7
  a150e1:	vmovups ZMMWORD PTR [rsp+0x280],zmm0
  a150e9:	vunpcklpd zmm1,zmm19,zmm20
  a150ef:	vmovups ZMMWORD PTR [rsp+0x5c0],zmm1
  a150f7:	vpermt2ps zmm0,zmm29,zmm1
  a150fd:	vunpcklpd zmm1,zmm21,zmm26
  a15103:	vmovups ZMMWORD PTR [rsp+0x6c0],zmm1
  a1510b:	vunpcklpd zmm2,zmm4,zmm8
  a15111:	vmovups ZMMWORD PTR [rsp+0x7c0],zmm2
  a15119:	vpermt2ps zmm1,zmm29,zmm2
  a1511f:	vmovups zmm11,ZMMWORD PTR [rdx+0x440]
  a15126:	vmovups zmm16,ZMMWORD PTR [rdx+0x400]
  a1512d:	vmulps zmm2,zmm1,zmm16
  a15133:	vfmadd231ps zmm2,zmm0,zmm11
  a15139:	vmovups ZMMWORD PTR [rsp+0x480],zmm2
  a15141:	vmulps zmm0,zmm0,zmm16
  a15147:	vfnmadd231ps zmm0,zmm11,zmm1
  a1514d:	vmovups ZMMWORD PTR [rsp+0x200],zmm0
  a15155:	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a1515d:	vunpckhpd zmm31,zmm0,zmm15
  a15163:	vunpckhpd zmm1,zmm12,zmm30
  a15169:	vmovups ZMMWORD PTR [rsp+0x580],zmm1
  a15171:	vmovaps zmm0,zmm31
  a15177:	vpermt2ps zmm0,zmm29,zmm1
  a1517d:	vunpckhpd zmm28,zmm17,zmm10
  a15183:	vunpckhpd zmm2,zmm13,zmm25
  a15189:	vmovups ZMMWORD PTR [rsp+0x540],zmm2
  a15191:	vmovaps zmm1,zmm28
  a15197:	vpermt2ps zmm1,zmm29,zmm2
  a1519d:	vmovups zmm16,ZMMWORD PTR [rdx+0x100]
  a151a4:	vmovups zmm2,ZMMWORD PTR [rdx+0x140]
  a151ab:	vmulps zmm27,zmm1,zmm16
  a151b1:	vfmadd231ps zmm27,zmm0,zmm2
  a151b7:	vmovups ZMMWORD PTR [rsp+0x440],zmm27
  a151bf:	vmulps zmm0,zmm0,zmm16
  a151c5:	vfnmadd231ps zmm0,zmm2,zmm1
  a151cb:	vmovups ZMMWORD PTR [rsp+0x4c0],zmm0
  a151d3:	vunpckhpd zmm23,zmm23,zmm7
  a151d9:	vunpckhpd zmm2,zmm19,zmm20
  a151df:	vmovups ZMMWORD PTR [rsp+0x140],zmm2
  a151e7:	vunpckhpd zmm21,zmm21,zmm26
  a151ed:	vunpckhpd zmm4,zmm4,zmm8
  a151f3:	vmovups ZMMWORD PTR [rsp+0x340],zmm4
  a151fb:	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff6b1c3b]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a15205:	vmovaps zmm1,zmm23
  a1520b:	vpermt2ps zmm1,zmm11,zmm2
  a15211:	vmovaps zmm2,zmm21
  a15217:	vpermt2ps zmm2,zmm11,zmm4
  a1521d:	vmovups zmm4,ZMMWORD PTR [rdx+0x5c0]
  a15224:	vmovups zmm7,ZMMWORD PTR [rdx+0x580]
  a1522b:	vmulps zmm8,zmm2,zmm7
  a15231:	vfmadd231ps zmm8,zmm1,zmm4
  a15237:	vmovups ZMMWORD PTR [rsp+0x1c0],zmm8
  a1523f:	vmulps zmm1,zmm1,zmm7
  a15245:	vfnmadd231ps zmm1,zmm4,zmm2
  a1524b:	vmovups ZMMWORD PTR [rsp+0x3c0],zmm1
  a15253:	vmovups zmm0,ZMMWORD PTR [rsp+0x180]
  a1525b:	vunpckhpd zmm1,zmm0,zmm9
  a15261:	vunpckhpd zmm2,zmm6,zmm5
  a15267:	vpermt2ps zmm1,zmm29,zmm2
  a1526d:	vunpckhpd zmm2,zmm14,zmm22
  a15273:	vunpckhpd zmm4,zmm3,zmm24
  a15279:	vpermt2ps zmm2,zmm29,zmm4
  a1527f:	vmovups zmm4,ZMMWORD PTR [rdx+0x740]
  a15286:	vmovups zmm7,ZMMWORD PTR [rdx+0x700]
  a1528d:	vmulps zmm8,zmm2,zmm7
  a15293:	vfmadd231ps zmm8,zmm1,zmm4
  a15299:	vmovups ZMMWORD PTR [rsp+0x400],zmm8
  a152a1:	vmulps zmm1,zmm1,zmm7
  a152a7:	vfnmadd231ps zmm1,zmm4,zmm2
  a152ad:	vmovups ZMMWORD PTR [rsp+0x380],zmm1
  a152b5:	vunpcklpd zmm18,zmm0,zmm9
  a152bb:	vunpcklpd zmm0,zmm6,zmm5
  a152c1:	vmovups ZMMWORD PTR [rsp+0x680],zmm0
  a152c9:	vunpcklpd zmm16,zmm14,zmm22
  a152cf:	vunpcklpd zmm1,zmm3,zmm24
  a152d5:	vmovups ZMMWORD PTR [rsp+0x640],zmm1
  a152dd:	vmovaps zmm3,zmm18
  a152e3:	vpermt2ps zmm3,zmm11,zmm0
  a152e9:	vmovaps zmm4,zmm16
  a152ef:	vpermt2ps zmm4,zmm11,zmm1
  a152f5:	vmovups zmm5,ZMMWORD PTR [rdx+0x6c0]
  a152fc:	vmovups zmm6,ZMMWORD PTR [rdx+0x680]
  a15303:	vmulps zmm7,zmm4,zmm6
  a15309:	vfmadd231ps zmm7,zmm3,zmm5
  a1530f:	vmovups ZMMWORD PTR [rsp+0x180],zmm7
  a15317:	vmulps zmm3,zmm3,zmm6
  a1531d:	vfnmadd231ps zmm3,zmm5,zmm4
  a15323:	vmovups ZMMWORD PTR [rsp+0x740],zmm3
  a1532b:	vmovups zmm19,ZMMWORD PTR [rsp+0x100]
  a15333:	vmovups zmm20,ZMMWORD PTR [rsp-0x40]
  a1533b:	vunpckhpd zmm14,zmm19,zmm20
  a15341:	vmovups zmm27,ZMMWORD PTR [rsp+0x80]
  a15349:	vmovups zmm24,ZMMWORD PTR [rsp-0x80]
  a15351:	vunpckhpd zmm22,zmm27,zmm24
  a15357:	vmovaps zmm4,zmm14
  a1535d:	vpermt2ps zmm4,zmm11,zmm22
  a15363:	vmovups zmm26,ZMMWORD PTR [rsp+0x240]
  a1536b:	vmovups zmm0,ZMMWORD PTR [rsp+0x40]
  a15373:	vunpckhpd zmm3,zmm26,zmm0
  a15379:	vmovups zmm2,ZMMWORD PTR [rsp]
  a15380:	vmovups zmm1,ZMMWORD PTR [rsp+0x500]
  a15388:	vunpckhpd zmm6,zmm2,zmm1
  a1538e:	vmovaps zmm5,zmm3
  a15394:	vpermt2ps zmm5,zmm11,zmm6
  a1539a:	vmovups zmm7,ZMMWORD PTR [rdx+0x3c0]
  a153a1:	vmovups zmm8,ZMMWORD PTR [rdx+0x380]
  a153a8:	vmulps zmm9,zmm5,zmm8
  a153ae:	vfmadd231ps zmm9,zmm4,zmm7
  a153b4:	vmovups ZMMWORD PTR [rsp+0x300],zmm9
  a153bc:	vmulps zmm4,zmm4,zmm8
  a153c2:	vfnmadd231ps zmm4,zmm7,zmm5
  a153c8:	vmovups ZMMWORD PTR [rsp+0x780],zmm4
  a153d0:	vmovups zmm4,ZMMWORD PTR [rsp+0xc0]
  a153d8:	vunpcklpd zmm5,zmm4,zmm15
  a153de:	vunpcklpd zmm12,zmm12,zmm30
  a153e4:	vunpcklpd zmm9,zmm17,zmm10
  a153ea:	vunpcklpd zmm7,zmm13,zmm25
  a153f0:	vmovaps zmm4,zmm5
  a153f6:	vpermt2ps zmm4,zmm11,zmm12
  a153fc:	vmovaps zmm25,zmm12
  a15402:	vmovaps zmm8,zmm9
  a15408:	vmovaps zmm30,zmm9
  a1540e:	vpermt2ps zmm8,zmm11,zmm7
  a15414:	vmovups zmm9,ZMMWORD PTR [rdx+0x80]
  a1541b:	vmovups zmm10,ZMMWORD PTR [rdx+0xc0]
  a15422:	vmulps zmm12,zmm8,zmm9
  a15428:	vfmadd231ps zmm12,zmm4,zmm10
  a1542e:	vmovups ZMMWORD PTR [rsp+0x2c0],zmm12
  a15436:	vmulps zmm4,zmm4,zmm9
  a1543c:	vfnmadd231ps zmm4,zmm10,zmm8
  a15442:	vmovups ZMMWORD PTR [rsp+0x700],zmm4
  a1544a:	vunpcklpd zmm4,zmm19,zmm20
  a15450:	vunpcklpd zmm9,zmm27,zmm24
  a15456:	vunpcklpd zmm12,zmm26,zmm0
  a1545c:	vunpcklpd zmm13,zmm2,zmm1
  a15462:	vmovaps zmm8,zmm4
  a15468:	vpermt2ps zmm4,zmm29,zmm9
  a1546e:	vmovaps zmm10,zmm12
  a15474:	vpermt2ps zmm12,zmm29,zmm13
  a1547a:	vmovups zmm15,ZMMWORD PTR [rdx+0x240]
  a15481:	vmovups zmm17,ZMMWORD PTR [rdx+0x200]
  a15488:	vmulps zmm19,zmm12,zmm17
  a1548e:	vfmadd231ps zmm19,zmm4,zmm15
  a15494:	vmovups ZMMWORD PTR [rsp+0x240],zmm19
  a1549c:	vmulps zmm4,zmm4,zmm17
  a154a2:	vfnmadd231ps zmm4,zmm15,zmm12
  a154a8:	vmovaps zmm12,zmm4
  a154ae:	vmovups ZMMWORD PTR [rsp+0x800],zmm4
  a154b6:	vpermt2ps zmm8,zmm11,zmm9
  a154bc:	vpermt2ps zmm10,zmm11,zmm13
  a154c2:	vpermt2ps zmm28,zmm11,ZMMWORD PTR [rsp+0x540]
  a154ca:	vpermt2ps zmm31,zmm11,ZMMWORD PTR [rsp+0x580]
  a154d2:	vmovups zmm1,ZMMWORD PTR [rsp+0x6c0]
  a154da:	vpermt2ps zmm1,zmm11,ZMMWORD PTR [rsp+0x7c0]
  a154e2:	vmovups zmm9,ZMMWORD PTR [rsp+0x280]
  a154ea:	vpermt2ps zmm9,zmm11,ZMMWORD PTR [rsp+0x5c0]
  a154f2:	vpermt2ps zmm3,zmm29,zmm6
  a154f8:	vpermt2ps zmm14,zmm29,zmm22
  a154fe:	vmovups zmm0,ZMMWORD PTR [rdx+0x340]
  a15505:	vmovups zmm4,ZMMWORD PTR [rdx+0x300]
  a1550c:	vmulps zmm6,zmm14,zmm4
  a15512:	vfnmadd231ps zmm6,zmm3,zmm0
  a15518:	vmovaps zmm11,zmm6
  a1551e:	vmovups ZMMWORD PTR [rsp+0x600],zmm6
  a15526:	vmulps zmm2,zmm3,zmm4
  a1552c:	vfmadd231ps zmm2,zmm0,zmm14
  a15532:	vmovups ZMMWORD PTR [rsp+0x280],zmm2
  a1553a:	vmovups zmm0,ZMMWORD PTR [rdx+0x4c0]
  a15541:	vmovups zmm3,ZMMWORD PTR [rdx+0x480]
  a15548:	vmovaps zmm4,zmm9
  a1554e:	vmulps zmm6,zmm9,zmm3
  a15554:	vfnmadd231ps zmm6,zmm1,zmm0
  a1555a:	vmovaps zmm9,zmm6
  a15560:	vmulps zmm22,zmm1,zmm3
  a15566:	vfmadd231ps zmm22,zmm0,zmm4
  a1556c:	vmovups zmm0,ZMMWORD PTR [rdx+0x1c0]
  a15573:	vmovups zmm3,ZMMWORD PTR [rdx+0x180]
  a1557a:	vmulps zmm4,zmm31,zmm3
  a15580:	vfnmadd231ps zmm4,zmm28,zmm0
  a15586:	vmovups ZMMWORD PTR [rsp+0x500],zmm4
  a1558e:	vmulps zmm20,zmm28,zmm3
  a15594:	vfmadd231ps zmm20,zmm0,zmm31
  a1559a:	vpermt2ps zmm16,zmm29,ZMMWORD PTR [rsp+0x640]
  a155a2:	vpermt2ps zmm18,zmm29,ZMMWORD PTR [rsp+0x680]
  a155aa:	vmovups zmm0,ZMMWORD PTR [rdx+0x640]
  a155b1:	vmovups zmm6,ZMMWORD PTR [rdx+0x600]
  a155b8:	vmulps zmm1,zmm18,zmm6
  a155be:	vfnmadd231ps zmm1,zmm16,zmm0
  a155c4:	vmovaps zmm3,zmm1
  a155ca:	vmulps zmm19,zmm16,zmm6
  a155d0:	vfmadd231ps zmm19,zmm0,zmm18
  a155d6:	vmovups zmm0,ZMMWORD PTR [rdx+0x2c0]
  a155dd:	vmovups zmm2,ZMMWORD PTR [rdx+0x280]
  a155e4:	vmulps zmm1,zmm10,zmm2
  a155ea:	vfmadd231ps zmm1,zmm8,zmm0
  a155f0:	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a155f8:	vmulps zmm1,zmm8,zmm2
  a155fe:	vfnmadd231ps zmm1,zmm0,zmm10
  a15604:	vmovups ZMMWORD PTR [rsp+0xc0],zmm1
  a1560c:	vpermt2ps zmm23,zmm29,ZMMWORD PTR [rsp+0x140]
  a15614:	vpermt2ps zmm21,zmm29,ZMMWORD PTR [rsp+0x340]
  a1561c:	vmovups zmm0,ZMMWORD PTR [rdx+0x540]
  a15623:	vmovups zmm2,ZMMWORD PTR [rdx+0x500]
  a1562a:	vmulps zmm1,zmm21,zmm2
  a15630:	vfmadd231ps zmm1,zmm23,zmm0
  a15636:	vmovups ZMMWORD PTR [rsp+0x100],zmm1
  a1563e:	vmulps zmm1,zmm23,zmm2
  a15644:	vfnmadd231ps zmm1,zmm0,zmm21
  a1564a:	vmovaps zmm24,zmm1
  a15650:	vpermt2ps zmm30,zmm29,zmm7
  a15656:	vmovups ZMMWORD PTR [rsp+0x80],zmm30
  a1565e:	vpermt2ps zmm5,zmm29,zmm25
  a15664:	vmovups ZMMWORD PTR [rsp],zmm5
  a1566b:	vmovups zmm0,ZMMWORD PTR [rsp+0x200]
  a15673:	vsubps zmm0,zmm0,ZMMWORD PTR [rsp+0x4c0]
  a1567b:	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff6600d3]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a15685:	vmovups zmm27,ZMMWORD PTR [rsp+0x3c0]
  a1568d:	vmovups zmm31,ZMMWORD PTR [rsp+0x380]
  a15695:	vsubps zmm7,zmm27,zmm31
  a1569b:	vmulps zmm1,zmm7,zmm2
  a156a1:	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff65fcf5]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a156ab:	vfmadd231ps zmm1,zmm0,zmm5
  a156b1:	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a156b9:	vmulps zmm0,zmm0,zmm2
  a156bf:	vfnmadd231ps zmm0,zmm5,zmm7
  a156c5:	vmovups ZMMWORD PTR [rsp+0x580],zmm0
  a156cd:	vmovups zmm16,ZMMWORD PTR [rsp+0x740]
  a156d5:	vmovups zmm13,ZMMWORD PTR [rsp+0x780]
  a156dd:	vsubps zmm0,zmm16,zmm13
  a156e3:	vmovups zmm21,ZMMWORD PTR [rsp+0x700]
  a156eb:	vsubps zmm7,zmm21,zmm12
  a156f1:	vmulps zmm1,zmm7,zmm2
  a156f7:	vfmadd231ps zmm1,zmm0,zmm5
  a156fd:	vmovups ZMMWORD PTR [rsp+0x40],zmm1
  a15705:	vmulps zmm0,zmm0,zmm2
  a1570b:	vfnmadd231ps zmm0,zmm5,zmm7
  a15711:	vmovups ZMMWORD PTR [rsp+0x540],zmm0
  a15719:	vsubps zmm0,zmm4,zmm3
  a1571f:	vmovaps zmm29,zmm3
  a15725:	vsubps zmm7,zmm11,zmm9
  a1572b:	vmovaps zmm25,zmm9
  a15731:	vmulps zmm1,zmm7,zmm2
  a15737:	vfmadd231ps zmm1,zmm0,zmm5
  a1573d:	vmovups ZMMWORD PTR [rsp+0x140],zmm1
  a15745:	vmulps zmm28,zmm0,zmm2
  a1574b:	vfnmadd231ps zmm28,zmm5,zmm7
  a15751:	vmovups zmm10,ZMMWORD PTR [rsp+0x480]
  a15759:	vmovups zmm18,ZMMWORD PTR [rsp+0x440]
  a15761:	vsubps zmm7,zmm10,zmm18
  a15767:	vmovups zmm30,ZMMWORD PTR [rsp+0x1c0]
  a1576f:	vmovups zmm9,ZMMWORD PTR [rsp+0x400]
  a15777:	vsubps zmm8,zmm30,zmm9
  a1577d:	vmulps zmm15,zmm8,zmm2
  a15783:	vfmadd231ps zmm15,zmm7,zmm5
  a15789:	vmovups ZMMWORD PTR [rsp+0x5c0],zmm15
  a15791:	vmulps zmm26,zmm7,zmm2
  a15797:	vfnmadd231ps zmm26,zmm5,zmm8
  a1579d:	vmovups zmm6,ZMMWORD PTR [rsp+0x180]
  a157a5:	vmovups zmm4,ZMMWORD PTR [rsp+0x300]
  a157ad:	vsubps zmm7,zmm6,zmm4
  a157b3:	vmovups zmm3,ZMMWORD PTR [rsp+0x2c0]
  a157bb:	vmovups zmm1,ZMMWORD PTR [rsp+0x240]
  a157c3:	vsubps zmm8,zmm3,zmm1
  a157c9:	vmulps zmm0,zmm8,zmm2
  a157cf:	vfmadd231ps zmm0,zmm7,zmm5
  a157d5:	vmovaps zmm17,zmm0
  a157db:	vmovups ZMMWORD PTR [rsp+0x7c0],zmm0
  a157e3:	vmulps zmm23,zmm7,zmm2
  a157e9:	vfnmadd231ps zmm23,zmm5,zmm8
  a157ef:	vsubps zmm7,zmm20,zmm19
  a157f5:	vmovups zmm0,ZMMWORD PTR [rsp+0x280]
  a157fd:	vsubps zmm8,zmm0,zmm22
  a15803:	vmulps zmm12,zmm8,zmm2
  a15809:	vfmadd231ps zmm12,zmm7,zmm5
  a1580f:	vmovups ZMMWORD PTR [rsp+0x340],zmm12
  a15817:	vmulps zmm14,zmm7,zmm2
  a1581d:	vfnmadd231ps zmm14,zmm8,zmm5
  a15823:	vaddps zmm9,zmm30,zmm9
  a15829:	vaddps zmm18,zmm10,zmm18
  a1582f:	vaddps zmm10,zmm3,zmm1
  a15835:	vaddps zmm11,zmm6,zmm4
  a1583b:	vaddps zmm30,zmm0,zmm22
  a15841:	vaddps zmm12,zmm20,zmm19
  a15847:	vaddps zmm22,zmm27,zmm31
  a1584d:	vmovups zmm0,ZMMWORD PTR [rsp+0x4c0]
  a15855:	vaddps zmm27,zmm0,ZMMWORD PTR [rsp+0x200]
  a1585d:	vaddps zmm31,zmm21,ZMMWORD PTR [rsp+0x800]
  a15865:	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff65fe79]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a1586f:	vaddps zmm8,zmm16,zmm13
  a15875:	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff65fdc5]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a1587f:	vmovaps zmm21,zmm2
  a15885:	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a1588d:	vfmadd213ps zmm21,zmm27,zmm0
  a15893:	vmovups ZMMWORD PTR [rsp+0x380],zmm27
  a1589b:	vfnmadd231ps zmm21,zmm22,zmm1
  a158a1:	vmovups ZMMWORD PTR [rsp+0x300],zmm22
  a158a9:	vmovaps zmm19,zmm2
  a158af:	vmovaps zmm13,zmm24
  a158b5:	vmovups ZMMWORD PTR [rsp+0x6c0],zmm24
  a158bd:	vfmadd213ps zmm19,zmm8,zmm24
  a158c3:	vmovups ZMMWORD PTR [rsp+0x2c0],zmm8
  a158cb:	vfnmadd231ps zmm19,zmm31,zmm1
  a158d1:	vmovups ZMMWORD PTR [rsp+0x280],zmm31
  a158d9:	vsubps zmm5,zmm21,zmm15
  a158df:	vsubps zmm7,zmm19,zmm17
  a158e5:	vsubps zmm3,zmm5,zmm7
  a158eb:	vmovups ZMMWORD PTR [rsp+0x480],zmm3
  a158f3:	vaddps zmm3,zmm5,zmm7
  a158f9:	vmovups ZMMWORD PTR [rsp+0x1c0],zmm3
  a15901:	vaddps zmm25,zmm25,ZMMWORD PTR [rsp+0x600]
  a15909:	vaddps zmm24,zmm29,ZMMWORD PTR [rsp+0x500]
  a15911:	vmovaps zmm17,zmm2
  a15917:	vmovups zmm20,ZMMWORD PTR [rsp-0x80]
  a1591f:	vfmadd213ps zmm17,zmm18,zmm20
  a15925:	vmovaps zmm7,zmm18
  a1592b:	vmovups ZMMWORD PTR [rsp+0x680],zmm18
  a15933:	vfnmadd231ps zmm17,zmm9,zmm1
  a15939:	vmovups ZMMWORD PTR [rsp+0x640],zmm9
  a15941:	vmovaps zmm16,zmm2
  a15947:	vmovups zmm18,ZMMWORD PTR [rsp+0x100]
  a1594f:	vfmadd213ps zmm16,zmm11,zmm18
  a15955:	vfnmadd231ps zmm16,zmm10,zmm1
  a1595b:	vmovaps zmm29,zmm10
  a15961:	vaddps zmm3,zmm17,ZMMWORD PTR [rsp-0x40]
  a15969:	vaddps zmm4,zmm16,ZMMWORD PTR [rsp+0x40]
  a15971:	vaddps zmm5,zmm3,zmm4
  a15977:	vmovups ZMMWORD PTR [rsp+0x400],zmm5
  a1597f:	vsubps zmm3,zmm3,zmm4
  a15985:	vmovups ZMMWORD PTR [rsp+0x440],zmm3
  a1598d:	vmovaps zmm5,zmm1
  a15993:	vfnmadd213ps zmm5,zmm27,zmm0
  a15999:	vfmadd231ps zmm5,zmm22,zmm2
  a1599f:	vmovaps zmm6,zmm1
  a159a5:	vfnmadd213ps zmm6,zmm8,zmm13
  a159ab:	vfmadd231ps zmm6,zmm31,zmm2
  a159b1:	vsubps zmm3,zmm5,zmm26
  a159b7:	vsubps zmm4,zmm6,zmm23
  a159bd:	vsubps zmm0,zmm3,zmm4
  a159c3:	vmovups ZMMWORD PTR [rsp+0x3c0],zmm0
  a159cb:	vaddps zmm0,zmm3,zmm4
  a159d1:	vmovups ZMMWORD PTR [rsp+0x180],zmm0
  a159d9:	vmovaps zmm22,zmm2
  a159df:	vmovups zmm4,ZMMWORD PTR [rsp+0x80]
  a159e7:	vmovaps zmm8,zmm12
  a159ed:	vmovups ZMMWORD PTR [rsp+0x880],zmm12
  a159f5:	vfmadd213ps zmm22,zmm12,zmm4
  a159fb:	vmovaps zmm10,zmm30
  a15a01:	vmovups ZMMWORD PTR [rsp+0x840],zmm30
  a15a09:	vfnmadd231ps zmm22,zmm30,zmm1
  a15a0f:	vmovaps zmm12,zmm2
  a15a15:	vmovups zmm3,ZMMWORD PTR [rsp]
  a15a1c:	vmovups ZMMWORD PTR [rsp+0x740],zmm24
  a15a24:	vfmadd213ps zmm12,zmm24,zmm3
  a15a2a:	vmovups ZMMWORD PTR [rsp+0x700],zmm25
  a15a32:	vfnmadd231ps zmm12,zmm25,zmm1
  a15a38:	vmovaps zmm13,zmm1
  a15a3e:	vfnmadd213ps zmm13,zmm7,zmm20
  a15a44:	vfmadd231ps zmm13,zmm9,zmm2
  a15a4a:	vmovaps zmm27,zmm1
  a15a50:	vfnmadd213ps zmm27,zmm11,zmm18
  a15a56:	vmovaps zmm30,zmm11
  a15a5c:	vfmadd231ps zmm27,zmm29,zmm2
  a15a62:	vmovaps zmm0,zmm1
  a15a68:	vfnmadd213ps zmm0,zmm8,zmm4
  a15a6e:	vfmadd231ps zmm0,zmm10,zmm2
  a15a74:	vfnmadd213ps zmm1,zmm24,zmm3
  a15a7a:	vfmadd231ps zmm1,zmm25,zmm2
  a15a80:	vmovups zmm4,ZMMWORD PTR [rsp+0x580]
  a15a88:	vaddps zmm3,zmm13,zmm4
  a15a8e:	vmovups zmm7,ZMMWORD PTR [rsp+0x540]
  a15a96:	vaddps zmm2,zmm27,zmm7
  a15a9c:	vaddps zmm8,zmm3,zmm2
  a15aa2:	vmovups ZMMWORD PTR [rsp+0x780],zmm8
  a15aaa:	vsubps zmm2,zmm3,zmm2
  a15ab0:	vmovups ZMMWORD PTR [rsp+0x240],zmm2
  a15ab8:	vaddps zmm25,zmm28,zmm0
  a15abe:	vsubps zmm2,zmm0,zmm28
  a15ac4:	vsubps zmm4,zmm13,zmm4
  a15aca:	vmovups ZMMWORD PTR [rsp+0x500],zmm4
  a15ad2:	vsubps zmm7,zmm27,zmm7
  a15ad8:	vmovups ZMMWORD PTR [rsp+0x540],zmm7
  a15ae0:	vsubps zmm0,zmm1,zmm14
  a15ae6:	vmovups ZMMWORD PTR [rsp+0x580],zmm0
  a15aee:	vaddps zmm13,zmm1,zmm14
  a15af4:	vaddps zmm5,zmm5,zmm26
  a15afa:	vaddps zmm3,zmm6,zmm23
  a15b00:	vmovups ZMMWORD PTR [rsp+0x600],zmm3
  a15b08:	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff65f94e]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a15b12:	vaddps zmm31,zmm4,zmm7
  a15b18:	vaddps zmm1,zmm2,zmm31
  a15b1e:	vmovups ZMMWORD PTR [rsp+0x200],zmm1
  a15b26:	vfnmadd213ps zmm31,zmm0,zmm2
  a15b2c:	vmovaps zmm10,zmm0
  a15b32:	vmovaps zmm7,zmm0
  a15b38:	vmovaps zmm14,zmm0
  a15b3e:	vmovaps zmm15,zmm0
  a15b44:	vaddps zmm1,zmm5,zmm3
  a15b4a:	vmovaps zmm3,zmm5
  a15b50:	vmovaps zmm20,zmm0
  a15b56:	vmovaps zmm18,zmm0
  a15b5c:	vmovaps zmm27,zmm0
  a15b62:	vmovaps zmm4,zmm0
  a15b68:	vfnmadd213ps zmm0,zmm1,zmm13
  a15b6e:	vaddps zmm1,zmm13,zmm1
  a15b74:	vmovups ZMMWORD PTR [rsp+0x4c0],zmm1
  a15b7c:	vsubps zmm1,zmm17,ZMMWORD PTR [rsp-0x40]
  a15b84:	vsubps zmm8,zmm16,ZMMWORD PTR [rsp+0x40]
  a15b8c:	vmovups zmm2,ZMMWORD PTR [rsp+0x140]
  a15b94:	vaddps zmm9,zmm2,zmm22
  a15b9a:	vsubps zmm17,zmm22,zmm2
  a15ba0:	vaddps zmm11,zmm21,ZMMWORD PTR [rsp+0x5c0]
  a15ba8:	vaddps zmm13,zmm19,ZMMWORD PTR [rsp+0x7c0]
  a15bb0:	vsubps zmm24,zmm11,zmm13
  a15bb6:	vaddps zmm11,zmm11,zmm13
  a15bbc:	vmovups zmm2,ZMMWORD PTR [rsp+0x340]
  a15bc4:	vsubps zmm13,zmm12,zmm2
  a15bca:	vaddps zmm12,zmm12,zmm2
  a15bd0:	vaddps zmm26,zmm1,zmm8
  a15bd6:	vsubps zmm22,zmm1,zmm8
  a15bdc:	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a15be4:	vaddps zmm8,zmm1,ZMMWORD PTR [rsp+0x680]
  a15bec:	vaddps zmm8,zmm8,ZMMWORD PTR [rsp+0x640]
  a15bf4:	vaddps zmm16,zmm30,ZMMWORD PTR [rsp+0x100]
  a15bfc:	vaddps zmm16,zmm16,zmm29
  a15c02:	vmovups zmm1,ZMMWORD PTR [rsp+0x80]
  a15c0a:	vaddps zmm19,zmm1,ZMMWORD PTR [rsp+0x880]
  a15c12:	vaddps zmm1,zmm19,ZMMWORD PTR [rsp+0x840]
  a15c1a:	vmovups ZMMWORD PTR [rsp+0x140],zmm1
  a15c22:	vmovups zmm1,ZMMWORD PTR [rsp+0xc0]
  a15c2a:	vaddps zmm19,zmm1,ZMMWORD PTR [rsp+0x380]
  a15c32:	vaddps zmm19,zmm19,ZMMWORD PTR [rsp+0x300]
  a15c3a:	vmovups zmm1,ZMMWORD PTR [rsp+0x6c0]
  a15c42:	vaddps zmm23,zmm1,ZMMWORD PTR [rsp+0x2c0]
  a15c4a:	vaddps zmm23,zmm23,ZMMWORD PTR [rsp+0x280]
  a15c52:	vsubps zmm28,zmm19,zmm23
  a15c58:	vaddps zmm30,zmm19,zmm23
  a15c5e:	vmovups zmm1,ZMMWORD PTR [rsp]
  a15c65:	vaddps zmm19,zmm1,ZMMWORD PTR [rsp+0x740]
  a15c6d:	vaddps zmm23,zmm19,ZMMWORD PTR [rsp+0x700]
  a15c75:	vaddps zmm19,zmm8,zmm16
  a15c7b:	vsubps zmm29,zmm8,zmm16
  a15c81:	vmovups zmm1,ZMMWORD PTR [rsp+0x400]
  a15c89:	vfnmadd213ps zmm10,zmm1,zmm9
  a15c8f:	vaddps zmm1,zmm9,zmm1
  a15c95:	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a15c9d:	vmovups zmm1,ZMMWORD PTR [rsp+0x1c0]
  a15ca5:	vfnmadd213ps zmm7,zmm1,zmm13
  a15cab:	vaddps zmm1,zmm13,zmm1
  a15cb1:	vmovups ZMMWORD PTR [rsp+0xc0],zmm1
  a15cb9:	vmovups zmm6,ZMMWORD PTR [rsp+0x780]
  a15cc1:	vfnmadd213ps zmm14,zmm6,zmm25
  a15cc7:	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff65f603]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a15cd1:	vmulps zmm13,zmm9,ZMMWORD PTR [rsp+0x3c0]
  a15cd9:	vsubps zmm1,zmm14,zmm13
  a15cdf:	vmovups ZMMWORD PTR [rsp+0x80],zmm1
  a15ce7:	vaddps zmm1,zmm14,zmm13
  a15ced:	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a15cf5:	vmovups zmm16,ZMMWORD PTR [rsp+0x180]
  a15cfd:	vmovups zmm5,ZMMWORD PTR [rsp+0x580]
  a15d05:	vfnmadd213ps zmm15,zmm16,zmm5
  a15d0b:	vmulps zmm13,zmm9,ZMMWORD PTR [rsp+0x240]
  a15d13:	vaddps zmm1,zmm15,zmm13
  a15d19:	vmovups ZMMWORD PTR [rsp+0x100],zmm1
  a15d21:	vsubps zmm1,zmm15,zmm13
  a15d27:	vmovups ZMMWORD PTR [rsp+0x1c0],zmm1
  a15d2f:	vsubps zmm13,zmm3,ZMMWORD PTR [rsp+0x600]
  a15d37:	vmovups zmm1,ZMMWORD PTR [rsp+0x500]
  a15d3f:	vsubps zmm14,zmm1,ZMMWORD PTR [rsp+0x540]
  a15d47:	vmulps zmm15,zmm9,ZMMWORD PTR [rsp+0x480]
  a15d4f:	vmulps zmm21,zmm9,ZMMWORD PTR [rsp+0x440]
  a15d57:	vmulps zmm3,zmm24,zmm9
  a15d5d:	vmulps zmm8,zmm22,zmm9
  a15d63:	vmulps zmm22,zmm28,zmm9
  a15d69:	vmulps zmm24,zmm29,zmm9
  a15d6f:	vmulps zmm1,zmm13,zmm9
  a15d75:	vmulps zmm2,zmm14,zmm9
  a15d7b:	vfnmadd213ps zmm20,zmm26,zmm17
  a15d81:	vaddps zmm13,zmm17,zmm26
  a15d87:	vfnmadd213ps zmm18,zmm11,zmm12
  a15d8d:	vaddps zmm11,zmm12,zmm11
  a15d93:	vmovups zmm12,ZMMWORD PTR [rsp+0x140]
  a15d9b:	vfnmadd213ps zmm27,zmm19,zmm12
  a15da1:	vsubps zmm26,zmm27,zmm22
  a15da7:	vaddps zmm29,zmm27,zmm22
  a15dad:	vfnmadd213ps zmm4,zmm30,zmm23
  a15db3:	vaddps zmm28,zmm4,zmm24
  a15db9:	vsubps zmm9,zmm4,zmm24
  a15dbf:	vaddps zmm24,zmm10,zmm15
  a15dc5:	vsubps zmm27,zmm10,zmm15
  a15dcb:	vsubps zmm4,zmm7,zmm21
  a15dd1:	vmovups ZMMWORD PTR [rsp+0x40],zmm4
  a15dd9:	vaddps zmm10,zmm7,zmm21
  a15ddf:	vaddps zmm14,zmm25,zmm6
  a15de5:	vaddps zmm4,zmm5,zmm16
  a15deb:	vsubps zmm6,zmm31,zmm1
  a15df1:	vaddps zmm15,zmm31,zmm1
  a15df7:	vaddps zmm21,zmm0,zmm2
  a15dfd:	vsubps zmm0,zmm0,zmm2
  a15e03:	vaddps zmm22,zmm20,zmm3
  a15e09:	vsubps zmm17,zmm20,zmm3
  a15e0f:	vsubps zmm31,zmm18,zmm8
  a15e15:	vaddps zmm1,zmm18,zmm8
  a15e1b:	vaddps zmm2,zmm12,zmm19
  a15e21:	vaddps zmm3,zmm23,zmm30
  a15e27:	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff67968f]        # 8f4c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c970>
  a15e31:	vmovaps zmm23,zmm2
  a15e37:	vpermt2ps zmm23,zmm7,zmm3
  a15e3d:	vunpcklps zmm5,zmm2,zmm3
  a15e43:	vmovups ZMMWORD PTR [rsp],zmm5
  a15e4a:	vmovaps ymm8,YMMWORD PTR [rip+0xffffffffff660dee]        # 76c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x40f0>
  a15e52:	vpermt2ps zmm2,zmm8,zmm3
  a15e58:	vmovaps zmm19,zmm17
  a15e5e:	vpermt2ps zmm19,zmm7,zmm1
  a15e64:	vunpcklps zmm3,zmm17,zmm1
  a15e6a:	vmovups ZMMWORD PTR [rsp+0x480],zmm3
  a15e72:	vpermt2ps zmm17,zmm8,zmm1
  a15e78:	vmovaps zmm16,zmm15
  a15e7e:	vpermt2ps zmm16,zmm7,zmm0
  a15e84:	vunpcklps zmm1,zmm15,zmm0
  a15e8a:	vmovups ZMMWORD PTR [rsp+0x440],zmm1
  a15e92:	vpermt2ps zmm15,zmm8,zmm0
  a15e98:	vmovaps zmm18,zmm14
  a15e9e:	vpermt2ps zmm18,zmm7,zmm4
  a15ea4:	vunpcklps zmm0,zmm14,zmm4
  a15eaa:	vmovups ZMMWORD PTR [rsp+0x400],zmm0
  a15eb2:	vpermt2ps zmm14,zmm8,zmm4
  a15eb8:	vmovaps zmm12,zmm27
  a15ebe:	vpermt2ps zmm12,zmm7,zmm10
  a15ec4:	vunpcklps zmm0,zmm27,zmm10
  a15eca:	vmovups ZMMWORD PTR [rsp+0x180],zmm0
  a15ed2:	vpermt2ps zmm27,zmm8,zmm10
  a15ed8:	vmovaps zmm10,zmm29
  a15ede:	vpermt2ps zmm10,zmm7,zmm9
  a15ee4:	vunpcklps zmm0,zmm29,zmm9
  a15eea:	vmovups ZMMWORD PTR [rsp+0x3c0],zmm0
  a15ef2:	vpermt2ps zmm29,zmm8,zmm9
  a15ef8:	vmovaps zmm30,zmm13
  a15efe:	vpermt2ps zmm30,zmm7,zmm11
  a15f04:	vunpcklps zmm0,zmm13,zmm11
  a15f0a:	vmovups ZMMWORD PTR [rsp+0x380],zmm0
  a15f12:	vpermt2ps zmm13,zmm8,zmm11
  a15f18:	vmovaps zmm11,zmm6
  a15f1e:	vpermt2ps zmm11,zmm7,zmm21
  a15f24:	vunpcklps zmm0,zmm6,zmm21
  a15f2a:	vmovups ZMMWORD PTR [rsp+0x140],zmm0
  a15f32:	vpermt2ps zmm6,zmm8,zmm21
  a15f38:	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a15f40:	vmovaps zmm21,zmm1
  a15f46:	vmovups zmm0,ZMMWORD PTR [rsp+0x1c0]
  a15f4e:	vpermt2ps zmm21,zmm7,zmm0
  a15f54:	vunpcklps zmm3,zmm1,zmm0
  a15f5a:	vmovups ZMMWORD PTR [rsp+0x340],zmm3
  a15f62:	vpermt2ps zmm1,zmm8,zmm0
  a15f68:	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a15f70:	vmovups zmm1,ZMMWORD PTR [rsp-0x40]
  a15f78:	vmovaps zmm25,zmm1
  a15f7e:	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a15f86:	vpermt2ps zmm25,zmm7,zmm0
  a15f8c:	vunpcklps zmm3,zmm1,zmm0
  a15f92:	vmovups ZMMWORD PTR [rsp+0x1c0],zmm3
  a15f9a:	vpermt2ps zmm1,zmm8,zmm0
  a15fa0:	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a15fa8:	vmovaps zmm20,zmm26
  a15fae:	vpermt2ps zmm20,zmm7,zmm28
  a15fb4:	vunpcklps zmm0,zmm26,zmm28
  a15fba:	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a15fc2:	vpermt2ps zmm26,zmm8,zmm28
  a15fc8:	vmovaps zmm3,zmm22
  a15fce:	vpermt2ps zmm3,zmm7,zmm31
  a15fd4:	vunpcklps zmm0,zmm22,zmm31
  a15fda:	vmovups ZMMWORD PTR [rsp+0x300],zmm0
  a15fe2:	vpermt2ps zmm22,zmm8,zmm31
  a15fe8:	vmovups zmm28,ZMMWORD PTR [rsp+0x200]
  a15ff0:	vmovaps zmm5,zmm28
  a15ff6:	vmovups zmm4,ZMMWORD PTR [rsp+0x4c0]
  a15ffe:	vpermt2ps zmm5,zmm7,zmm4
  a16004:	vunpcklps zmm0,zmm28,zmm4
  a1600a:	vmovups ZMMWORD PTR [rsp+0x2c0],zmm0
  a16012:	vpermt2ps zmm28,zmm8,zmm4
  a16018:	vmovups zmm1,ZMMWORD PTR [rsp+0x80]
  a16020:	vmovaps zmm31,zmm1
  a16026:	vmovups zmm4,ZMMWORD PTR [rsp+0x100]
  a1602e:	vpermt2ps zmm31,zmm7,zmm4
  a16034:	vunpcklps zmm9,zmm1,zmm4
  a1603a:	vpermt2ps zmm1,zmm8,zmm4
  a16040:	vmovaps zmm4,zmm1
  a16046:	vmovups zmm0,ZMMWORD PTR [rsp+0x40]
  a1604e:	vpermi2ps zmm7,zmm24,zmm0
  a16054:	vunpcklps zmm1,zmm24,zmm0
  a1605a:	vpermt2ps zmm24,zmm8,zmm0
  a16060:	vmovups ZMMWORD PTR [rsi],zmm23
  a16066:	vmovups zmm0,ZMMWORD PTR [rsp]
  a1606d:	vextractf32x4 XMMWORD PTR [rsi+0x60],zmm0,0x3
  a16075:	vmovups YMMWORD PTR [rsi+0x40],ymm2
  a1607a:	vmovups ZMMWORD PTR [rsi+0x70],zmm19
  a16084:	vmovups zmm0,ZMMWORD PTR [rsp+0x480]
  a1608c:	vextractf32x4 XMMWORD PTR [rsi+0xd0],zmm0,0x3
  a16094:	vmovups YMMWORD PTR [rsi+0xb0],ymm17
  a1609e:	vmovups ZMMWORD PTR [rsi+0xe0],zmm16
  a160a8:	vmovups zmm0,ZMMWORD PTR [rsp+0x440]
  a160b0:	vextractf32x4 XMMWORD PTR [rsi+0x140],zmm0,0x3
  a160b8:	vmovups YMMWORD PTR [rsi+0x120],ymm15
  a160c0:	vmovups ZMMWORD PTR [rsi+0x150],zmm18
  a160ca:	vmovups zmm0,ZMMWORD PTR [rsp+0x400]
  a160d2:	vextractf32x4 XMMWORD PTR [rsi+0x1b0],zmm0,0x3
  a160da:	vmovups YMMWORD PTR [rsi+0x190],ymm14
  a160e2:	vmovups ZMMWORD PTR [rsi+0x1c0],zmm12
  a160e9:	vmovups zmm0,ZMMWORD PTR [rsp+0x180]
  a160f1:	vextractf32x4 XMMWORD PTR [rsi+0x220],zmm0,0x3
  a160f9:	vmovups YMMWORD PTR [rsi+0x200],ymm27
  a16100:	vmovups ZMMWORD PTR [rsi+0x230],zmm10
  a1610a:	vmovups zmm0,ZMMWORD PTR [rsp+0x3c0]
  a16112:	vextractf32x4 XMMWORD PTR [rsi+0x290],zmm0,0x3
  a1611a:	vmovups YMMWORD PTR [rsi+0x270],ymm29
  a16124:	vmovups ZMMWORD PTR [rsi+0x2a0],zmm30
  a1612e:	vmovups zmm0,ZMMWORD PTR [rsp+0x380]
  a16136:	vextractf32x4 XMMWORD PTR [rsi+0x300],zmm0,0x3
  a1613e:	vmovups YMMWORD PTR [rsi+0x2e0],ymm13
  a16146:	vmovups ZMMWORD PTR [rsi+0x310],zmm11
  a16150:	vmovups zmm0,ZMMWORD PTR [rsp+0x140]
  a16158:	vextractf32x4 XMMWORD PTR [rsi+0x370],zmm0,0x3
  a16160:	vmovups YMMWORD PTR [rsi+0x350],ymm6
  a16168:	vmovups ZMMWORD PTR [rsi+0x380],zmm21
  a1616f:	vmovups zmm0,ZMMWORD PTR [rsp+0x340]
  a16177:	vextractf32x4 XMMWORD PTR [rsi+0x3e0],zmm0,0x3
  a1617f:	vmovups zmm0,ZMMWORD PTR [rsp-0x80]
  a16187:	vmovups YMMWORD PTR [rsi+0x3c0],ymm0
  a1618f:	vmovups ZMMWORD PTR [rsi+0x3f0],zmm25
  a16199:	vmovups zmm0,ZMMWORD PTR [rsp+0x1c0]
  a161a1:	vextractf32x4 XMMWORD PTR [rsi+0x450],zmm0,0x3
  a161a9:	vmovups zmm0,ZMMWORD PTR [rsp-0x40]
  a161b1:	vmovups YMMWORD PTR [rsi+0x430],ymm0
  a161b9:	vmovups ZMMWORD PTR [rsi+0x460],zmm20
  a161c3:	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a161cb:	vextractf32x4 XMMWORD PTR [rsi+0x4c0],zmm0,0x3
  a161d3:	vmovups YMMWORD PTR [rsi+0x4a0],ymm26
  a161da:	vmovups ZMMWORD PTR [rsi+0x4d0],zmm3
  a161e4:	vmovups zmm0,ZMMWORD PTR [rsp+0x300]
  a161ec:	vextractf32x4 XMMWORD PTR [rsi+0x530],zmm0,0x3
  a161f4:	vmovups YMMWORD PTR [rsi+0x510],ymm22
  a161fe:	vmovups ZMMWORD PTR [rsi+0x540],zmm5
  a16205:	vmovups zmm0,ZMMWORD PTR [rsp+0x2c0]
  a1620d:	vextractf32x4 XMMWORD PTR [rsi+0x5a0],zmm0,0x3
  a16215:	vmovups YMMWORD PTR [rsi+0x580],ymm28
  a1621c:	vmovups ZMMWORD PTR [rsi+0x5b0],zmm31
  a16226:	vextractf32x4 XMMWORD PTR [rsi+0x610],zmm9,0x3
  a1622e:	vmovups YMMWORD PTR [rsi+0x5f0],ymm4
  a16236:	vmovups ZMMWORD PTR [rsi+0x620],zmm7
  a16240:	vextractf32x4 XMMWORD PTR [rsi+0x680],zmm1,0x3
  a16248:	vmovups YMMWORD PTR [rsi+0x660],ymm24
  a1624f:	add    rsp,0x8c8
  a16256:	vzeroupper
  a16259:	ret
