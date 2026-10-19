
target/ticket19/selection-fix/coefficient-components/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000004e1800 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch>:
  4e1800:	push   rbp
  4e1801:	push   r15
  4e1803:	push   r14
  4e1805:	push   r13
  4e1807:	push   r12
  4e1809:	push   rbx
  4e180a:	sub    rsp,0x18
  4e180e:	mov    r15,QWORD PTR [rdi+0xb0]
  4e1815:	test   r15,r15
  4e1818:	je     4e197c <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x17c>
  4e181e:	mov    r10,r9
  4e1821:	mov    r14,rcx
  4e1824:	mov    r13,rdx
  4e1827:	mov    r12,rsi
  4e182a:	mov    rax,QWORD PTR [rdi]
  4e182d:	sub    rax,0x2
  4e1831:	mov    ebx,0x2
  4e1836:	cmovae rbx,rax
  4e183a:	lea    rax,[rip+0xffffffffffbf495b]        # d619c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b05c>
  4e1841:	movsxd rcx,DWORD PTR [rax+rbx*4]
  4e1845:	add    rcx,rax
  4e1848:	mov    QWORD PTR [rsp+0x10],rdi
  4e184d:	jmp    rcx
  4e184f:	mov    rax,QWORD PTR [rdi+0x68]
  4e1853:	lea    rbx,[rax+0x4]
  4e1857:	test   rax,rax
  4e185a:	cmove  rbx,rax
  4e185e:	jmp    4e18d7 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0xd7>
  4e1860:	mov    rax,QWORD PTR [rdi+0x80]
  4e1867:	mov    rcx,QWORD PTR [rdi+0x88]
  4e186e:	add    rax,rax
  4e1871:	mov    rdx,QWORD PTR [rdi+0x90]
  4e1878:	imul   rdx,rcx
  4e187c:	xor    esi,esi
  4e187e:	cmp    rcx,0x2
  4e1882:	cmovae rsi,rdx
  4e1886:	add    rax,QWORD PTR [rdi+0x78]
  4e188a:	lea    rbx,[rsi+rax*1]
  4e188e:	add    rbx,0x4
  4e1892:	jmp    4e18d7 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0xd7>
  4e1894:	mov    rax,QWORD PTR [rdi+0x50]
  4e1898:	mov    QWORD PTR [rsp+0x8],rax
  4e189d:	mov    rax,QWORD PTR [rdi+0x38]
  4e18a1:	mov    rcx,QWORD PTR [rdi+0x40]
  4e18a5:	mov    rdx,QWORD PTR [rcx+0x10]
  4e18a9:	dec    rdx
  4e18ac:	and    rdx,0xfffffffffffffff0
  4e18b0:	lea    rdi,[rax+rdx*1]
  4e18b4:	add    rdi,0x10
  4e18b8:	mov    rbx,r8
  4e18bb:	mov    rbp,r10
  4e18be:	call   QWORD PTR [rcx+0x80]
  4e18c4:	mov    r10,rbp
  4e18c7:	mov    r8,rbx
  4e18ca:	mov    rcx,QWORD PTR [rsp+0x8]
  4e18cf:	lea    rbx,[rcx+rax*1]
  4e18d3:	add    rbx,0x4
  4e18d7:	mov    r9,QWORD PTR [rsp+0x50]
  4e18dc:	cmp    r13,r8
  4e18df:	jne    4e198b <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x18b>
  4e18e5:	mov    rax,r13
  4e18e8:	or     rax,r15
  4e18eb:	shr    rax,0x20
  4e18ef:	je     4e1903 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x103>
  4e18f1:	mov    rax,r13
  4e18f4:	xor    edx,edx
  4e18f6:	div    r15
  4e18f9:	cmp    r9,rbx
  4e18fc:	jae    4e1910 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x110>
  4e18fe:	jmp    4e198b <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x18b>
  4e1903:	mov    eax,r13d
  4e1906:	xor    edx,edx
  4e1908:	div    r15d
  4e190b:	cmp    r9,rbx
  4e190e:	jb     4e198b <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x18b>
  4e1910:	cmp    r13,r15
  4e1913:	jb     4e198b <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x18b>
  4e1915:	test   rdx,rdx
  4e1918:	jne    4e198b <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x18b>
  4e191a:	shl    r15,0x4
  4e191e:	xor    r13d,r13d
  4e1921:	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  4e1930:	mov    QWORD PTR [rsp+0x8],r12
  4e1935:	inc    r13
  4e1938:	mov    rdi,QWORD PTR [rsp+0x10]
  4e193d:	mov    rsi,r12
  4e1940:	mov    rdx,r14
  4e1943:	mov    rcx,r10
  4e1946:	mov    r8,rbx
  4e1949:	mov    r9d,0x1
  4e194f:	mov    rbp,r10
  4e1952:	mov    r12,r14
  4e1955:	mov    r14,r15
  4e1958:	mov    r15,rax
  4e195b:	call   4f6fc0 <fastfft::fft::FftImpl<T>::run_chunk>
  4e1960:	mov    rax,r15
  4e1963:	mov    r15,r14
  4e1966:	mov    r14,r12
  4e1969:	mov    r12,QWORD PTR [rsp+0x8]
  4e196e:	mov    r10,rbp
  4e1971:	add    r14,r15
  4e1974:	add    r12,r15
  4e1977:	cmp    r13,rax
  4e197a:	jb     4e1930 <<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch+0x130>
  4e197c:	add    rsp,0x18
  4e1980:	pop    rbx
  4e1981:	pop    r12
  4e1983:	pop    r13
  4e1985:	pop    r14
  4e1987:	pop    r15
  4e1989:	pop    rbp
  4e198a:	ret
  4e198b:	mov    rdi,r15
  4e198e:	mov    rsi,r13
  4e1991:	mov    rdx,r8
  4e1994:	mov    rcx,rbx
  4e1997:	mov    r8,r9
  4e199a:	call   d40dc0 <fastfft::fft::fail_outofplace>
