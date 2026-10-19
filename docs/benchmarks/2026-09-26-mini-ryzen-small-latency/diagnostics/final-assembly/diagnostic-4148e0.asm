
target/small-latency/final-source/executable-1:     file format elf64-x86-64


Disassembly of section .text:

00000000004148e0 <<fastfft::engine::small::Small<T,V,_,_,_,_,K> as fastfft::api::Fft<T>>::process_immutable_with_scratch>:
  4148e0:	48 89 d0             	mov    %rdx,%rax
  4148e3:	48 83 f0 08          	xor    $0x8,%rax
  4148e7:	4d 89 c1             	mov    %r8,%r9
  4148ea:	49 83 f1 08          	xor    $0x8,%r9
  4148ee:	49 09 c1             	or     %rax,%r9
  4148f1:	75 0f                	jne    414902 <<fastfft::engine::small::Small<T,V,_,_,_,_,K> as fastfft::api::Fft<T>>::process_immutable_with_scratch+0x22>
  4148f3:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  4148f7:	48 89 f7             	mov    %rsi,%rdi
  4148fa:	48 89 ce             	mov    %rcx,%rsi
  4148fd:	e9 0e cd f5 ff       	jmp    371610 <<fastfft::isa::x86::F32x4 as fastfft::engine::small::SmallVector>::one>
  414902:	f6 c2 07             	test   $0x7,%dl
  414905:	75 21                	jne    414928 <<fastfft::engine::small::Small<T,V,_,_,_,_,K> as fastfft::api::Fft<T>>::process_immutable_with_scratch+0x48>
  414907:	48 83 fa 08          	cmp    $0x8,%rdx
  41490b:	72 1b                	jb     414928 <<fastfft::engine::small::Small<T,V,_,_,_,_,K> as fastfft::api::Fft<T>>::process_immutable_with_scratch+0x48>
  41490d:	4c 39 c2             	cmp    %r8,%rdx
  414910:	75 16                	jne    414928 <<fastfft::engine::small::Small<T,V,_,_,_,_,K> as fastfft::api::Fft<T>>::process_immutable_with_scratch+0x48>
  414912:	48 c1 ea 03          	shr    $0x3,%rdx
  414916:	48 8b 47 08          	mov    0x8(%rdi),%rax
  41491a:	48 89 f7             	mov    %rsi,%rdi
  41491d:	48 89 ce             	mov    %rcx,%rsi
  414920:	48 89 c1             	mov    %rax,%rcx
  414923:	e9 08 e3 f5 ff       	jmp    372c30 <<fastfft::isa::x86::F32x4 as fastfft::engine::small::SmallVector>::run>
  414928:	50                   	push   %rax
  414929:	bf 08 00 00 00       	mov    $0x8,%edi
  41492e:	48 89 d6             	mov    %rdx,%rsi
  414931:	4c 89 c2             	mov    %r8,%rdx
  414934:	31 c9                	xor    %ecx,%ecx
  414936:	45 31 c0             	xor    %r8d,%r8d
  414939:	e8 32 c6 26 00       	call   680f70 <fastfft::fft::fail_outofplace>
  41493e:	cc                   	int3
  41493f:	cc                   	int3
