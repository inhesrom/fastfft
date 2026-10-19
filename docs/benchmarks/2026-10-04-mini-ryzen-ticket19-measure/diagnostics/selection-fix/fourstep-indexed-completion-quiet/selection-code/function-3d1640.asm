
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000003d1640 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_with_scratch>:
  3d1640:	push   rbp
  3d1641:	push   r15
  3d1643:	push   r14
  3d1645:	push   r13
  3d1647:	push   r12
  3d1649:	push   rbx
  3d164a:	push   rax
  3d164b:	mov    r14,QWORD PTR [rdi+0xb0]
  3d1652:	test   r14,r14
  3d1655:	je     3d1793 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_with_scratch+0x153>
  3d165b:	mov    r13,rcx
  3d165e:	mov    rbx,rdx
  3d1661:	mov    r12,rsi
  3d1664:	mov    rax,QWORD PTR [rdi]
  3d1667:	sub    rax,0x2
  3d166b:	mov    ebp,0x2
  3d1670:	cmovae rbp,rax
  3d1674:	lea    rax,[rip+0xffffffffffccbc01]        # 9d27c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a72c>
  3d167b:	movsxd rdx,DWORD PTR [rax+rbp*4]
  3d167f:	add    rdx,rax
  3d1682:	mov    QWORD PTR [rsp],rdi
  3d1686:	jmp    rdx
  3d1688:	mov    rax,QWORD PTR [rdi+0x60]
  3d168c:	test   rax,rax
  3d168f:	jne    3d16a3 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_with_scratch+0x63>
  3d1691:	xor    ebp,ebp
  3d1693:	cmp    QWORD PTR [rdi+0x28],0x0
  3d1698:	je     3d16ed <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_with_scratch+0xad>
  3d169a:	mov    rax,QWORD PTR [rdi+0x48]
  3d169e:	test   rax,rax
  3d16a1:	je     3d16ed <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_with_scratch+0xad>
  3d16a3:	add    rax,0x4
  3d16a7:	mov    rbp,rax
  3d16aa:	mov    rax,rbx
  3d16ad:	or     rax,r14
  3d16b0:	shr    rax,0x20
  3d16b4:	jne    3d16f9 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_with_scratch+0xb9>
  3d16b6:	jmp    3d174a <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_with_scratch+0x10a>
  3d16bb:	mov    rax,QWORD PTR [rdi+0x80]
  3d16c2:	mov    r9,QWORD PTR [rdi+0x88]
  3d16c9:	add    rax,rax
  3d16cc:	mov    rdx,QWORD PTR [rdi+0x90]
  3d16d3:	imul   rdx,r9
  3d16d7:	xor    esi,esi
  3d16d9:	cmp    r9,0x2
  3d16dd:	cmovae rsi,rdx
  3d16e1:	add    rax,QWORD PTR [rdi+0x78]
  3d16e5:	lea    rbp,[rsi+rax*1]
  3d16e9:	add    rbp,0x4
  3d16ed:	mov    rax,rbx
  3d16f0:	or     rax,r14
  3d16f3:	shr    rax,0x20
  3d16f7:	je     3d174a <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_with_scratch+0x10a>
  3d16f9:	mov    rax,rbx
  3d16fc:	xor    edx,edx
  3d16fe:	div    r14
  3d1701:	cmp    r8,rbp
  3d1704:	jae    3d1756 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_with_scratch+0x116>
  3d1706:	jmp    3d17a2 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_with_scratch+0x162>
  3d170b:	mov    rbp,QWORD PTR [rdi+0x50]
  3d170f:	mov    rax,QWORD PTR [rdi+0x38]
  3d1713:	mov    rsi,QWORD PTR [rdi+0x40]
  3d1717:	mov    rdx,QWORD PTR [rsi+0x10]
  3d171b:	dec    rdx
  3d171e:	and    rdx,0xfffffffffffffff0
  3d1722:	lea    rdi,[rax+rdx*1]
  3d1726:	add    rdi,0x10
  3d172a:	mov    r15,r8
  3d172d:	call   QWORD PTR [rsi+0x50]
  3d1730:	mov    rdi,QWORD PTR [rsp]
  3d1734:	mov    r8,r15
  3d1737:	add    rbp,rax
  3d173a:	add    rbp,0x4
  3d173e:	mov    rax,rbx
  3d1741:	or     rax,r14
  3d1744:	shr    rax,0x20
  3d1748:	jne    3d16f9 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_with_scratch+0xb9>
  3d174a:	mov    eax,ebx
  3d174c:	xor    edx,edx
  3d174e:	div    r14d
  3d1751:	cmp    r8,rbp
  3d1754:	jb     3d17a2 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_with_scratch+0x162>
  3d1756:	cmp    rbx,r14
  3d1759:	jb     3d17a2 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_with_scratch+0x162>
  3d175b:	test   rdx,rdx
  3d175e:	jne    3d17a2 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_with_scratch+0x162>
  3d1760:	mov    r15,r14
  3d1763:	shl    r15,0x4
  3d1767:	nop    WORD PTR [rax+rax*1+0x0]
  3d1770:	sub    rbx,r14
  3d1773:	mov    rsi,r12
  3d1776:	mov    rdx,r12
  3d1779:	mov    rcx,r13
  3d177c:	mov    r8,rbp
  3d177f:	xor    r9d,r9d
  3d1782:	call   3e7780 <fastfft::fft::FftImpl<T>::run_chunk>
  3d1787:	mov    rdi,QWORD PTR [rsp]
  3d178b:	add    r12,r15
  3d178e:	cmp    r14,rbx
  3d1791:	jbe    3d1770 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_with_scratch+0x130>
  3d1793:	add    rsp,0x8
  3d1797:	pop    rbx
  3d1798:	pop    r12
  3d179a:	pop    r13
  3d179c:	pop    r14
  3d179e:	pop    r15
  3d17a0:	pop    rbp
  3d17a1:	ret
  3d17a2:	mov    rdi,r14
  3d17a5:	mov    rsi,rbx
  3d17a8:	mov    rdx,rbp
  3d17ab:	mov    rcx,r8
  3d17ae:	call   c1f480 <fastfft::fft::fail_inplace>
