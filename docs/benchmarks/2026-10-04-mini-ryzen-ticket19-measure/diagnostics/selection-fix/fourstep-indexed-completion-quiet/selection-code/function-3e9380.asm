
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000003e9380 <fastfft::fft::FftImpl<T>::run_chunk>:
  3e9380:	push   rbp
  3e9381:	push   r15
  3e9383:	push   r14
  3e9385:	push   r13
  3e9387:	push   r12
  3e9389:	push   rbx
  3e938a:	sub    rsp,0xe8
  3e9391:	mov    r10,rcx
  3e9394:	mov    r11,rdx
  3e9397:	mov    r13,rsi
  3e939a:	mov    r12,rdi
  3e939d:	mov    rax,QWORD PTR [rdi]
  3e93a0:	sub    rax,0x2
  3e93a4:	mov    ecx,0x2
  3e93a9:	cmovae rcx,rax
  3e93ad:	movzx  eax,BYTE PTR [rdi+0xb8]
  3e93b4:	lea    rdx,[rip+0xffffffffffcb3fe9]        # 9d3a4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a854>
  3e93bb:	movsxd rcx,DWORD PTR [rdx+rcx*4]
  3e93bf:	add    rcx,rdx
  3e93c2:	jmp    rcx
  3e93c4:	test   r9b,r9b
  3e93c7:	je     3ea9d9 <fastfft::fft::FftImpl<T>::run_chunk+0x1659>
  3e93cd:	mov    rdx,QWORD PTR [r12+0xb0]
  3e93d5:	shl    rdx,0x3
  3e93d9:	mov    rdi,r11
  3e93dc:	mov    rsi,r13
  3e93df:	add    rsp,0xe8
  3e93e6:	pop    rbx
  3e93e7:	pop    r12
  3e93e9:	pop    r13
  3e93eb:	pop    r14
  3e93ed:	pop    r15
  3e93ef:	pop    rbp
  3e93f0:	jmp    QWORD PTR [rip+0xe612ea]        # 124a6e0 <memcpy@GLIBC_2.14>
  3e93f6:	test   r8,r8
  3e93f9:	je     3e9500 <fastfft::fft::FftImpl<T>::run_chunk+0x180>
  3e93ff:	lea    rcx,[r10+0x3f]
  3e9403:	and    rcx,0xffffffffffffffc0
  3e9407:	sub    rcx,r10
  3e940a:	mov    rdx,rcx
  3e940d:	shr    rdx,0x3
  3e9411:	bt     ecx,0x2
  3e9415:	adc    rdx,0x0
  3e9419:	cmp    r8,rdx
  3e941c:	jb     3eab50 <fastfft::fft::FftImpl<T>::run_chunk+0x17d0>
  3e9422:	add    r10,rcx
  3e9425:	movzx  ecx,BYTE PTR [r12+0xa8]
  3e942e:	lea    rdx,[rip+0xffffffffffcb3f93]        # 9d3c8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a878>
  3e9435:	movsxd rcx,DWORD PTR [rdx+rcx*4]
  3e9439:	add    rcx,rdx
  3e943c:	jmp    rcx
  3e943e:	lea    rdi,[r12+0x8]
  3e9443:	movzx  ecx,BYTE PTR [r12+0x58]
  3e9449:	lea    rdx,[rip+0xffffffffffcb3f64]        # 9d3b4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a864>
  3e9450:	movsxd rcx,DWORD PTR [rdx+rcx*4]
  3e9454:	add    rcx,rdx
  3e9457:	jmp    rcx
  3e9459:	test   al,al
  3e945b:	mov    QWORD PTR [rsp+0x28],r11
  3e9460:	je     3e9681 <fastfft::fft::FftImpl<T>::run_chunk+0x301>
  3e9466:	test   r8,r8
  3e9469:	je     3e96e9 <fastfft::fft::FftImpl<T>::run_chunk+0x369>
  3e946f:	lea    rax,[r10+0x3f]
  3e9473:	and    rax,0xffffffffffffffc0
  3e9477:	sub    rax,r10
  3e947a:	mov    rcx,rax
  3e947d:	shr    rcx,0x3
  3e9481:	bt     eax,0x2
  3e9485:	adc    rcx,0x0
  3e9489:	sub    r8,rcx
  3e948c:	jb     3eab50 <fastfft::fft::FftImpl<T>::run_chunk+0x17d0>
  3e9492:	add    r10,rax
  3e9495:	jmp    3e96ec <fastfft::fft::FftImpl<T>::run_chunk+0x36c>
  3e949a:	test   r8,r8
  3e949d:	je     3e94c5 <fastfft::fft::FftImpl<T>::run_chunk+0x145>
  3e949f:	lea    rcx,[r10+0x3f]
  3e94a3:	and    rcx,0xffffffffffffffc0
  3e94a7:	sub    rcx,r10
  3e94aa:	mov    rdx,rcx
  3e94ad:	shr    rdx,0x3
  3e94b1:	bt     ecx,0x2
  3e94b5:	adc    rdx,0x0
  3e94b9:	cmp    r8,rdx
  3e94bc:	jb     3eab50 <fastfft::fft::FftImpl<T>::run_chunk+0x17d0>
  3e94c2:	add    r10,rcx
  3e94c5:	mov    rbx,r10
  3e94c8:	mov    rdi,QWORD PTR [r12+0x78]
  3e94cd:	mov    esi,DWORD PTR [r12+0x80]
  3e94d5:	add    r12,0x8
  3e94d9:	movzx  eax,al
  3e94dc:	movzx  r10d,r9b
  3e94e0:	mov    rdx,r12
  3e94e3:	mov    rcx,r13
  3e94e6:	mov    r8,r11
  3e94e9:	mov    r9,rbx
  3e94ec:	push   rax
  3e94ed:	push   r10
  3e94ef:	call   c71240 <fastfft::engine::stockham_f32>
  3e94f4:	add    rsp,0xf8
  3e94fb:	jmp    3ea9e0 <fastfft::fft::FftImpl<T>::run_chunk+0x1660>
  3e9500:	movzx  ecx,BYTE PTR [r12+0xa8]
  3e9509:	lea    rdx,[rip+0xffffffffffcb3eb8]        # 9d3c8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a878>
  3e9510:	movsxd rcx,DWORD PTR [rdx+rcx*4]
  3e9514:	add    rcx,rdx
  3e9517:	jmp    rcx
  3e9519:	movzx  r8d,al
  3e951d:	mov    rdi,r12
  3e9520:	mov    rsi,r13
  3e9523:	mov    rdx,r11
  3e9526:	mov    rcx,r10
  3e9529:	add    rsp,0xe8
  3e9530:	pop    rbx
  3e9531:	pop    r12
  3e9533:	pop    r13
  3e9535:	pop    r14
  3e9537:	pop    r15
  3e9539:	pop    rbp
  3e953a:	jmp    e86bc0 <<fastfft::isa::scalar::S32 as fastfft::engine::fourstep::PanelVector>::execute>
  3e953f:	movzx  r9d,al
  3e9543:	mov    rsi,r13
  3e9546:	mov    rdx,r11
  3e9549:	mov    rcx,r10
  3e954c:	add    rsp,0xe8
  3e9553:	pop    rbx
  3e9554:	pop    r12
  3e9556:	pop    r13
  3e9558:	pop    r14
  3e955a:	pop    r15
  3e955c:	pop    rbp
  3e955d:	jmp    fb17c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::bluestein::BluesteinVector>::execute>
  3e9562:	movzx  r9d,al
  3e9566:	mov    rsi,r13
  3e9569:	mov    rdx,r11
  3e956c:	mov    rcx,r10
  3e956f:	add    rsp,0xe8
  3e9576:	pop    rbx
  3e9577:	pop    r12
  3e9579:	pop    r13
  3e957b:	pop    r14
  3e957d:	pop    r15
  3e957f:	pop    rbp
  3e9580:	jmp    faed80 <<fastfft::isa::x86::F32x8 as fastfft::engine::bluestein::BluesteinVector>::execute>
  3e9585:	movzx  r9d,al
  3e9589:	mov    rsi,r13
  3e958c:	mov    rdx,r11
  3e958f:	mov    rcx,r10
  3e9592:	add    rsp,0xe8
  3e9599:	pop    rbx
  3e959a:	pop    r12
  3e959c:	pop    r13
  3e959e:	pop    r14
  3e95a0:	pop    r15
  3e95a2:	pop    rbp
  3e95a3:	jmp    fb2480 <<fastfft::isa::x86::F32x8v as fastfft::engine::bluestein::BluesteinVector>::execute>
  3e95a8:	test   al,al
  3e95aa:	mov    QWORD PTR [rsp+0x28],r11
  3e95af:	je     3e96b5 <fastfft::fft::FftImpl<T>::run_chunk+0x335>
  3e95b5:	test   r8,r8
  3e95b8:	je     3e9793 <fastfft::fft::FftImpl<T>::run_chunk+0x413>
  3e95be:	lea    rax,[r10+0x3f]
  3e95c2:	and    rax,0xffffffffffffffc0
  3e95c6:	sub    rax,r10
  3e95c9:	mov    rcx,rax
  3e95cc:	shr    rcx,0x3
  3e95d0:	bt     eax,0x2
  3e95d4:	adc    rcx,0x0
  3e95d8:	sub    r8,rcx
  3e95db:	jb     3eab50 <fastfft::fft::FftImpl<T>::run_chunk+0x17d0>
  3e95e1:	add    r10,rax
  3e95e4:	jmp    3e9796 <fastfft::fft::FftImpl<T>::run_chunk+0x416>
  3e95e9:	movzx  r8d,al
  3e95ed:	mov    rdi,r12
  3e95f0:	mov    rsi,r13
  3e95f3:	mov    rdx,r11
  3e95f6:	mov    rcx,r10
  3e95f9:	add    rsp,0xe8
  3e9600:	pop    rbx
  3e9601:	pop    r12
  3e9603:	pop    r13
  3e9605:	pop    r14
  3e9607:	pop    r15
  3e9609:	pop    rbp
  3e960a:	jmp    f2f540 <<fastfft::isa::x86::F32x16 as fastfft::engine::fourstep::PanelVector>::execute>
  3e960f:	movzx  r8d,al
  3e9613:	mov    rdi,r12
  3e9616:	mov    rsi,r13
  3e9619:	mov    rdx,r11
  3e961c:	mov    rcx,r10
  3e961f:	add    rsp,0xe8
  3e9626:	pop    rbx
  3e9627:	pop    r12
  3e9629:	pop    r13
  3e962b:	pop    r14
  3e962d:	pop    r15
  3e962f:	pop    rbp
  3e9630:	jmp    db9940 <<fastfft::isa::x86::F32x8 as fastfft::engine::fourstep::PanelVector>::execute>
  3e9635:	movzx  r8d,al
  3e9639:	mov    rdi,r12
  3e963c:	mov    rsi,r13
  3e963f:	mov    rdx,r11
  3e9642:	mov    rcx,r10
  3e9645:	add    rsp,0xe8
  3e964c:	pop    rbx
  3e964d:	pop    r12
  3e964f:	pop    r13
  3e9651:	pop    r14
  3e9653:	pop    r15
  3e9655:	pop    rbp
  3e9656:	jmp    f613c0 <<fastfft::isa::x86::F32x8v as fastfft::engine::fourstep::PanelVector>::execute>
  3e965b:	movzx  r8d,al
  3e965f:	mov    rdi,r12
  3e9662:	mov    rsi,r13
  3e9665:	mov    rdx,r11
  3e9668:	mov    rcx,r10
  3e966b:	add    rsp,0xe8
  3e9672:	pop    rbx
  3e9673:	pop    r12
  3e9675:	pop    r13
  3e9677:	pop    r14
  3e9679:	pop    r15
  3e967b:	pop    rbp
  3e967c:	jmp    da2ec0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute>
  3e9681:	test   r8,r8
  3e9684:	je     3ea0c3 <fastfft::fft::FftImpl<T>::run_chunk+0xd43>
  3e968a:	lea    rax,[r10+0x3f]
  3e968e:	and    rax,0xffffffffffffffc0
  3e9692:	sub    rax,r10
  3e9695:	mov    rcx,rax
  3e9698:	shr    rcx,0x3
  3e969c:	bt     eax,0x2
  3e96a0:	adc    rcx,0x0
  3e96a4:	sub    r8,rcx
  3e96a7:	jb     3eab50 <fastfft::fft::FftImpl<T>::run_chunk+0x17d0>
  3e96ad:	add    r10,rax
  3e96b0:	jmp    3ea0c6 <fastfft::fft::FftImpl<T>::run_chunk+0xd46>
  3e96b5:	test   r8,r8
  3e96b8:	je     3ea173 <fastfft::fft::FftImpl<T>::run_chunk+0xdf3>
  3e96be:	lea    rax,[r10+0x3f]
  3e96c2:	and    rax,0xffffffffffffffc0
  3e96c6:	sub    rax,r10
  3e96c9:	mov    rcx,rax
  3e96cc:	shr    rcx,0x3
  3e96d0:	bt     eax,0x2
  3e96d4:	adc    rcx,0x0
  3e96d8:	sub    r8,rcx
  3e96db:	jb     3eab50 <fastfft::fft::FftImpl<T>::run_chunk+0x17d0>
  3e96e1:	add    r10,rax
  3e96e4:	jmp    3ea176 <fastfft::fft::FftImpl<T>::run_chunk+0xdf6>
  3e96e9:	xor    r8d,r8d
  3e96ec:	mov    rbp,QWORD PTR [r12+0x50]
  3e96f1:	sub    r8,rbp
  3e96f4:	jb     3eab68 <fastfft::fft::FftImpl<T>::run_chunk+0x17e8>
  3e96fa:	mov    rbx,QWORD PTR [r12+0x10]
  3e96ff:	mov    r15,QWORD PTR [r12+0x48]
  3e9704:	test   r15,r15
  3e9707:	je     3e976f <fastfft::fft::FftImpl<T>::run_chunk+0x3ef>
  3e9709:	cmp    r15,0x4
  3e970d:	jae    3e992e <fastfft::fft::FftImpl<T>::run_chunk+0x5ae>
  3e9713:	xor    ecx,ecx
  3e9715:	mov    rax,r15
  3e9718:	lea    rdx,[r10+rcx*8]
  3e971c:	lea    rsi,[rcx*8+0x4]
  3e9724:	add    rsi,r13
  3e9727:	lea    rcx,[rbx+rcx*8]
  3e972b:	xor    edi,edi
  3e972d:	nop    DWORD PTR [rax]
  3e9730:	movsd  xmm0,QWORD PTR [rcx+rdi*8]
  3e9735:	movss  xmm1,DWORD PTR [rsi+rdi*8-0x4]
  3e973b:	movss  xmm2,DWORD PTR [rsi+rdi*8]
  3e9740:	shufps xmm1,xmm1,0x0
  3e9744:	mulps  xmm1,xmm0
  3e9747:	shufps xmm2,xmm2,0x0
  3e974b:	shufps xmm0,xmm0,0xe1
  3e974f:	mulps  xmm0,xmm2
  3e9752:	movaps xmm2,xmm1
  3e9755:	addps  xmm2,xmm0
  3e9758:	subps  xmm1,xmm0
  3e975b:	shufps xmm1,xmm2,0x1
  3e975f:	shufps xmm1,xmm2,0xe2
  3e9763:	movlps QWORD PTR [rdx+rdi*8],xmm1
  3e9767:	inc    rdi
  3e976a:	cmp    rax,rdi
  3e976d:	jne    3e9730 <fastfft::fft::FftImpl<T>::run_chunk+0x3b0>
  3e976f:	lea    r14,[r10+rbp*8]
  3e9773:	mov    rax,rbp
  3e9776:	sub    rax,r15
  3e9779:	jbe    3e9a04 <fastfft::fft::FftImpl<T>::run_chunk+0x684>
  3e977f:	lea    rdx,[r15+0x1]
  3e9783:	test   al,0x1
  3e9785:	jne    3e99ed <fastfft::fft::FftImpl<T>::run_chunk+0x66d>
  3e978b:	mov    r11,r15
  3e978e:	jmp    3e99fb <fastfft::fft::FftImpl<T>::run_chunk+0x67b>
  3e9793:	xor    r8d,r8d
  3e9796:	mov    rax,QWORD PTR [r12+0x50]
  3e979b:	mov    QWORD PTR [rsp+0x10],rax
  3e97a0:	sub    r8,rax
  3e97a3:	jb     3eab68 <fastfft::fft::FftImpl<T>::run_chunk+0x17e8>
  3e97a9:	mov    QWORD PTR [rsp+0x20],r8
  3e97ae:	mov    rax,QWORD PTR [r12+0x10]
  3e97b3:	mov    QWORD PTR [rsp+0x48],rax
  3e97b8:	mov    rbp,QWORD PTR [r12+0x48]
  3e97bd:	mov    rax,rbp
  3e97c0:	and    rax,0xfffffffffffffffc
  3e97c4:	mov    QWORD PTR [rsp+0x40],rax
  3e97c9:	mov    rcx,rbp
  3e97cc:	shr    rcx,0x2
  3e97d0:	mov    eax,ebp
  3e97d2:	and    eax,0x3
  3e97d5:	cmp    rax,0x1
  3e97d9:	sbb    rcx,0xffffffffffffffff
  3e97dd:	mov    QWORD PTR [rsp+0x18],rcx
  3e97e2:	test   rbp,rbp
  3e97e5:	mov    QWORD PTR [rsp+0x8],r10
  3e97ea:	je     3e98e6 <fastfft::fft::FftImpl<T>::run_chunk+0x566>
  3e97f0:	lea    r15,[rbp*8+0x0]
  3e97f8:	xor    ebx,ebx
  3e97fa:	movaps xmm5,XMMWORD PTR [rip+0xffffffffffc88d7f]        # 72580 <__abi_tag+0x72284>
  3e9801:	mov    r14,QWORD PTR [rsp+0x18]
  3e9806:	jmp    3e9871 <fastfft::fft::FftImpl<T>::run_chunk+0x4f1>
  3e9808:	nop    DWORD PTR [rax+rax*1+0x0]
  3e9810:	movups xmm1,XMMWORD PTR [r13+rbx*8+0x0]
  3e9816:	movups xmm2,XMMWORD PTR [r13+rbx*8+0x10]
  3e981c:	movaps xmm0,xmm1
  3e981f:	shufps xmm0,xmm2,0x88
  3e9823:	shufps xmm1,xmm2,0xdd
  3e9827:	xorps  xmm1,xmm5
  3e982a:	dec    r14
  3e982d:	mov    rax,QWORD PTR [rsp+0x48]
  3e9832:	movups xmm2,XMMWORD PTR [rax+rbx*8]
  3e9836:	movups xmm3,XMMWORD PTR [rax+rbx*8+0x10]
  3e983b:	movaps xmm4,xmm0
  3e983e:	mulps  xmm0,xmm3
  3e9841:	mulps  xmm3,xmm1
  3e9844:	mulps  xmm4,xmm2
  3e9847:	subps  xmm4,xmm3
  3e984a:	mulps  xmm1,xmm2
  3e984d:	addps  xmm0,xmm1
  3e9850:	movaps xmm1,xmm4
  3e9853:	unpcklps xmm1,xmm0
  3e9856:	unpckhps xmm4,xmm0
  3e9859:	movups XMMWORD PTR [r10+rbx*8],xmm1
  3e985e:	movups XMMWORD PTR [r10+rbx*8+0x10],xmm4
  3e9864:	add    r15,0xffffffffffffffe0
  3e9868:	add    rbx,0x4
  3e986c:	test   r14,r14
  3e986f:	je     3e98e6 <fastfft::fft::FftImpl<T>::run_chunk+0x566>
  3e9871:	cmp    rbx,QWORD PTR [rsp+0x40]
  3e9876:	jb     3e9810 <fastfft::fft::FftImpl<T>::run_chunk+0x490>
  3e9878:	lea    rsi,[rbx*8+0x0]
  3e9880:	add    rsi,r13
  3e9883:	xorps  xmm0,xmm0
  3e9886:	movaps XMMWORD PTR [rsp+0xc0],xmm0
  3e988e:	movaps XMMWORD PTR [rsp+0xb0],xmm0
  3e9896:	movaps XMMWORD PTR [rsp+0xa0],xmm0
  3e989e:	movaps XMMWORD PTR [rsp+0x90],xmm0
  3e98a6:	movaps XMMWORD PTR [rsp+0x80],xmm0
  3e98ae:	movaps XMMWORD PTR [rsp+0x70],xmm0
  3e98b3:	movaps XMMWORD PTR [rsp+0x60],xmm0
  3e98b8:	movaps XMMWORD PTR [rsp+0x50],xmm0
  3e98bd:	lea    rdi,[rsp+0x50]
  3e98c2:	mov    rdx,r15
  3e98c5:	call   QWORD PTR [rip+0xe60e15]        # 124a6e0 <memcpy@GLIBC_2.14>
  3e98cb:	movaps xmm5,XMMWORD PTR [rip+0xffffffffffc88cae]        # 72580 <__abi_tag+0x72284>
  3e98d2:	mov    r10,QWORD PTR [rsp+0x8]
  3e98d7:	movaps xmm1,XMMWORD PTR [rsp+0x50]
  3e98dc:	movaps xmm2,XMMWORD PTR [rsp+0x60]
  3e98e1:	jmp    3e981c <fastfft::fft::FftImpl<T>::run_chunk+0x49c>
  3e98e6:	mov    rax,QWORD PTR [rsp+0x10]
  3e98eb:	lea    rcx,[r10+rax*8]
  3e98ef:	mov    QWORD PTR [rsp+0x30],rcx
  3e98f4:	lea    r13,[rbp+0x3]
  3e98f8:	and    r13,0xfffffffffffffffc
  3e98fc:	sub    rax,r13
  3e98ff:	jbe    3e9c98 <fastfft::fft::FftImpl<T>::run_chunk+0x918>
  3e9905:	mov    r14,rax
  3e9908:	shr    r14,0x2
  3e990c:	mov    rcx,QWORD PTR [rsp+0x10]
  3e9911:	and    ecx,0x3
  3e9914:	cmp    rcx,0x1
  3e9918:	sbb    r14,0xffffffffffffffff
  3e991c:	test   r14b,0x1
  3e9920:	jne    3e9c65 <fastfft::fft::FftImpl<T>::run_chunk+0x8e5>
  3e9926:	mov    rbx,r14
  3e9929:	jmp    3e9c8e <fastfft::fft::FftImpl<T>::run_chunk+0x90e>
  3e992e:	lea    rax,[r10+r15*8]
  3e9932:	lea    rcx,[r15*8+0x0]
  3e993a:	add    rcx,r13
  3e993d:	lea    rdx,[rbx+r15*8]
  3e9941:	cmp    r10,rcx
  3e9944:	setb   dil
  3e9948:	cmp    r13,rax
  3e994b:	setb   r9b
  3e994f:	cmp    r10,rdx
  3e9952:	setb   dl
  3e9955:	cmp    rbx,rax
  3e9958:	setb   sil
  3e995c:	xor    ecx,ecx
  3e995e:	mov    rax,r15
  3e9961:	test   dil,r9b
  3e9964:	jne    3e9718 <fastfft::fft::FftImpl<T>::run_chunk+0x398>
  3e996a:	and    dl,sil
  3e996d:	jne    3e9718 <fastfft::fft::FftImpl<T>::run_chunk+0x398>
  3e9973:	mov    rcx,r15
  3e9976:	and    rcx,0xfffffffffffffffc
  3e997a:	mov    eax,r15d
  3e997d:	and    eax,0x3
  3e9980:	xor    edx,edx
  3e9982:	movups xmm0,XMMWORD PTR [r13+rdx*8+0x0]
  3e9988:	movups xmm1,XMMWORD PTR [r13+rdx*8+0x10]
  3e998e:	movaps xmm2,xmm0
  3e9991:	shufps xmm2,xmm1,0x88
  3e9995:	shufps xmm0,xmm1,0xdd
  3e9999:	movups xmm1,XMMWORD PTR [rbx+rdx*8]
  3e999d:	movups xmm3,XMMWORD PTR [rbx+rdx*8+0x10]
  3e99a2:	movaps xmm4,xmm1
  3e99a5:	shufps xmm4,xmm3,0x88
  3e99a9:	shufps xmm1,xmm3,0xdd
  3e99ad:	movaps xmm3,xmm0
  3e99b0:	mulps  xmm3,xmm1
  3e99b3:	mulps  xmm1,xmm2
  3e99b6:	mulps  xmm2,xmm4
  3e99b9:	addps  xmm3,xmm2
  3e99bc:	mulps  xmm4,xmm0
  3e99bf:	subps  xmm1,xmm4
  3e99c2:	movaps xmm0,xmm3
  3e99c5:	unpcklps xmm0,xmm1
  3e99c8:	unpckhps xmm3,xmm1
  3e99cb:	movups XMMWORD PTR [r10+rdx*8+0x10],xmm3
  3e99d1:	movups XMMWORD PTR [r10+rdx*8],xmm0
  3e99d6:	add    rdx,0x4
  3e99da:	cmp    rcx,rdx
  3e99dd:	jne    3e9982 <fastfft::fft::FftImpl<T>::run_chunk+0x602>
  3e99df:	cmp    r15,rcx
  3e99e2:	jne    3e9718 <fastfft::fft::FftImpl<T>::run_chunk+0x398>
  3e99e8:	jmp    3e976f <fastfft::fft::FftImpl<T>::run_chunk+0x3ef>
  3e99ed:	dec    rax
  3e99f0:	mov    QWORD PTR [r10+r15*8],0x0
  3e99f8:	mov    r11,rdx
  3e99fb:	cmp    rbp,rdx
  3e99fe:	jne    3e9fda <fastfft::fft::FftImpl<T>::run_chunk+0xc5a>
  3e9a04:	mov    rax,QWORD PTR [r12+0x38]
  3e9a09:	mov    rsi,QWORD PTR [r12+0x40]
  3e9a0e:	mov    rdx,QWORD PTR [rsi+0x10]
  3e9a12:	mov    r9,QWORD PTR [rsi+0x38]
  3e9a16:	dec    rdx
  3e9a19:	and    rdx,0xfffffffffffffff0
  3e9a1d:	lea    r13,[rax+rdx*1]
  3e9a21:	add    r13,0x10
  3e9a25:	mov    rdi,r13
  3e9a28:	mov    rsi,r10
  3e9a2b:	mov    rdx,rbp
  3e9a2e:	mov    rcx,r14
  3e9a31:	mov    QWORD PTR [rsp+0x20],r8
  3e9a36:	mov    QWORD PTR [rsp+0x8],r10
  3e9a3b:	mov    QWORD PTR [rsp+0x18],r9
  3e9a40:	call   r9
  3e9a43:	mov    rsi,QWORD PTR [rsp+0x8]
  3e9a48:	test   rbp,rbp
  3e9a4b:	je     3e9aec <fastfft::fft::FftImpl<T>::run_chunk+0x76c>
  3e9a51:	mov    r8,QWORD PTR [r12+0x28]
  3e9a56:	cmp    rbp,0x4
  3e9a5a:	jb     3e9a74 <fastfft::fft::FftImpl<T>::run_chunk+0x6f4>
  3e9a5c:	lea    rax,[r8+rbp*8]
  3e9a60:	cmp    rsi,rax
  3e9a63:	setb   al
  3e9a66:	cmp    r8,r14
  3e9a69:	setb   dl
  3e9a6c:	test   al,dl
  3e9a6e:	je     3ea3b7 <fastfft::fft::FftImpl<T>::run_chunk+0x1037>
  3e9a74:	xor    edx,edx
  3e9a76:	mov    rax,rbp
  3e9a79:	lea    r8,[r8+rdx*8]
  3e9a7d:	add    r8,0x4
  3e9a81:	lea    rdx,[rsi+rdx*8]
  3e9a85:	add    rdx,0x4
  3e9a89:	xor    edi,edi
  3e9a8b:	movaps xmm0,XMMWORD PTR [rip+0xffffffffffc88aee]        # 72580 <__abi_tag+0x72284>
  3e9a92:	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  3e9aa0:	movss  xmm1,DWORD PTR [rdx+rdi*8-0x4]
  3e9aa6:	movss  xmm2,DWORD PTR [rdx+rdi*8]
  3e9aab:	movss  xmm3,DWORD PTR [r8+rdi*8-0x4]
  3e9ab2:	movss  xmm4,DWORD PTR [r8+rdi*8]
  3e9ab8:	movaps xmm5,xmm2
  3e9abb:	mulss  xmm5,xmm3
  3e9abf:	movaps xmm6,xmm1
  3e9ac2:	mulss  xmm6,xmm4
  3e9ac6:	addss  xmm6,xmm5
  3e9aca:	xorps  xmm6,xmm0
  3e9acd:	mulss  xmm1,xmm3
  3e9ad1:	mulss  xmm2,xmm4
  3e9ad5:	subss  xmm1,xmm2
  3e9ad9:	movss  DWORD PTR [rdx+rdi*8-0x4],xmm1
  3e9adf:	movss  DWORD PTR [rdx+rdi*8],xmm6
  3e9ae4:	inc    rdi
  3e9ae7:	cmp    rax,rdi
  3e9aea:	jne    3e9aa0 <fastfft::fft::FftImpl<T>::run_chunk+0x720>
  3e9aec:	mov    rdi,r13
  3e9aef:	mov    rdx,rbp
  3e9af2:	mov    rcx,r14
  3e9af5:	mov    r8,QWORD PTR [rsp+0x20]
  3e9afa:	call   QWORD PTR [rsp+0x18]
  3e9afe:	test   r15,r15
  3e9b01:	je     3ea9d9 <fastfft::fft::FftImpl<T>::run_chunk+0x1659>
  3e9b07:	cmp    r15,0x4
  3e9b0b:	jae    3e9b9f <fastfft::fft::FftImpl<T>::run_chunk+0x81f>
  3e9b11:	xor    ecx,ecx
  3e9b13:	mov    rax,r15
  3e9b16:	mov    rdx,QWORD PTR [rsp+0x8]
  3e9b1b:	lea    rdx,[rdx+rcx*8]
  3e9b1f:	add    rdx,0x4
  3e9b23:	mov    rsi,QWORD PTR [rsp+0x28]
  3e9b28:	lea    rsi,[rsi+rcx*8]
  3e9b2c:	add    rsi,0x4
  3e9b30:	lea    rcx,[rbx+rcx*8]
  3e9b34:	add    rcx,0x4
  3e9b38:	xor    edi,edi
  3e9b3a:	movaps xmm0,XMMWORD PTR [rip+0xffffffffffc88a3f]        # 72580 <__abi_tag+0x72284>
  3e9b41:	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  3e9b50:	movss  xmm1,DWORD PTR [rcx+rdi*8-0x4]
  3e9b56:	movss  xmm2,DWORD PTR [rcx+rdi*8]
  3e9b5b:	movss  xmm3,DWORD PTR [rdx+rdi*8-0x4]
  3e9b61:	movss  xmm4,DWORD PTR [rdx+rdi*8]
  3e9b66:	movaps xmm5,xmm3
  3e9b69:	mulss  xmm5,xmm2
  3e9b6d:	movaps xmm6,xmm4
  3e9b70:	mulss  xmm6,xmm1
  3e9b74:	subss  xmm5,xmm6
  3e9b78:	xorps  xmm5,xmm0
  3e9b7b:	mulss  xmm3,xmm1
  3e9b7f:	mulss  xmm4,xmm2
  3e9b83:	addss  xmm4,xmm3
  3e9b87:	movss  DWORD PTR [rsi+rdi*8-0x4],xmm4
  3e9b8d:	movss  DWORD PTR [rsi+rdi*8],xmm5
  3e9b92:	inc    rdi
  3e9b95:	cmp    rax,rdi
  3e9b98:	jne    3e9b50 <fastfft::fft::FftImpl<T>::run_chunk+0x7d0>
  3e9b9a:	jmp    3ea9d9 <fastfft::fft::FftImpl<T>::run_chunk+0x1659>
  3e9b9f:	mov    r8,QWORD PTR [rsp+0x28]
  3e9ba4:	lea    rcx,[r8+r15*8]
  3e9ba8:	mov    r9,QWORD PTR [rsp+0x8]
  3e9bad:	lea    rax,[r9+r15*8]
  3e9bb1:	lea    rdx,[rbx+r15*8]
  3e9bb5:	cmp    r8,rax
  3e9bb8:	setb   sil
  3e9bbc:	cmp    r9,rcx
  3e9bbf:	setb   dil
  3e9bc3:	cmp    r8,rdx
  3e9bc6:	setb   al
  3e9bc9:	cmp    rbx,rcx
  3e9bcc:	setb   dl
  3e9bcf:	xor    ecx,ecx
  3e9bd1:	test   sil,dil
  3e9bd4:	jne    3e9b13 <fastfft::fft::FftImpl<T>::run_chunk+0x793>
  3e9bda:	and    al,dl
  3e9bdc:	jne    3e9b13 <fastfft::fft::FftImpl<T>::run_chunk+0x793>
  3e9be2:	mov    rcx,r15
  3e9be5:	and    rcx,0xfffffffffffffffc
  3e9be9:	mov    eax,r15d
  3e9bec:	and    eax,0x3
  3e9bef:	xor    edx,edx
  3e9bf1:	movaps xmm0,XMMWORD PTR [rip+0xffffffffffc88988]        # 72580 <__abi_tag+0x72284>
  3e9bf8:	movups xmm1,XMMWORD PTR [r9+rdx*8]
  3e9bfd:	movups xmm2,XMMWORD PTR [r9+rdx*8+0x10]
  3e9c03:	movaps xmm3,xmm1
  3e9c06:	shufps xmm3,xmm2,0x88
  3e9c0a:	shufps xmm1,xmm2,0xdd
  3e9c0e:	movups xmm2,XMMWORD PTR [rbx+rdx*8]
  3e9c12:	movups xmm4,XMMWORD PTR [rbx+rdx*8+0x10]
  3e9c17:	movaps xmm5,xmm2
  3e9c1a:	shufps xmm5,xmm4,0x88
  3e9c1e:	shufps xmm2,xmm4,0xdd
  3e9c22:	movaps xmm4,xmm1
  3e9c25:	mulps  xmm4,xmm5
  3e9c28:	mulps  xmm5,xmm3
  3e9c2b:	mulps  xmm3,xmm2
  3e9c2e:	subps  xmm3,xmm4
  3e9c31:	xorps  xmm3,xmm0
  3e9c34:	mulps  xmm2,xmm1
  3e9c37:	addps  xmm2,xmm5
  3e9c3a:	movaps xmm1,xmm2
  3e9c3d:	unpcklps xmm1,xmm3
  3e9c40:	unpckhps xmm2,xmm3
  3e9c43:	movups XMMWORD PTR [r8+rdx*8+0x10],xmm2
  3e9c49:	movups XMMWORD PTR [r8+rdx*8],xmm1
  3e9c4e:	add    rdx,0x4
  3e9c52:	cmp    rcx,rdx
  3e9c55:	jne    3e9bf8 <fastfft::fft::FftImpl<T>::run_chunk+0x878>
  3e9c57:	cmp    r15,rcx
  3e9c5a:	jne    3e9b16 <fastfft::fft::FftImpl<T>::run_chunk+0x796>
  3e9c60:	jmp    3ea9d9 <fastfft::fft::FftImpl<T>::run_chunk+0x1659>
  3e9c65:	lea    rbx,[r14-0x1]
  3e9c69:	lea    rdi,[r10+r13*8]
  3e9c6d:	add    r13,0x4
  3e9c71:	cmp    rax,0x4
  3e9c75:	mov    edx,0x4
  3e9c7a:	cmovb  rdx,rax
  3e9c7e:	shl    edx,0x3
  3e9c81:	xor    esi,esi
  3e9c83:	call   QWORD PTR [rip+0xe60a6f]        # 124a6f8 <memset@GLIBC_2.2.5>
  3e9c89:	mov    r10,QWORD PTR [rsp+0x8]
  3e9c8e:	cmp    r14,0x1
  3e9c92:	jne    3ea02d <fastfft::fft::FftImpl<T>::run_chunk+0xcad>
  3e9c98:	mov    rax,QWORD PTR [r12+0x38]
  3e9c9d:	mov    rcx,QWORD PTR [r12+0x40]
  3e9ca2:	mov    rdx,QWORD PTR [rcx+0x10]
  3e9ca6:	mov    r9,QWORD PTR [rcx+0x38]
  3e9caa:	dec    rdx
  3e9cad:	and    rdx,0xfffffffffffffff0
  3e9cb1:	lea    rdi,[rax+rdx*1]
  3e9cb5:	add    rdi,0x10
  3e9cb9:	mov    QWORD PTR [rsp+0xd8],rdi
  3e9cc1:	mov    rsi,r10
  3e9cc4:	mov    rbx,QWORD PTR [rsp+0x10]
  3e9cc9:	mov    rdx,rbx
  3e9ccc:	mov    rcx,QWORD PTR [rsp+0x30]
  3e9cd1:	mov    r8,QWORD PTR [rsp+0x20]
  3e9cd6:	mov    QWORD PTR [rsp+0xe0],r9
  3e9cde:	call   r9
  3e9ce1:	mov    rsi,QWORD PTR [rsp+0x8]
  3e9ce6:	test   rbx,rbx
  3e9ce9:	je     3e9e57 <fastfft::fft::FftImpl<T>::run_chunk+0xad7>
  3e9cef:	mov    rcx,QWORD PTR [rsp+0x10]
  3e9cf4:	mov    rdx,rcx
  3e9cf7:	and    rdx,0xfffffffffffffffc
  3e9cfb:	mov    r14,rcx
  3e9cfe:	shr    r14,0x2
  3e9d02:	mov    eax,ecx
  3e9d04:	and    eax,0x3
  3e9d07:	cmp    rax,0x1
  3e9d0b:	sbb    r14,0xffffffffffffffff
  3e9d0f:	mov    r15,QWORD PTR [r12+0x28]
  3e9d14:	lea    r12,[rcx*8+0x0]
  3e9d1c:	xor    ebx,ebx
  3e9d1e:	mov    QWORD PTR [rsp+0x38],rdx
  3e9d23:	jmp    3e9d88 <fastfft::fft::FftImpl<T>::run_chunk+0xa08>
  3e9d25:	data16 cs nop WORD PTR [rax+rax*1+0x0]
  3e9d30:	lea    rax,[rsp+0x70]
  3e9d35:	xorps  xmm0,xmm0
  3e9d38:	movaps XMMWORD PTR [rax+0x50],xmm0
  3e9d3c:	movaps XMMWORD PTR [rax+0x40],xmm0
  3e9d40:	movaps XMMWORD PTR [rax+0x30],xmm0
  3e9d44:	movaps XMMWORD PTR [rax+0x20],xmm0
  3e9d48:	movaps XMMWORD PTR [rax+0x10],xmm0
  3e9d4c:	movaps XMMWORD PTR [rax],xmm0
  3e9d4f:	movaps XMMWORD PTR [rsp+0x50],xmm1
  3e9d54:	movaps XMMWORD PTR [rsp+0x60],xmm2
  3e9d59:	mov    rdi,r13
  3e9d5c:	lea    rsi,[rsp+0x50]
  3e9d61:	mov    rdx,r12
  3e9d64:	call   QWORD PTR [rip+0xe60976]        # 124a6e0 <memcpy@GLIBC_2.14>
  3e9d6a:	mov    rdx,QWORD PTR [rsp+0x38]
  3e9d6f:	mov    rsi,QWORD PTR [rsp+0x8]
  3e9d74:	dec    r14
  3e9d77:	add    r12,0xffffffffffffffe0
  3e9d7b:	add    rbx,0x4
  3e9d7f:	test   r14,r14
  3e9d82:	je     3e9e57 <fastfft::fft::FftImpl<T>::run_chunk+0xad7>
  3e9d88:	lea    rax,[rsi+rbx*8]
  3e9d8c:	cmp    rbx,rdx
  3e9d8f:	jae    3e9da0 <fastfft::fft::FftImpl<T>::run_chunk+0xa20>
  3e9d91:	mov    r13,rax
  3e9d94:	movups xmm1,XMMWORD PTR [rsi+rbx*8]
  3e9d98:	movups xmm2,XMMWORD PTR [rsi+rbx*8+0x10]
  3e9d9d:	jmp    3e9e02 <fastfft::fft::FftImpl<T>::run_chunk+0xa82>
  3e9d9f:	nop
  3e9da0:	xorps  xmm0,xmm0
  3e9da3:	movaps XMMWORD PTR [rsp+0xc0],xmm0
  3e9dab:	movaps XMMWORD PTR [rsp+0xb0],xmm0
  3e9db3:	movaps XMMWORD PTR [rsp+0xa0],xmm0
  3e9dbb:	movaps XMMWORD PTR [rsp+0x90],xmm0
  3e9dc3:	movaps XMMWORD PTR [rsp+0x80],xmm0
  3e9dcb:	movaps XMMWORD PTR [rsp+0x70],xmm0
  3e9dd0:	movaps XMMWORD PTR [rsp+0x60],xmm0
  3e9dd5:	movaps XMMWORD PTR [rsp+0x50],xmm0
  3e9dda:	lea    rdi,[rsp+0x50]
  3e9ddf:	mov    r13,rax
  3e9de2:	mov    rsi,rax
  3e9de5:	mov    rdx,r12
  3e9de8:	call   QWORD PTR [rip+0xe608f2]        # 124a6e0 <memcpy@GLIBC_2.14>
  3e9dee:	mov    rdx,QWORD PTR [rsp+0x38]
  3e9df3:	mov    rsi,QWORD PTR [rsp+0x8]
  3e9df8:	movaps xmm1,XMMWORD PTR [rsp+0x50]
  3e9dfd:	movaps xmm2,XMMWORD PTR [rsp+0x60]
  3e9e02:	movaps xmm0,xmm1
  3e9e05:	shufps xmm0,xmm2,0x88
  3e9e09:	shufps xmm1,xmm2,0xdd
  3e9e0d:	movups xmm3,XMMWORD PTR [r15+rbx*8]
  3e9e12:	movups xmm4,XMMWORD PTR [r15+rbx*8+0x10]
  3e9e18:	movaps xmm5,xmm1
  3e9e1b:	mulps  xmm5,xmm4
  3e9e1e:	movaps xmm2,xmm0
  3e9e21:	mulps  xmm2,xmm3
  3e9e24:	subps  xmm2,xmm5
  3e9e27:	mulps  xmm1,xmm3
  3e9e2a:	mulps  xmm0,xmm4
  3e9e2d:	addps  xmm0,xmm1
  3e9e30:	xorps  xmm0,XMMWORD PTR [rip+0xffffffffffc88749]        # 72580 <__abi_tag+0x72284>
  3e9e37:	movaps xmm1,xmm2
  3e9e3a:	unpcklps xmm1,xmm0
  3e9e3d:	unpckhps xmm2,xmm0
  3e9e40:	cmp    rbx,rdx
  3e9e43:	jae    3e9d30 <fastfft::fft::FftImpl<T>::run_chunk+0x9b0>
  3e9e49:	movups XMMWORD PTR [rsi+rbx*8],xmm1
  3e9e4d:	movups XMMWORD PTR [rsi+rbx*8+0x10],xmm2
  3e9e52:	jmp    3e9d74 <fastfft::fft::FftImpl<T>::run_chunk+0x9f4>
  3e9e57:	mov    rdi,QWORD PTR [rsp+0xd8]
  3e9e5f:	mov    rdx,QWORD PTR [rsp+0x10]
  3e9e64:	mov    rcx,QWORD PTR [rsp+0x30]
  3e9e69:	mov    r8,QWORD PTR [rsp+0x20]
  3e9e6e:	call   QWORD PTR [rsp+0xe0]
  3e9e75:	test   rbp,rbp
  3e9e78:	mov    rbx,QWORD PTR [rsp+0x40]
  3e9e7d:	je     3ea9d9 <fastfft::fft::FftImpl<T>::run_chunk+0x1659>
  3e9e83:	lea    r14,[rsp+0x70]
  3e9e88:	shl    rbp,0x3
  3e9e8c:	xor    r12d,r12d
  3e9e8f:	lea    r15,[rsp+0x50]
  3e9e94:	mov    r13,QWORD PTR [rip+0xe60845]        # 124a6e0 <memcpy@GLIBC_2.14>
  3e9e9b:	jmp    3e9efa <fastfft::fft::FftImpl<T>::run_chunk+0xb7a>
  3e9e9d:	nop    DWORD PTR [rax]
  3e9ea0:	mov    rax,QWORD PTR [rsp+0x28]
  3e9ea5:	lea    rdi,[rax+r12*8]
  3e9ea9:	xorps  xmm0,xmm0
  3e9eac:	movaps XMMWORD PTR [r14+0x50],xmm0
  3e9eb1:	movaps XMMWORD PTR [r14+0x40],xmm0
  3e9eb6:	movaps XMMWORD PTR [r14+0x30],xmm0
  3e9ebb:	movaps XMMWORD PTR [r14+0x20],xmm0
  3e9ec0:	movaps XMMWORD PTR [r14+0x10],xmm0
  3e9ec5:	movaps XMMWORD PTR [r14],xmm0
  3e9ec9:	movaps XMMWORD PTR [rsp+0x50],xmm1
  3e9ece:	movaps XMMWORD PTR [rsp+0x60],xmm2
  3e9ed3:	mov    rsi,r15
  3e9ed6:	mov    rdx,rbp
  3e9ed9:	call   r13
  3e9edc:	mov    rax,QWORD PTR [rsp+0x18]
  3e9ee1:	dec    rax
  3e9ee4:	add    rbp,0xffffffffffffffe0
  3e9ee8:	add    r12,0x4
  3e9eec:	mov    QWORD PTR [rsp+0x18],rax
  3e9ef1:	test   rax,rax
  3e9ef4:	je     3ea9d9 <fastfft::fft::FftImpl<T>::run_chunk+0x1659>
  3e9efa:	cmp    r12,rbx
  3e9efd:	jae    3e9f20 <fastfft::fft::FftImpl<T>::run_chunk+0xba0>
  3e9eff:	mov    rax,QWORD PTR [rsp+0x8]
  3e9f04:	movups xmm1,XMMWORD PTR [rax+r12*8]
  3e9f09:	movups xmm2,XMMWORD PTR [rax+r12*8+0x10]
  3e9f0f:	jmp    3e9f76 <fastfft::fft::FftImpl<T>::run_chunk+0xbf6>
  3e9f11:	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  3e9f20:	mov    rax,QWORD PTR [rsp+0x8]
  3e9f25:	lea    rsi,[rax+r12*8]
  3e9f29:	xorps  xmm0,xmm0
  3e9f2c:	movaps XMMWORD PTR [rsp+0xc0],xmm0
  3e9f34:	movaps XMMWORD PTR [rsp+0xb0],xmm0
  3e9f3c:	movaps XMMWORD PTR [rsp+0xa0],xmm0
  3e9f44:	movaps XMMWORD PTR [rsp+0x90],xmm0
  3e9f4c:	movaps XMMWORD PTR [rsp+0x80],xmm0
  3e9f54:	movaps XMMWORD PTR [rsp+0x70],xmm0
  3e9f59:	movaps XMMWORD PTR [rsp+0x60],xmm0
  3e9f5e:	movaps XMMWORD PTR [rsp+0x50],xmm0
  3e9f63:	mov    rdi,r15
  3e9f66:	mov    rdx,rbp
  3e9f69:	call   r13
  3e9f6c:	movaps xmm1,XMMWORD PTR [rsp+0x50]
  3e9f71:	movaps xmm2,XMMWORD PTR [rsp+0x60]
  3e9f76:	movaps xmm0,xmm1
  3e9f79:	shufps xmm0,xmm2,0x88
  3e9f7d:	shufps xmm1,xmm2,0xdd
  3e9f81:	mov    rax,QWORD PTR [rsp+0x48]
  3e9f86:	movups xmm3,XMMWORD PTR [rax+r12*8]
  3e9f8b:	movups xmm4,XMMWORD PTR [rax+r12*8+0x10]
  3e9f91:	movaps xmm5,XMMWORD PTR [rip+0xffffffffffc885e8]        # 72580 <__abi_tag+0x72284>
  3e9f98:	xorps  xmm1,xmm5
  3e9f9b:	movaps xmm2,xmm0
  3e9f9e:	mulps  xmm0,xmm4
  3e9fa1:	mulps  xmm4,xmm1
  3e9fa4:	mulps  xmm2,xmm3
  3e9fa7:	subps  xmm2,xmm4
  3e9faa:	mulps  xmm1,xmm3
  3e9fad:	addps  xmm0,xmm1
  3e9fb0:	xorps  xmm0,xmm5
  3e9fb3:	movaps xmm1,xmm2
  3e9fb6:	unpcklps xmm1,xmm0
  3e9fb9:	unpckhps xmm2,xmm0
  3e9fbc:	cmp    r12,rbx
  3e9fbf:	jae    3e9ea0 <fastfft::fft::FftImpl<T>::run_chunk+0xb20>
  3e9fc5:	mov    rax,QWORD PTR [rsp+0x28]
  3e9fca:	movups XMMWORD PTR [rax+r12*8],xmm1
  3e9fcf:	movups XMMWORD PTR [rax+r12*8+0x10],xmm2
  3e9fd5:	jmp    3e9edc <fastfft::fft::FftImpl<T>::run_chunk+0xb5c>
  3e9fda:	lea    rdx,[r10+r11*8]
  3e9fde:	add    rdx,0x8
  3e9fe2:	mov    rsi,rbp
  3e9fe5:	sub    rsi,r11
  3e9fe8:	xor    edi,edi
  3e9fea:	jmp    3ea001 <fastfft::fft::FftImpl<T>::run_chunk+0xc81>
  3e9fec:	nop    DWORD PTR [rax+0x0]
  3e9ff0:	add    rdi,0x2
  3e9ff4:	add    r11,0x2
  3e9ff8:	cmp    rax,rdi
  3e9ffb:	je     3e9a04 <fastfft::fft::FftImpl<T>::run_chunk+0x684>
  3ea001:	cmp    rsi,rdi
  3ea004:	jne    3ea011 <fastfft::fft::FftImpl<T>::run_chunk+0xc91>
  3ea006:	lea    r9,[r11+0x1]
  3ea00a:	cmp    rbp,r9
  3ea00d:	je     3e9ff0 <fastfft::fft::FftImpl<T>::run_chunk+0xc70>
  3ea00f:	jmp    3ea023 <fastfft::fft::FftImpl<T>::run_chunk+0xca3>
  3ea011:	mov    QWORD PTR [rdx+rdi*8-0x8],0x0
  3ea01a:	lea    r9,[r11+0x1]
  3ea01e:	cmp    rbp,r9
  3ea021:	je     3e9ff0 <fastfft::fft::FftImpl<T>::run_chunk+0xc70>
  3ea023:	mov    QWORD PTR [rdx+rdi*8],0x0
  3ea02b:	jmp    3e9ff0 <fastfft::fft::FftImpl<T>::run_chunk+0xc70>
  3ea02d:	mov    r14,QWORD PTR [rsp+0x10]
  3ea032:	lea    r15,[r14*8+0x0]
  3ea03a:	lea    rax,[r13*8+0x0]
  3ea042:	sub    r15,rax
  3ea045:	sub    r14,r13
  3ea048:	lea    r13,[r10+r13*8]
  3ea04c:	add    r13,0x20
  3ea050:	jmp    3ea07d <fastfft::fft::FftImpl<T>::run_chunk+0xcfd>
  3ea052:	xorps  xmm0,xmm0
  3ea055:	movups XMMWORD PTR [r13+0x10],xmm0
  3ea05a:	movups XMMWORD PTR [r13+0x0],xmm0
  3ea05f:	mov    r10,QWORD PTR [rsp+0x8]
  3ea064:	add    rbx,0xfffffffffffffffe
  3ea068:	add    r15,0xffffffffffffffc0
  3ea06c:	add    r14,0xfffffffffffffff8
  3ea070:	add    r13,0x40
  3ea074:	test   rbx,rbx
  3ea077:	je     3e9c98 <fastfft::fft::FftImpl<T>::run_chunk+0x918>
  3ea07d:	lea    rdi,[r13-0x20]
  3ea081:	cmp    r14,0x3
  3ea085:	jbe    3ea09d <fastfft::fft::FftImpl<T>::run_chunk+0xd1d>
  3ea087:	xorps  xmm0,xmm0
  3ea08a:	movups XMMWORD PTR [rdi+0x10],xmm0
  3ea08e:	movups XMMWORD PTR [rdi],xmm0
  3ea091:	lea    rax,[r14-0x4]
  3ea095:	cmp    rax,0x3
  3ea099:	ja     3ea052 <fastfft::fft::FftImpl<T>::run_chunk+0xcd2>
  3ea09b:	jmp    3ea0b2 <fastfft::fft::FftImpl<T>::run_chunk+0xd32>
  3ea09d:	xor    esi,esi
  3ea09f:	mov    rdx,r15
  3ea0a2:	call   QWORD PTR [rip+0xe60650]        # 124a6f8 <memset@GLIBC_2.2.5>
  3ea0a8:	lea    rax,[r14-0x4]
  3ea0ac:	cmp    rax,0x3
  3ea0b0:	ja     3ea052 <fastfft::fft::FftImpl<T>::run_chunk+0xcd2>
  3ea0b2:	lea    rdx,[r15-0x20]
  3ea0b6:	mov    rdi,r13
  3ea0b9:	xor    esi,esi
  3ea0bb:	call   QWORD PTR [rip+0xe60637]        # 124a6f8 <memset@GLIBC_2.2.5>
  3ea0c1:	jmp    3ea05f <fastfft::fft::FftImpl<T>::run_chunk+0xcdf>
  3ea0c3:	xor    r8d,r8d
  3ea0c6:	mov    rbp,QWORD PTR [r12+0x50]
  3ea0cb:	sub    r8,rbp
  3ea0ce:	jb     3eab68 <fastfft::fft::FftImpl<T>::run_chunk+0x17e8>
  3ea0d4:	mov    rbx,QWORD PTR [r12+0x10]
  3ea0d9:	mov    r15,QWORD PTR [r12+0x48]
  3ea0de:	test   r15,r15
  3ea0e1:	je     3ea14f <fastfft::fft::FftImpl<T>::run_chunk+0xdcf>
  3ea0e3:	cmp    r15,0x4
  3ea0e7:	jae    3ea2f8 <fastfft::fft::FftImpl<T>::run_chunk+0xf78>
  3ea0ed:	xor    ecx,ecx
  3ea0ef:	mov    rax,r15
  3ea0f2:	lea    rdx,[r10+rcx*8]
  3ea0f6:	lea    rsi,[rcx*8+0x0]
  3ea0fe:	add    rsi,r13
  3ea101:	lea    rcx,[rbx+rcx*8]
  3ea105:	add    rcx,0x4
  3ea109:	xor    edi,edi
  3ea10b:	nop    DWORD PTR [rax+rax*1+0x0]
  3ea110:	movsd  xmm0,QWORD PTR [rsi+rdi*8]
  3ea115:	movss  xmm1,DWORD PTR [rcx+rdi*8-0x4]
  3ea11b:	movss  xmm2,DWORD PTR [rcx+rdi*8]
  3ea120:	shufps xmm1,xmm1,0x0
  3ea124:	mulps  xmm1,xmm0
  3ea127:	shufps xmm0,xmm0,0xe1
  3ea12b:	shufps xmm2,xmm2,0x0
  3ea12f:	mulps  xmm2,xmm0
  3ea132:	movaps xmm0,xmm1
  3ea135:	subps  xmm0,xmm2
  3ea138:	addps  xmm2,xmm1
  3ea13b:	shufps xmm2,xmm0,0x1
  3ea13f:	shufps xmm2,xmm0,0xe2
  3ea143:	movlps QWORD PTR [rdx+rdi*8],xmm2
  3ea147:	inc    rdi
  3ea14a:	cmp    rax,rdi
  3ea14d:	jne    3ea110 <fastfft::fft::FftImpl<T>::run_chunk+0xd90>
  3ea14f:	lea    r14,[r10+rbp*8]
  3ea153:	mov    rax,rbp
  3ea156:	sub    rax,r15
  3ea159:	jbe    3ea44e <fastfft::fft::FftImpl<T>::run_chunk+0x10ce>
  3ea15f:	lea    rdx,[r15+0x1]
  3ea163:	test   al,0x1
  3ea165:	jne    3ea437 <fastfft::fft::FftImpl<T>::run_chunk+0x10b7>
  3ea16b:	mov    r11,r15
  3ea16e:	jmp    3ea445 <fastfft::fft::FftImpl<T>::run_chunk+0x10c5>
  3ea173:	xor    r8d,r8d
  3ea176:	mov    rax,QWORD PTR [r12+0x50]
  3ea17b:	mov    QWORD PTR [rsp+0x10],rax
  3ea180:	sub    r8,rax
  3ea183:	jb     3eab68 <fastfft::fft::FftImpl<T>::run_chunk+0x17e8>
  3ea189:	mov    QWORD PTR [rsp+0x20],r8
  3ea18e:	mov    rax,QWORD PTR [r12+0x10]
  3ea193:	mov    QWORD PTR [rsp+0x48],rax
  3ea198:	mov    rbp,QWORD PTR [r12+0x48]
  3ea19d:	mov    rax,rbp
  3ea1a0:	and    rax,0xfffffffffffffffc
  3ea1a4:	mov    QWORD PTR [rsp+0x40],rax
  3ea1a9:	mov    rcx,rbp
  3ea1ac:	shr    rcx,0x2
  3ea1b0:	mov    eax,ebp
  3ea1b2:	and    eax,0x3
  3ea1b5:	cmp    rax,0x1
  3ea1b9:	sbb    rcx,0xffffffffffffffff
  3ea1bd:	mov    QWORD PTR [rsp+0x18],rcx
  3ea1c2:	test   rbp,rbp
  3ea1c5:	mov    QWORD PTR [rsp+0x8],r10
  3ea1ca:	je     3ea2b0 <fastfft::fft::FftImpl<T>::run_chunk+0xf30>
  3ea1d0:	lea    r15,[rbp*8+0x0]
  3ea1d8:	xor    ebx,ebx
  3ea1da:	mov    r14,QWORD PTR [rsp+0x18]
  3ea1df:	jmp    3ea242 <fastfft::fft::FftImpl<T>::run_chunk+0xec2>
  3ea1e1:	movups xmm1,XMMWORD PTR [r13+rbx*8+0x0]
  3ea1e7:	movups xmm2,XMMWORD PTR [r13+rbx*8+0x10]
  3ea1ed:	movaps xmm0,xmm1
  3ea1f0:	shufps xmm0,xmm2,0x88
  3ea1f4:	shufps xmm1,xmm2,0xdd
  3ea1f8:	dec    r14
  3ea1fb:	mov    rax,QWORD PTR [rsp+0x48]
  3ea200:	movups xmm2,XMMWORD PTR [rax+rbx*8]
  3ea204:	movups xmm3,XMMWORD PTR [rax+rbx*8+0x10]
  3ea209:	movaps xmm4,xmm1
  3ea20c:	mulps  xmm4,xmm3
  3ea20f:	movaps xmm5,xmm0
  3ea212:	mulps  xmm5,xmm2
  3ea215:	subps  xmm5,xmm4
  3ea218:	mulps  xmm1,xmm2
  3ea21b:	mulps  xmm0,xmm3
  3ea21e:	addps  xmm0,xmm1
  3ea221:	movaps xmm1,xmm5
  3ea224:	unpcklps xmm1,xmm0
  3ea227:	unpckhps xmm5,xmm0
  3ea22a:	movups XMMWORD PTR [r10+rbx*8],xmm1
  3ea22f:	movups XMMWORD PTR [r10+rbx*8+0x10],xmm5
  3ea235:	add    r15,0xffffffffffffffe0
  3ea239:	add    rbx,0x4
  3ea23d:	test   r14,r14
  3ea240:	je     3ea2b0 <fastfft::fft::FftImpl<T>::run_chunk+0xf30>
  3ea242:	cmp    rbx,QWORD PTR [rsp+0x40]
  3ea247:	jb     3ea1e1 <fastfft::fft::FftImpl<T>::run_chunk+0xe61>
  3ea249:	lea    rsi,[rbx*8+0x0]
  3ea251:	add    rsi,r13
  3ea254:	xorps  xmm0,xmm0
  3ea257:	movaps XMMWORD PTR [rsp+0xc0],xmm0
  3ea25f:	movaps XMMWORD PTR [rsp+0xb0],xmm0
  3ea267:	movaps XMMWORD PTR [rsp+0xa0],xmm0
  3ea26f:	movaps XMMWORD PTR [rsp+0x90],xmm0
  3ea277:	movaps XMMWORD PTR [rsp+0x80],xmm0
  3ea27f:	movaps XMMWORD PTR [rsp+0x70],xmm0
  3ea284:	movaps XMMWORD PTR [rsp+0x60],xmm0
  3ea289:	movaps XMMWORD PTR [rsp+0x50],xmm0
  3ea28e:	lea    rdi,[rsp+0x50]
  3ea293:	mov    rdx,r15
  3ea296:	call   QWORD PTR [rip+0xe60444]        # 124a6e0 <memcpy@GLIBC_2.14>
  3ea29c:	mov    r10,QWORD PTR [rsp+0x8]
  3ea2a1:	movaps xmm1,XMMWORD PTR [rsp+0x50]
  3ea2a6:	movaps xmm2,XMMWORD PTR [rsp+0x60]
  3ea2ab:	jmp    3ea1ed <fastfft::fft::FftImpl<T>::run_chunk+0xe6d>
  3ea2b0:	mov    rax,QWORD PTR [rsp+0x10]
  3ea2b5:	lea    rcx,[r10+rax*8]
  3ea2b9:	mov    QWORD PTR [rsp+0x30],rcx
  3ea2be:	lea    r13,[rbp+0x3]
  3ea2c2:	and    r13,0xfffffffffffffffc
  3ea2c6:	sub    rax,r13
  3ea2c9:	jbe    3ea6a3 <fastfft::fft::FftImpl<T>::run_chunk+0x1323>
  3ea2cf:	mov    r14,rax
  3ea2d2:	shr    r14,0x2
  3ea2d6:	mov    rcx,QWORD PTR [rsp+0x10]
  3ea2db:	and    ecx,0x3
  3ea2de:	cmp    rcx,0x1
  3ea2e2:	sbb    r14,0xffffffffffffffff
  3ea2e6:	test   r14b,0x1
  3ea2ea:	jne    3ea670 <fastfft::fft::FftImpl<T>::run_chunk+0x12f0>
  3ea2f0:	mov    rbx,r14
  3ea2f3:	jmp    3ea699 <fastfft::fft::FftImpl<T>::run_chunk+0x1319>
  3ea2f8:	lea    rax,[r10+r15*8]
  3ea2fc:	lea    rcx,[r15*8+0x0]
  3ea304:	add    rcx,r13
  3ea307:	lea    rdx,[rbx+r15*8]
  3ea30b:	cmp    r10,rcx
  3ea30e:	setb   dil
  3ea312:	cmp    r13,rax
  3ea315:	setb   r9b
  3ea319:	cmp    r10,rdx
  3ea31c:	setb   dl
  3ea31f:	cmp    rbx,rax
  3ea322:	setb   sil
  3ea326:	xor    ecx,ecx
  3ea328:	mov    rax,r15
  3ea32b:	test   dil,r9b
  3ea32e:	jne    3ea0f2 <fastfft::fft::FftImpl<T>::run_chunk+0xd72>
  3ea334:	and    dl,sil
  3ea337:	jne    3ea0f2 <fastfft::fft::FftImpl<T>::run_chunk+0xd72>
  3ea33d:	mov    rcx,r15
  3ea340:	and    rcx,0xfffffffffffffffc
  3ea344:	mov    eax,r15d
  3ea347:	and    eax,0x3
  3ea34a:	xor    edx,edx
  3ea34c:	movups xmm0,XMMWORD PTR [r13+rdx*8+0x0]
  3ea352:	movups xmm1,XMMWORD PTR [r13+rdx*8+0x10]
  3ea358:	movaps xmm2,xmm0
  3ea35b:	shufps xmm2,xmm1,0x88
  3ea35f:	shufps xmm0,xmm1,0xdd
  3ea363:	movups xmm1,XMMWORD PTR [rbx+rdx*8]
  3ea367:	movups xmm3,XMMWORD PTR [rbx+rdx*8+0x10]
  3ea36c:	movaps xmm4,xmm1
  3ea36f:	shufps xmm4,xmm3,0x88
  3ea373:	shufps xmm1,xmm3,0xdd
  3ea377:	movaps xmm3,xmm2
  3ea37a:	mulps  xmm3,xmm4
  3ea37d:	mulps  xmm4,xmm0
  3ea380:	mulps  xmm0,xmm1
  3ea383:	subps  xmm3,xmm0
  3ea386:	mulps  xmm1,xmm2
  3ea389:	addps  xmm1,xmm4
  3ea38c:	movaps xmm0,xmm3
  3ea38f:	unpcklps xmm0,xmm1
  3ea392:	unpckhps xmm3,xmm1
  3ea395:	movups XMMWORD PTR [r10+rdx*8+0x10],xmm3
  3ea39b:	movups XMMWORD PTR [r10+rdx*8],xmm0
  3ea3a0:	add    rdx,0x4
  3ea3a4:	cmp    rcx,rdx
  3ea3a7:	jne    3ea34c <fastfft::fft::FftImpl<T>::run_chunk+0xfcc>
  3ea3a9:	cmp    r15,rcx
  3ea3ac:	jne    3ea0f2 <fastfft::fft::FftImpl<T>::run_chunk+0xd72>
  3ea3b2:	jmp    3ea14f <fastfft::fft::FftImpl<T>::run_chunk+0xdcf>
  3ea3b7:	mov    rdx,rbp
  3ea3ba:	and    rdx,0xfffffffffffffffc
  3ea3be:	mov    eax,ebp
  3ea3c0:	and    eax,0x3
  3ea3c3:	xor    edi,edi
  3ea3c5:	movaps xmm0,XMMWORD PTR [rip+0xffffffffffc881b4]        # 72580 <__abi_tag+0x72284>
  3ea3cc:	movups xmm1,XMMWORD PTR [rsi+rdi*8]
  3ea3d0:	movups xmm2,XMMWORD PTR [rsi+rdi*8+0x10]
  3ea3d5:	movaps xmm3,xmm1
  3ea3d8:	shufps xmm3,xmm2,0x88
  3ea3dc:	shufps xmm1,xmm2,0xdd
  3ea3e0:	movups xmm2,XMMWORD PTR [r8+rdi*8]
  3ea3e5:	movups xmm4,XMMWORD PTR [r8+rdi*8+0x10]
  3ea3eb:	movaps xmm5,xmm2
  3ea3ee:	shufps xmm5,xmm4,0x88
  3ea3f2:	shufps xmm2,xmm4,0xdd
  3ea3f6:	movaps xmm4,xmm3
  3ea3f9:	mulps  xmm4,xmm2
  3ea3fc:	mulps  xmm2,xmm1
  3ea3ff:	mulps  xmm1,xmm5
  3ea402:	addps  xmm4,xmm1
  3ea405:	xorps  xmm4,xmm0
  3ea408:	mulps  xmm5,xmm3
  3ea40b:	subps  xmm5,xmm2
  3ea40e:	movaps xmm1,xmm5
  3ea411:	unpckhps xmm1,xmm4
  3ea414:	unpcklps xmm5,xmm4
  3ea417:	movups XMMWORD PTR [rsi+rdi*8],xmm5
  3ea41b:	movups XMMWORD PTR [rsi+rdi*8+0x10],xmm1
  3ea420:	add    rdi,0x4
  3ea424:	cmp    rdx,rdi
  3ea427:	jne    3ea3cc <fastfft::fft::FftImpl<T>::run_chunk+0x104c>
  3ea429:	cmp    rbp,rdx
  3ea42c:	jne    3e9a79 <fastfft::fft::FftImpl<T>::run_chunk+0x6f9>
  3ea432:	jmp    3e9aec <fastfft::fft::FftImpl<T>::run_chunk+0x76c>
  3ea437:	dec    rax
  3ea43a:	mov    QWORD PTR [r10+r15*8],0x0
  3ea442:	mov    r11,rdx
  3ea445:	cmp    rbp,rdx
  3ea448:	jne    3ea9eb <fastfft::fft::FftImpl<T>::run_chunk+0x166b>
  3ea44e:	mov    rax,QWORD PTR [r12+0x38]
  3ea453:	mov    rsi,QWORD PTR [r12+0x40]
  3ea458:	mov    rdx,QWORD PTR [rsi+0x10]
  3ea45c:	mov    r9,QWORD PTR [rsi+0x38]
  3ea460:	dec    rdx
  3ea463:	and    rdx,0xfffffffffffffff0
  3ea467:	lea    r13,[rax+rdx*1]
  3ea46b:	add    r13,0x10
  3ea46f:	mov    rdi,r13
  3ea472:	mov    rsi,r10
  3ea475:	mov    rdx,rbp
  3ea478:	mov    rcx,r14
  3ea47b:	mov    QWORD PTR [rsp+0x20],r8
  3ea480:	mov    QWORD PTR [rsp+0x8],r10
  3ea485:	mov    QWORD PTR [rsp+0x18],r9
  3ea48a:	call   r9
  3ea48d:	mov    rsi,QWORD PTR [rsp+0x8]
  3ea492:	test   rbp,rbp
  3ea495:	je     3ea52c <fastfft::fft::FftImpl<T>::run_chunk+0x11ac>
  3ea49b:	mov    r8,QWORD PTR [r12+0x28]
  3ea4a0:	cmp    rbp,0x4
  3ea4a4:	jb     3ea4be <fastfft::fft::FftImpl<T>::run_chunk+0x113e>
  3ea4a6:	lea    rax,[r8+rbp*8]
  3ea4aa:	cmp    rsi,rax
  3ea4ad:	setb   al
  3ea4b0:	cmp    r8,r14
  3ea4b3:	setb   dl
  3ea4b6:	test   al,dl
  3ea4b8:	je     3eaad0 <fastfft::fft::FftImpl<T>::run_chunk+0x1750>
  3ea4be:	xor    edx,edx
  3ea4c0:	mov    rax,rbp
  3ea4c3:	lea    r8,[r8+rdx*8]
  3ea4c7:	add    r8,0x4
  3ea4cb:	lea    rdx,[rsi+rdx*8]
  3ea4cf:	add    rdx,0x4
  3ea4d3:	xor    edi,edi
  3ea4d5:	movaps xmm0,XMMWORD PTR [rip+0xffffffffffc880a4]        # 72580 <__abi_tag+0x72284>
  3ea4dc:	nop    DWORD PTR [rax+0x0]
  3ea4e0:	movss  xmm1,DWORD PTR [rdx+rdi*8-0x4]
  3ea4e6:	movss  xmm2,DWORD PTR [rdx+rdi*8]
  3ea4eb:	movss  xmm3,DWORD PTR [r8+rdi*8-0x4]
  3ea4f2:	movss  xmm4,DWORD PTR [r8+rdi*8]
  3ea4f8:	movaps xmm5,xmm2
  3ea4fb:	mulss  xmm5,xmm3
  3ea4ff:	movaps xmm6,xmm1
  3ea502:	mulss  xmm6,xmm4
  3ea506:	addss  xmm6,xmm5
  3ea50a:	xorps  xmm6,xmm0
  3ea50d:	mulss  xmm1,xmm3
  3ea511:	mulss  xmm2,xmm4
  3ea515:	subss  xmm1,xmm2
  3ea519:	movss  DWORD PTR [rdx+rdi*8-0x4],xmm1
  3ea51f:	movss  DWORD PTR [rdx+rdi*8],xmm6
  3ea524:	inc    rdi
  3ea527:	cmp    rax,rdi
  3ea52a:	jne    3ea4e0 <fastfft::fft::FftImpl<T>::run_chunk+0x1160>
  3ea52c:	mov    rdi,r13
  3ea52f:	mov    rdx,rbp
  3ea532:	mov    rcx,r14
  3ea535:	mov    r8,QWORD PTR [rsp+0x20]
  3ea53a:	call   QWORD PTR [rsp+0x18]
  3ea53e:	test   r15,r15
  3ea541:	je     3ea9d9 <fastfft::fft::FftImpl<T>::run_chunk+0x1659>
  3ea547:	cmp    r15,0x4
  3ea54b:	jae    3ea5b4 <fastfft::fft::FftImpl<T>::run_chunk+0x1234>
  3ea54d:	xor    ecx,ecx
  3ea54f:	mov    rax,r15
  3ea552:	mov    rdx,QWORD PTR [rsp+0x8]
  3ea557:	lea    rdx,[rdx+rcx*8]
  3ea55b:	add    rdx,0x4
  3ea55f:	mov    rsi,QWORD PTR [rsp+0x28]
  3ea564:	lea    rsi,[rsi+rcx*8]
  3ea568:	lea    rcx,[rbx+rcx*8]
  3ea56c:	xor    edi,edi
  3ea56e:	xchg   ax,ax
  3ea570:	movsd  xmm0,QWORD PTR [rcx+rdi*8]
  3ea575:	movss  xmm1,DWORD PTR [rdx+rdi*8-0x4]
  3ea57b:	movss  xmm2,DWORD PTR [rdx+rdi*8]
  3ea580:	shufps xmm1,xmm1,0x0
  3ea584:	mulps  xmm1,xmm0
  3ea587:	shufps xmm2,xmm2,0x0
  3ea58b:	shufps xmm0,xmm0,0xe1
  3ea58f:	mulps  xmm0,xmm2
  3ea592:	movaps xmm2,xmm1
  3ea595:	addps  xmm2,xmm0
  3ea598:	subps  xmm1,xmm0
  3ea59b:	shufps xmm1,xmm2,0x1
  3ea59f:	shufps xmm1,xmm2,0xe2
  3ea5a3:	movlps QWORD PTR [rsi+rdi*8],xmm1
  3ea5a7:	inc    rdi
  3ea5aa:	cmp    rax,rdi
  3ea5ad:	jne    3ea570 <fastfft::fft::FftImpl<T>::run_chunk+0x11f0>
  3ea5af:	jmp    3ea9d9 <fastfft::fft::FftImpl<T>::run_chunk+0x1659>
  3ea5b4:	mov    r8,QWORD PTR [rsp+0x28]
  3ea5b9:	lea    rcx,[r8+r15*8]
  3ea5bd:	mov    r9,QWORD PTR [rsp+0x8]
  3ea5c2:	lea    rax,[r9+r15*8]
  3ea5c6:	lea    rdx,[rbx+r15*8]
  3ea5ca:	cmp    r8,rax
  3ea5cd:	setb   sil
  3ea5d1:	cmp    r9,rcx
  3ea5d4:	setb   dil
  3ea5d8:	cmp    r8,rdx
  3ea5db:	setb   al
  3ea5de:	cmp    rbx,rcx
  3ea5e1:	setb   dl
  3ea5e4:	xor    ecx,ecx
  3ea5e6:	test   sil,dil
  3ea5e9:	jne    3ea54f <fastfft::fft::FftImpl<T>::run_chunk+0x11cf>
  3ea5ef:	and    al,dl
  3ea5f1:	jne    3ea54f <fastfft::fft::FftImpl<T>::run_chunk+0x11cf>
  3ea5f7:	mov    rcx,r15
  3ea5fa:	and    rcx,0xfffffffffffffffc
  3ea5fe:	mov    eax,r15d
  3ea601:	and    eax,0x3
  3ea604:	xor    edx,edx
  3ea606:	movups xmm0,XMMWORD PTR [r9+rdx*8]
  3ea60b:	movups xmm1,XMMWORD PTR [r9+rdx*8+0x10]
  3ea611:	movaps xmm2,xmm0
  3ea614:	shufps xmm2,xmm1,0x88
  3ea618:	shufps xmm0,xmm1,0xdd
  3ea61c:	movups xmm1,XMMWORD PTR [rbx+rdx*8]
  3ea620:	movups xmm3,XMMWORD PTR [rbx+rdx*8+0x10]
  3ea625:	movaps xmm4,xmm1
  3ea628:	shufps xmm4,xmm3,0x88
  3ea62c:	shufps xmm1,xmm3,0xdd
  3ea630:	movaps xmm3,xmm0
  3ea633:	mulps  xmm3,xmm4
  3ea636:	mulps  xmm4,xmm2
  3ea639:	mulps  xmm2,xmm1
  3ea63c:	subps  xmm2,xmm3
  3ea63f:	mulps  xmm1,xmm0
  3ea642:	addps  xmm1,xmm4
  3ea645:	movaps xmm0,xmm1
  3ea648:	unpcklps xmm0,xmm2
  3ea64b:	unpckhps xmm1,xmm2
  3ea64e:	movups XMMWORD PTR [r8+rdx*8+0x10],xmm1
  3ea654:	movups XMMWORD PTR [r8+rdx*8],xmm0
  3ea659:	add    rdx,0x4
  3ea65d:	cmp    rcx,rdx
  3ea660:	jne    3ea606 <fastfft::fft::FftImpl<T>::run_chunk+0x1286>
  3ea662:	cmp    r15,rcx
  3ea665:	jne    3ea552 <fastfft::fft::FftImpl<T>::run_chunk+0x11d2>
  3ea66b:	jmp    3ea9d9 <fastfft::fft::FftImpl<T>::run_chunk+0x1659>
  3ea670:	lea    rbx,[r14-0x1]
  3ea674:	lea    rdi,[r10+r13*8]
  3ea678:	add    r13,0x4
  3ea67c:	cmp    rax,0x4
  3ea680:	mov    edx,0x4
  3ea685:	cmovb  rdx,rax
  3ea689:	shl    edx,0x3
  3ea68c:	xor    esi,esi
  3ea68e:	call   QWORD PTR [rip+0xe60064]        # 124a6f8 <memset@GLIBC_2.2.5>
  3ea694:	mov    r10,QWORD PTR [rsp+0x8]
  3ea699:	cmp    r14,0x1
  3ea69d:	jne    3eaa3a <fastfft::fft::FftImpl<T>::run_chunk+0x16ba>
  3ea6a3:	mov    rax,QWORD PTR [r12+0x38]
  3ea6a8:	mov    rcx,QWORD PTR [r12+0x40]
  3ea6ad:	mov    rdx,QWORD PTR [rcx+0x10]
  3ea6b1:	mov    r9,QWORD PTR [rcx+0x38]
  3ea6b5:	dec    rdx
  3ea6b8:	and    rdx,0xfffffffffffffff0
  3ea6bc:	lea    rdi,[rax+rdx*1]
  3ea6c0:	add    rdi,0x10
  3ea6c4:	mov    QWORD PTR [rsp+0xd8],rdi
  3ea6cc:	mov    rsi,r10
  3ea6cf:	mov    rbx,QWORD PTR [rsp+0x10]
  3ea6d4:	mov    rdx,rbx
  3ea6d7:	mov    rcx,QWORD PTR [rsp+0x30]
  3ea6dc:	mov    r8,QWORD PTR [rsp+0x20]
  3ea6e1:	mov    QWORD PTR [rsp+0xe0],r9
  3ea6e9:	call   r9
  3ea6ec:	mov    rsi,QWORD PTR [rsp+0x8]
  3ea6f1:	test   rbx,rbx
  3ea6f4:	je     3ea85f <fastfft::fft::FftImpl<T>::run_chunk+0x14df>
  3ea6fa:	mov    rcx,QWORD PTR [rsp+0x10]
  3ea6ff:	mov    rdx,rcx
  3ea702:	and    rdx,0xfffffffffffffffc
  3ea706:	mov    r15,rcx
  3ea709:	shr    r15,0x2
  3ea70d:	mov    eax,ecx
  3ea70f:	and    eax,0x3
  3ea712:	cmp    rax,0x1
  3ea716:	sbb    r15,0xffffffffffffffff
  3ea71a:	mov    r14,QWORD PTR [r12+0x28]
  3ea71f:	lea    r12,[rcx*8+0x0]
  3ea727:	xor    ebx,ebx
  3ea729:	mov    QWORD PTR [rsp+0x38],rdx
  3ea72e:	jmp    3ea791 <fastfft::fft::FftImpl<T>::run_chunk+0x1411>
  3ea730:	lea    rax,[rsp+0x70]
  3ea735:	xorps  xmm1,xmm1
  3ea738:	movaps XMMWORD PTR [rax+0x50],xmm1
  3ea73c:	movaps XMMWORD PTR [rax+0x40],xmm1
  3ea740:	movaps XMMWORD PTR [rax+0x30],xmm1
  3ea744:	movaps XMMWORD PTR [rax+0x20],xmm1
  3ea748:	movaps XMMWORD PTR [rax+0x10],xmm1
  3ea74c:	movaps XMMWORD PTR [rax],xmm1
  3ea74f:	movaps xmm1,xmm2
  3ea752:	unpcklps xmm1,xmm0
  3ea755:	unpckhps xmm2,xmm0
  3ea758:	movaps XMMWORD PTR [rsp+0x50],xmm1
  3ea75d:	movaps XMMWORD PTR [rsp+0x60],xmm2
  3ea762:	mov    rdi,r13
  3ea765:	lea    rsi,[rsp+0x50]
  3ea76a:	mov    rdx,r12
  3ea76d:	call   QWORD PTR [rip+0xe5ff6d]        # 124a6e0 <memcpy@GLIBC_2.14>
  3ea773:	mov    rdx,QWORD PTR [rsp+0x38]
  3ea778:	mov    rsi,QWORD PTR [rsp+0x8]
  3ea77d:	dec    r15
  3ea780:	add    r12,0xffffffffffffffe0
  3ea784:	add    rbx,0x4
  3ea788:	test   r15,r15
  3ea78b:	je     3ea85f <fastfft::fft::FftImpl<T>::run_chunk+0x14df>
  3ea791:	lea    rax,[rsi+rbx*8]
  3ea795:	cmp    rbx,rdx
  3ea798:	jae    3ea7a8 <fastfft::fft::FftImpl<T>::run_chunk+0x1428>
  3ea79a:	mov    r13,rax
  3ea79d:	movups xmm1,XMMWORD PTR [rsi+rbx*8]
  3ea7a1:	movups xmm2,XMMWORD PTR [rsi+rbx*8+0x10]
  3ea7a6:	jmp    3ea80a <fastfft::fft::FftImpl<T>::run_chunk+0x148a>
  3ea7a8:	xorps  xmm0,xmm0
  3ea7ab:	movaps XMMWORD PTR [rsp+0xc0],xmm0
  3ea7b3:	movaps XMMWORD PTR [rsp+0xb0],xmm0
  3ea7bb:	movaps XMMWORD PTR [rsp+0xa0],xmm0
  3ea7c3:	movaps XMMWORD PTR [rsp+0x90],xmm0
  3ea7cb:	movaps XMMWORD PTR [rsp+0x80],xmm0
  3ea7d3:	movaps XMMWORD PTR [rsp+0x70],xmm0
  3ea7d8:	movaps XMMWORD PTR [rsp+0x60],xmm0
  3ea7dd:	movaps XMMWORD PTR [rsp+0x50],xmm0
  3ea7e2:	lea    rdi,[rsp+0x50]
  3ea7e7:	mov    r13,rax
  3ea7ea:	mov    rsi,rax
  3ea7ed:	mov    rdx,r12
  3ea7f0:	call   QWORD PTR [rip+0xe5feea]        # 124a6e0 <memcpy@GLIBC_2.14>
  3ea7f6:	mov    rdx,QWORD PTR [rsp+0x38]
  3ea7fb:	mov    rsi,QWORD PTR [rsp+0x8]
  3ea800:	movaps xmm1,XMMWORD PTR [rsp+0x50]
  3ea805:	movaps xmm2,XMMWORD PTR [rsp+0x60]
  3ea80a:	movaps xmm0,xmm1
  3ea80d:	shufps xmm0,xmm2,0x88
  3ea811:	shufps xmm1,xmm2,0xdd
  3ea815:	movups xmm3,XMMWORD PTR [r14+rbx*8]
  3ea81a:	movups xmm4,XMMWORD PTR [r14+rbx*8+0x10]
  3ea820:	movaps xmm5,xmm1
  3ea823:	mulps  xmm5,xmm4
  3ea826:	movaps xmm2,xmm0
  3ea829:	mulps  xmm2,xmm3
  3ea82c:	subps  xmm2,xmm5
  3ea82f:	mulps  xmm1,xmm3
  3ea832:	mulps  xmm0,xmm4
  3ea835:	addps  xmm0,xmm1
  3ea838:	xorps  xmm0,XMMWORD PTR [rip+0xffffffffffc87d41]        # 72580 <__abi_tag+0x72284>
  3ea83f:	cmp    rbx,rdx
  3ea842:	jae    3ea730 <fastfft::fft::FftImpl<T>::run_chunk+0x13b0>
  3ea848:	movaps xmm1,xmm2
  3ea84b:	unpcklps xmm1,xmm0
  3ea84e:	unpckhps xmm2,xmm0
  3ea851:	movups XMMWORD PTR [rsi+rbx*8],xmm1
  3ea855:	movups XMMWORD PTR [rsi+rbx*8+0x10],xmm2
  3ea85a:	jmp    3ea77d <fastfft::fft::FftImpl<T>::run_chunk+0x13fd>
  3ea85f:	mov    rdi,QWORD PTR [rsp+0xd8]
  3ea867:	mov    rdx,QWORD PTR [rsp+0x10]
  3ea86c:	mov    rcx,QWORD PTR [rsp+0x30]
  3ea871:	mov    r8,QWORD PTR [rsp+0x20]
  3ea876:	call   QWORD PTR [rsp+0xe0]
  3ea87d:	test   rbp,rbp
  3ea880:	mov    rbx,QWORD PTR [rsp+0x40]
  3ea885:	je     3ea9d9 <fastfft::fft::FftImpl<T>::run_chunk+0x1659>
  3ea88b:	lea    r12,[rsp+0x70]
  3ea890:	shl    rbp,0x3
  3ea894:	xor    r14d,r14d
  3ea897:	lea    r15,[rsp+0x50]
  3ea89c:	mov    r13,QWORD PTR [rip+0xe5fe3d]        # 124a6e0 <memcpy@GLIBC_2.14>
  3ea8a3:	jmp    3ea90e <fastfft::fft::FftImpl<T>::run_chunk+0x158e>
  3ea8a5:	mov    rax,QWORD PTR [rsp+0x28]
  3ea8aa:	lea    rdi,[rax+r14*8]
  3ea8ae:	xorps  xmm1,xmm1
  3ea8b1:	movaps XMMWORD PTR [r12+0x50],xmm1
  3ea8b7:	movaps XMMWORD PTR [r12+0x40],xmm1
  3ea8bd:	movaps XMMWORD PTR [r12+0x30],xmm1
  3ea8c3:	movaps XMMWORD PTR [r12+0x20],xmm1
  3ea8c9:	movaps XMMWORD PTR [r12+0x10],xmm1
  3ea8cf:	movaps XMMWORD PTR [r12],xmm1
  3ea8d4:	movaps xmm1,xmm2
  3ea8d7:	unpcklps xmm1,xmm0
  3ea8da:	unpckhps xmm2,xmm0
  3ea8dd:	movaps XMMWORD PTR [rsp+0x50],xmm1
  3ea8e2:	movaps XMMWORD PTR [rsp+0x60],xmm2
  3ea8e7:	mov    rsi,r15
  3ea8ea:	mov    rdx,rbp
  3ea8ed:	call   r13
  3ea8f0:	mov    rax,QWORD PTR [rsp+0x18]
  3ea8f5:	dec    rax
  3ea8f8:	add    rbp,0xffffffffffffffe0
  3ea8fc:	add    r14,0x4
  3ea900:	mov    QWORD PTR [rsp+0x18],rax
  3ea905:	test   rax,rax
  3ea908:	je     3ea9d9 <fastfft::fft::FftImpl<T>::run_chunk+0x1659>
  3ea90e:	cmp    r14,rbx
  3ea911:	jae    3ea925 <fastfft::fft::FftImpl<T>::run_chunk+0x15a5>
  3ea913:	mov    rax,QWORD PTR [rsp+0x8]
  3ea918:	movups xmm1,XMMWORD PTR [rax+r14*8]
  3ea91d:	movups xmm2,XMMWORD PTR [rax+r14*8+0x10]
  3ea923:	jmp    3ea97b <fastfft::fft::FftImpl<T>::run_chunk+0x15fb>
  3ea925:	mov    rax,QWORD PTR [rsp+0x8]
  3ea92a:	lea    rsi,[rax+r14*8]
  3ea92e:	xorps  xmm0,xmm0
  3ea931:	movaps XMMWORD PTR [rsp+0xc0],xmm0
  3ea939:	movaps XMMWORD PTR [rsp+0xb0],xmm0
  3ea941:	movaps XMMWORD PTR [rsp+0xa0],xmm0
  3ea949:	movaps XMMWORD PTR [rsp+0x90],xmm0
  3ea951:	movaps XMMWORD PTR [rsp+0x80],xmm0
  3ea959:	movaps XMMWORD PTR [rsp+0x70],xmm0
  3ea95e:	movaps XMMWORD PTR [rsp+0x60],xmm0
  3ea963:	movaps XMMWORD PTR [rsp+0x50],xmm0
  3ea968:	mov    rdi,r15
  3ea96b:	mov    rdx,rbp
  3ea96e:	call   r13
  3ea971:	movaps xmm1,XMMWORD PTR [rsp+0x50]
  3ea976:	movaps xmm2,XMMWORD PTR [rsp+0x60]
  3ea97b:	movaps xmm0,xmm1
  3ea97e:	shufps xmm0,xmm2,0x88
  3ea982:	shufps xmm1,xmm2,0xdd
  3ea986:	xorps  xmm1,XMMWORD PTR [rip+0xffffffffffc87bf3]        # 72580 <__abi_tag+0x72284>
  3ea98d:	mov    rax,QWORD PTR [rsp+0x48]
  3ea992:	movups xmm3,XMMWORD PTR [rax+r14*8]
  3ea997:	movups xmm4,XMMWORD PTR [rax+r14*8+0x10]
  3ea99d:	movaps xmm2,xmm0
  3ea9a0:	mulps  xmm0,xmm4
  3ea9a3:	mulps  xmm4,xmm1
  3ea9a6:	mulps  xmm2,xmm3
  3ea9a9:	subps  xmm2,xmm4
  3ea9ac:	mulps  xmm1,xmm3
  3ea9af:	addps  xmm0,xmm1
  3ea9b2:	cmp    r14,rbx
  3ea9b5:	jae    3ea8a5 <fastfft::fft::FftImpl<T>::run_chunk+0x1525>
  3ea9bb:	movaps xmm1,xmm2
  3ea9be:	unpcklps xmm1,xmm0
  3ea9c1:	unpckhps xmm2,xmm0
  3ea9c4:	mov    rax,QWORD PTR [rsp+0x28]
  3ea9c9:	movups XMMWORD PTR [rax+r14*8],xmm1
  3ea9ce:	movups XMMWORD PTR [rax+r14*8+0x10],xmm2
  3ea9d4:	jmp    3ea8f0 <fastfft::fft::FftImpl<T>::run_chunk+0x1570>
  3ea9d9:	add    rsp,0xe8
  3ea9e0:	pop    rbx
  3ea9e1:	pop    r12
  3ea9e3:	pop    r13
  3ea9e5:	pop    r14
  3ea9e7:	pop    r15
  3ea9e9:	pop    rbp
  3ea9ea:	ret
  3ea9eb:	lea    rdx,[r10+r11*8]
  3ea9ef:	add    rdx,0x8
  3ea9f3:	mov    rsi,rbp
  3ea9f6:	sub    rsi,r11
  3ea9f9:	xor    edi,edi
  3ea9fb:	jmp    3eaa0e <fastfft::fft::FftImpl<T>::run_chunk+0x168e>
  3ea9fd:	add    rdi,0x2
  3eaa01:	add    r11,0x2
  3eaa05:	cmp    rax,rdi
  3eaa08:	je     3ea44e <fastfft::fft::FftImpl<T>::run_chunk+0x10ce>
  3eaa0e:	cmp    rsi,rdi
  3eaa11:	jne    3eaa1e <fastfft::fft::FftImpl<T>::run_chunk+0x169e>
  3eaa13:	lea    r9,[r11+0x1]
  3eaa17:	cmp    rbp,r9
  3eaa1a:	je     3ea9fd <fastfft::fft::FftImpl<T>::run_chunk+0x167d>
  3eaa1c:	jmp    3eaa30 <fastfft::fft::FftImpl<T>::run_chunk+0x16b0>
  3eaa1e:	mov    QWORD PTR [rdx+rdi*8-0x8],0x0
  3eaa27:	lea    r9,[r11+0x1]
  3eaa2b:	cmp    rbp,r9
  3eaa2e:	je     3ea9fd <fastfft::fft::FftImpl<T>::run_chunk+0x167d>
  3eaa30:	mov    QWORD PTR [rdx+rdi*8],0x0
  3eaa38:	jmp    3ea9fd <fastfft::fft::FftImpl<T>::run_chunk+0x167d>
  3eaa3a:	mov    r14,QWORD PTR [rsp+0x10]
  3eaa3f:	lea    r15,[r14*8+0x0]
  3eaa47:	lea    rax,[r13*8+0x0]
  3eaa4f:	sub    r15,rax
  3eaa52:	sub    r14,r13
  3eaa55:	lea    r13,[r10+r13*8]
  3eaa59:	add    r13,0x20
  3eaa5d:	jmp    3eaa8a <fastfft::fft::FftImpl<T>::run_chunk+0x170a>
  3eaa5f:	xorps  xmm0,xmm0
  3eaa62:	movups XMMWORD PTR [r13+0x10],xmm0
  3eaa67:	movups XMMWORD PTR [r13+0x0],xmm0
  3eaa6c:	mov    r10,QWORD PTR [rsp+0x8]
  3eaa71:	add    rbx,0xfffffffffffffffe
  3eaa75:	add    r15,0xffffffffffffffc0
  3eaa79:	add    r14,0xfffffffffffffff8
  3eaa7d:	add    r13,0x40
  3eaa81:	test   rbx,rbx
  3eaa84:	je     3ea6a3 <fastfft::fft::FftImpl<T>::run_chunk+0x1323>
  3eaa8a:	lea    rdi,[r13-0x20]
  3eaa8e:	cmp    r14,0x3
  3eaa92:	jbe    3eaaaa <fastfft::fft::FftImpl<T>::run_chunk+0x172a>
  3eaa94:	xorps  xmm0,xmm0
  3eaa97:	movups XMMWORD PTR [rdi+0x10],xmm0
  3eaa9b:	movups XMMWORD PTR [rdi],xmm0
  3eaa9e:	lea    rax,[r14-0x4]
  3eaaa2:	cmp    rax,0x3
  3eaaa6:	ja     3eaa5f <fastfft::fft::FftImpl<T>::run_chunk+0x16df>
  3eaaa8:	jmp    3eaabf <fastfft::fft::FftImpl<T>::run_chunk+0x173f>
  3eaaaa:	xor    esi,esi
  3eaaac:	mov    rdx,r15
  3eaaaf:	call   QWORD PTR [rip+0xe5fc43]        # 124a6f8 <memset@GLIBC_2.2.5>
  3eaab5:	lea    rax,[r14-0x4]
  3eaab9:	cmp    rax,0x3
  3eaabd:	ja     3eaa5f <fastfft::fft::FftImpl<T>::run_chunk+0x16df>
  3eaabf:	lea    rdx,[r15-0x20]
  3eaac3:	mov    rdi,r13
  3eaac6:	xor    esi,esi
  3eaac8:	call   QWORD PTR [rip+0xe5fc2a]        # 124a6f8 <memset@GLIBC_2.2.5>
  3eaace:	jmp    3eaa6c <fastfft::fft::FftImpl<T>::run_chunk+0x16ec>
  3eaad0:	mov    rdx,rbp
  3eaad3:	and    rdx,0xfffffffffffffffc
  3eaad7:	mov    eax,ebp
  3eaad9:	and    eax,0x3
  3eaadc:	xor    edi,edi
  3eaade:	movaps xmm0,XMMWORD PTR [rip+0xffffffffffc87a9b]        # 72580 <__abi_tag+0x72284>
  3eaae5:	movups xmm1,XMMWORD PTR [rsi+rdi*8]
  3eaae9:	movups xmm2,XMMWORD PTR [rsi+rdi*8+0x10]
  3eaaee:	movaps xmm3,xmm1
  3eaaf1:	shufps xmm3,xmm2,0x88
  3eaaf5:	shufps xmm1,xmm2,0xdd
  3eaaf9:	movups xmm2,XMMWORD PTR [r8+rdi*8]
  3eaafe:	movups xmm4,XMMWORD PTR [r8+rdi*8+0x10]
  3eab04:	movaps xmm5,xmm2
  3eab07:	shufps xmm5,xmm4,0x88
  3eab0b:	shufps xmm2,xmm4,0xdd
  3eab0f:	movaps xmm4,xmm3
  3eab12:	mulps  xmm4,xmm2
  3eab15:	mulps  xmm2,xmm1
  3eab18:	mulps  xmm1,xmm5
  3eab1b:	addps  xmm4,xmm1
  3eab1e:	xorps  xmm4,xmm0
  3eab21:	mulps  xmm5,xmm3
  3eab24:	subps  xmm5,xmm2
  3eab27:	movaps xmm1,xmm5
  3eab2a:	unpckhps xmm1,xmm4
  3eab2d:	unpcklps xmm5,xmm4
  3eab30:	movups XMMWORD PTR [rsi+rdi*8],xmm5
  3eab34:	movups XMMWORD PTR [rsi+rdi*8+0x10],xmm1
  3eab39:	add    rdi,0x4
  3eab3d:	cmp    rdx,rdi
  3eab40:	jne    3eaae5 <fastfft::fft::FftImpl<T>::run_chunk+0x1765>
  3eab42:	cmp    rbp,rdx
  3eab45:	jne    3ea4c3 <fastfft::fft::FftImpl<T>::run_chunk+0x1143>
  3eab4b:	jmp    3ea52c <fastfft::fft::FftImpl<T>::run_chunk+0x11ac>
  3eab50:	lea    rdi,[rip+0xffffffffffcdbc5e]        # c67b5 <crc32fast::table::CRC32_TABLE+0x8b31>
  3eab57:	lea    rdx,[rip+0xe5b93a]        # 1246498 <__frame_dummy_init_array_entry+0x31240>
  3eab5e:	mov    esi,0x36
  3eab63:	call   c15a00 <core::option::expect_failed>
  3eab68:	lea    rdi,[rip+0xffffffffffce07f2]        # cb361 <core::unicode::unicode_data::white_space::WHITESPACE_MAP+0x7b3>
  3eab6f:	lea    rdx,[rip+0xe5b712]        # 1246288 <__frame_dummy_init_array_entry+0x31030>
  3eab76:	mov    esi,0x13
  3eab7b:	call   c11b40 <core::panicking::panic_fmt>
