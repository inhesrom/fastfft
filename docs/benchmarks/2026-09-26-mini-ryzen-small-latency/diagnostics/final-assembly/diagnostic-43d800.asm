
target/small-latency/final-source/executable-1:     file format elf64-x86-64


Disassembly of section .text:

000000000043d800 <<fastfft::engine::small::Small<T,V,_,_,_,_,K> as fastfft::api::Fft<T>>::process_immutable_with_scratch>:
  43d800:	48 89 d0             	mov    %rdx,%rax
  43d803:	48 83 f0 20          	xor    $0x20,%rax
  43d807:	4d 89 c1             	mov    %r8,%r9
  43d80a:	49 83 f1 20          	xor    $0x20,%r9
  43d80e:	49 09 c1             	or     %rax,%r9
  43d811:	75 0f                	jne    43d822 <<fastfft::engine::small::Small<T,V,_,_,_,_,K> as fastfft::api::Fft<T>>::process_immutable_with_scratch+0x22>
  43d813:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  43d817:	48 89 f7             	mov    %rsi,%rdi
  43d81a:	48 89 ce             	mov    %rcx,%rsi
  43d81d:	e9 6e 94 21 00       	jmp    656c90 <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<fastfft::isa::x86::small::F32x4f>>::one>
  43d822:	f6 c2 1f             	test   $0x1f,%dl
  43d825:	75 21                	jne    43d848 <<fastfft::engine::small::Small<T,V,_,_,_,_,K> as fastfft::api::Fft<T>>::process_immutable_with_scratch+0x48>
  43d827:	48 83 fa 20          	cmp    $0x20,%rdx
  43d82b:	72 1b                	jb     43d848 <<fastfft::engine::small::Small<T,V,_,_,_,_,K> as fastfft::api::Fft<T>>::process_immutable_with_scratch+0x48>
  43d82d:	4c 39 c2             	cmp    %r8,%rdx
  43d830:	75 16                	jne    43d848 <<fastfft::engine::small::Small<T,V,_,_,_,_,K> as fastfft::api::Fft<T>>::process_immutable_with_scratch+0x48>
  43d832:	48 c1 ea 05          	shr    $0x5,%rdx
  43d836:	48 8b 47 08          	mov    0x8(%rdi),%rax
  43d83a:	48 89 f7             	mov    %rsi,%rdi
  43d83d:	48 89 ce             	mov    %rcx,%rsi
  43d840:	48 89 c1             	mov    %rax,%rcx
  43d843:	e9 68 9e 21 00       	jmp    6576b0 <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<fastfft::isa::x86::small::F32x4f>>::run>
  43d848:	50                   	push   %rax
  43d849:	bf 20 00 00 00       	mov    $0x20,%edi
  43d84e:	48 89 d6             	mov    %rdx,%rsi
  43d851:	4c 89 c2             	mov    %r8,%rdx
  43d854:	31 c9                	xor    %ecx,%ecx
  43d856:	45 31 c0             	xor    %r8d,%r8d
  43d859:	e8 12 37 24 00       	call   680f70 <fastfft::fft::fail_outofplace>
  43d85e:	cc                   	int3
  43d85f:	cc                   	int3
