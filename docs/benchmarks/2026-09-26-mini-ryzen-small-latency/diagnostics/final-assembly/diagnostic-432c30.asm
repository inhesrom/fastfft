
target/small-latency/final-source/executable-1:     file format elf64-x86-64


Disassembly of section .text:

0000000000432c30 <<fastfft::engine::small::Small<T,V,_,_,_,_,K> as fastfft::api::Fft<T>>::process_immutable_with_scratch>:
  432c30:	48 89 d0             	mov    %rdx,%rax
  432c33:	48 83 f0 20          	xor    $0x20,%rax
  432c37:	4d 89 c1             	mov    %r8,%r9
  432c3a:	49 83 f1 20          	xor    $0x20,%r9
  432c3e:	49 09 c1             	or     %rax,%r9
  432c41:	75 0f                	jne    432c52 <<fastfft::engine::small::Small<T,V,_,_,_,_,K> as fastfft::api::Fft<T>>::process_immutable_with_scratch+0x22>
  432c43:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  432c47:	48 89 f7             	mov    %rsi,%rdi
  432c4a:	48 89 ce             	mov    %rcx,%rsi
  432c4d:	e9 fe 39 22 00       	jmp    656650 <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<fastfft::isa::x86::small::F32x4f>>::one>
  432c52:	f6 c2 1f             	test   $0x1f,%dl
  432c55:	75 21                	jne    432c78 <<fastfft::engine::small::Small<T,V,_,_,_,_,K> as fastfft::api::Fft<T>>::process_immutable_with_scratch+0x48>
  432c57:	48 83 fa 20          	cmp    $0x20,%rdx
  432c5b:	72 1b                	jb     432c78 <<fastfft::engine::small::Small<T,V,_,_,_,_,K> as fastfft::api::Fft<T>>::process_immutable_with_scratch+0x48>
  432c5d:	4c 39 c2             	cmp    %r8,%rdx
  432c60:	75 16                	jne    432c78 <<fastfft::engine::small::Small<T,V,_,_,_,_,K> as fastfft::api::Fft<T>>::process_immutable_with_scratch+0x48>
  432c62:	48 c1 ea 05          	shr    $0x5,%rdx
  432c66:	48 8b 47 08          	mov    0x8(%rdi),%rax
  432c6a:	48 89 f7             	mov    %rsi,%rdi
  432c6d:	48 89 ce             	mov    %rcx,%rsi
  432c70:	48 89 c1             	mov    %rax,%rcx
  432c73:	e9 88 45 22 00       	jmp    657200 <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<fastfft::isa::x86::small::F32x4f>>::run>
  432c78:	50                   	push   %rax
  432c79:	bf 20 00 00 00       	mov    $0x20,%edi
  432c7e:	48 89 d6             	mov    %rdx,%rsi
  432c81:	4c 89 c2             	mov    %r8,%rdx
  432c84:	31 c9                	xor    %ecx,%ecx
  432c86:	45 31 c0             	xor    %r8d,%r8d
  432c89:	e8 e2 e2 24 00       	call   680f70 <fastfft::fft::fail_outofplace>
  432c8e:	cc                   	int3
  432c8f:	cc                   	int3
