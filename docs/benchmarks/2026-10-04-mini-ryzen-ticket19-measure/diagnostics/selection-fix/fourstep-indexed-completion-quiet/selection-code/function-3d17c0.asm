
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000003d17c0 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_with_scratch>:
  3d17c0:	push   rbp
  3d17c1:	push   r15
  3d17c3:	push   r14
  3d17c5:	push   r13
  3d17c7:	push   r12
  3d17c9:	push   rbx
  3d17ca:	push   rax
  3d17cb:	mov    r15,QWORD PTR [rdi+0xb0]
  3d17d2:	test   r15,r15
  3d17d5:	je     3d1913 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_with_scratch+0x153>
  3d17db:	mov    r13,rcx
  3d17de:	mov    rbx,rdx
  3d17e1:	mov    r12,rsi
  3d17e4:	mov    rax,QWORD PTR [rdi]
  3d17e7:	sub    rax,0x2
  3d17eb:	mov    ebp,0x2
  3d17f0:	cmovae rbp,rax
  3d17f4:	lea    rax,[rip+0xffffffffffccba91]        # 9d28c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a73c>
  3d17fb:	movsxd rdx,DWORD PTR [rax+rbp*4]
  3d17ff:	add    rdx,rax
  3d1802:	mov    QWORD PTR [rsp],rdi
  3d1806:	jmp    rdx
  3d1808:	mov    rax,QWORD PTR [rdi+0x60]
  3d180c:	test   rax,rax
  3d180f:	jne    3d1823 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_with_scratch+0x63>
  3d1811:	xor    ebp,ebp
  3d1813:	cmp    QWORD PTR [rdi+0x28],0x0
  3d1818:	je     3d186d <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_with_scratch+0xad>
  3d181a:	mov    rax,QWORD PTR [rdi+0x48]
  3d181e:	test   rax,rax
  3d1821:	je     3d186d <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_with_scratch+0xad>
  3d1823:	add    rax,0x8
  3d1827:	mov    rbp,rax
  3d182a:	mov    rax,rbx
  3d182d:	or     rax,r15
  3d1830:	shr    rax,0x20
  3d1834:	jne    3d1879 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_with_scratch+0xb9>
  3d1836:	jmp    3d18ca <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_with_scratch+0x10a>
  3d183b:	mov    rax,QWORD PTR [rdi+0x80]
  3d1842:	mov    r9,QWORD PTR [rdi+0x88]
  3d1849:	add    rax,rax
  3d184c:	mov    rdx,QWORD PTR [rdi+0x90]
  3d1853:	imul   rdx,r9
  3d1857:	xor    esi,esi
  3d1859:	cmp    r9,0x2
  3d185d:	cmovae rsi,rdx
  3d1861:	add    rax,QWORD PTR [rdi+0x78]
  3d1865:	lea    rbp,[rsi+rax*1]
  3d1869:	add    rbp,0x8
  3d186d:	mov    rax,rbx
  3d1870:	or     rax,r15
  3d1873:	shr    rax,0x20
  3d1877:	je     3d18ca <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_with_scratch+0x10a>
  3d1879:	mov    rax,rbx
  3d187c:	xor    edx,edx
  3d187e:	div    r15
  3d1881:	cmp    r8,rbp
  3d1884:	jae    3d18d6 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_with_scratch+0x116>
  3d1886:	jmp    3d1922 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_with_scratch+0x162>
  3d188b:	mov    rbp,QWORD PTR [rdi+0x50]
  3d188f:	mov    rax,QWORD PTR [rdi+0x38]
  3d1893:	mov    rsi,QWORD PTR [rdi+0x40]
  3d1897:	mov    rdx,QWORD PTR [rsi+0x10]
  3d189b:	dec    rdx
  3d189e:	and    rdx,0xfffffffffffffff0
  3d18a2:	lea    rdi,[rax+rdx*1]
  3d18a6:	add    rdi,0x10
  3d18aa:	mov    r14,r8
  3d18ad:	call   QWORD PTR [rsi+0x50]
  3d18b0:	mov    rdi,QWORD PTR [rsp]
  3d18b4:	mov    r8,r14
  3d18b7:	add    rbp,rax
  3d18ba:	add    rbp,0x8
  3d18be:	mov    rax,rbx
  3d18c1:	or     rax,r15
  3d18c4:	shr    rax,0x20
  3d18c8:	jne    3d1879 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_with_scratch+0xb9>
  3d18ca:	mov    eax,ebx
  3d18cc:	xor    edx,edx
  3d18ce:	div    r15d
  3d18d1:	cmp    r8,rbp
  3d18d4:	jb     3d1922 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_with_scratch+0x162>
  3d18d6:	cmp    rbx,r15
  3d18d9:	jb     3d1922 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_with_scratch+0x162>
  3d18db:	test   rdx,rdx
  3d18de:	jne    3d1922 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_with_scratch+0x162>
  3d18e0:	lea    r14,[r15*8+0x0]
  3d18e8:	nop    DWORD PTR [rax+rax*1+0x0]
  3d18f0:	sub    rbx,r15
  3d18f3:	mov    rsi,r12
  3d18f6:	mov    rdx,r12
  3d18f9:	mov    rcx,r13
  3d18fc:	mov    r8,rbp
  3d18ff:	xor    r9d,r9d
  3d1902:	call   3e9380 <fastfft::fft::FftImpl<T>::run_chunk>
  3d1907:	mov    rdi,QWORD PTR [rsp]
  3d190b:	add    r12,r14
  3d190e:	cmp    r15,rbx
  3d1911:	jbe    3d18f0 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_with_scratch+0x130>
  3d1913:	add    rsp,0x8
  3d1917:	pop    rbx
  3d1918:	pop    r12
  3d191a:	pop    r13
  3d191c:	pop    r14
  3d191e:	pop    r15
  3d1920:	pop    rbp
  3d1921:	ret
  3d1922:	mov    rdi,r15
  3d1925:	mov    rsi,rbx
  3d1928:	mov    rdx,rbp
  3d192b:	mov    rcx,r8
  3d192e:	call   c1f480 <fastfft::fft::fail_inplace>
