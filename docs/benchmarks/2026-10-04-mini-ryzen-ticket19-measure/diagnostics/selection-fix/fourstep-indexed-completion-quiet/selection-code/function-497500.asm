
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000497500 <fastfft::measure::Buffers<T>::sample>:
  497500:	push   rbp
  497501:	push   r15
  497503:	push   r14
  497505:	push   r13
  497507:	push   r12
  497509:	push   rbx
  49750a:	sub    rsp,0x98
  497511:	mov    rbx,r9
  497514:	mov    QWORD PTR [rsp+0x10],rdx
  497519:	mov    r9,rsi
  49751c:	mov    r12,QWORD PTR [rdi+0x48]
  497520:	mov    r15,QWORD PTR [rdi+0x50]
  497524:	mov    r11,QWORD PTR [rdi+0x58]
  497528:	mov    rbp,QWORD PTR [rdi+0x8]
  49752c:	mov    rdx,QWORD PTR [rdi+0x10]
  497530:	test   rdx,rdx
  497533:	je     497572 <fastfft::measure::Buffers<T>::sample+0x72>
  497535:	lea    r10,[rbp+0x3f]
  497539:	and    r10,0xffffffffffffffc0
  49753d:	sub    r10,rbp
  497540:	mov    esi,ebp
  497542:	and    esi,0x7
  497545:	shr    r10,0x3
  497549:	xor    eax,eax
  49754b:	neg    rsi
  49754e:	sbb    rax,rax
  497551:	or     rax,r10
  497554:	mov    r10,rax
  497557:	shr    r10,1
  49755a:	mov    esi,eax
  49755c:	and    esi,0x1
  49755f:	add    rsi,r10
  497562:	sub    rdx,rsi
  497565:	jb     4978bd <fastfft::measure::Buffers<T>::sample+0x3bd>
  49756b:	lea    rbp,[rbp+rax*8+0x0]
  497570:	jmp    497574 <fastfft::measure::Buffers<T>::sample+0x74>
  497572:	xor    edx,edx
  497574:	lea    rax,[r12+rcx*1]
  497578:	cmp    rax,rdx
  49757b:	seta   al
  49757e:	mov    rsi,r12
  497581:	add    rsi,rcx
  497584:	jb     497872 <fastfft::measure::Buffers<T>::sample+0x372>
  49758a:	test   al,al
  49758c:	jne    49787c <fastfft::measure::Buffers<T>::sample+0x37c>
  497592:	mov    r10,QWORD PTR [rdi+0x20]
  497596:	mov    rdx,QWORD PTR [rdi+0x28]
  49759a:	test   rdx,rdx
  49759d:	je     4975dc <fastfft::measure::Buffers<T>::sample+0xdc>
  49759f:	lea    r13,[r10+0x3f]
  4975a3:	and    r13,0xffffffffffffffc0
  4975a7:	sub    r13,r10
  4975aa:	mov    esi,r10d
  4975ad:	and    esi,0x7
  4975b0:	shr    r13,0x3
  4975b4:	xor    eax,eax
  4975b6:	neg    rsi
  4975b9:	sbb    rax,rax
  4975bc:	or     rax,r13
  4975bf:	mov    r13,rax
  4975c2:	shr    r13,1
  4975c5:	mov    esi,eax
  4975c7:	and    esi,0x1
  4975ca:	add    rsi,r13
  4975cd:	sub    rdx,rsi
  4975d0:	jb     4978bd <fastfft::measure::Buffers<T>::sample+0x3bd>
  4975d6:	lea    r10,[r10+rax*8]
  4975da:	jmp    4975de <fastfft::measure::Buffers<T>::sample+0xde>
  4975dc:	xor    edx,edx
  4975de:	lea    rax,[r15+rcx*1]
  4975e2:	cmp    rax,rdx
  4975e5:	seta   al
  4975e8:	mov    rsi,r15
  4975eb:	add    rsi,rcx
  4975ee:	jb     49788b <fastfft::measure::Buffers<T>::sample+0x38b>
  4975f4:	test   al,al
  4975f6:	jne    497895 <fastfft::measure::Buffers<T>::sample+0x395>
  4975fc:	mov    r14,QWORD PTR [rdi+0x38]
  497600:	mov    rdi,QWORD PTR [rdi+0x40]
  497604:	test   rdi,rdi
  497607:	mov    QWORD PTR [rsp+0x18],r10
  49760c:	mov    QWORD PTR [rsp+0x50],r15
  497611:	mov    QWORD PTR [rsp+0x40],rcx
  497616:	mov    QWORD PTR [rsp+0x20],rbp
  49761b:	je     497663 <fastfft::measure::Buffers<T>::sample+0x163>
  49761d:	lea    rsi,[r14+0x3f]
  497621:	and    rsi,0xffffffffffffffc0
  497625:	sub    rsi,r14
  497628:	mov    edx,r14d
  49762b:	and    edx,0x7
  49762e:	shr    rsi,0x3
  497632:	xor    eax,eax
  497634:	neg    rdx
  497637:	sbb    rax,rax
  49763a:	or     rax,rsi
  49763d:	mov    rsi,rax
  497640:	shr    rsi,1
  497643:	mov    edx,eax
  497645:	and    edx,0x1
  497648:	add    rdx,rsi
  49764b:	sub    rdi,rdx
  49764e:	jb     4978bd <fastfft::measure::Buffers<T>::sample+0x3bd>
  497654:	mov    r13,r12
  497657:	mov    r12,r11
  49765a:	lea    r14,[r14+rax*8]
  49765e:	mov    rbp,rdi
  497661:	jmp    49766b <fastfft::measure::Buffers<T>::sample+0x16b>
  497663:	mov    r13,r12
  497666:	mov    r12,r11
  497669:	xor    ebp,ebp
  49766b:	mov    DWORD PTR [rsp+0x34],r8d
  497670:	movzx  ecx,r8b
  497674:	mov    QWORD PTR [rsp+0x38],r9
  497679:	mov    rdi,r9
  49767c:	mov    rax,QWORD PTR [rsp+0x10]
  497681:	mov    QWORD PTR [rsp+0x48],rcx
  497686:	call   QWORD PTR [rax+rcx*8+0x50]
  49768a:	lea    rcx,[rax+r12*1]
  49768e:	mov    rdx,rbp
  497691:	cmp    rcx,rbp
  497694:	seta   cl
  497697:	mov    rsi,rax
  49769a:	add    rsi,r12
  49769d:	jb     4978a4 <fastfft::measure::Buffers<T>::sample+0x3a4>
  4976a3:	test   cl,cl
  4976a5:	jne    4978ae <fastfft::measure::Buffers<T>::sample+0x3ae>
  4976ab:	mov    QWORD PTR [rsp+0x28],rax
  4976b0:	shl    r13,0x4
  4976b4:	add    QWORD PTR [rsp+0x20],r13
  4976b9:	shl    r12,0x4
  4976bd:	add    r14,r12
  4976c0:	mov    edi,0x1
  4976c5:	call   10b6880 <<std::sys::pal::unix::time::Timespec>::now>
  4976ca:	mov    QWORD PTR [rsp+0x58],rax
  4976cf:	mov    DWORD PTR [rsp+0x30],edx
  4976d3:	cmp    BYTE PTR [rsp+0x34],0x0
  4976d8:	je     49775c <fastfft::measure::Buffers<T>::sample+0x25c>
  4976de:	mov    rbp,QWORD PTR [rsp+0x40]
  4976e3:	mov    r13,QWORD PTR [rsp+0x50]
  4976e8:	shl    r13,0x4
  4976ec:	mov    rcx,QWORD PTR [rsp+0x18]
  4976f1:	add    rcx,r13
  4976f4:	cmp    DWORD PTR [rsp+0x48],0x1
  4976f9:	mov    r13,QWORD PTR [rsp+0x38]
  4976fe:	mov    QWORD PTR [rsp+0x18],rcx
  497703:	jne    4977ad <fastfft::measure::Buffers<T>::sample+0x2ad>
  497709:	test   rbx,rbx
  49770c:	mov    rdx,QWORD PTR [rsp+0x20]
  497711:	mov    r12,QWORD PTR [rsp+0x28]
  497716:	je     497807 <fastfft::measure::Buffers<T>::sample+0x307>
  49771c:	mov    r15,r14
  49771f:	mov    rax,QWORD PTR [rsp+0x10]
  497724:	mov    rax,QWORD PTR [rax+0x40]
  497728:	mov    QWORD PTR [rsp+0x10],rax
  49772d:	nop    DWORD PTR [rax]
  497730:	mov    QWORD PTR [rsp],r12
  497734:	mov    rdi,r13
  497737:	mov    r14,rdx
  49773a:	mov    rsi,rdx
  49773d:	mov    rdx,rbp
  497740:	mov    r8,rbp
  497743:	mov    r9,r15
  497746:	call   QWORD PTR [rsp+0x10]
  49774a:	mov    rdx,r14
  49774d:	mov    rcx,QWORD PTR [rsp+0x18]
  497752:	dec    rbx
  497755:	jne    497730 <fastfft::measure::Buffers<T>::sample+0x230>
  497757:	jmp    497807 <fastfft::measure::Buffers<T>::sample+0x307>
  49775c:	test   rbx,rbx
  49775f:	mov    rdx,QWORD PTR [rsp+0x40]
  497764:	mov    r12,QWORD PTR [rsp+0x20]
  497769:	mov    rbp,QWORD PTR [rsp+0x38]
  49776e:	mov    r13,QWORD PTR [rsp+0x28]
  497773:	je     497807 <fastfft::measure::Buffers<T>::sample+0x307>
  497779:	mov    r15,r14
  49777c:	mov    rax,QWORD PTR [rsp+0x10]
  497781:	mov    rax,QWORD PTR [rax+0x38]
  497785:	mov    QWORD PTR [rsp+0x18],rax
  49778a:	nop    WORD PTR [rax+rax*1+0x0]
  497790:	mov    rdi,rbp
  497793:	mov    rsi,r12
  497796:	mov    r14,rdx
  497799:	mov    rcx,r15
  49779c:	mov    r8,r13
  49779f:	call   QWORD PTR [rsp+0x18]
  4977a3:	mov    rdx,r14
  4977a6:	dec    rbx
  4977a9:	jne    497790 <fastfft::measure::Buffers<T>::sample+0x290>
  4977ab:	jmp    497807 <fastfft::measure::Buffers<T>::sample+0x307>
  4977ad:	mov    rax,QWORD PTR [rsp+0x20]
  4977b2:	test   rbx,rbx
  4977b5:	mov    r12,QWORD PTR [rsp+0x28]
  4977ba:	je     497807 <fastfft::measure::Buffers<T>::sample+0x307>
  4977bc:	mov    rdx,r13
  4977bf:	mov    r13,rax
  4977c2:	mov    r15,r14
  4977c5:	mov    rax,QWORD PTR [rsp+0x10]
  4977ca:	mov    rax,QWORD PTR [rax+0x48]
  4977ce:	mov    QWORD PTR [rsp+0x10],rax
  4977d3:	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  4977e0:	mov    QWORD PTR [rsp],r12
  4977e4:	mov    r14,rdx
  4977e7:	mov    rdi,rdx
  4977ea:	mov    rsi,r13
  4977ed:	mov    rdx,rbp
  4977f0:	mov    r8,rbp
  4977f3:	mov    r9,r15
  4977f6:	call   QWORD PTR [rsp+0x10]
  4977fa:	mov    rdx,r14
  4977fd:	mov    rcx,QWORD PTR [rsp+0x18]
  497802:	dec    rbx
  497805:	jne    4977e0 <fastfft::measure::Buffers<T>::sample+0x2e0>
  497807:	mov    edi,0x1
  49780c:	call   10b6880 <<std::sys::pal::unix::time::Timespec>::now>
  497811:	mov    QWORD PTR [rsp+0x60],rax
  497816:	mov    DWORD PTR [rsp+0x68],edx
  49781a:	mov    rax,QWORD PTR [rsp+0x58]
  49781f:	mov    QWORD PTR [rsp+0x70],rax
  497824:	mov    eax,DWORD PTR [rsp+0x30]
  497828:	mov    DWORD PTR [rsp+0x78],eax
  49782c:	lea    rdi,[rsp+0x80]
  497834:	lea    rsi,[rsp+0x60]
  497839:	lea    rdx,[rsp+0x70]
  49783e:	call   10b6780 <<std::sys::pal::unix::time::Timespec>::sub_timespec>
  497843:	xor    eax,eax
  497845:	cmp    BYTE PTR [rsp+0x80],0x0
  49784d:	mov    edx,DWORD PTR [rsp+0x90]
  497854:	cmovne edx,eax
  497857:	cmove  rax,QWORD PTR [rsp+0x88]
  497860:	add    rsp,0x98
  497867:	pop    rbx
  497868:	pop    r12
  49786a:	pop    r13
  49786c:	pop    r14
  49786e:	pop    r15
  497870:	pop    rbp
  497871:	ret
  497872:	mov    al,0x1
  497874:	test   al,al
  497876:	je     497592 <fastfft::measure::Buffers<T>::sample+0x92>
  49787c:	lea    rcx,[rip+0xd946fd]        # 122bf80 <__frame_dummy_init_array_entry+0x16d28>
  497883:	mov    rdi,r12
  497886:	call   c138c0 <core::slice::index::slice_index_fail>
  49788b:	mov    al,0x1
  49788d:	test   al,al
  49788f:	je     4975fc <fastfft::measure::Buffers<T>::sample+0xfc>
  497895:	lea    rcx,[rip+0xd946cc]        # 122bf68 <__frame_dummy_init_array_entry+0x16d10>
  49789c:	mov    rdi,r15
  49789f:	call   c138c0 <core::slice::index::slice_index_fail>
  4978a4:	mov    cl,0x1
  4978a6:	test   cl,cl
  4978a8:	je     4976ab <fastfft::measure::Buffers<T>::sample+0x1ab>
  4978ae:	lea    rcx,[rip+0xd9469b]        # 122bf50 <__frame_dummy_init_array_entry+0x16cf8>
  4978b5:	mov    rdi,r12
  4978b8:	call   c138c0 <core::slice::index::slice_index_fail>
  4978bd:	lea    rdi,[rip+0xffffffffffc2eef1]        # c67b5 <crc32fast::table::CRC32_TABLE+0x8b31>
  4978c4:	lea    rdx,[rip+0xdaebcd]        # 1246498 <__frame_dummy_init_array_entry+0x31240>
  4978cb:	mov    esi,0x36
  4978d0:	call   c15a00 <core::option::expect_failed>
