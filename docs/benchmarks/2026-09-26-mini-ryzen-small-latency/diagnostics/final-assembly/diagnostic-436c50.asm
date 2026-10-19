
target/small-latency/final-source/executable-1:     file format elf64-x86-64


Disassembly of section .text:

0000000000436c50 <<fastfft::engine::small::Small<T,V,_,_,_,_,K> as fastfft::api::Fft<T>>::process_immutable_with_scratch>:
  436c50:	48 89 d0             	mov    %rdx,%rax
  436c53:	48 83 f0 08          	xor    $0x8,%rax
  436c57:	4d 89 c1             	mov    %r8,%r9
  436c5a:	49 83 f1 08          	xor    $0x8,%r9
  436c5e:	49 09 c1             	or     %rax,%r9
  436c61:	75 0f                	jne    436c72 <<fastfft::engine::small::Small<T,V,_,_,_,_,K> as fastfft::api::Fft<T>>::process_immutable_with_scratch+0x22>
  436c63:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  436c67:	48 89 f7             	mov    %rsi,%rdi
  436c6a:	48 89 ce             	mov    %rcx,%rsi
  436c6d:	e9 3e fe 21 00       	jmp    656ab0 <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<fastfft::isa::x86::small::F32x4f>>::one>
  436c72:	f6 c2 07             	test   $0x7,%dl
  436c75:	75 21                	jne    436c98 <<fastfft::engine::small::Small<T,V,_,_,_,_,K> as fastfft::api::Fft<T>>::process_immutable_with_scratch+0x48>
  436c77:	48 83 fa 08          	cmp    $0x8,%rdx
  436c7b:	72 1b                	jb     436c98 <<fastfft::engine::small::Small<T,V,_,_,_,_,K> as fastfft::api::Fft<T>>::process_immutable_with_scratch+0x48>
  436c7d:	4c 39 c2             	cmp    %r8,%rdx
  436c80:	75 16                	jne    436c98 <<fastfft::engine::small::Small<T,V,_,_,_,_,K> as fastfft::api::Fft<T>>::process_immutable_with_scratch+0x48>
  436c82:	48 c1 ea 03          	shr    $0x3,%rdx
  436c86:	48 8b 47 08          	mov    0x8(%rdi),%rax
  436c8a:	48 89 f7             	mov    %rsi,%rdi
  436c8d:	48 89 ce             	mov    %rcx,%rsi
  436c90:	48 89 c1             	mov    %rax,%rcx
  436c93:	e9 58 04 22 00       	jmp    6570f0 <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<fastfft::isa::x86::small::F32x4f>>::run>
  436c98:	50                   	push   %rax
  436c99:	bf 08 00 00 00       	mov    $0x8,%edi
  436c9e:	48 89 d6             	mov    %rdx,%rsi
  436ca1:	4c 89 c2             	mov    %r8,%rdx
  436ca4:	31 c9                	xor    %ecx,%ecx
  436ca6:	45 31 c0             	xor    %r8d,%r8d
  436ca9:	e8 c2 a2 24 00       	call   680f70 <fastfft::fft::fail_outofplace>
  436cae:	cc                   	int3
  436caf:	cc                   	int3
