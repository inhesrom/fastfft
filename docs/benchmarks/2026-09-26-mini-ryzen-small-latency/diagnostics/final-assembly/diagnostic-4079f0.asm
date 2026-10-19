
target/small-latency/final-source/executable-1:     file format elf64-x86-64


Disassembly of section .text:

00000000004079f0 <<fastfft::engine::small::Small<T,V,_,_,_,_,K> as fastfft::api::Fft<T>>::process_immutable_with_scratch>:
  4079f0:	48 89 d0             	mov    %rdx,%rax
  4079f3:	48 83 f0 08          	xor    $0x8,%rax
  4079f7:	4d 89 c1             	mov    %r8,%r9
  4079fa:	49 83 f1 08          	xor    $0x8,%r9
  4079fe:	49 09 c1             	or     %rax,%r9
  407a01:	75 0f                	jne    407a12 <<fastfft::engine::small::Small<T,V,_,_,_,_,K> as fastfft::api::Fft<T>>::process_immutable_with_scratch+0x22>
  407a03:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  407a07:	48 89 f7             	mov    %rsi,%rdi
  407a0a:	48 89 ce             	mov    %rcx,%rsi
  407a0d:	e9 8e f1 24 00       	jmp    656ba0 <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<fastfft::isa::x86::small::F32x4f>>::one>
  407a12:	f6 c2 07             	test   $0x7,%dl
  407a15:	75 21                	jne    407a38 <<fastfft::engine::small::Small<T,V,_,_,_,_,K> as fastfft::api::Fft<T>>::process_immutable_with_scratch+0x48>
  407a17:	48 83 fa 08          	cmp    $0x8,%rdx
  407a1b:	72 1b                	jb     407a38 <<fastfft::engine::small::Small<T,V,_,_,_,_,K> as fastfft::api::Fft<T>>::process_immutable_with_scratch+0x48>
  407a1d:	4c 39 c2             	cmp    %r8,%rdx
  407a20:	75 16                	jne    407a38 <<fastfft::engine::small::Small<T,V,_,_,_,_,K> as fastfft::api::Fft<T>>::process_immutable_with_scratch+0x48>
  407a22:	48 c1 ea 03          	shr    $0x3,%rdx
  407a26:	48 8b 47 08          	mov    0x8(%rdi),%rax
  407a2a:	48 89 f7             	mov    %rsi,%rdi
  407a2d:	48 89 ce             	mov    %rcx,%rsi
  407a30:	48 89 c1             	mov    %rax,%rcx
  407a33:	e9 38 01 25 00       	jmp    657b70 <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<fastfft::isa::x86::small::F32x4f>>::run>
  407a38:	50                   	push   %rax
  407a39:	bf 08 00 00 00       	mov    $0x8,%edi
  407a3e:	48 89 d6             	mov    %rdx,%rsi
  407a41:	4c 89 c2             	mov    %r8,%rdx
  407a44:	31 c9                	xor    %ecx,%ecx
  407a46:	45 31 c0             	xor    %r8d,%r8d
  407a49:	e8 22 95 27 00       	call   680f70 <fastfft::fft::fail_outofplace>
  407a4e:	cc                   	int3
  407a4f:	cc                   	int3
