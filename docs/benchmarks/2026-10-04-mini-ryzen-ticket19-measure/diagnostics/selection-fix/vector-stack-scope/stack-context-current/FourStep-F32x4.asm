
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000da4c80 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute>:
  da4c80:	55                   	push   rbp
  da4c81:	41 57                	push   r15
  da4c83:	41 56                	push   r14
  da4c85:	41 55                	push   r13
  da4c87:	41 54                	push   r12
  da4c89:	53                   	push   rbx
  da4c8a:	48 81 ec 48 02 00 00 	sub    rsp,0x248
  da4c91:	48 89 8c 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rcx
  da4c98:	00 
  da4c99:	48 89 94 24 c0 00 00 	mov    QWORD PTR [rsp+0xc0],rdx
  da4ca0:	00 
  da4ca1:	48 89 b4 24 d0 00 00 	mov    QWORD PTR [rsp+0xd0],rsi
  da4ca8:	00 
  da4ca9:	45 85 c0             	test   r8d,r8d
  da4cac:	0f 84 de 00 00 00    	je     da4d90 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x110>
  da4cb2:	4c 8b 87 88 00 00 00 	mov    r8,QWORD PTR [rdi+0x88]
  da4cb9:	49 83 f8 01          	cmp    r8,0x1
  da4cbd:	0f 86 ab 01 00 00    	jbe    da4e6e <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1ee>
  da4cc3:	48 8b 47 58          	mov    rax,QWORD PTR [rdi+0x58]
  da4cc7:	48 8b 4f 10          	mov    rcx,QWORD PTR [rdi+0x10]
  da4ccb:	4c 8b 6f 20          	mov    r13,QWORD PTR [rdi+0x20]
  da4ccf:	48 8b 5f 60          	mov    rbx,QWORD PTR [rdi+0x60]
  da4cd3:	4c 8b 77 28          	mov    r14,QWORD PTR [rdi+0x28]
  da4cd7:	48 8b 57 30          	mov    rdx,QWORD PTR [rdi+0x30]
  da4cdb:	48 01 ca             	add    rdx,rcx
  da4cde:	48 89 94 24 a0 01 00 	mov    QWORD PTR [rsp+0x1a0],rdx
  da4ce5:	00 
  da4ce6:	48 8b 57 40          	mov    rdx,QWORD PTR [rdi+0x40]
  da4cea:	48 89 4c 24 30       	mov    QWORD PTR [rsp+0x30],rcx
  da4cef:	48 01 ca             	add    rdx,rcx
  da4cf2:	48 89 94 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],rdx
  da4cf9:	00 
  da4cfa:	48 8b 57 78          	mov    rdx,QWORD PTR [rdi+0x78]
  da4cfe:	48 8b 8f 80 00 00 00 	mov    rcx,QWORD PTR [rdi+0x80]
  da4d05:	f2 0f 10 05 c3 fb 2c 	movsd  xmm0,QWORD PTR [rip+0xffffffffff2cfbc3]        # 748d0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d80>
  da4d0c:	ff 
  da4d0d:	4e 8d 3c 85 00 00 00 	lea    r15,[r8*4+0x0]
  da4d14:	00 
  da4d15:	f6 84 24 c0 00 00 00 	test   BYTE PTR [rsp+0xc0],0x3f
  da4d1c:	3f 
  da4d1d:	0f 94 84 24 e0 00 00 	sete   BYTE PTR [rsp+0xe0]
  da4d24:	00 
  da4d25:	4d 85 ff             	test   r15,r15
  da4d28:	0f 84 c6 60 00 00    	je     daadf4 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6174>
  da4d2e:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
  da4d33:	48 8b 84 24 88 00 00 	mov    rax,QWORD PTR [rsp+0x88]
  da4d3a:	00 
  da4d3b:	48 89 94 24 88 01 00 	mov    QWORD PTR [rsp+0x188],rdx
  da4d42:	00 
  da4d43:	48 8d 04 d0          	lea    rax,[rax+rdx*8]
  da4d47:	48 89 84 24 10 02 00 	mov    QWORD PTR [rsp+0x210],rax
  da4d4e:	00 
  da4d4f:	48 89 8c 24 d8 00 00 	mov    QWORD PTR [rsp+0xd8],rcx
  da4d56:	00 
  da4d57:	48 8d 0c c8          	lea    rcx,[rax+rcx*8]
  da4d5b:	f2 0f 5a c0          	cvtsd2ss xmm0,xmm0
  da4d5f:	0f 29 44 24 60       	movaps XMMWORD PTR [rsp+0x60],xmm0
  da4d64:	48 89 bc 24 90 01 00 	mov    QWORD PTR [rsp+0x190],rdi
  da4d6b:	00 
  da4d6c:	0f b6 af 99 00 00 00 	movzx  ebp,BYTE PTR [rdi+0x99]
  da4d73:	48 89 d8             	mov    rax,rbx
  da4d76:	4c 09 f8             	or     rax,r15
  da4d79:	48 c1 e8 20          	shr    rax,0x20
  da4d7d:	0f 84 a6 44 00 00    	je     da9229 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x45a9>
  da4d83:	48 89 d8             	mov    rax,rbx
  da4d86:	31 d2                	xor    edx,edx
  da4d88:	49 f7 f7             	div    r15
  da4d8b:	e9 a0 44 00 00       	jmp    da9230 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x45b0>
  da4d90:	4c 8b 87 88 00 00 00 	mov    r8,QWORD PTR [rdi+0x88]
  da4d97:	49 83 f8 01          	cmp    r8,0x1
  da4d9b:	0f 86 68 13 00 00    	jbe    da6109 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1489>
  da4da1:	48 8b 47 58          	mov    rax,QWORD PTR [rdi+0x58]
  da4da5:	48 8b 4f 10          	mov    rcx,QWORD PTR [rdi+0x10]
  da4da9:	4c 8b 6f 20          	mov    r13,QWORD PTR [rdi+0x20]
  da4dad:	48 8b 5f 60          	mov    rbx,QWORD PTR [rdi+0x60]
  da4db1:	4c 8b 77 28          	mov    r14,QWORD PTR [rdi+0x28]
  da4db5:	48 8b 57 30          	mov    rdx,QWORD PTR [rdi+0x30]
  da4db9:	48 01 ca             	add    rdx,rcx
  da4dbc:	48 89 94 24 a0 01 00 	mov    QWORD PTR [rsp+0x1a0],rdx
  da4dc3:	00 
  da4dc4:	48 8b 57 40          	mov    rdx,QWORD PTR [rdi+0x40]
  da4dc8:	48 89 4c 24 30       	mov    QWORD PTR [rsp+0x30],rcx
  da4dcd:	48 01 ca             	add    rdx,rcx
  da4dd0:	48 89 94 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],rdx
  da4dd7:	00 
  da4dd8:	48 8b 57 78          	mov    rdx,QWORD PTR [rdi+0x78]
  da4ddc:	48 8b 8f 80 00 00 00 	mov    rcx,QWORD PTR [rdi+0x80]
  da4de3:	f2 0f 10 05 e5 fa 2c 	movsd  xmm0,QWORD PTR [rip+0xffffffffff2cfae5]        # 748d0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d80>
  da4dea:	ff 
  da4deb:	4e 8d 3c 85 00 00 00 	lea    r15,[r8*4+0x0]
  da4df2:	00 
  da4df3:	f6 84 24 c0 00 00 00 	test   BYTE PTR [rsp+0xc0],0x3f
  da4dfa:	3f 
  da4dfb:	0f 94 84 24 e0 00 00 	sete   BYTE PTR [rsp+0xe0]
  da4e02:	00 
  da4e03:	4d 85 ff             	test   r15,r15
  da4e06:	0f 84 e8 5f 00 00    	je     daadf4 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6174>
  da4e0c:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
  da4e11:	48 8b 84 24 88 00 00 	mov    rax,QWORD PTR [rsp+0x88]
  da4e18:	00 
  da4e19:	48 89 94 24 88 01 00 	mov    QWORD PTR [rsp+0x188],rdx
  da4e20:	00 
  da4e21:	48 8d 04 d0          	lea    rax,[rax+rdx*8]
  da4e25:	48 89 84 24 10 02 00 	mov    QWORD PTR [rsp+0x210],rax
  da4e2c:	00 
  da4e2d:	48 89 8c 24 d8 00 00 	mov    QWORD PTR [rsp+0xd8],rcx
  da4e34:	00 
  da4e35:	48 8d 0c c8          	lea    rcx,[rax+rcx*8]
  da4e39:	f2 0f 5a c0          	cvtsd2ss xmm0,xmm0
  da4e3d:	0f 29 44 24 60       	movaps XMMWORD PTR [rsp+0x60],xmm0
  da4e42:	48 89 bc 24 90 01 00 	mov    QWORD PTR [rsp+0x190],rdi
  da4e49:	00 
  da4e4a:	0f b6 af 99 00 00 00 	movzx  ebp,BYTE PTR [rdi+0x99]
  da4e51:	48 89 d8             	mov    rax,rbx
  da4e54:	4c 09 f8             	or     rax,r15
  da4e57:	48 c1 e8 20          	shr    rax,0x20
  da4e5b:	0f 84 4c 4b 00 00    	je     da99ad <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4d2d>
  da4e61:	48 89 d8             	mov    rax,rbx
  da4e64:	31 d2                	xor    edx,edx
  da4e66:	49 f7 f7             	div    r15
  da4e69:	e9 46 4b 00 00       	jmp    da99b4 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4d34>
  da4e6e:	4c 8b 67 58          	mov    r12,QWORD PTR [rdi+0x58]
  da4e72:	48 8b 4f 10          	mov    rcx,QWORD PTR [rdi+0x10]
  da4e76:	48 8b 5f 20          	mov    rbx,QWORD PTR [rdi+0x20]
  da4e7a:	48 8b 77 60          	mov    rsi,QWORD PTR [rdi+0x60]
  da4e7e:	48 8b 47 28          	mov    rax,QWORD PTR [rdi+0x28]
  da4e82:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
  da4e87:	48 8b 47 30          	mov    rax,QWORD PTR [rdi+0x30]
  da4e8b:	48 8b 57 40          	mov    rdx,QWORD PTR [rdi+0x40]
  da4e8f:	48 89 4c 24 30       	mov    QWORD PTR [rsp+0x30],rcx
  da4e94:	48 01 ca             	add    rdx,rcx
  da4e97:	48 89 94 24 38 02 00 	mov    QWORD PTR [rsp+0x238],rdx
  da4e9e:	00 
  da4e9f:	48 8b 4f 78          	mov    rcx,QWORD PTR [rdi+0x78]
  da4ea3:	48 8b 94 24 88 00 00 	mov    rdx,QWORD PTR [rsp+0x88]
  da4eaa:	00 
  da4eab:	48 8d 2c ca          	lea    rbp,[rdx+rcx*8]
  da4eaf:	48 8b 8f 80 00 00 00 	mov    rcx,QWORD PTR [rdi+0x80]
  da4eb6:	48 8d 4c cd 00       	lea    rcx,[rbp+rcx*8+0x0]
  da4ebb:	48 89 8c 24 a0 00 00 	mov    QWORD PTR [rsp+0xa0],rcx
  da4ec2:	00 
  da4ec3:	f2 0f 10 05 05 fa 2c 	movsd  xmm0,QWORD PTR [rip+0xffffffffff2cfa05]        # 748d0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d80>
  da4eca:	ff 
  da4ecb:	f2 0f 5a c0          	cvtsd2ss xmm0,xmm0
  da4ecf:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  da4ed3:	0f 29 44 24 10       	movaps XMMWORD PTR [rsp+0x10],xmm0
  da4ed8:	0f b6 8f 98 00 00 00 	movzx  ecx,BYTE PTR [rdi+0x98]
  da4edf:	0f b6 97 99 00 00 00 	movzx  edx,BYTE PTR [rdi+0x99]
  da4ee6:	88 8c 24 80 00 00 00 	mov    BYTE PTR [rsp+0x80],cl
  da4eed:	20 ca                	and    dl,cl
  da4eef:	88 54 24 20          	mov    BYTE PTR [rsp+0x20],dl
  da4ef3:	48 89 34 24          	mov    QWORD PTR [rsp],rsi
  da4ef7:	48 85 f6             	test   rsi,rsi
  da4efa:	4c 89 64 24 08       	mov    QWORD PTR [rsp+0x8],r12
  da4eff:	48 89 6c 24 78       	mov    QWORD PTR [rsp+0x78],rbp
  da4f04:	0f 84 c2 24 00 00    	je     da73cc <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x274c>
  da4f0a:	48 8b 34 24          	mov    rsi,QWORD PTR [rsp]
  da4f0e:	49 89 f1             	mov    r9,rsi
  da4f11:	49 c1 e9 02          	shr    r9,0x2
  da4f15:	89 f1                	mov    ecx,esi
  da4f17:	83 e1 03             	and    ecx,0x3
  da4f1a:	48 83 f9 01          	cmp    rcx,0x1
  da4f1e:	49 83 d9 ff          	sbb    r9,0xffffffffffffffff
  da4f22:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  da4f27:	48 8d 0c 02          	lea    rcx,[rdx+rax*1]
  da4f2b:	48 89 8c 24 30 02 00 	mov    QWORD PTR [rsp+0x230],rcx
  da4f32:	00 
  da4f33:	4d 89 e0             	mov    r8,r12
  da4f36:	49 c1 e8 02          	shr    r8,0x2
  da4f3a:	44 89 e1             	mov    ecx,r12d
  da4f3d:	83 e1 03             	and    ecx,0x3
  da4f40:	48 83 f9 01          	cmp    rcx,0x1
  da4f44:	49 83 d8 ff          	sbb    r8,0xffffffffffffffff
  da4f48:	4c 89 84 24 88 01 00 	mov    QWORD PTR [rsp+0x188],r8
  da4f4f:	00 
  da4f50:	48 8b 4f 70          	mov    rcx,QWORD PTR [rdi+0x70]
  da4f54:	f3 48 0f bc f9       	tzcnt  rdi,rcx
  da4f59:	48 89 7c 24 28       	mov    QWORD PTR [rsp+0x28],rdi
  da4f5e:	48 bf ff ff ff ff ff 	movabs rdi,0x7ffffffffffffff
  da4f65:	ff ff 07 
  da4f68:	48 89 8c 24 d8 00 00 	mov    QWORD PTR [rsp+0xd8],rcx
  da4f6f:	00 
  da4f70:	48 01 cf             	add    rdi,rcx
  da4f73:	48 89 7c 24 60       	mov    QWORD PTR [rsp+0x60],rdi
  da4f78:	4c 89 e7             	mov    rdi,r12
  da4f7b:	48 c1 e7 04          	shl    rdi,0x4
  da4f7f:	4f 8d 04 64          	lea    r8,[r12+r12*2]
  da4f83:	48 8d 4a 20          	lea    rcx,[rdx+0x20]
  da4f87:	48 89 8c 24 08 02 00 	mov    QWORD PTR [rsp+0x208],rcx
  da4f8e:	00 
  da4f8f:	48 8d 4b ff          	lea    rcx,[rbx-0x1]
  da4f93:	48 89 8c 24 00 02 00 	mov    QWORD PTR [rsp+0x200],rcx
  da4f9a:	00 
  da4f9b:	4c 89 e1             	mov    rcx,r12
  da4f9e:	48 f7 d9             	neg    rcx
  da4fa1:	48 89 8c 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],rcx
  da4fa8:	00 
  da4fa9:	4c 89 e1             	mov    rcx,r12
  da4fac:	48 c1 e1 05          	shl    rcx,0x5
  da4fb0:	48 89 8c 24 90 01 00 	mov    QWORD PTR [rsp+0x190],rcx
  da4fb7:	00 
  da4fb8:	48 8b 8c 24 88 00 00 	mov    rcx,QWORD PTR [rsp+0x88]
  da4fbf:	00 
  da4fc0:	48 01 cf             	add    rdi,rcx
  da4fc3:	48 89 bc 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rdi
  da4fca:	00 
  da4fcb:	48 01 c2             	add    rdx,rax
  da4fce:	48 83 c2 70          	add    rdx,0x70
  da4fd2:	48 89 f0             	mov    rax,rsi
  da4fd5:	48 c1 e0 05          	shl    rax,0x5
  da4fd9:	48 89 84 24 98 00 00 	mov    QWORD PTR [rsp+0x98],rax
  da4fe0:	00 
  da4fe1:	4c 89 84 24 28 02 00 	mov    QWORD PTR [rsp+0x228],r8
  da4fe8:	00 
  da4fe9:	4a 8d 04 c1          	lea    rax,[rcx+r8*8]
  da4fed:	48 89 84 24 e8 00 00 	mov    QWORD PTR [rsp+0xe8],rax
  da4ff4:	00 
  da4ff5:	4a 8d 04 e1          	lea    rax,[rcx+r12*8]
  da4ff9:	48 89 84 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],rax
  da5000:	00 
  da5001:	45 31 d2             	xor    r10d,r10d
  da5004:	48 89 8c 24 c8 00 00 	mov    QWORD PTR [rsp+0xc8],rcx
  da500b:	00 
  da500c:	48 89 4c 24 58       	mov    QWORD PTR [rsp+0x58],rcx
  da5011:	48 89 74 24 38       	mov    QWORD PTR [rsp+0x38],rsi
  da5016:	48 89 9c 24 e0 00 00 	mov    QWORD PTR [rsp+0xe0],rbx
  da501d:	00 
  da501e:	eb 6e                	jmp    da508e <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x40e>
  da5020:	4c 8b 54 24 40       	mov    r10,QWORD PTR [rsp+0x40]
  da5025:	49 83 c2 04          	add    r10,0x4
  da5029:	4c 8b 8c 24 98 01 00 	mov    r9,QWORD PTR [rsp+0x198]
  da5030:	00 
  da5031:	49 ff c9             	dec    r9
  da5034:	48 83 44 24 38 fc    	add    QWORD PTR [rsp+0x38],0xfffffffffffffffc
  da503a:	48 8b 84 24 90 01 00 	mov    rax,QWORD PTR [rsp+0x190]
  da5041:	00 
  da5042:	48 01 84 24 e8 00 00 	add    QWORD PTR [rsp+0xe8],rax
  da5049:	00 
  da504a:	48 01 84 24 90 00 00 	add    QWORD PTR [rsp+0x90],rax
  da5051:	00 
  da5052:	48 01 84 24 a8 00 00 	add    QWORD PTR [rsp+0xa8],rax
  da5059:	00 
  da505a:	48 8b 94 24 b0 00 00 	mov    rdx,QWORD PTR [rsp+0xb0]
  da5061:	00 
  da5062:	48 01 c2             	add    rdx,rax
  da5065:	48 01 44 24 58       	add    QWORD PTR [rsp+0x58],rax
  da506a:	48 83 ac 24 c8 00 00 	sub    QWORD PTR [rsp+0xc8],0xffffffffffffff80
  da5071:	00 80 
  da5073:	4d 85 c9             	test   r9,r9
  da5076:	4c 8b 64 24 08       	mov    r12,QWORD PTR [rsp+0x8]
  da507b:	48 8b 6c 24 78       	mov    rbp,QWORD PTR [rsp+0x78]
  da5080:	48 8b 9c 24 e0 00 00 	mov    rbx,QWORD PTR [rsp+0xe0]
  da5087:	00 
  da5088:	0f 84 3e 23 00 00    	je     da73cc <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x274c>
  da508e:	4c 8b 04 24          	mov    r8,QWORD PTR [rsp]
  da5092:	4d 29 d0             	sub    r8,r10
  da5095:	48 8b 84 24 d0 00 00 	mov    rax,QWORD PTR [rsp+0xd0]
  da509c:	00 
  da509d:	4a 8d 3c d0          	lea    rdi,[rax+r10*8]
  da50a1:	49 83 f8 04          	cmp    r8,0x4
  da50a5:	b8 04 00 00 00       	mov    eax,0x4
  da50aa:	4c 0f 43 c0          	cmovae r8,rax
  da50ae:	4c 89 8c 24 98 01 00 	mov    QWORD PTR [rsp+0x198],r9
  da50b5:	00 
  da50b6:	48 89 94 24 b0 00 00 	mov    QWORD PTR [rsp+0xb0],rdx
  da50bd:	00 
  da50be:	4c 89 54 24 40       	mov    QWORD PTR [rsp+0x40],r10
  da50c3:	72 5b                	jb     da5120 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4a0>
  da50c5:	48 85 db             	test   rbx,rbx
  da50c8:	0f 84 4a 5d 00 00    	je     daae18 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6198>
  da50ce:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  da50d3:	48 8b 00             	mov    rax,QWORD PTR [rax]
  da50d6:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  da50da:	48 83 f8 0d          	cmp    rax,0xd
  da50de:	0f 87 f8 5c 00 00    	ja     daaddc <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x615c>
  da50e4:	48 8d 0d 69 e1 2f ff 	lea    rcx,[rip+0xffffffffff2fe169]        # a3254 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30704>
  da50eb:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da50ef:	48 01 c8             	add    rax,rcx
  da50f2:	ff e0                	jmp    rax
  da50f4:	48 89 ee             	mov    rsi,rbp
  da50f7:	4c 89 e2             	mov    rdx,r12
  da50fa:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da50fe:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da5103:	e8 b8 98 ff ff       	call   d9e9c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da5108:	48 83 fb 02          	cmp    rbx,0x2
  da510c:	0f 83 9e 03 00 00    	jae    da54b0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x830>
  da5112:	e9 d9 07 00 00       	jmp    da58f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da5117:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  da511e:	00 00 
  da5120:	48 85 db             	test   rbx,rbx
  da5123:	0f 84 ef 5c 00 00    	je     daae18 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6198>
  da5129:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  da512e:	48 8b 00             	mov    rax,QWORD PTR [rax]
  da5131:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  da5135:	48 83 f8 0d          	cmp    rax,0xd
  da5139:	0f 87 9d 5c 00 00    	ja     daaddc <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x615c>
  da513f:	48 8d 0d 9a e0 2f ff 	lea    rcx,[rip+0xffffffffff2fe09a]        # a31e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30690>
  da5146:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da514a:	48 01 c8             	add    rax,rcx
  da514d:	ff e0                	jmp    rax
  da514f:	48 89 ee             	mov    rsi,rbp
  da5152:	4c 89 e2             	mov    rdx,r12
  da5155:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da5159:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da515e:	e8 9d cc fd ff       	call   d81e00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da5163:	48 83 fb 02          	cmp    rbx,0x2
  da5167:	0f 83 73 05 00 00    	jae    da56e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xa60>
  da516d:	e9 7e 07 00 00       	jmp    da58f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da5172:	48 89 ee             	mov    rsi,rbp
  da5175:	4c 89 e2             	mov    rdx,r12
  da5178:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da517c:	e8 bf 51 ff ff       	call   d9a340 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da5181:	48 83 fb 02          	cmp    rbx,0x2
  da5185:	0f 83 25 03 00 00    	jae    da54b0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x830>
  da518b:	e9 60 07 00 00       	jmp    da58f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da5190:	48 89 ee             	mov    rsi,rbp
  da5193:	4c 89 e2             	mov    rdx,r12
  da5196:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da519a:	e8 61 bc fe ff       	call   d90e00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da519f:	48 83 fb 02          	cmp    rbx,0x2
  da51a3:	0f 83 37 05 00 00    	jae    da56e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xa60>
  da51a9:	e9 42 07 00 00       	jmp    da58f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da51ae:	48 89 ee             	mov    rsi,rbp
  da51b1:	4c 89 e2             	mov    rdx,r12
  da51b4:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da51b8:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da51bd:	e8 3e ce ff ff       	call   da2000 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da51c2:	48 83 fb 02          	cmp    rbx,0x2
  da51c6:	0f 83 e4 02 00 00    	jae    da54b0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x830>
  da51cc:	e9 1f 07 00 00       	jmp    da58f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da51d1:	48 89 ee             	mov    rsi,rbp
  da51d4:	4c 89 e2             	mov    rdx,r12
  da51d7:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da51db:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da51e0:	e8 5b 92 ff ff       	call   d9e440 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da51e5:	48 83 fb 02          	cmp    rbx,0x2
  da51e9:	0f 83 f1 04 00 00    	jae    da56e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xa60>
  da51ef:	e9 fc 06 00 00       	jmp    da58f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da51f4:	48 89 ee             	mov    rsi,rbp
  da51f7:	4c 89 e2             	mov    rdx,r12
  da51fa:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da51fe:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da5203:	e8 b8 f9 fe ff       	call   d94bc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da5208:	48 83 fb 02          	cmp    rbx,0x2
  da520c:	0f 83 9e 02 00 00    	jae    da54b0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x830>
  da5212:	e9 d9 06 00 00       	jmp    da58f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da5217:	48 89 ee             	mov    rsi,rbp
  da521a:	4c 89 e2             	mov    rdx,r12
  da521d:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da5221:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da5226:	e8 55 f7 fd ff       	call   d84980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da522b:	48 83 fb 02          	cmp    rbx,0x2
  da522f:	0f 83 ab 04 00 00    	jae    da56e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xa60>
  da5235:	e9 b6 06 00 00       	jmp    da58f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da523a:	48 89 ee             	mov    rsi,rbp
  da523d:	4c 89 e2             	mov    rdx,r12
  da5240:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da5244:	e8 b7 1f ff ff       	call   d97200 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da5249:	48 83 fb 02          	cmp    rbx,0x2
  da524d:	0f 83 5d 02 00 00    	jae    da54b0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x830>
  da5253:	e9 98 06 00 00       	jmp    da58f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da5258:	48 89 ee             	mov    rsi,rbp
  da525b:	4c 89 e2             	mov    rdx,r12
  da525e:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da5262:	e8 d9 80 ff ff       	call   d9d340 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da5267:	48 83 fb 02          	cmp    rbx,0x2
  da526b:	0f 83 6f 04 00 00    	jae    da56e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xa60>
  da5271:	e9 7a 06 00 00       	jmp    da58f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da5276:	48 89 ee             	mov    rsi,rbp
  da5279:	4c 89 e2             	mov    rdx,r12
  da527c:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da5280:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da5285:	e8 36 1f fe ff       	call   d871c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da528a:	48 83 fb 02          	cmp    rbx,0x2
  da528e:	0f 83 1c 02 00 00    	jae    da54b0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x830>
  da5294:	e9 57 06 00 00       	jmp    da58f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da5299:	48 89 ee             	mov    rsi,rbp
  da529c:	4c 89 e2             	mov    rdx,r12
  da529f:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da52a3:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da52a8:	e8 d3 b7 fe ff       	call   d90a80 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da52ad:	48 83 fb 02          	cmp    rbx,0x2
  da52b1:	0f 83 29 04 00 00    	jae    da56e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xa60>
  da52b7:	e9 34 06 00 00       	jmp    da58f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da52bc:	48 89 ee             	mov    rsi,rbp
  da52bf:	4c 89 e2             	mov    rdx,r12
  da52c2:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da52c6:	e8 f5 7d ff ff       	call   d9d0c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da52cb:	48 83 fb 02          	cmp    rbx,0x2
  da52cf:	0f 83 db 01 00 00    	jae    da54b0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x830>
  da52d5:	e9 16 06 00 00       	jmp    da58f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da52da:	48 89 ee             	mov    rsi,rbp
  da52dd:	4c 89 e2             	mov    rdx,r12
  da52e0:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da52e4:	e8 d7 b1 ff ff       	call   da04c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da52e9:	48 83 fb 02          	cmp    rbx,0x2
  da52ed:	0f 83 ed 03 00 00    	jae    da56e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xa60>
  da52f3:	e9 f8 05 00 00       	jmp    da58f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da52f8:	48 89 ee             	mov    rsi,rbp
  da52fb:	4c 89 e2             	mov    rdx,r12
  da52fe:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da5302:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da5307:	e8 34 d3 fd ff       	call   d82640 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da530c:	48 83 fb 02          	cmp    rbx,0x2
  da5310:	0f 83 9a 01 00 00    	jae    da54b0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x830>
  da5316:	e9 d5 05 00 00       	jmp    da58f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da531b:	48 89 ee             	mov    rsi,rbp
  da531e:	4c 89 e2             	mov    rdx,r12
  da5321:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da5325:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da532a:	e8 51 c0 fd ff       	call   d81380 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da532f:	48 83 fb 02          	cmp    rbx,0x2
  da5333:	0f 83 a7 03 00 00    	jae    da56e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xa60>
  da5339:	e9 b2 05 00 00       	jmp    da58f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da533e:	48 89 ee             	mov    rsi,rbp
  da5341:	4c 89 e2             	mov    rdx,r12
  da5344:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da5348:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da534d:	e8 6e 1d ff ff       	call   d970c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da5352:	48 83 fb 02          	cmp    rbx,0x2
  da5356:	0f 83 54 01 00 00    	jae    da54b0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x830>
  da535c:	e9 8f 05 00 00       	jmp    da58f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da5361:	48 89 ee             	mov    rsi,rbp
  da5364:	4c 89 e2             	mov    rdx,r12
  da5367:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da536b:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da5370:	e8 0b 1a fe ff       	call   d86d80 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da5375:	48 83 fb 02          	cmp    rbx,0x2
  da5379:	0f 83 61 03 00 00    	jae    da56e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xa60>
  da537f:	e9 6c 05 00 00       	jmp    da58f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da5384:	48 89 ee             	mov    rsi,rbp
  da5387:	4c 89 e2             	mov    rdx,r12
  da538a:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da538e:	e8 2d cf ff ff       	call   da22c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da5393:	48 83 fb 02          	cmp    rbx,0x2
  da5397:	0f 83 13 01 00 00    	jae    da54b0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x830>
  da539d:	e9 4e 05 00 00       	jmp    da58f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da53a2:	48 89 ee             	mov    rsi,rbp
  da53a5:	4c 89 e2             	mov    rdx,r12
  da53a8:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da53ac:	e8 cf a0 ff ff       	call   d9f480 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da53b1:	48 83 fb 02          	cmp    rbx,0x2
  da53b5:	0f 83 25 03 00 00    	jae    da56e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xa60>
  da53bb:	e9 30 05 00 00       	jmp    da58f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da53c0:	48 89 ee             	mov    rsi,rbp
  da53c3:	4c 89 e2             	mov    rdx,r12
  da53c6:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da53ca:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da53cf:	e8 2c 89 fe ff       	call   d8dd00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da53d4:	48 83 fb 02          	cmp    rbx,0x2
  da53d8:	0f 83 d2 00 00 00    	jae    da54b0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x830>
  da53de:	e9 0d 05 00 00       	jmp    da58f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da53e3:	48 89 ee             	mov    rsi,rbp
  da53e6:	4c 89 e2             	mov    rdx,r12
  da53e9:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da53ed:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da53f2:	e8 c9 4a fe ff       	call   d89ec0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da53f7:	48 83 fb 02          	cmp    rbx,0x2
  da53fb:	0f 83 df 02 00 00    	jae    da56e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xa60>
  da5401:	e9 ea 04 00 00       	jmp    da58f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da5406:	48 89 ee             	mov    rsi,rbp
  da5409:	4c 89 e2             	mov    rdx,r12
  da540c:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da5410:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da5415:	e8 66 08 fe ff       	call   d85c80 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da541a:	48 83 fb 02          	cmp    rbx,0x2
  da541e:	0f 83 8c 00 00 00    	jae    da54b0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x830>
  da5424:	e9 c7 04 00 00       	jmp    da58f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da5429:	48 89 ee             	mov    rsi,rbp
  da542c:	4c 89 e2             	mov    rdx,r12
  da542f:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da5433:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da5438:	e8 43 04 ff ff       	call   d95880 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da543d:	48 83 fb 02          	cmp    rbx,0x2
  da5441:	0f 83 99 02 00 00    	jae    da56e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xa60>
  da5447:	e9 a4 04 00 00       	jmp    da58f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da544c:	48 89 ee             	mov    rsi,rbp
  da544f:	4c 89 e2             	mov    rdx,r12
  da5452:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da5456:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da545b:	e8 a0 80 fe ff       	call   d8d500 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da5460:	48 83 fb 02          	cmp    rbx,0x2
  da5464:	73 4a                	jae    da54b0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x830>
  da5466:	e9 85 04 00 00       	jmp    da58f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da546b:	48 89 ee             	mov    rsi,rbp
  da546e:	4c 89 e2             	mov    rdx,r12
  da5471:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da5475:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da547a:	e8 01 0c fe ff       	call   d86080 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da547f:	48 83 fb 02          	cmp    rbx,0x2
  da5483:	0f 83 57 02 00 00    	jae    da56e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xa60>
  da5489:	e9 62 04 00 00       	jmp    da58f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da548e:	48 89 ee             	mov    rsi,rbp
  da5491:	4c 89 e2             	mov    rdx,r12
  da5494:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da5498:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da549d:	e8 1e 15 ff ff       	call   d969c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da54a2:	48 83 fb 02          	cmp    rbx,0x2
  da54a6:	0f 82 44 04 00 00    	jb     da58f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da54ac:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  da54b0:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  da54b5:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  da54b8:	4c 8b bc 24 00 02 00 	mov    r15,QWORD PTR [rsp+0x200]
  da54bf:	00 
  da54c0:	4c 8b a4 24 08 02 00 	mov    r12,QWORD PTR [rsp+0x208]
  da54c7:	00 
  da54c8:	48 8b 44 24 78       	mov    rax,QWORD PTR [rsp+0x78]
  da54cd:	4c 8b b4 24 a0 00 00 	mov    r14,QWORD PTR [rsp+0xa0]
  da54d4:	00 
  da54d5:	eb 3d                	jmp    da5514 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x894>
  da54d7:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da54dc:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da54e3:	00 
  da54e4:	4c 89 f7             	mov    rdi,r14
  da54e7:	48 89 ee             	mov    rsi,rbp
  da54ea:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da54ef:	48 89 d9             	mov    rcx,rbx
  da54f2:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da54f9:	00 
  da54fa:	e8 81 da f1 ff       	call   cc2f80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da54ff:	90                   	nop
  da5500:	49 0f af dd          	imul   rbx,r13
  da5504:	49 83 c4 18          	add    r12,0x18
  da5508:	48 89 e8             	mov    rax,rbp
  da550b:	49 ff cf             	dec    r15
  da550e:	0f 84 dc 03 00 00    	je     da58f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da5514:	4c 89 f5             	mov    rbp,r14
  da5517:	49 89 c6             	mov    r14,rax
  da551a:	4d 8b 6c 24 f8       	mov    r13,QWORD PTR [r12-0x8]
  da551f:	4d 8b 04 24          	mov    r8,QWORD PTR [r12]
  da5523:	4c 03 44 24 30       	add    r8,QWORD PTR [rsp+0x30]
  da5528:	4c 89 6c 24 48       	mov    QWORD PTR [rsp+0x48],r13
  da552d:	49 8d 45 fe          	lea    rax,[r13-0x2]
  da5531:	48 83 f8 0e          	cmp    rax,0xe
  da5535:	0f 87 3a 58 00 00    	ja     daad75 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x60f5>
  da553b:	48 8d 0d 4a dd 2f ff 	lea    rcx,[rip+0xffffffffff2fdd4a]        # a328c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x3073c>
  da5542:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da5546:	48 01 c8             	add    rax,rcx
  da5549:	ff e0                	jmp    rax
  da554b:	4c 89 f7             	mov    rdi,r14
  da554e:	48 89 ee             	mov    rsi,rbp
  da5551:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da5556:	48 89 d9             	mov    rcx,rbx
  da5559:	e8 e2 55 f1 ff       	call   cbab40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da555e:	eb a0                	jmp    da5500 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x880>
  da5560:	4c 89 f7             	mov    rdi,r14
  da5563:	48 89 ee             	mov    rsi,rbp
  da5566:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da556b:	48 89 d9             	mov    rcx,rbx
  da556e:	e8 4d a0 f1 ff       	call   cbf5c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da5573:	eb 8b                	jmp    da5500 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x880>
  da5575:	4c 89 f7             	mov    rdi,r14
  da5578:	48 89 ee             	mov    rsi,rbp
  da557b:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da5580:	48 89 d9             	mov    rcx,rbx
  da5583:	e8 38 5f f1 ff       	call   cbb4c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da5588:	e9 73 ff ff ff       	jmp    da5500 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x880>
  da558d:	4c 89 f7             	mov    rdi,r14
  da5590:	48 89 ee             	mov    rsi,rbp
  da5593:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da5598:	48 89 d9             	mov    rcx,rbx
  da559b:	e8 60 b5 f1 ff       	call   cc0b00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da55a0:	e9 5b ff ff ff       	jmp    da5500 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x880>
  da55a5:	4c 89 f7             	mov    rdi,r14
  da55a8:	48 89 ee             	mov    rsi,rbp
  da55ab:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da55b0:	48 89 d9             	mov    rcx,rbx
  da55b3:	e8 88 83 f1 ff       	call   cbd940 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da55b8:	e9 43 ff ff ff       	jmp    da5500 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x880>
  da55bd:	4c 89 f7             	mov    rdi,r14
  da55c0:	48 89 ee             	mov    rsi,rbp
  da55c3:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da55c8:	48 89 d9             	mov    rcx,rbx
  da55cb:	e8 f0 58 f1 ff       	call   cbaec0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da55d0:	e9 2b ff ff ff       	jmp    da5500 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x880>
  da55d5:	4c 89 f7             	mov    rdi,r14
  da55d8:	48 89 ee             	mov    rsi,rbp
  da55db:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da55e0:	48 89 d9             	mov    rcx,rbx
  da55e3:	e8 58 5b f1 ff       	call   cbb140 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da55e8:	e9 13 ff ff ff       	jmp    da5500 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x880>
  da55ed:	4c 89 f7             	mov    rdi,r14
  da55f0:	48 89 ee             	mov    rsi,rbp
  da55f3:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da55f8:	48 89 d9             	mov    rcx,rbx
  da55fb:	e8 c0 6f f1 ff       	call   cbc5c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da5600:	e9 fb fe ff ff       	jmp    da5500 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x880>
  da5605:	4c 89 f7             	mov    rdi,r14
  da5608:	48 89 ee             	mov    rsi,rbp
  da560b:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da5610:	48 89 d9             	mov    rcx,rbx
  da5613:	e8 68 56 f1 ff       	call   cbac80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da5618:	e9 e3 fe ff ff       	jmp    da5500 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x880>
  da561d:	4c 89 f7             	mov    rdi,r14
  da5620:	48 89 ee             	mov    rsi,rbp
  da5623:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da5628:	48 89 d9             	mov    rcx,rbx
  da562b:	e8 d0 62 f1 ff       	call   cbb900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da5630:	e9 cb fe ff ff       	jmp    da5500 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x880>
  da5635:	4c 89 f7             	mov    rdi,r14
  da5638:	48 89 ee             	mov    rsi,rbp
  da563b:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da5640:	48 89 d9             	mov    rcx,rbx
  da5643:	e8 b8 c6 f1 ff       	call   cc1d00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da5648:	e9 b3 fe ff ff       	jmp    da5500 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x880>
  da564d:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da5652:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da5659:	00 
  da565a:	4c 89 f7             	mov    rdi,r14
  da565d:	48 89 ee             	mov    rsi,rbp
  da5660:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da5665:	48 89 d9             	mov    rcx,rbx
  da5668:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da566f:	00 
  da5670:	e8 4b 69 f1 ff       	call   cbbfc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da5675:	e9 86 fe ff ff       	jmp    da5500 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x880>
  da567a:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da567f:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da5686:	00 
  da5687:	4c 89 f7             	mov    rdi,r14
  da568a:	48 89 ee             	mov    rsi,rbp
  da568d:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da5692:	48 89 d9             	mov    rcx,rbx
  da5695:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da569c:	00 
  da569d:	e8 de 92 f1 ff       	call   cbe980 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da56a2:	e9 59 fe ff ff       	jmp    da5500 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x880>
  da56a7:	4c 89 f7             	mov    rdi,r14
  da56aa:	48 89 ee             	mov    rsi,rbp
  da56ad:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da56b2:	48 89 d9             	mov    rcx,rbx
  da56b5:	e8 46 78 f1 ff       	call   cbcf00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da56ba:	e9 41 fe ff ff       	jmp    da5500 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x880>
  da56bf:	48 89 ee             	mov    rsi,rbp
  da56c2:	4c 89 e2             	mov    rdx,r12
  da56c5:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da56c9:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da56ce:	e8 6d d9 fd ff       	call   d83040 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da56d3:	48 83 fb 02          	cmp    rbx,0x2
  da56d7:	0f 82 13 02 00 00    	jb     da58f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da56dd:	0f 1f 00             	nop    DWORD PTR [rax]
  da56e0:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  da56e5:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  da56e8:	4c 8b bc 24 00 02 00 	mov    r15,QWORD PTR [rsp+0x200]
  da56ef:	00 
  da56f0:	4c 8b a4 24 08 02 00 	mov    r12,QWORD PTR [rsp+0x208]
  da56f7:	00 
  da56f8:	48 8b 44 24 78       	mov    rax,QWORD PTR [rsp+0x78]
  da56fd:	4c 8b b4 24 a0 00 00 	mov    r14,QWORD PTR [rsp+0xa0]
  da5704:	00 
  da5705:	eb 3d                	jmp    da5744 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xac4>
  da5707:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da570c:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da5713:	00 
  da5714:	4c 89 f7             	mov    rdi,r14
  da5717:	48 89 ee             	mov    rsi,rbp
  da571a:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da571f:	48 89 d9             	mov    rcx,rbx
  da5722:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da5729:	00 
  da572a:	e8 51 d8 f1 ff       	call   cc2f80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da572f:	90                   	nop
  da5730:	49 0f af dd          	imul   rbx,r13
  da5734:	49 83 c4 18          	add    r12,0x18
  da5738:	48 89 e8             	mov    rax,rbp
  da573b:	49 ff cf             	dec    r15
  da573e:	0f 84 ac 01 00 00    	je     da58f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da5744:	4c 89 f5             	mov    rbp,r14
  da5747:	49 89 c6             	mov    r14,rax
  da574a:	4d 8b 6c 24 f8       	mov    r13,QWORD PTR [r12-0x8]
  da574f:	4d 8b 04 24          	mov    r8,QWORD PTR [r12]
  da5753:	4c 03 44 24 30       	add    r8,QWORD PTR [rsp+0x30]
  da5758:	4c 89 6c 24 48       	mov    QWORD PTR [rsp+0x48],r13
  da575d:	49 8d 45 fe          	lea    rax,[r13-0x2]
  da5761:	48 83 f8 0e          	cmp    rax,0xe
  da5765:	0f 87 0a 56 00 00    	ja     daad75 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x60f5>
  da576b:	48 8d 0d a6 da 2f ff 	lea    rcx,[rip+0xffffffffff2fdaa6]        # a3218 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x306c8>
  da5772:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da5776:	48 01 c8             	add    rax,rcx
  da5779:	ff e0                	jmp    rax
  da577b:	4c 89 f7             	mov    rdi,r14
  da577e:	48 89 ee             	mov    rsi,rbp
  da5781:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da5786:	48 89 d9             	mov    rcx,rbx
  da5789:	e8 b2 53 f1 ff       	call   cbab40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da578e:	eb a0                	jmp    da5730 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xab0>
  da5790:	4c 89 f7             	mov    rdi,r14
  da5793:	48 89 ee             	mov    rsi,rbp
  da5796:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da579b:	48 89 d9             	mov    rcx,rbx
  da579e:	e8 1d 9e f1 ff       	call   cbf5c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da57a3:	eb 8b                	jmp    da5730 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xab0>
  da57a5:	4c 89 f7             	mov    rdi,r14
  da57a8:	48 89 ee             	mov    rsi,rbp
  da57ab:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da57b0:	48 89 d9             	mov    rcx,rbx
  da57b3:	e8 08 5d f1 ff       	call   cbb4c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da57b8:	e9 73 ff ff ff       	jmp    da5730 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xab0>
  da57bd:	4c 89 f7             	mov    rdi,r14
  da57c0:	48 89 ee             	mov    rsi,rbp
  da57c3:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da57c8:	48 89 d9             	mov    rcx,rbx
  da57cb:	e8 30 b3 f1 ff       	call   cc0b00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da57d0:	e9 5b ff ff ff       	jmp    da5730 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xab0>
  da57d5:	4c 89 f7             	mov    rdi,r14
  da57d8:	48 89 ee             	mov    rsi,rbp
  da57db:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da57e0:	48 89 d9             	mov    rcx,rbx
  da57e3:	e8 58 81 f1 ff       	call   cbd940 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da57e8:	e9 43 ff ff ff       	jmp    da5730 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xab0>
  da57ed:	4c 89 f7             	mov    rdi,r14
  da57f0:	48 89 ee             	mov    rsi,rbp
  da57f3:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da57f8:	48 89 d9             	mov    rcx,rbx
  da57fb:	e8 c0 56 f1 ff       	call   cbaec0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da5800:	e9 2b ff ff ff       	jmp    da5730 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xab0>
  da5805:	4c 89 f7             	mov    rdi,r14
  da5808:	48 89 ee             	mov    rsi,rbp
  da580b:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da5810:	48 89 d9             	mov    rcx,rbx
  da5813:	e8 28 59 f1 ff       	call   cbb140 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da5818:	e9 13 ff ff ff       	jmp    da5730 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xab0>
  da581d:	4c 89 f7             	mov    rdi,r14
  da5820:	48 89 ee             	mov    rsi,rbp
  da5823:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da5828:	48 89 d9             	mov    rcx,rbx
  da582b:	e8 90 6d f1 ff       	call   cbc5c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da5830:	e9 fb fe ff ff       	jmp    da5730 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xab0>
  da5835:	4c 89 f7             	mov    rdi,r14
  da5838:	48 89 ee             	mov    rsi,rbp
  da583b:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da5840:	48 89 d9             	mov    rcx,rbx
  da5843:	e8 38 54 f1 ff       	call   cbac80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da5848:	e9 e3 fe ff ff       	jmp    da5730 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xab0>
  da584d:	4c 89 f7             	mov    rdi,r14
  da5850:	48 89 ee             	mov    rsi,rbp
  da5853:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da5858:	48 89 d9             	mov    rcx,rbx
  da585b:	e8 a0 60 f1 ff       	call   cbb900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da5860:	e9 cb fe ff ff       	jmp    da5730 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xab0>
  da5865:	4c 89 f7             	mov    rdi,r14
  da5868:	48 89 ee             	mov    rsi,rbp
  da586b:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da5870:	48 89 d9             	mov    rcx,rbx
  da5873:	e8 88 c4 f1 ff       	call   cc1d00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da5878:	e9 b3 fe ff ff       	jmp    da5730 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xab0>
  da587d:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da5882:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da5889:	00 
  da588a:	4c 89 f7             	mov    rdi,r14
  da588d:	48 89 ee             	mov    rsi,rbp
  da5890:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da5895:	48 89 d9             	mov    rcx,rbx
  da5898:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da589f:	00 
  da58a0:	e8 1b 67 f1 ff       	call   cbbfc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da58a5:	e9 86 fe ff ff       	jmp    da5730 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xab0>
  da58aa:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da58af:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da58b6:	00 
  da58b7:	4c 89 f7             	mov    rdi,r14
  da58ba:	48 89 ee             	mov    rsi,rbp
  da58bd:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da58c2:	48 89 d9             	mov    rcx,rbx
  da58c5:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da58cc:	00 
  da58cd:	e8 ae 90 f1 ff       	call   cbe980 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da58d2:	e9 59 fe ff ff       	jmp    da5730 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xab0>
  da58d7:	4c 89 f7             	mov    rdi,r14
  da58da:	48 89 ee             	mov    rsi,rbp
  da58dd:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da58e2:	48 89 d9             	mov    rcx,rbx
  da58e5:	e8 16 76 f1 ff       	call   cbcf00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da58ea:	e9 41 fe ff ff       	jmp    da5730 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xab0>
  da58ef:	90                   	nop
  da58f0:	80 bc 24 80 00 00 00 	cmp    BYTE PTR [rsp+0x80],0x0
  da58f7:	00 
  da58f8:	74 36                	je     da5930 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xcb0>
  da58fa:	48 8b b4 24 d8 00 00 	mov    rsi,QWORD PTR [rsp+0xd8]
  da5901:	00 
  da5902:	48 85 f6             	test   rsi,rsi
  da5905:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
  da590a:	0f 84 18 55 00 00    	je     daae28 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x61a8>
  da5910:	48 89 c8             	mov    rax,rcx
  da5913:	48 09 f0             	or     rax,rsi
  da5916:	48 c1 e8 20          	shr    rax,0x20
  da591a:	74 55                	je     da5971 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xcf1>
  da591c:	48 89 c8             	mov    rax,rcx
  da591f:	31 d2                	xor    edx,edx
  da5921:	48 f7 f6             	div    rsi
  da5924:	48 85 c9             	test   rcx,rcx
  da5927:	75 57                	jne    da5980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xd00>
  da5929:	e9 f2 f6 ff ff       	jmp    da5020 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3a0>
  da592e:	66 90                	xchg   ax,ax
  da5930:	48 83 7c 24 08 00    	cmp    QWORD PTR [rsp+0x8],0x0
  da5936:	0f 84 e4 f6 ff ff    	je     da5020 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3a0>
  da593c:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
  da5941:	4c 8b 64 24 08       	mov    r12,QWORD PTR [rsp+0x8]
  da5946:	49 0f af c4          	imul   rax,r12
  da594a:	48 8b 8c 24 88 00 00 	mov    rcx,QWORD PTR [rsp+0x88]
  da5951:	00 
  da5952:	48 8d 04 c1          	lea    rax,[rcx+rax*8]
  da5956:	48 89 84 24 40 02 00 	mov    QWORD PTR [rsp+0x240],rax
  da595d:	00 
  da595e:	45 31 f6             	xor    r14d,r14d
  da5961:	4c 8b ac 24 88 01 00 	mov    r13,QWORD PTR [rsp+0x188]
  da5968:	00 
  da5969:	45 31 ff             	xor    r15d,r15d
  da596c:	e9 17 03 00 00       	jmp    da5c88 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1008>
  da5971:	89 c8                	mov    eax,ecx
  da5973:	31 d2                	xor    edx,edx
  da5975:	f7 f6                	div    esi
  da5977:	48 85 c9             	test   rcx,rcx
  da597a:	0f 84 a0 f6 ff ff    	je     da5020 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3a0>
  da5980:	48 8b 4c 24 40       	mov    rcx,QWORD PTR [rsp+0x40]
  da5985:	48 01 c9             	add    rcx,rcx
  da5988:	48 0f af c1          	imul   rax,rcx
  da598c:	48 0f af 8c 24 d8 00 	imul   rcx,QWORD PTR [rsp+0xd8]
  da5993:	00 00 
  da5995:	48 8b 94 24 30 02 00 	mov    rdx,QWORD PTR [rsp+0x230]
  da599c:	00 
  da599d:	48 8d 04 82          	lea    rax,[rdx+rax*4]
  da59a1:	48 8b 94 24 38 02 00 	mov    rdx,QWORD PTR [rsp+0x238]
  da59a8:	00 
  da59a9:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
  da59ad:	48 83 c5 70          	add    rbp,0x70
  da59b1:	48 8b b4 24 c8 00 00 	mov    rsi,QWORD PTR [rsp+0xc8]
  da59b8:	00 
  da59b9:	48 8b bc 24 88 01 00 	mov    rdi,QWORD PTR [rsp+0x188]
  da59c0:	00 
  da59c1:	45 31 c0             	xor    r8d,r8d
  da59c4:	eb 47                	jmp    da5a0d <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xd8d>
  da59c6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  da59cd:	00 00 00 
  da59d0:	44 0f 11 06          	movups XMMWORD PTR [rsi],xmm8
  da59d4:	44 0f 11 4e 10       	movups XMMWORD PTR [rsi+0x10],xmm9
  da59d9:	0f 11 76 20          	movups XMMWORD PTR [rsi+0x20],xmm6
  da59dd:	0f 11 66 30          	movups XMMWORD PTR [rsi+0x30],xmm4
  da59e1:	0f 11 7e 40          	movups XMMWORD PTR [rsi+0x40],xmm7
  da59e5:	0f 11 46 50          	movups XMMWORD PTR [rsi+0x50],xmm0
  da59e9:	0f 11 6e 60          	movups XMMWORD PTR [rsi+0x60],xmm5
  da59ed:	0f 11 5e 70          	movups XMMWORD PTR [rsi+0x70],xmm3
  da59f1:	48 ff cf             	dec    rdi
  da59f4:	48 03 b4 24 98 00 00 	add    rsi,QWORD PTR [rsp+0x98]
  da59fb:	00 
  da59fc:	48 83 ed 80          	sub    rbp,0xffffffffffffff80
  da5a00:	49 83 c0 04          	add    r8,0x4
  da5a04:	48 85 ff             	test   rdi,rdi
  da5a07:	0f 84 13 f6 ff ff    	je     da5020 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3a0>
  da5a0d:	4d 89 c1             	mov    r9,r8
  da5a10:	48 8b 4c 24 28       	mov    rcx,QWORD PTR [rsp+0x28]
  da5a15:	49 d3 e9             	shr    r9,cl
  da5a18:	49 c1 e1 05          	shl    r9,0x5
  da5a1c:	42 0f 10 04 08       	movups xmm0,XMMWORD PTR [rax+r9*1]
  da5a21:	42 0f 10 74 08 10    	movups xmm6,XMMWORD PTR [rax+r9*1+0x10]
  da5a27:	4c 89 c1             	mov    rcx,r8
  da5a2a:	48 23 4c 24 60       	and    rcx,QWORD PTR [rsp+0x60]
  da5a2f:	48 c1 e1 05          	shl    rcx,0x5
  da5a33:	0f 10 24 0a          	movups xmm4,XMMWORD PTR [rdx+rcx*1]
  da5a37:	0f 10 4c 0a 10       	movups xmm1,XMMWORD PTR [rdx+rcx*1+0x10]
  da5a3c:	0f 10 5c 0a 20       	movups xmm3,XMMWORD PTR [rdx+rcx*1+0x20]
  da5a41:	0f 10 54 0a 30       	movups xmm2,XMMWORD PTR [rdx+rcx*1+0x30]
  da5a46:	0f 28 ee             	movaps xmm5,xmm6
  da5a49:	0f 59 e9             	mulps  xmm5,xmm1
  da5a4c:	0f 28 f8             	movaps xmm7,xmm0
  da5a4f:	0f 59 fc             	mulps  xmm7,xmm4
  da5a52:	0f 5c fd             	subps  xmm7,xmm5
  da5a55:	0f 59 e6             	mulps  xmm4,xmm6
  da5a58:	0f 59 c8             	mulps  xmm1,xmm0
  da5a5b:	0f 58 cc             	addps  xmm1,xmm4
  da5a5e:	44 0f 10 4d 90       	movups xmm9,XMMWORD PTR [rbp-0x70]
  da5a63:	44 0f 10 55 a0       	movups xmm10,XMMWORD PTR [rbp-0x60]
  da5a68:	0f 10 6d b0          	movups xmm5,XMMWORD PTR [rbp-0x50]
  da5a6c:	44 0f 10 45 c0       	movups xmm8,XMMWORD PTR [rbp-0x40]
  da5a71:	41 0f 28 e1          	movaps xmm4,xmm9
  da5a75:	0f 59 e7             	mulps  xmm4,xmm7
  da5a78:	41 0f 59 fa          	mulps  xmm7,xmm10
  da5a7c:	44 0f 59 d1          	mulps  xmm10,xmm1
  da5a80:	41 0f 5c e2          	subps  xmm4,xmm10
  da5a84:	41 0f 59 c9          	mulps  xmm1,xmm9
  da5a88:	0f 58 cf             	addps  xmm1,xmm7
  da5a8b:	0f 28 fe             	movaps xmm7,xmm6
  da5a8e:	0f 59 fa             	mulps  xmm7,xmm2
  da5a91:	44 0f 28 c8          	movaps xmm9,xmm0
  da5a95:	44 0f 59 cb          	mulps  xmm9,xmm3
  da5a99:	44 0f 5c cf          	subps  xmm9,xmm7
  da5a9d:	0f 59 de             	mulps  xmm3,xmm6
  da5aa0:	0f 59 d0             	mulps  xmm2,xmm0
  da5aa3:	0f 58 d3             	addps  xmm2,xmm3
  da5aa6:	0f 28 fd             	movaps xmm7,xmm5
  da5aa9:	41 0f 59 f9          	mulps  xmm7,xmm9
  da5aad:	45 0f 59 c8          	mulps  xmm9,xmm8
  da5ab1:	44 0f 59 c2          	mulps  xmm8,xmm2
  da5ab5:	41 0f 5c f8          	subps  xmm7,xmm8
  da5ab9:	0f 59 d5             	mulps  xmm2,xmm5
  da5abc:	41 0f 58 d1          	addps  xmm2,xmm9
  da5ac0:	44 0f 10 45 d0       	movups xmm8,XMMWORD PTR [rbp-0x30]
  da5ac5:	44 0f 10 4d e0       	movups xmm9,XMMWORD PTR [rbp-0x20]
  da5aca:	0f 10 6c 0a 40       	movups xmm5,XMMWORD PTR [rdx+rcx*1+0x40]
  da5acf:	0f 10 5c 0a 50       	movups xmm3,XMMWORD PTR [rdx+rcx*1+0x50]
  da5ad4:	44 0f 28 d6          	movaps xmm10,xmm6
  da5ad8:	44 0f 59 d3          	mulps  xmm10,xmm3
  da5adc:	44 0f 28 d8          	movaps xmm11,xmm0
  da5ae0:	44 0f 59 dd          	mulps  xmm11,xmm5
  da5ae4:	45 0f 5c da          	subps  xmm11,xmm10
  da5ae8:	0f 59 ee             	mulps  xmm5,xmm6
  da5aeb:	0f 59 d8             	mulps  xmm3,xmm0
  da5aee:	0f 58 dd             	addps  xmm3,xmm5
  da5af1:	41 0f 28 e8          	movaps xmm5,xmm8
  da5af5:	41 0f 59 eb          	mulps  xmm5,xmm11
  da5af9:	45 0f 59 d9          	mulps  xmm11,xmm9
  da5afd:	44 0f 59 cb          	mulps  xmm9,xmm3
  da5b01:	41 0f 5c e9          	subps  xmm5,xmm9
  da5b05:	41 0f 59 d8          	mulps  xmm3,xmm8
  da5b09:	41 0f 58 db          	addps  xmm3,xmm11
  da5b0d:	44 0f 10 45 f0       	movups xmm8,XMMWORD PTR [rbp-0x10]
  da5b12:	44 0f 10 4d 00       	movups xmm9,XMMWORD PTR [rbp+0x0]
  da5b17:	44 0f 10 54 0a 60    	movups xmm10,XMMWORD PTR [rdx+rcx*1+0x60]
  da5b1d:	44 0f 10 5c 0a 70    	movups xmm11,XMMWORD PTR [rdx+rcx*1+0x70]
  da5b23:	44 0f 28 e6          	movaps xmm12,xmm6
  da5b27:	45 0f 59 e3          	mulps  xmm12,xmm11
  da5b2b:	44 0f 28 e8          	movaps xmm13,xmm0
  da5b2f:	45 0f 59 ea          	mulps  xmm13,xmm10
  da5b33:	45 0f 5c ec          	subps  xmm13,xmm12
  da5b37:	41 0f 59 f2          	mulps  xmm6,xmm10
  da5b3b:	41 0f 59 c3          	mulps  xmm0,xmm11
  da5b3f:	0f 58 c6             	addps  xmm0,xmm6
  da5b42:	45 0f 28 d0          	movaps xmm10,xmm8
  da5b46:	45 0f 59 d5          	mulps  xmm10,xmm13
  da5b4a:	45 0f 59 e9          	mulps  xmm13,xmm9
  da5b4e:	44 0f 59 c8          	mulps  xmm9,xmm0
  da5b52:	45 0f 5c d1          	subps  xmm10,xmm9
  da5b56:	41 0f 59 c0          	mulps  xmm0,xmm8
  da5b5a:	41 0f 58 c5          	addps  xmm0,xmm13
  da5b5e:	44 0f 28 cc          	movaps xmm9,xmm4
  da5b62:	44 0f 14 cf          	unpcklps xmm9,xmm7
  da5b66:	0f 28 f5             	movaps xmm6,xmm5
  da5b69:	41 0f 14 f2          	unpcklps xmm6,xmm10
  da5b6d:	45 0f 28 c1          	movaps xmm8,xmm9
  da5b71:	44 0f 16 c6          	movlhps xmm8,xmm6
  da5b75:	41 0f 12 f1          	movhlps xmm6,xmm9
  da5b79:	0f 15 e7             	unpckhps xmm4,xmm7
  da5b7c:	41 0f 15 ea          	unpckhps xmm5,xmm10
  da5b80:	0f 28 fc             	movaps xmm7,xmm4
  da5b83:	0f 16 fd             	movlhps xmm7,xmm5
  da5b86:	0f 12 ec             	movhlps xmm5,xmm4
  da5b89:	44 0f 28 d1          	movaps xmm10,xmm1
  da5b8d:	44 0f 14 d2          	unpcklps xmm10,xmm2
  da5b91:	0f 28 e3             	movaps xmm4,xmm3
  da5b94:	0f 14 e0             	unpcklps xmm4,xmm0
  da5b97:	45 0f 28 ca          	movaps xmm9,xmm10
  da5b9b:	44 0f 16 cc          	movlhps xmm9,xmm4
  da5b9f:	41 0f 12 e2          	movhlps xmm4,xmm10
  da5ba3:	0f 15 ca             	unpckhps xmm1,xmm2
  da5ba6:	0f 15 d8             	unpckhps xmm3,xmm0
  da5ba9:	0f 28 c1             	movaps xmm0,xmm1
  da5bac:	0f 16 c3             	movlhps xmm0,xmm3
  da5baf:	0f 12 d9             	movhlps xmm3,xmm1
  da5bb2:	80 7c 24 20 00       	cmp    BYTE PTR [rsp+0x20],0x0
  da5bb7:	0f 84 13 fe ff ff    	je     da59d0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xd50>
  da5bbd:	48 8d 4e 10          	lea    rcx,[rsi+0x10]
  da5bc1:	4c 8d 4e 20          	lea    r9,[rsi+0x20]
  da5bc5:	4c 8d 56 30          	lea    r10,[rsi+0x30]
  da5bc9:	4c 8d 5e 40          	lea    r11,[rsi+0x40]
  da5bcd:	48 8d 5e 50          	lea    rbx,[rsi+0x50]
  da5bd1:	4c 8d 76 60          	lea    r14,[rsi+0x60]
  da5bd5:	4c 8d 7e 70          	lea    r15,[rsi+0x70]
  da5bd9:	44 0f 2b 06          	movntps XMMWORD PTR [rsi],xmm8
  da5bdd:	44 0f 2b 09          	movntps XMMWORD PTR [rcx],xmm9
  da5be1:	41 0f 2b 31          	movntps XMMWORD PTR [r9],xmm6
  da5be5:	41 0f 2b 22          	movntps XMMWORD PTR [r10],xmm4
  da5be9:	41 0f 2b 3b          	movntps XMMWORD PTR [r11],xmm7
  da5bed:	0f 2b 03             	movntps XMMWORD PTR [rbx],xmm0
  da5bf0:	41 0f 2b 2e          	movntps XMMWORD PTR [r14],xmm5
  da5bf4:	41 0f 2b 1f          	movntps XMMWORD PTR [r15],xmm3
  da5bf8:	e9 f4 fd ff ff       	jmp    da59f1 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xd71>
  da5bfd:	48 8b 84 24 28 02 00 	mov    rax,QWORD PTR [rsp+0x228]
  da5c04:	00 
  da5c05:	4c 01 f8             	add    rax,r15
  da5c08:	48 8b 8c 24 40 02 00 	mov    rcx,QWORD PTR [rsp+0x240]
  da5c0f:	00 
  da5c10:	48 8d 3c c1          	lea    rdi,[rcx+rax*8]
  da5c14:	48 8d 84 24 10 01 00 	lea    rax,[rsp+0x110]
  da5c1b:	00 
  da5c1c:	0f 57 c0             	xorps  xmm0,xmm0
  da5c1f:	0f 29 40 50          	movaps XMMWORD PTR [rax+0x50],xmm0
  da5c23:	0f 29 40 40          	movaps XMMWORD PTR [rax+0x40],xmm0
  da5c27:	0f 29 40 30          	movaps XMMWORD PTR [rax+0x30],xmm0
  da5c2b:	0f 29 40 20          	movaps XMMWORD PTR [rax+0x20],xmm0
  da5c2f:	0f 29 40 10          	movaps XMMWORD PTR [rax+0x10],xmm0
  da5c33:	0f 29 00             	movaps XMMWORD PTR [rax],xmm0
  da5c36:	45 0f 15 c8          	unpckhps xmm9,xmm8
  da5c3a:	45 0f 15 da          	unpckhps xmm11,xmm10
  da5c3e:	44 0f 29 8c 24 f0 00 	movaps XMMWORD PTR [rsp+0xf0],xmm9
  da5c45:	00 00 
  da5c47:	44 0f 29 9c 24 00 01 	movaps XMMWORD PTR [rsp+0x100],xmm11
  da5c4e:	00 00 
  da5c50:	48 8d b4 24 f0 00 00 	lea    rsi,[rsp+0xf0]
  da5c57:	00 
  da5c58:	48 89 da             	mov    rdx,rbx
  da5c5b:	ff 15 7f 7a 4a 00    	call   QWORD PTR [rip+0x4a7a7f]        # 124d6e0 <memcpy@GLIBC_2.14>
  da5c61:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  da5c68:	0f 1f 84 00 00 00 00 
  da5c6f:	00 
  da5c70:	49 ff cd             	dec    r13
  da5c73:	49 83 c4 fc          	add    r12,0xfffffffffffffffc
  da5c77:	49 83 c6 20          	add    r14,0x20
  da5c7b:	49 83 c7 04          	add    r15,0x4
  da5c7f:	4d 85 ed             	test   r13,r13
  da5c82:	0f 84 98 f3 ff ff    	je     da5020 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3a0>
  da5c88:	48 8b 8c 24 b8 00 00 	mov    rcx,QWORD PTR [rsp+0xb8]
  da5c8f:	00 
  da5c90:	4a 8d 04 39          	lea    rax,[rcx+r15*1]
  da5c94:	49 83 fc 04          	cmp    r12,0x4
  da5c98:	bb 04 00 00 00       	mov    ebx,0x4
  da5c9d:	49 0f 42 dc          	cmovb  rbx,r12
  da5ca1:	0f 57 c0             	xorps  xmm0,xmm0
  da5ca4:	48 85 c0             	test   rax,rax
  da5ca7:	74 77                	je     da5d20 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x10a0>
  da5ca9:	46 0f 10 44 b5 00    	movups xmm8,XMMWORD PTR [rbp+r14*4+0x0]
  da5caf:	42 0f 10 4c b5 10    	movups xmm1,XMMWORD PTR [rbp+r14*4+0x10]
  da5cb5:	48 8b 94 24 b0 00 00 	mov    rdx,QWORD PTR [rsp+0xb0]
  da5cbc:	00 
  da5cbd:	42 0f 10 54 b2 90    	movups xmm2,XMMWORD PTR [rdx+r14*4-0x70]
  da5cc3:	42 0f 10 5c b2 a0    	movups xmm3,XMMWORD PTR [rdx+r14*4-0x60]
  da5cc9:	0f 28 e1             	movaps xmm4,xmm1
  da5ccc:	0f 59 e3             	mulps  xmm4,xmm3
  da5ccf:	45 0f 28 c8          	movaps xmm9,xmm8
  da5cd3:	44 0f 59 ca          	mulps  xmm9,xmm2
  da5cd7:	44 0f 5c cc          	subps  xmm9,xmm4
  da5cdb:	0f 59 ca             	mulps  xmm1,xmm2
  da5cde:	44 0f 59 c3          	mulps  xmm8,xmm3
  da5ce2:	44 0f 58 c1          	addps  xmm8,xmm1
  da5ce6:	49 83 fc 02          	cmp    r12,0x2
  da5cea:	73 64                	jae    da5d50 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x10d0>
  da5cec:	0f 57 c9             	xorps  xmm1,xmm1
  da5cef:	45 0f 57 d2          	xorps  xmm10,xmm10
  da5cf3:	0f 57 db             	xorps  xmm3,xmm3
  da5cf6:	0f 57 d2             	xorps  xmm2,xmm2
  da5cf9:	45 0f 57 db          	xorps  xmm11,xmm11
  da5cfd:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
  da5d02:	48 39 04 24          	cmp    QWORD PTR [rsp],rax
  da5d06:	0f 84 64 ff ff ff    	je     da5c70 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xff0>
  da5d0c:	e9 3f 01 00 00       	jmp    da5e50 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x11d0>
  da5d11:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  da5d18:	0f 1f 84 00 00 00 00 
  da5d1f:	00 
  da5d20:	0f 57 c9             	xorps  xmm1,xmm1
  da5d23:	45 0f 57 d2          	xorps  xmm10,xmm10
  da5d27:	45 0f 57 c0          	xorps  xmm8,xmm8
  da5d2b:	0f 57 db             	xorps  xmm3,xmm3
  da5d2e:	0f 57 d2             	xorps  xmm2,xmm2
  da5d31:	45 0f 57 db          	xorps  xmm11,xmm11
  da5d35:	45 0f 57 c9          	xorps  xmm9,xmm9
  da5d39:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
  da5d3e:	48 39 04 24          	cmp    QWORD PTR [rsp],rax
  da5d42:	0f 84 28 ff ff ff    	je     da5c70 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xff0>
  da5d48:	e9 03 01 00 00       	jmp    da5e50 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x11d0>
  da5d4d:	0f 1f 00             	nop    DWORD PTR [rax]
  da5d50:	4a 8d 04 39          	lea    rax,[rcx+r15*1]
  da5d54:	48 83 c0 02          	add    rax,0x2
  da5d58:	42 0f 10 4c b5 20    	movups xmm1,XMMWORD PTR [rbp+r14*4+0x20]
  da5d5e:	42 0f 10 5c b5 30    	movups xmm3,XMMWORD PTR [rbp+r14*4+0x30]
  da5d64:	42 0f 10 64 b2 b0    	movups xmm4,XMMWORD PTR [rdx+r14*4-0x50]
  da5d6a:	42 0f 10 6c b2 c0    	movups xmm5,XMMWORD PTR [rdx+r14*4-0x40]
  da5d70:	0f 28 f3             	movaps xmm6,xmm3
  da5d73:	0f 59 f5             	mulps  xmm6,xmm5
  da5d76:	0f 28 d1             	movaps xmm2,xmm1
  da5d79:	0f 59 d4             	mulps  xmm2,xmm4
  da5d7c:	0f 5c d6             	subps  xmm2,xmm6
  da5d7f:	0f 59 dc             	mulps  xmm3,xmm4
  da5d82:	0f 59 cd             	mulps  xmm1,xmm5
  da5d85:	0f 58 cb             	addps  xmm1,xmm3
  da5d88:	48 85 c0             	test   rax,rax
  da5d8b:	0f 84 82 00 00 00    	je     da5e13 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1193>
  da5d91:	4a 8d 04 39          	lea    rax,[rcx+r15*1]
  da5d95:	48 83 c0 03          	add    rax,0x3
  da5d99:	46 0f 10 54 b5 40    	movups xmm10,XMMWORD PTR [rbp+r14*4+0x40]
  da5d9f:	42 0f 10 5c b5 50    	movups xmm3,XMMWORD PTR [rbp+r14*4+0x50]
  da5da5:	42 0f 10 64 b2 d0    	movups xmm4,XMMWORD PTR [rdx+r14*4-0x30]
  da5dab:	42 0f 10 6c b2 e0    	movups xmm5,XMMWORD PTR [rdx+r14*4-0x20]
  da5db1:	0f 28 f3             	movaps xmm6,xmm3
  da5db4:	0f 59 f5             	mulps  xmm6,xmm5
  da5db7:	45 0f 28 da          	movaps xmm11,xmm10
  da5dbb:	44 0f 59 dc          	mulps  xmm11,xmm4
  da5dbf:	44 0f 5c de          	subps  xmm11,xmm6
  da5dc3:	0f 59 dc             	mulps  xmm3,xmm4
  da5dc6:	44 0f 59 d5          	mulps  xmm10,xmm5
  da5dca:	44 0f 58 d3          	addps  xmm10,xmm3
  da5dce:	48 85 c0             	test   rax,rax
  da5dd1:	74 5c                	je     da5e2f <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x11af>
  da5dd3:	42 0f 10 44 b5 60    	movups xmm0,XMMWORD PTR [rbp+r14*4+0x60]
  da5dd9:	42 0f 10 64 b5 70    	movups xmm4,XMMWORD PTR [rbp+r14*4+0x70]
  da5ddf:	42 0f 10 6c b2 f0    	movups xmm5,XMMWORD PTR [rdx+r14*4-0x10]
  da5de5:	42 0f 10 34 b2       	movups xmm6,XMMWORD PTR [rdx+r14*4]
  da5dea:	0f 28 fc             	movaps xmm7,xmm4
  da5ded:	0f 59 fe             	mulps  xmm7,xmm6
  da5df0:	0f 28 d8             	movaps xmm3,xmm0
  da5df3:	0f 59 dd             	mulps  xmm3,xmm5
  da5df6:	0f 5c df             	subps  xmm3,xmm7
  da5df9:	0f 59 e5             	mulps  xmm4,xmm5
  da5dfc:	0f 59 c6             	mulps  xmm0,xmm6
  da5dff:	0f 58 c4             	addps  xmm0,xmm4
  da5e02:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
  da5e07:	48 39 04 24          	cmp    QWORD PTR [rsp],rax
  da5e0b:	0f 84 5f fe ff ff    	je     da5c70 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xff0>
  da5e11:	eb 3d                	jmp    da5e50 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x11d0>
  da5e13:	45 0f 57 d2          	xorps  xmm10,xmm10
  da5e17:	0f 57 db             	xorps  xmm3,xmm3
  da5e1a:	45 0f 57 db          	xorps  xmm11,xmm11
  da5e1e:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
  da5e23:	48 39 04 24          	cmp    QWORD PTR [rsp],rax
  da5e27:	0f 84 43 fe ff ff    	je     da5c70 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xff0>
  da5e2d:	eb 21                	jmp    da5e50 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x11d0>
  da5e2f:	0f 57 db             	xorps  xmm3,xmm3
  da5e32:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
  da5e37:	48 39 04 24          	cmp    QWORD PTR [rsp],rax
  da5e3b:	0f 84 2f fe ff ff    	je     da5c70 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xff0>
  da5e41:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  da5e48:	0f 1f 84 00 00 00 00 
  da5e4f:	00 
  da5e50:	41 0f 28 e1          	movaps xmm4,xmm9
  da5e54:	0f 14 e2             	unpcklps xmm4,xmm2
  da5e57:	41 0f 28 eb          	movaps xmm5,xmm11
  da5e5b:	0f 14 eb             	unpcklps xmm5,xmm3
  da5e5e:	44 0f 15 ca          	unpckhps xmm9,xmm2
  da5e62:	44 0f 15 db          	unpckhps xmm11,xmm3
  da5e66:	41 0f 28 f0          	movaps xmm6,xmm8
  da5e6a:	0f 14 f1             	unpcklps xmm6,xmm1
  da5e6d:	41 0f 28 da          	movaps xmm3,xmm10
  da5e71:	0f 14 d8             	unpcklps xmm3,xmm0
  da5e74:	44 0f 15 c1          	unpckhps xmm8,xmm1
  da5e78:	44 0f 15 d0          	unpckhps xmm10,xmm0
  da5e7c:	48 c1 e3 03          	shl    rbx,0x3
  da5e80:	0f 28 c4             	movaps xmm0,xmm4
  da5e83:	0f 14 c6             	unpcklps xmm0,xmm6
  da5e86:	0f 28 cd             	movaps xmm1,xmm5
  da5e89:	0f 14 cb             	unpcklps xmm1,xmm3
  da5e8c:	49 83 fc 03          	cmp    r12,0x3
  da5e90:	0f 86 9a 00 00 00    	jbe    da5f30 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x12b0>
  da5e96:	48 8b 44 24 58       	mov    rax,QWORD PTR [rsp+0x58]
  da5e9b:	42 0f 11 04 f8       	movups XMMWORD PTR [rax+r15*8],xmm0
  da5ea0:	42 0f 11 4c f8 10    	movups XMMWORD PTR [rax+r15*8+0x10],xmm1
  da5ea6:	48 83 7c 24 38 02    	cmp    QWORD PTR [rsp+0x38],0x2
  da5eac:	0f 82 be fd ff ff    	jb     da5c70 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xff0>
  da5eb2:	0f 15 e6             	unpckhps xmm4,xmm6
  da5eb5:	0f 15 eb             	unpckhps xmm5,xmm3
  da5eb8:	48 8b 84 24 a8 00 00 	mov    rax,QWORD PTR [rsp+0xa8]
  da5ebf:	00 
  da5ec0:	42 0f 11 24 f8       	movups XMMWORD PTR [rax+r15*8],xmm4
  da5ec5:	42 0f 11 6c f8 10    	movups XMMWORD PTR [rax+r15*8+0x10],xmm5
  da5ecb:	0f 84 9f fd ff ff    	je     da5c70 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xff0>
  da5ed1:	41 0f 28 c1          	movaps xmm0,xmm9
  da5ed5:	41 0f 14 c0          	unpcklps xmm0,xmm8
  da5ed9:	41 0f 28 cb          	movaps xmm1,xmm11
  da5edd:	41 0f 14 ca          	unpcklps xmm1,xmm10
  da5ee1:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
  da5ee8:	00 
  da5ee9:	42 0f 11 04 f8       	movups XMMWORD PTR [rax+r15*8],xmm0
  da5eee:	42 0f 11 4c f8 10    	movups XMMWORD PTR [rax+r15*8+0x10],xmm1
  da5ef4:	48 83 7c 24 38 03    	cmp    QWORD PTR [rsp+0x38],0x3
  da5efa:	0f 84 70 fd ff ff    	je     da5c70 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xff0>
  da5f00:	49 83 fc 03          	cmp    r12,0x3
  da5f04:	0f 86 f3 fc ff ff    	jbe    da5bfd <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xf7d>
  da5f0a:	45 0f 15 c8          	unpckhps xmm9,xmm8
  da5f0e:	45 0f 15 da          	unpckhps xmm11,xmm10
  da5f12:	48 8b 84 24 e8 00 00 	mov    rax,QWORD PTR [rsp+0xe8]
  da5f19:	00 
  da5f1a:	46 0f 11 0c f8       	movups XMMWORD PTR [rax+r15*8],xmm9
  da5f1f:	46 0f 11 5c f8 10    	movups XMMWORD PTR [rax+r15*8+0x10],xmm11
  da5f25:	e9 46 fd ff ff       	jmp    da5c70 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xff0>
  da5f2a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  da5f30:	48 8b 44 24 58       	mov    rax,QWORD PTR [rsp+0x58]
  da5f35:	4a 8d 3c f8          	lea    rdi,[rax+r15*8]
  da5f39:	48 8d 84 24 10 01 00 	lea    rax,[rsp+0x110]
  da5f40:	00 
  da5f41:	0f 57 d2             	xorps  xmm2,xmm2
  da5f44:	0f 29 50 50          	movaps XMMWORD PTR [rax+0x50],xmm2
  da5f48:	0f 29 50 40          	movaps XMMWORD PTR [rax+0x40],xmm2
  da5f4c:	0f 29 50 30          	movaps XMMWORD PTR [rax+0x30],xmm2
  da5f50:	0f 29 50 20          	movaps XMMWORD PTR [rax+0x20],xmm2
  da5f54:	0f 29 50 10          	movaps XMMWORD PTR [rax+0x10],xmm2
  da5f58:	0f 29 10             	movaps XMMWORD PTR [rax],xmm2
  da5f5b:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da5f62:	00 
  da5f63:	0f 29 8c 24 00 01 00 	movaps XMMWORD PTR [rsp+0x100],xmm1
  da5f6a:	00 
  da5f6b:	48 8d b4 24 f0 00 00 	lea    rsi,[rsp+0xf0]
  da5f72:	00 
  da5f73:	48 89 da             	mov    rdx,rbx
  da5f76:	44 0f 29 84 24 e0 01 	movaps XMMWORD PTR [rsp+0x1e0],xmm8
  da5f7d:	00 00 
  da5f7f:	44 0f 29 8c 24 d0 01 	movaps XMMWORD PTR [rsp+0x1d0],xmm9
  da5f86:	00 00 
  da5f88:	44 0f 29 94 24 b0 01 	movaps XMMWORD PTR [rsp+0x1b0],xmm10
  da5f8f:	00 00 
  da5f91:	44 0f 29 9c 24 a0 01 	movaps XMMWORD PTR [rsp+0x1a0],xmm11
  da5f98:	00 00 
  da5f9a:	0f 29 a4 24 70 01 00 	movaps XMMWORD PTR [rsp+0x170],xmm4
  da5fa1:	00 
  da5fa2:	0f 29 ac 24 c0 01 00 	movaps XMMWORD PTR [rsp+0x1c0],xmm5
  da5fa9:	00 
  da5faa:	0f 29 9c 24 f0 01 00 	movaps XMMWORD PTR [rsp+0x1f0],xmm3
  da5fb1:	00 
  da5fb2:	0f 29 b4 24 10 02 00 	movaps XMMWORD PTR [rsp+0x210],xmm6
  da5fb9:	00 
  da5fba:	ff 15 20 77 4a 00    	call   QWORD PTR [rip+0x4a7720]        # 124d6e0 <memcpy@GLIBC_2.14>
  da5fc0:	0f 28 a4 24 10 02 00 	movaps xmm4,XMMWORD PTR [rsp+0x210]
  da5fc7:	00 
  da5fc8:	0f 28 9c 24 f0 01 00 	movaps xmm3,XMMWORD PTR [rsp+0x1f0]
  da5fcf:	00 
  da5fd0:	0f 28 94 24 c0 01 00 	movaps xmm2,XMMWORD PTR [rsp+0x1c0]
  da5fd7:	00 
  da5fd8:	0f 28 8c 24 70 01 00 	movaps xmm1,XMMWORD PTR [rsp+0x170]
  da5fdf:	00 
  da5fe0:	48 83 7c 24 38 02    	cmp    QWORD PTR [rsp+0x38],0x2
  da5fe6:	0f 82 84 fc ff ff    	jb     da5c70 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xff0>
  da5fec:	48 8b 84 24 a8 00 00 	mov    rax,QWORD PTR [rsp+0xa8]
  da5ff3:	00 
  da5ff4:	4a 8d 3c f8          	lea    rdi,[rax+r15*8]
  da5ff8:	48 8d 84 24 10 01 00 	lea    rax,[rsp+0x110]
  da5fff:	00 
  da6000:	0f 57 c0             	xorps  xmm0,xmm0
  da6003:	0f 29 40 50          	movaps XMMWORD PTR [rax+0x50],xmm0
  da6007:	0f 29 40 40          	movaps XMMWORD PTR [rax+0x40],xmm0
  da600b:	0f 29 40 30          	movaps XMMWORD PTR [rax+0x30],xmm0
  da600f:	0f 29 40 20          	movaps XMMWORD PTR [rax+0x20],xmm0
  da6013:	0f 29 40 10          	movaps XMMWORD PTR [rax+0x10],xmm0
  da6017:	0f 29 00             	movaps XMMWORD PTR [rax],xmm0
  da601a:	0f 15 cc             	unpckhps xmm1,xmm4
  da601d:	0f 15 d3             	unpckhps xmm2,xmm3
  da6020:	0f 29 8c 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm1
  da6027:	00 
  da6028:	0f 29 94 24 00 01 00 	movaps XMMWORD PTR [rsp+0x100],xmm2
  da602f:	00 
  da6030:	48 8d b4 24 f0 00 00 	lea    rsi,[rsp+0xf0]
  da6037:	00 
  da6038:	48 89 da             	mov    rdx,rbx
  da603b:	ff 15 9f 76 4a 00    	call   QWORD PTR [rip+0x4a769f]        # 124d6e0 <memcpy@GLIBC_2.14>
  da6041:	0f 28 a4 24 a0 01 00 	movaps xmm4,XMMWORD PTR [rsp+0x1a0]
  da6048:	00 
  da6049:	0f 28 9c 24 b0 01 00 	movaps xmm3,XMMWORD PTR [rsp+0x1b0]
  da6050:	00 
  da6051:	0f 28 94 24 d0 01 00 	movaps xmm2,XMMWORD PTR [rsp+0x1d0]
  da6058:	00 
  da6059:	0f 28 8c 24 e0 01 00 	movaps xmm1,XMMWORD PTR [rsp+0x1e0]
  da6060:	00 
  da6061:	48 83 7c 24 38 02    	cmp    QWORD PTR [rsp+0x38],0x2
  da6067:	0f 84 03 fc ff ff    	je     da5c70 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xff0>
  da606d:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
  da6074:	00 
  da6075:	4a 8d 3c f8          	lea    rdi,[rax+r15*8]
  da6079:	48 8d 84 24 10 01 00 	lea    rax,[rsp+0x110]
  da6080:	00 
  da6081:	0f 57 c0             	xorps  xmm0,xmm0
  da6084:	0f 29 40 50          	movaps XMMWORD PTR [rax+0x50],xmm0
  da6088:	0f 29 40 40          	movaps XMMWORD PTR [rax+0x40],xmm0
  da608c:	0f 29 40 30          	movaps XMMWORD PTR [rax+0x30],xmm0
  da6090:	0f 29 40 20          	movaps XMMWORD PTR [rax+0x20],xmm0
  da6094:	0f 29 40 10          	movaps XMMWORD PTR [rax+0x10],xmm0
  da6098:	0f 29 00             	movaps XMMWORD PTR [rax],xmm0
  da609b:	0f 28 c2             	movaps xmm0,xmm2
  da609e:	0f 14 c1             	unpcklps xmm0,xmm1
  da60a1:	0f 28 cc             	movaps xmm1,xmm4
  da60a4:	0f 14 cb             	unpcklps xmm1,xmm3
  da60a7:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da60ae:	00 
  da60af:	0f 29 8c 24 00 01 00 	movaps XMMWORD PTR [rsp+0x100],xmm1
  da60b6:	00 
  da60b7:	48 8d b4 24 f0 00 00 	lea    rsi,[rsp+0xf0]
  da60be:	00 
  da60bf:	48 89 da             	mov    rdx,rbx
  da60c2:	ff 15 18 76 4a 00    	call   QWORD PTR [rip+0x4a7618]        # 124d6e0 <memcpy@GLIBC_2.14>
  da60c8:	44 0f 28 9c 24 a0 01 	movaps xmm11,XMMWORD PTR [rsp+0x1a0]
  da60cf:	00 00 
  da60d1:	44 0f 28 94 24 b0 01 	movaps xmm10,XMMWORD PTR [rsp+0x1b0]
  da60d8:	00 00 
  da60da:	44 0f 28 8c 24 d0 01 	movaps xmm9,XMMWORD PTR [rsp+0x1d0]
  da60e1:	00 00 
  da60e3:	44 0f 28 84 24 e0 01 	movaps xmm8,XMMWORD PTR [rsp+0x1e0]
  da60ea:	00 00 
  da60ec:	48 83 7c 24 38 03    	cmp    QWORD PTR [rsp+0x38],0x3
  da60f2:	0f 84 78 fb ff ff    	je     da5c70 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xff0>
  da60f8:	48 8b 84 24 e8 00 00 	mov    rax,QWORD PTR [rsp+0xe8]
  da60ff:	00 
  da6100:	4a 8d 3c 30          	lea    rdi,[rax+r14*1]
  da6104:	e9 0b fb ff ff       	jmp    da5c14 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xf94>
  da6109:	4c 8b 67 58          	mov    r12,QWORD PTR [rdi+0x58]
  da610d:	48 8b 4f 10          	mov    rcx,QWORD PTR [rdi+0x10]
  da6111:	48 8b 5f 20          	mov    rbx,QWORD PTR [rdi+0x20]
  da6115:	48 8b 77 60          	mov    rsi,QWORD PTR [rdi+0x60]
  da6119:	48 8b 47 28          	mov    rax,QWORD PTR [rdi+0x28]
  da611d:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
  da6122:	48 8b 47 30          	mov    rax,QWORD PTR [rdi+0x30]
  da6126:	48 8b 57 40          	mov    rdx,QWORD PTR [rdi+0x40]
  da612a:	48 89 4c 24 30       	mov    QWORD PTR [rsp+0x30],rcx
  da612f:	48 01 ca             	add    rdx,rcx
  da6132:	48 89 94 24 38 02 00 	mov    QWORD PTR [rsp+0x238],rdx
  da6139:	00 
  da613a:	48 8b 4f 78          	mov    rcx,QWORD PTR [rdi+0x78]
  da613e:	48 8b 94 24 88 00 00 	mov    rdx,QWORD PTR [rsp+0x88]
  da6145:	00 
  da6146:	48 8d 2c ca          	lea    rbp,[rdx+rcx*8]
  da614a:	48 8b 8f 80 00 00 00 	mov    rcx,QWORD PTR [rdi+0x80]
  da6151:	48 8d 4c cd 00       	lea    rcx,[rbp+rcx*8+0x0]
  da6156:	48 89 8c 24 a0 00 00 	mov    QWORD PTR [rsp+0xa0],rcx
  da615d:	00 
  da615e:	f2 0f 10 05 6a e7 2c 	movsd  xmm0,QWORD PTR [rip+0xffffffffff2ce76a]        # 748d0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d80>
  da6165:	ff 
  da6166:	f2 0f 5a c0          	cvtsd2ss xmm0,xmm0
  da616a:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  da616e:	0f 29 44 24 10       	movaps XMMWORD PTR [rsp+0x10],xmm0
  da6173:	0f b6 8f 98 00 00 00 	movzx  ecx,BYTE PTR [rdi+0x98]
  da617a:	0f b6 97 99 00 00 00 	movzx  edx,BYTE PTR [rdi+0x99]
  da6181:	88 8c 24 80 00 00 00 	mov    BYTE PTR [rsp+0x80],cl
  da6188:	20 ca                	and    dl,cl
  da618a:	88 54 24 20          	mov    BYTE PTR [rsp+0x20],dl
  da618e:	48 89 34 24          	mov    QWORD PTR [rsp],rsi
  da6192:	48 85 f6             	test   rsi,rsi
  da6195:	4c 89 64 24 08       	mov    QWORD PTR [rsp+0x8],r12
  da619a:	48 89 6c 24 78       	mov    QWORD PTR [rsp+0x78],rbp
  da619f:	0f 84 04 12 00 00    	je     da73a9 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2729>
  da61a5:	48 8b 34 24          	mov    rsi,QWORD PTR [rsp]
  da61a9:	49 89 f1             	mov    r9,rsi
  da61ac:	49 c1 e9 02          	shr    r9,0x2
  da61b0:	89 f1                	mov    ecx,esi
  da61b2:	83 e1 03             	and    ecx,0x3
  da61b5:	48 83 f9 01          	cmp    rcx,0x1
  da61b9:	49 83 d9 ff          	sbb    r9,0xffffffffffffffff
  da61bd:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  da61c2:	48 8d 0c 02          	lea    rcx,[rdx+rax*1]
  da61c6:	48 89 8c 24 30 02 00 	mov    QWORD PTR [rsp+0x230],rcx
  da61cd:	00 
  da61ce:	4d 89 e0             	mov    r8,r12
  da61d1:	49 c1 e8 02          	shr    r8,0x2
  da61d5:	44 89 e1             	mov    ecx,r12d
  da61d8:	83 e1 03             	and    ecx,0x3
  da61db:	48 83 f9 01          	cmp    rcx,0x1
  da61df:	49 83 d8 ff          	sbb    r8,0xffffffffffffffff
  da61e3:	4c 89 84 24 88 01 00 	mov    QWORD PTR [rsp+0x188],r8
  da61ea:	00 
  da61eb:	48 8b 4f 70          	mov    rcx,QWORD PTR [rdi+0x70]
  da61ef:	f3 48 0f bc f9       	tzcnt  rdi,rcx
  da61f4:	48 89 7c 24 28       	mov    QWORD PTR [rsp+0x28],rdi
  da61f9:	48 bf ff ff ff ff ff 	movabs rdi,0x7ffffffffffffff
  da6200:	ff ff 07 
  da6203:	48 89 8c 24 d8 00 00 	mov    QWORD PTR [rsp+0xd8],rcx
  da620a:	00 
  da620b:	48 01 cf             	add    rdi,rcx
  da620e:	48 89 7c 24 60       	mov    QWORD PTR [rsp+0x60],rdi
  da6213:	4c 89 e7             	mov    rdi,r12
  da6216:	48 c1 e7 04          	shl    rdi,0x4
  da621a:	4f 8d 04 64          	lea    r8,[r12+r12*2]
  da621e:	48 8d 4a 20          	lea    rcx,[rdx+0x20]
  da6222:	48 89 8c 24 08 02 00 	mov    QWORD PTR [rsp+0x208],rcx
  da6229:	00 
  da622a:	48 8d 4b ff          	lea    rcx,[rbx-0x1]
  da622e:	48 89 8c 24 00 02 00 	mov    QWORD PTR [rsp+0x200],rcx
  da6235:	00 
  da6236:	4c 89 e1             	mov    rcx,r12
  da6239:	48 f7 d9             	neg    rcx
  da623c:	48 89 8c 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],rcx
  da6243:	00 
  da6244:	4c 89 e1             	mov    rcx,r12
  da6247:	48 c1 e1 05          	shl    rcx,0x5
  da624b:	48 89 8c 24 90 01 00 	mov    QWORD PTR [rsp+0x190],rcx
  da6252:	00 
  da6253:	48 8b 8c 24 88 00 00 	mov    rcx,QWORD PTR [rsp+0x88]
  da625a:	00 
  da625b:	48 01 cf             	add    rdi,rcx
  da625e:	48 89 bc 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rdi
  da6265:	00 
  da6266:	48 01 c2             	add    rdx,rax
  da6269:	48 83 c2 70          	add    rdx,0x70
  da626d:	48 89 f0             	mov    rax,rsi
  da6270:	48 c1 e0 05          	shl    rax,0x5
  da6274:	48 89 84 24 98 00 00 	mov    QWORD PTR [rsp+0x98],rax
  da627b:	00 
  da627c:	4c 89 84 24 28 02 00 	mov    QWORD PTR [rsp+0x228],r8
  da6283:	00 
  da6284:	4a 8d 04 c1          	lea    rax,[rcx+r8*8]
  da6288:	48 89 84 24 e8 00 00 	mov    QWORD PTR [rsp+0xe8],rax
  da628f:	00 
  da6290:	4a 8d 04 e1          	lea    rax,[rcx+r12*8]
  da6294:	48 89 84 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],rax
  da629b:	00 
  da629c:	45 31 d2             	xor    r10d,r10d
  da629f:	48 89 8c 24 c8 00 00 	mov    QWORD PTR [rsp+0xc8],rcx
  da62a6:	00 
  da62a7:	48 89 4c 24 58       	mov    QWORD PTR [rsp+0x58],rcx
  da62ac:	48 89 74 24 38       	mov    QWORD PTR [rsp+0x38],rsi
  da62b1:	48 89 9c 24 e0 00 00 	mov    QWORD PTR [rsp+0xe0],rbx
  da62b8:	00 
  da62b9:	eb 73                	jmp    da632e <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x16ae>
  da62bb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  da62c0:	4c 8b 54 24 40       	mov    r10,QWORD PTR [rsp+0x40]
  da62c5:	49 83 c2 04          	add    r10,0x4
  da62c9:	4c 8b 8c 24 98 01 00 	mov    r9,QWORD PTR [rsp+0x198]
  da62d0:	00 
  da62d1:	49 ff c9             	dec    r9
  da62d4:	48 83 44 24 38 fc    	add    QWORD PTR [rsp+0x38],0xfffffffffffffffc
  da62da:	48 8b 84 24 90 01 00 	mov    rax,QWORD PTR [rsp+0x190]
  da62e1:	00 
  da62e2:	48 01 84 24 e8 00 00 	add    QWORD PTR [rsp+0xe8],rax
  da62e9:	00 
  da62ea:	48 01 84 24 90 00 00 	add    QWORD PTR [rsp+0x90],rax
  da62f1:	00 
  da62f2:	48 01 84 24 a8 00 00 	add    QWORD PTR [rsp+0xa8],rax
  da62f9:	00 
  da62fa:	48 8b 94 24 b0 00 00 	mov    rdx,QWORD PTR [rsp+0xb0]
  da6301:	00 
  da6302:	48 01 c2             	add    rdx,rax
  da6305:	48 01 44 24 58       	add    QWORD PTR [rsp+0x58],rax
  da630a:	48 83 ac 24 c8 00 00 	sub    QWORD PTR [rsp+0xc8],0xffffffffffffff80
  da6311:	00 80 
  da6313:	4d 85 c9             	test   r9,r9
  da6316:	4c 8b 64 24 08       	mov    r12,QWORD PTR [rsp+0x8]
  da631b:	48 8b 6c 24 78       	mov    rbp,QWORD PTR [rsp+0x78]
  da6320:	48 8b 9c 24 e0 00 00 	mov    rbx,QWORD PTR [rsp+0xe0]
  da6327:	00 
  da6328:	0f 84 7b 10 00 00    	je     da73a9 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2729>
  da632e:	4c 8b 04 24          	mov    r8,QWORD PTR [rsp]
  da6332:	4d 29 d0             	sub    r8,r10
  da6335:	48 8b 84 24 d0 00 00 	mov    rax,QWORD PTR [rsp+0xd0]
  da633c:	00 
  da633d:	4a 8d 3c d0          	lea    rdi,[rax+r10*8]
  da6341:	49 83 f8 04          	cmp    r8,0x4
  da6345:	b8 04 00 00 00       	mov    eax,0x4
  da634a:	4c 0f 43 c0          	cmovae r8,rax
  da634e:	4c 89 8c 24 98 01 00 	mov    QWORD PTR [rsp+0x198],r9
  da6355:	00 
  da6356:	48 89 94 24 b0 00 00 	mov    QWORD PTR [rsp+0xb0],rdx
  da635d:	00 
  da635e:	4c 89 54 24 40       	mov    QWORD PTR [rsp+0x40],r10
  da6363:	72 5b                	jb     da63c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1740>
  da6365:	48 85 db             	test   rbx,rbx
  da6368:	0f 84 aa 4a 00 00    	je     daae18 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6198>
  da636e:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  da6373:	48 8b 00             	mov    rax,QWORD PTR [rax]
  da6376:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  da637a:	48 83 f8 0d          	cmp    rax,0xd
  da637e:	0f 87 58 4a 00 00    	ja     daaddc <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x615c>
  da6384:	48 8d 0d 0d cc 2f ff 	lea    rcx,[rip+0xffffffffff2fcc0d]        # a2f98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30448>
  da638b:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da638f:	48 01 c8             	add    rax,rcx
  da6392:	ff e0                	jmp    rax
  da6394:	48 89 ee             	mov    rsi,rbp
  da6397:	4c 89 e2             	mov    rdx,r12
  da639a:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da639e:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da63a3:	e8 18 a6 fe ff       	call   d909c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da63a8:	48 83 fb 02          	cmp    rbx,0x2
  da63ac:	0f 83 9e 03 00 00    	jae    da6750 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1ad0>
  da63b2:	e9 d9 07 00 00       	jmp    da6b90 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da63b7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  da63be:	00 00 
  da63c0:	48 85 db             	test   rbx,rbx
  da63c3:	0f 84 4f 4a 00 00    	je     daae18 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6198>
  da63c9:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  da63ce:	48 8b 00             	mov    rax,QWORD PTR [rax]
  da63d1:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  da63d5:	48 83 f8 0d          	cmp    rax,0xd
  da63d9:	0f 87 fd 49 00 00    	ja     daaddc <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x615c>
  da63df:	48 8d 0d 3e cb 2f ff 	lea    rcx,[rip+0xffffffffff2fcb3e]        # a2f24 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x303d4>
  da63e6:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da63ea:	48 01 c8             	add    rax,rcx
  da63ed:	ff e0                	jmp    rax
  da63ef:	48 89 ee             	mov    rsi,rbp
  da63f2:	4c 89 e2             	mov    rdx,r12
  da63f5:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da63f9:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da63fe:	e8 3d 0f fe ff       	call   d87340 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da6403:	48 83 fb 02          	cmp    rbx,0x2
  da6407:	0f 83 73 05 00 00    	jae    da6980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d00>
  da640d:	e9 7e 07 00 00       	jmp    da6b90 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da6412:	48 89 ee             	mov    rsi,rbp
  da6415:	4c 89 e2             	mov    rdx,r12
  da6418:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da641c:	e8 5f d7 ff ff       	call   da3b80 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da6421:	48 83 fb 02          	cmp    rbx,0x2
  da6425:	0f 83 25 03 00 00    	jae    da6750 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1ad0>
  da642b:	e9 60 07 00 00       	jmp    da6b90 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da6430:	48 89 ee             	mov    rsi,rbp
  da6433:	4c 89 e2             	mov    rdx,r12
  da6436:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da643a:	e8 81 a5 ff ff       	call   da09c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da643f:	48 83 fb 02          	cmp    rbx,0x2
  da6443:	0f 83 37 05 00 00    	jae    da6980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d00>
  da6449:	e9 42 07 00 00       	jmp    da6b90 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da644e:	48 89 ee             	mov    rsi,rbp
  da6451:	4c 89 e2             	mov    rdx,r12
  da6454:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da6458:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da645d:	e8 9e 9d ff ff       	call   da0200 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da6462:	48 83 fb 02          	cmp    rbx,0x2
  da6466:	0f 83 e4 02 00 00    	jae    da6750 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1ad0>
  da646c:	e9 1f 07 00 00       	jmp    da6b90 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da6471:	48 89 ee             	mov    rsi,rbp
  da6474:	4c 89 e2             	mov    rdx,r12
  da6477:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da647b:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da6480:	e8 7b 87 ff ff       	call   d9ec00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da6485:	48 83 fb 02          	cmp    rbx,0x2
  da6489:	0f 83 f1 04 00 00    	jae    da6980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d00>
  da648f:	e9 fc 06 00 00       	jmp    da6b90 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da6494:	48 89 ee             	mov    rsi,rbp
  da6497:	4c 89 e2             	mov    rdx,r12
  da649a:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da649e:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da64a3:	e8 18 2c ff ff       	call   d990c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da64a8:	48 83 fb 02          	cmp    rbx,0x2
  da64ac:	0f 83 9e 02 00 00    	jae    da6750 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1ad0>
  da64b2:	e9 d9 06 00 00       	jmp    da6b90 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da64b7:	48 89 ee             	mov    rsi,rbp
  da64ba:	4c 89 e2             	mov    rdx,r12
  da64bd:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da64c1:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da64c6:	e8 35 19 ff ff       	call   d97e00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da64cb:	48 83 fb 02          	cmp    rbx,0x2
  da64cf:	0f 83 ab 04 00 00    	jae    da6980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d00>
  da64d5:	e9 b6 06 00 00       	jmp    da6b90 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da64da:	48 89 ee             	mov    rsi,rbp
  da64dd:	4c 89 e2             	mov    rdx,r12
  da64e0:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da64e4:	e8 57 2c fe ff       	call   d89140 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da64e9:	48 83 fb 02          	cmp    rbx,0x2
  da64ed:	0f 83 5d 02 00 00    	jae    da6750 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1ad0>
  da64f3:	e9 98 06 00 00       	jmp    da6b90 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da64f8:	48 89 ee             	mov    rsi,rbp
  da64fb:	4c 89 e2             	mov    rdx,r12
  da64fe:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da6502:	e8 b9 d5 fe ff       	call   d93ac0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da6507:	48 83 fb 02          	cmp    rbx,0x2
  da650b:	0f 83 6f 04 00 00    	jae    da6980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d00>
  da6511:	e9 7a 06 00 00       	jmp    da6b90 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da6516:	48 89 ee             	mov    rsi,rbp
  da6519:	4c 89 e2             	mov    rdx,r12
  da651c:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da6520:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da6525:	e8 56 85 ff ff       	call   d9ea80 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da652a:	48 83 fb 02          	cmp    rbx,0x2
  da652e:	0f 83 1c 02 00 00    	jae    da6750 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1ad0>
  da6534:	e9 57 06 00 00       	jmp    da6b90 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da6539:	48 89 ee             	mov    rsi,rbp
  da653c:	4c 89 e2             	mov    rdx,r12
  da653f:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da6543:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da6548:	e8 b3 aa fd ff       	call   d81000 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da654d:	48 83 fb 02          	cmp    rbx,0x2
  da6551:	0f 83 29 04 00 00    	jae    da6980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d00>
  da6557:	e9 34 06 00 00       	jmp    da6b90 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da655c:	48 89 ee             	mov    rsi,rbp
  da655f:	4c 89 e2             	mov    rdx,r12
  da6562:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da6566:	e8 d5 63 ff ff       	call   d9c940 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da656b:	48 83 fb 02          	cmp    rbx,0x2
  da656f:	0f 83 db 01 00 00    	jae    da6750 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1ad0>
  da6575:	e9 16 06 00 00       	jmp    da6b90 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da657a:	48 89 ee             	mov    rsi,rbp
  da657d:	4c 89 e2             	mov    rdx,r12
  da6580:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da6584:	e8 77 fa fe ff       	call   d96000 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da6589:	48 83 fb 02          	cmp    rbx,0x2
  da658d:	0f 83 ed 03 00 00    	jae    da6980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d00>
  da6593:	e9 f8 05 00 00       	jmp    da6b90 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da6598:	48 89 ee             	mov    rsi,rbp
  da659b:	4c 89 e2             	mov    rdx,r12
  da659e:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da65a2:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da65a7:	e8 14 ba fd ff       	call   d81fc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da65ac:	48 83 fb 02          	cmp    rbx,0x2
  da65b0:	0f 83 9a 01 00 00    	jae    da6750 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1ad0>
  da65b6:	e9 d5 05 00 00       	jmp    da6b90 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da65bb:	48 89 ee             	mov    rsi,rbp
  da65be:	4c 89 e2             	mov    rdx,r12
  da65c1:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da65c5:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da65ca:	e8 71 99 fe ff       	call   d8ff40 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da65cf:	48 83 fb 02          	cmp    rbx,0x2
  da65d3:	0f 83 a7 03 00 00    	jae    da6980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d00>
  da65d9:	e9 b2 05 00 00       	jmp    da6b90 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da65de:	48 89 ee             	mov    rsi,rbp
  da65e1:	4c 89 e2             	mov    rdx,r12
  da65e4:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da65e8:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da65ed:	e8 ce 9a ff ff       	call   da00c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da65f2:	48 83 fb 02          	cmp    rbx,0x2
  da65f6:	0f 83 54 01 00 00    	jae    da6750 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1ad0>
  da65fc:	e9 8f 05 00 00       	jmp    da6b90 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da6601:	48 89 ee             	mov    rsi,rbp
  da6604:	4c 89 e2             	mov    rdx,r12
  da6607:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da660b:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da6610:	e8 6b 8b ff ff       	call   d9f180 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da6615:	48 83 fb 02          	cmp    rbx,0x2
  da6619:	0f 83 61 03 00 00    	jae    da6980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d00>
  da661f:	e9 6c 05 00 00       	jmp    da6b90 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da6624:	48 89 ee             	mov    rsi,rbp
  da6627:	4c 89 e2             	mov    rdx,r12
  da662a:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da662e:	e8 8d 65 ff ff       	call   d9cbc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da6633:	48 83 fb 02          	cmp    rbx,0x2
  da6637:	0f 83 13 01 00 00    	jae    da6750 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1ad0>
  da663d:	e9 4e 05 00 00       	jmp    da6b90 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da6642:	48 89 ee             	mov    rsi,rbp
  da6645:	4c 89 e2             	mov    rdx,r12
  da6648:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da664c:	e8 6f 59 fe ff       	call   d8bfc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da6651:	48 83 fb 02          	cmp    rbx,0x2
  da6655:	0f 83 25 03 00 00    	jae    da6980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d00>
  da665b:	e9 30 05 00 00       	jmp    da6b90 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da6660:	48 89 ee             	mov    rsi,rbp
  da6663:	4c 89 e2             	mov    rdx,r12
  da6666:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da666a:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da666f:	e8 8c d5 fd ff       	call   d83c00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da6674:	48 83 fb 02          	cmp    rbx,0x2
  da6678:	0f 83 d2 00 00 00    	jae    da6750 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1ad0>
  da667e:	e9 0d 05 00 00       	jmp    da6b90 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da6683:	48 89 ee             	mov    rsi,rbp
  da6686:	4c 89 e2             	mov    rdx,r12
  da6689:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da668d:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da6692:	e8 69 0e fe ff       	call   d87500 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da6697:	48 83 fb 02          	cmp    rbx,0x2
  da669b:	0f 83 df 02 00 00    	jae    da6980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d00>
  da66a1:	e9 ea 04 00 00       	jmp    da6b90 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da66a6:	48 89 ee             	mov    rsi,rbp
  da66a9:	4c 89 e2             	mov    rdx,r12
  da66ac:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da66b0:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da66b5:	e8 06 96 ff ff       	call   d9fcc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da66ba:	48 83 fb 02          	cmp    rbx,0x2
  da66be:	0f 83 8c 00 00 00    	jae    da6750 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1ad0>
  da66c4:	e9 c7 04 00 00       	jmp    da6b90 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da66c9:	48 89 ee             	mov    rsi,rbp
  da66cc:	4c 89 e2             	mov    rdx,r12
  da66cf:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da66d3:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da66d8:	e8 a3 c0 ff ff       	call   da2780 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da66dd:	48 83 fb 02          	cmp    rbx,0x2
  da66e1:	0f 83 99 02 00 00    	jae    da6980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d00>
  da66e7:	e9 a4 04 00 00       	jmp    da6b90 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da66ec:	48 89 ee             	mov    rsi,rbp
  da66ef:	4c 89 e2             	mov    rdx,r12
  da66f2:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da66f6:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da66fb:	e8 40 22 fe ff       	call   d88940 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da6700:	48 83 fb 02          	cmp    rbx,0x2
  da6704:	73 4a                	jae    da6750 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1ad0>
  da6706:	e9 85 04 00 00       	jmp    da6b90 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da670b:	48 89 ee             	mov    rsi,rbp
  da670e:	4c 89 e2             	mov    rdx,r12
  da6711:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da6715:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da671a:	e8 e1 60 fe ff       	call   d8c800 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da671f:	48 83 fb 02          	cmp    rbx,0x2
  da6723:	0f 83 57 02 00 00    	jae    da6980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d00>
  da6729:	e9 62 04 00 00       	jmp    da6b90 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da672e:	48 89 ee             	mov    rsi,rbp
  da6731:	4c 89 e2             	mov    rdx,r12
  da6734:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da6738:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da673d:	e8 3e 91 fe ff       	call   d8f880 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da6742:	48 83 fb 02          	cmp    rbx,0x2
  da6746:	0f 82 44 04 00 00    	jb     da6b90 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da674c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  da6750:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  da6755:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  da6758:	4c 8b bc 24 00 02 00 	mov    r15,QWORD PTR [rsp+0x200]
  da675f:	00 
  da6760:	4c 8b a4 24 08 02 00 	mov    r12,QWORD PTR [rsp+0x208]
  da6767:	00 
  da6768:	48 8b 44 24 78       	mov    rax,QWORD PTR [rsp+0x78]
  da676d:	4c 8b b4 24 a0 00 00 	mov    r14,QWORD PTR [rsp+0xa0]
  da6774:	00 
  da6775:	eb 3d                	jmp    da67b4 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1b34>
  da6777:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da677c:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da6783:	00 
  da6784:	4c 89 f7             	mov    rdi,r14
  da6787:	48 89 ee             	mov    rsi,rbp
  da678a:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da678f:	48 89 d9             	mov    rcx,rbx
  da6792:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da6799:	00 
  da679a:	e8 e1 c7 f1 ff       	call   cc2f80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da679f:	90                   	nop
  da67a0:	49 0f af dd          	imul   rbx,r13
  da67a4:	49 83 c4 18          	add    r12,0x18
  da67a8:	48 89 e8             	mov    rax,rbp
  da67ab:	49 ff cf             	dec    r15
  da67ae:	0f 84 dc 03 00 00    	je     da6b90 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da67b4:	4c 89 f5             	mov    rbp,r14
  da67b7:	49 89 c6             	mov    r14,rax
  da67ba:	4d 8b 6c 24 f8       	mov    r13,QWORD PTR [r12-0x8]
  da67bf:	4d 8b 04 24          	mov    r8,QWORD PTR [r12]
  da67c3:	4c 03 44 24 30       	add    r8,QWORD PTR [rsp+0x30]
  da67c8:	4c 89 6c 24 48       	mov    QWORD PTR [rsp+0x48],r13
  da67cd:	49 8d 45 fe          	lea    rax,[r13-0x2]
  da67d1:	48 83 f8 0e          	cmp    rax,0xe
  da67d5:	0f 87 9a 45 00 00    	ja     daad75 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x60f5>
  da67db:	48 8d 0d ee c7 2f ff 	lea    rcx,[rip+0xffffffffff2fc7ee]        # a2fd0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30480>
  da67e2:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da67e6:	48 01 c8             	add    rax,rcx
  da67e9:	ff e0                	jmp    rax
  da67eb:	4c 89 f7             	mov    rdi,r14
  da67ee:	48 89 ee             	mov    rsi,rbp
  da67f1:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da67f6:	48 89 d9             	mov    rcx,rbx
  da67f9:	e8 42 43 f1 ff       	call   cbab40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da67fe:	eb a0                	jmp    da67a0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1b20>
  da6800:	4c 89 f7             	mov    rdi,r14
  da6803:	48 89 ee             	mov    rsi,rbp
  da6806:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da680b:	48 89 d9             	mov    rcx,rbx
  da680e:	e8 ad 8d f1 ff       	call   cbf5c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da6813:	eb 8b                	jmp    da67a0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1b20>
  da6815:	4c 89 f7             	mov    rdi,r14
  da6818:	48 89 ee             	mov    rsi,rbp
  da681b:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da6820:	48 89 d9             	mov    rcx,rbx
  da6823:	e8 98 4c f1 ff       	call   cbb4c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da6828:	e9 73 ff ff ff       	jmp    da67a0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1b20>
  da682d:	4c 89 f7             	mov    rdi,r14
  da6830:	48 89 ee             	mov    rsi,rbp
  da6833:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da6838:	48 89 d9             	mov    rcx,rbx
  da683b:	e8 c0 a2 f1 ff       	call   cc0b00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da6840:	e9 5b ff ff ff       	jmp    da67a0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1b20>
  da6845:	4c 89 f7             	mov    rdi,r14
  da6848:	48 89 ee             	mov    rsi,rbp
  da684b:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da6850:	48 89 d9             	mov    rcx,rbx
  da6853:	e8 e8 70 f1 ff       	call   cbd940 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da6858:	e9 43 ff ff ff       	jmp    da67a0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1b20>
  da685d:	4c 89 f7             	mov    rdi,r14
  da6860:	48 89 ee             	mov    rsi,rbp
  da6863:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da6868:	48 89 d9             	mov    rcx,rbx
  da686b:	e8 50 46 f1 ff       	call   cbaec0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da6870:	e9 2b ff ff ff       	jmp    da67a0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1b20>
  da6875:	4c 89 f7             	mov    rdi,r14
  da6878:	48 89 ee             	mov    rsi,rbp
  da687b:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da6880:	48 89 d9             	mov    rcx,rbx
  da6883:	e8 b8 48 f1 ff       	call   cbb140 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da6888:	e9 13 ff ff ff       	jmp    da67a0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1b20>
  da688d:	4c 89 f7             	mov    rdi,r14
  da6890:	48 89 ee             	mov    rsi,rbp
  da6893:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da6898:	48 89 d9             	mov    rcx,rbx
  da689b:	e8 20 5d f1 ff       	call   cbc5c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da68a0:	e9 fb fe ff ff       	jmp    da67a0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1b20>
  da68a5:	4c 89 f7             	mov    rdi,r14
  da68a8:	48 89 ee             	mov    rsi,rbp
  da68ab:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da68b0:	48 89 d9             	mov    rcx,rbx
  da68b3:	e8 c8 43 f1 ff       	call   cbac80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da68b8:	e9 e3 fe ff ff       	jmp    da67a0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1b20>
  da68bd:	4c 89 f7             	mov    rdi,r14
  da68c0:	48 89 ee             	mov    rsi,rbp
  da68c3:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da68c8:	48 89 d9             	mov    rcx,rbx
  da68cb:	e8 30 50 f1 ff       	call   cbb900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da68d0:	e9 cb fe ff ff       	jmp    da67a0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1b20>
  da68d5:	4c 89 f7             	mov    rdi,r14
  da68d8:	48 89 ee             	mov    rsi,rbp
  da68db:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da68e0:	48 89 d9             	mov    rcx,rbx
  da68e3:	e8 18 b4 f1 ff       	call   cc1d00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da68e8:	e9 b3 fe ff ff       	jmp    da67a0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1b20>
  da68ed:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da68f2:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da68f9:	00 
  da68fa:	4c 89 f7             	mov    rdi,r14
  da68fd:	48 89 ee             	mov    rsi,rbp
  da6900:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da6905:	48 89 d9             	mov    rcx,rbx
  da6908:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da690f:	00 
  da6910:	e8 ab 56 f1 ff       	call   cbbfc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da6915:	e9 86 fe ff ff       	jmp    da67a0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1b20>
  da691a:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da691f:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da6926:	00 
  da6927:	4c 89 f7             	mov    rdi,r14
  da692a:	48 89 ee             	mov    rsi,rbp
  da692d:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da6932:	48 89 d9             	mov    rcx,rbx
  da6935:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da693c:	00 
  da693d:	e8 3e 80 f1 ff       	call   cbe980 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da6942:	e9 59 fe ff ff       	jmp    da67a0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1b20>
  da6947:	4c 89 f7             	mov    rdi,r14
  da694a:	48 89 ee             	mov    rsi,rbp
  da694d:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da6952:	48 89 d9             	mov    rcx,rbx
  da6955:	e8 a6 65 f1 ff       	call   cbcf00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da695a:	e9 41 fe ff ff       	jmp    da67a0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1b20>
  da695f:	48 89 ee             	mov    rsi,rbp
  da6962:	4c 89 e2             	mov    rdx,r12
  da6965:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da6969:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da696e:	e8 0d 54 ff ff       	call   d9bd80 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da6973:	48 83 fb 02          	cmp    rbx,0x2
  da6977:	0f 82 13 02 00 00    	jb     da6b90 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da697d:	0f 1f 00             	nop    DWORD PTR [rax]
  da6980:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  da6985:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  da6988:	4c 8b bc 24 00 02 00 	mov    r15,QWORD PTR [rsp+0x200]
  da698f:	00 
  da6990:	4c 8b a4 24 08 02 00 	mov    r12,QWORD PTR [rsp+0x208]
  da6997:	00 
  da6998:	48 8b 44 24 78       	mov    rax,QWORD PTR [rsp+0x78]
  da699d:	4c 8b b4 24 a0 00 00 	mov    r14,QWORD PTR [rsp+0xa0]
  da69a4:	00 
  da69a5:	eb 3d                	jmp    da69e4 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d64>
  da69a7:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da69ac:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da69b3:	00 
  da69b4:	4c 89 f7             	mov    rdi,r14
  da69b7:	48 89 ee             	mov    rsi,rbp
  da69ba:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da69bf:	48 89 d9             	mov    rcx,rbx
  da69c2:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da69c9:	00 
  da69ca:	e8 b1 c5 f1 ff       	call   cc2f80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da69cf:	90                   	nop
  da69d0:	49 0f af dd          	imul   rbx,r13
  da69d4:	49 83 c4 18          	add    r12,0x18
  da69d8:	48 89 e8             	mov    rax,rbp
  da69db:	49 ff cf             	dec    r15
  da69de:	0f 84 ac 01 00 00    	je     da6b90 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da69e4:	4c 89 f5             	mov    rbp,r14
  da69e7:	49 89 c6             	mov    r14,rax
  da69ea:	4d 8b 6c 24 f8       	mov    r13,QWORD PTR [r12-0x8]
  da69ef:	4d 8b 04 24          	mov    r8,QWORD PTR [r12]
  da69f3:	4c 03 44 24 30       	add    r8,QWORD PTR [rsp+0x30]
  da69f8:	4c 89 6c 24 48       	mov    QWORD PTR [rsp+0x48],r13
  da69fd:	49 8d 45 fe          	lea    rax,[r13-0x2]
  da6a01:	48 83 f8 0e          	cmp    rax,0xe
  da6a05:	0f 87 6a 43 00 00    	ja     daad75 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x60f5>
  da6a0b:	48 8d 0d 4a c5 2f ff 	lea    rcx,[rip+0xffffffffff2fc54a]        # a2f5c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x3040c>
  da6a12:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da6a16:	48 01 c8             	add    rax,rcx
  da6a19:	ff e0                	jmp    rax
  da6a1b:	4c 89 f7             	mov    rdi,r14
  da6a1e:	48 89 ee             	mov    rsi,rbp
  da6a21:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da6a26:	48 89 d9             	mov    rcx,rbx
  da6a29:	e8 12 41 f1 ff       	call   cbab40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da6a2e:	eb a0                	jmp    da69d0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d50>
  da6a30:	4c 89 f7             	mov    rdi,r14
  da6a33:	48 89 ee             	mov    rsi,rbp
  da6a36:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da6a3b:	48 89 d9             	mov    rcx,rbx
  da6a3e:	e8 7d 8b f1 ff       	call   cbf5c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da6a43:	eb 8b                	jmp    da69d0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d50>
  da6a45:	4c 89 f7             	mov    rdi,r14
  da6a48:	48 89 ee             	mov    rsi,rbp
  da6a4b:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da6a50:	48 89 d9             	mov    rcx,rbx
  da6a53:	e8 68 4a f1 ff       	call   cbb4c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da6a58:	e9 73 ff ff ff       	jmp    da69d0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d50>
  da6a5d:	4c 89 f7             	mov    rdi,r14
  da6a60:	48 89 ee             	mov    rsi,rbp
  da6a63:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da6a68:	48 89 d9             	mov    rcx,rbx
  da6a6b:	e8 90 a0 f1 ff       	call   cc0b00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da6a70:	e9 5b ff ff ff       	jmp    da69d0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d50>
  da6a75:	4c 89 f7             	mov    rdi,r14
  da6a78:	48 89 ee             	mov    rsi,rbp
  da6a7b:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da6a80:	48 89 d9             	mov    rcx,rbx
  da6a83:	e8 b8 6e f1 ff       	call   cbd940 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da6a88:	e9 43 ff ff ff       	jmp    da69d0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d50>
  da6a8d:	4c 89 f7             	mov    rdi,r14
  da6a90:	48 89 ee             	mov    rsi,rbp
  da6a93:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da6a98:	48 89 d9             	mov    rcx,rbx
  da6a9b:	e8 20 44 f1 ff       	call   cbaec0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da6aa0:	e9 2b ff ff ff       	jmp    da69d0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d50>
  da6aa5:	4c 89 f7             	mov    rdi,r14
  da6aa8:	48 89 ee             	mov    rsi,rbp
  da6aab:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da6ab0:	48 89 d9             	mov    rcx,rbx
  da6ab3:	e8 88 46 f1 ff       	call   cbb140 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da6ab8:	e9 13 ff ff ff       	jmp    da69d0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d50>
  da6abd:	4c 89 f7             	mov    rdi,r14
  da6ac0:	48 89 ee             	mov    rsi,rbp
  da6ac3:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da6ac8:	48 89 d9             	mov    rcx,rbx
  da6acb:	e8 f0 5a f1 ff       	call   cbc5c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da6ad0:	e9 fb fe ff ff       	jmp    da69d0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d50>
  da6ad5:	4c 89 f7             	mov    rdi,r14
  da6ad8:	48 89 ee             	mov    rsi,rbp
  da6adb:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da6ae0:	48 89 d9             	mov    rcx,rbx
  da6ae3:	e8 98 41 f1 ff       	call   cbac80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da6ae8:	e9 e3 fe ff ff       	jmp    da69d0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d50>
  da6aed:	4c 89 f7             	mov    rdi,r14
  da6af0:	48 89 ee             	mov    rsi,rbp
  da6af3:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da6af8:	48 89 d9             	mov    rcx,rbx
  da6afb:	e8 00 4e f1 ff       	call   cbb900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da6b00:	e9 cb fe ff ff       	jmp    da69d0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d50>
  da6b05:	4c 89 f7             	mov    rdi,r14
  da6b08:	48 89 ee             	mov    rsi,rbp
  da6b0b:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da6b10:	48 89 d9             	mov    rcx,rbx
  da6b13:	e8 e8 b1 f1 ff       	call   cc1d00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da6b18:	e9 b3 fe ff ff       	jmp    da69d0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d50>
  da6b1d:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da6b22:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da6b29:	00 
  da6b2a:	4c 89 f7             	mov    rdi,r14
  da6b2d:	48 89 ee             	mov    rsi,rbp
  da6b30:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da6b35:	48 89 d9             	mov    rcx,rbx
  da6b38:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da6b3f:	00 
  da6b40:	e8 7b 54 f1 ff       	call   cbbfc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da6b45:	e9 86 fe ff ff       	jmp    da69d0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d50>
  da6b4a:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da6b4f:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da6b56:	00 
  da6b57:	4c 89 f7             	mov    rdi,r14
  da6b5a:	48 89 ee             	mov    rsi,rbp
  da6b5d:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da6b62:	48 89 d9             	mov    rcx,rbx
  da6b65:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da6b6c:	00 
  da6b6d:	e8 0e 7e f1 ff       	call   cbe980 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da6b72:	e9 59 fe ff ff       	jmp    da69d0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d50>
  da6b77:	4c 89 f7             	mov    rdi,r14
  da6b7a:	48 89 ee             	mov    rsi,rbp
  da6b7d:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da6b82:	48 89 d9             	mov    rcx,rbx
  da6b85:	e8 76 63 f1 ff       	call   cbcf00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da6b8a:	e9 41 fe ff ff       	jmp    da69d0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d50>
  da6b8f:	90                   	nop
  da6b90:	80 bc 24 80 00 00 00 	cmp    BYTE PTR [rsp+0x80],0x0
  da6b97:	00 
  da6b98:	74 36                	je     da6bd0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f50>
  da6b9a:	48 8b b4 24 d8 00 00 	mov    rsi,QWORD PTR [rsp+0xd8]
  da6ba1:	00 
  da6ba2:	48 85 f6             	test   rsi,rsi
  da6ba5:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
  da6baa:	0f 84 78 42 00 00    	je     daae28 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x61a8>
  da6bb0:	48 89 c8             	mov    rax,rcx
  da6bb3:	48 09 f0             	or     rax,rsi
  da6bb6:	48 c1 e8 20          	shr    rax,0x20
  da6bba:	74 55                	je     da6c11 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f91>
  da6bbc:	48 89 c8             	mov    rax,rcx
  da6bbf:	31 d2                	xor    edx,edx
  da6bc1:	48 f7 f6             	div    rsi
  da6bc4:	48 85 c9             	test   rcx,rcx
  da6bc7:	75 57                	jne    da6c20 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1fa0>
  da6bc9:	e9 f2 f6 ff ff       	jmp    da62c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1640>
  da6bce:	66 90                	xchg   ax,ax
  da6bd0:	48 83 7c 24 08 00    	cmp    QWORD PTR [rsp+0x8],0x0
  da6bd6:	0f 84 e4 f6 ff ff    	je     da62c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1640>
  da6bdc:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
  da6be1:	4c 8b 64 24 08       	mov    r12,QWORD PTR [rsp+0x8]
  da6be6:	49 0f af c4          	imul   rax,r12
  da6bea:	48 8b 8c 24 88 00 00 	mov    rcx,QWORD PTR [rsp+0x88]
  da6bf1:	00 
  da6bf2:	48 8d 04 c1          	lea    rax,[rcx+rax*8]
  da6bf6:	48 89 84 24 40 02 00 	mov    QWORD PTR [rsp+0x240],rax
  da6bfd:	00 
  da6bfe:	45 31 f6             	xor    r14d,r14d
  da6c01:	4c 8b ac 24 88 01 00 	mov    r13,QWORD PTR [rsp+0x188]
  da6c08:	00 
  da6c09:	45 31 ff             	xor    r15d,r15d
  da6c0c:	e9 17 03 00 00       	jmp    da6f28 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x22a8>
  da6c11:	89 c8                	mov    eax,ecx
  da6c13:	31 d2                	xor    edx,edx
  da6c15:	f7 f6                	div    esi
  da6c17:	48 85 c9             	test   rcx,rcx
  da6c1a:	0f 84 a0 f6 ff ff    	je     da62c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1640>
  da6c20:	48 8b 4c 24 40       	mov    rcx,QWORD PTR [rsp+0x40]
  da6c25:	48 01 c9             	add    rcx,rcx
  da6c28:	48 0f af c1          	imul   rax,rcx
  da6c2c:	48 0f af 8c 24 d8 00 	imul   rcx,QWORD PTR [rsp+0xd8]
  da6c33:	00 00 
  da6c35:	48 8b 94 24 30 02 00 	mov    rdx,QWORD PTR [rsp+0x230]
  da6c3c:	00 
  da6c3d:	48 8d 04 82          	lea    rax,[rdx+rax*4]
  da6c41:	48 8b 94 24 38 02 00 	mov    rdx,QWORD PTR [rsp+0x238]
  da6c48:	00 
  da6c49:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
  da6c4d:	48 83 c5 70          	add    rbp,0x70
  da6c51:	48 8b b4 24 c8 00 00 	mov    rsi,QWORD PTR [rsp+0xc8]
  da6c58:	00 
  da6c59:	48 8b bc 24 88 01 00 	mov    rdi,QWORD PTR [rsp+0x188]
  da6c60:	00 
  da6c61:	45 31 c0             	xor    r8d,r8d
  da6c64:	eb 47                	jmp    da6cad <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x202d>
  da6c66:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  da6c6d:	00 00 00 
  da6c70:	44 0f 11 06          	movups XMMWORD PTR [rsi],xmm8
  da6c74:	44 0f 11 4e 10       	movups XMMWORD PTR [rsi+0x10],xmm9
  da6c79:	0f 11 76 20          	movups XMMWORD PTR [rsi+0x20],xmm6
  da6c7d:	0f 11 66 30          	movups XMMWORD PTR [rsi+0x30],xmm4
  da6c81:	0f 11 7e 40          	movups XMMWORD PTR [rsi+0x40],xmm7
  da6c85:	0f 11 46 50          	movups XMMWORD PTR [rsi+0x50],xmm0
  da6c89:	0f 11 6e 60          	movups XMMWORD PTR [rsi+0x60],xmm5
  da6c8d:	0f 11 5e 70          	movups XMMWORD PTR [rsi+0x70],xmm3
  da6c91:	48 ff cf             	dec    rdi
  da6c94:	48 03 b4 24 98 00 00 	add    rsi,QWORD PTR [rsp+0x98]
  da6c9b:	00 
  da6c9c:	48 83 ed 80          	sub    rbp,0xffffffffffffff80
  da6ca0:	49 83 c0 04          	add    r8,0x4
  da6ca4:	48 85 ff             	test   rdi,rdi
  da6ca7:	0f 84 13 f6 ff ff    	je     da62c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1640>
  da6cad:	4d 89 c1             	mov    r9,r8
  da6cb0:	48 8b 4c 24 28       	mov    rcx,QWORD PTR [rsp+0x28]
  da6cb5:	49 d3 e9             	shr    r9,cl
  da6cb8:	49 c1 e1 05          	shl    r9,0x5
  da6cbc:	42 0f 10 04 08       	movups xmm0,XMMWORD PTR [rax+r9*1]
  da6cc1:	42 0f 10 74 08 10    	movups xmm6,XMMWORD PTR [rax+r9*1+0x10]
  da6cc7:	4c 89 c1             	mov    rcx,r8
  da6cca:	48 23 4c 24 60       	and    rcx,QWORD PTR [rsp+0x60]
  da6ccf:	48 c1 e1 05          	shl    rcx,0x5
  da6cd3:	0f 10 24 0a          	movups xmm4,XMMWORD PTR [rdx+rcx*1]
  da6cd7:	0f 10 4c 0a 10       	movups xmm1,XMMWORD PTR [rdx+rcx*1+0x10]
  da6cdc:	0f 10 5c 0a 20       	movups xmm3,XMMWORD PTR [rdx+rcx*1+0x20]
  da6ce1:	0f 10 54 0a 30       	movups xmm2,XMMWORD PTR [rdx+rcx*1+0x30]
  da6ce6:	0f 28 ee             	movaps xmm5,xmm6
  da6ce9:	0f 59 e9             	mulps  xmm5,xmm1
  da6cec:	0f 28 f8             	movaps xmm7,xmm0
  da6cef:	0f 59 fc             	mulps  xmm7,xmm4
  da6cf2:	0f 5c fd             	subps  xmm7,xmm5
  da6cf5:	0f 59 e6             	mulps  xmm4,xmm6
  da6cf8:	0f 59 c8             	mulps  xmm1,xmm0
  da6cfb:	0f 58 cc             	addps  xmm1,xmm4
  da6cfe:	44 0f 10 4d 90       	movups xmm9,XMMWORD PTR [rbp-0x70]
  da6d03:	44 0f 10 55 a0       	movups xmm10,XMMWORD PTR [rbp-0x60]
  da6d08:	0f 10 6d b0          	movups xmm5,XMMWORD PTR [rbp-0x50]
  da6d0c:	44 0f 10 45 c0       	movups xmm8,XMMWORD PTR [rbp-0x40]
  da6d11:	41 0f 28 e1          	movaps xmm4,xmm9
  da6d15:	0f 59 e7             	mulps  xmm4,xmm7
  da6d18:	41 0f 59 fa          	mulps  xmm7,xmm10
  da6d1c:	44 0f 59 d1          	mulps  xmm10,xmm1
  da6d20:	41 0f 5c e2          	subps  xmm4,xmm10
  da6d24:	41 0f 59 c9          	mulps  xmm1,xmm9
  da6d28:	0f 58 cf             	addps  xmm1,xmm7
  da6d2b:	0f 28 fe             	movaps xmm7,xmm6
  da6d2e:	0f 59 fa             	mulps  xmm7,xmm2
  da6d31:	44 0f 28 c8          	movaps xmm9,xmm0
  da6d35:	44 0f 59 cb          	mulps  xmm9,xmm3
  da6d39:	44 0f 5c cf          	subps  xmm9,xmm7
  da6d3d:	0f 59 de             	mulps  xmm3,xmm6
  da6d40:	0f 59 d0             	mulps  xmm2,xmm0
  da6d43:	0f 58 d3             	addps  xmm2,xmm3
  da6d46:	0f 28 fd             	movaps xmm7,xmm5
  da6d49:	41 0f 59 f9          	mulps  xmm7,xmm9
  da6d4d:	45 0f 59 c8          	mulps  xmm9,xmm8
  da6d51:	44 0f 59 c2          	mulps  xmm8,xmm2
  da6d55:	41 0f 5c f8          	subps  xmm7,xmm8
  da6d59:	0f 59 d5             	mulps  xmm2,xmm5
  da6d5c:	41 0f 58 d1          	addps  xmm2,xmm9
  da6d60:	44 0f 10 45 d0       	movups xmm8,XMMWORD PTR [rbp-0x30]
  da6d65:	44 0f 10 4d e0       	movups xmm9,XMMWORD PTR [rbp-0x20]
  da6d6a:	0f 10 6c 0a 40       	movups xmm5,XMMWORD PTR [rdx+rcx*1+0x40]
  da6d6f:	0f 10 5c 0a 50       	movups xmm3,XMMWORD PTR [rdx+rcx*1+0x50]
  da6d74:	44 0f 28 d6          	movaps xmm10,xmm6
  da6d78:	44 0f 59 d3          	mulps  xmm10,xmm3
  da6d7c:	44 0f 28 d8          	movaps xmm11,xmm0
  da6d80:	44 0f 59 dd          	mulps  xmm11,xmm5
  da6d84:	45 0f 5c da          	subps  xmm11,xmm10
  da6d88:	0f 59 ee             	mulps  xmm5,xmm6
  da6d8b:	0f 59 d8             	mulps  xmm3,xmm0
  da6d8e:	0f 58 dd             	addps  xmm3,xmm5
  da6d91:	41 0f 28 e8          	movaps xmm5,xmm8
  da6d95:	41 0f 59 eb          	mulps  xmm5,xmm11
  da6d99:	45 0f 59 d9          	mulps  xmm11,xmm9
  da6d9d:	44 0f 59 cb          	mulps  xmm9,xmm3
  da6da1:	41 0f 5c e9          	subps  xmm5,xmm9
  da6da5:	41 0f 59 d8          	mulps  xmm3,xmm8
  da6da9:	41 0f 58 db          	addps  xmm3,xmm11
  da6dad:	44 0f 10 45 f0       	movups xmm8,XMMWORD PTR [rbp-0x10]
  da6db2:	44 0f 10 4d 00       	movups xmm9,XMMWORD PTR [rbp+0x0]
  da6db7:	44 0f 10 54 0a 60    	movups xmm10,XMMWORD PTR [rdx+rcx*1+0x60]
  da6dbd:	44 0f 10 5c 0a 70    	movups xmm11,XMMWORD PTR [rdx+rcx*1+0x70]
  da6dc3:	44 0f 28 e6          	movaps xmm12,xmm6
  da6dc7:	45 0f 59 e3          	mulps  xmm12,xmm11
  da6dcb:	44 0f 28 e8          	movaps xmm13,xmm0
  da6dcf:	45 0f 59 ea          	mulps  xmm13,xmm10
  da6dd3:	45 0f 5c ec          	subps  xmm13,xmm12
  da6dd7:	41 0f 59 f2          	mulps  xmm6,xmm10
  da6ddb:	41 0f 59 c3          	mulps  xmm0,xmm11
  da6ddf:	0f 58 c6             	addps  xmm0,xmm6
  da6de2:	45 0f 28 d0          	movaps xmm10,xmm8
  da6de6:	45 0f 59 d5          	mulps  xmm10,xmm13
  da6dea:	45 0f 59 e9          	mulps  xmm13,xmm9
  da6dee:	44 0f 59 c8          	mulps  xmm9,xmm0
  da6df2:	45 0f 5c d1          	subps  xmm10,xmm9
  da6df6:	41 0f 59 c0          	mulps  xmm0,xmm8
  da6dfa:	41 0f 58 c5          	addps  xmm0,xmm13
  da6dfe:	44 0f 28 cc          	movaps xmm9,xmm4
  da6e02:	44 0f 14 cf          	unpcklps xmm9,xmm7
  da6e06:	0f 28 f5             	movaps xmm6,xmm5
  da6e09:	41 0f 14 f2          	unpcklps xmm6,xmm10
  da6e0d:	45 0f 28 c1          	movaps xmm8,xmm9
  da6e11:	44 0f 16 c6          	movlhps xmm8,xmm6
  da6e15:	41 0f 12 f1          	movhlps xmm6,xmm9
  da6e19:	0f 15 e7             	unpckhps xmm4,xmm7
  da6e1c:	41 0f 15 ea          	unpckhps xmm5,xmm10
  da6e20:	0f 28 fc             	movaps xmm7,xmm4
  da6e23:	0f 16 fd             	movlhps xmm7,xmm5
  da6e26:	0f 12 ec             	movhlps xmm5,xmm4
  da6e29:	44 0f 28 d1          	movaps xmm10,xmm1
  da6e2d:	44 0f 14 d2          	unpcklps xmm10,xmm2
  da6e31:	0f 28 e3             	movaps xmm4,xmm3
  da6e34:	0f 14 e0             	unpcklps xmm4,xmm0
  da6e37:	45 0f 28 ca          	movaps xmm9,xmm10
  da6e3b:	44 0f 16 cc          	movlhps xmm9,xmm4
  da6e3f:	41 0f 12 e2          	movhlps xmm4,xmm10
  da6e43:	0f 15 ca             	unpckhps xmm1,xmm2
  da6e46:	0f 15 d8             	unpckhps xmm3,xmm0
  da6e49:	0f 28 c1             	movaps xmm0,xmm1
  da6e4c:	0f 16 c3             	movlhps xmm0,xmm3
  da6e4f:	0f 12 d9             	movhlps xmm3,xmm1
  da6e52:	80 7c 24 20 00       	cmp    BYTE PTR [rsp+0x20],0x0
  da6e57:	0f 84 13 fe ff ff    	je     da6c70 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1ff0>
  da6e5d:	48 8d 4e 10          	lea    rcx,[rsi+0x10]
  da6e61:	4c 8d 4e 20          	lea    r9,[rsi+0x20]
  da6e65:	4c 8d 56 30          	lea    r10,[rsi+0x30]
  da6e69:	4c 8d 5e 40          	lea    r11,[rsi+0x40]
  da6e6d:	48 8d 5e 50          	lea    rbx,[rsi+0x50]
  da6e71:	4c 8d 76 60          	lea    r14,[rsi+0x60]
  da6e75:	4c 8d 7e 70          	lea    r15,[rsi+0x70]
  da6e79:	44 0f 2b 06          	movntps XMMWORD PTR [rsi],xmm8
  da6e7d:	44 0f 2b 09          	movntps XMMWORD PTR [rcx],xmm9
  da6e81:	41 0f 2b 31          	movntps XMMWORD PTR [r9],xmm6
  da6e85:	41 0f 2b 22          	movntps XMMWORD PTR [r10],xmm4
  da6e89:	41 0f 2b 3b          	movntps XMMWORD PTR [r11],xmm7
  da6e8d:	0f 2b 03             	movntps XMMWORD PTR [rbx],xmm0
  da6e90:	41 0f 2b 2e          	movntps XMMWORD PTR [r14],xmm5
  da6e94:	41 0f 2b 1f          	movntps XMMWORD PTR [r15],xmm3
  da6e98:	e9 f4 fd ff ff       	jmp    da6c91 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2011>
  da6e9d:	48 8b 84 24 28 02 00 	mov    rax,QWORD PTR [rsp+0x228]
  da6ea4:	00 
  da6ea5:	4c 01 f8             	add    rax,r15
  da6ea8:	48 8b 8c 24 40 02 00 	mov    rcx,QWORD PTR [rsp+0x240]
  da6eaf:	00 
  da6eb0:	48 8d 3c c1          	lea    rdi,[rcx+rax*8]
  da6eb4:	48 8d 84 24 10 01 00 	lea    rax,[rsp+0x110]
  da6ebb:	00 
  da6ebc:	0f 57 c0             	xorps  xmm0,xmm0
  da6ebf:	0f 29 40 50          	movaps XMMWORD PTR [rax+0x50],xmm0
  da6ec3:	0f 29 40 40          	movaps XMMWORD PTR [rax+0x40],xmm0
  da6ec7:	0f 29 40 30          	movaps XMMWORD PTR [rax+0x30],xmm0
  da6ecb:	0f 29 40 20          	movaps XMMWORD PTR [rax+0x20],xmm0
  da6ecf:	0f 29 40 10          	movaps XMMWORD PTR [rax+0x10],xmm0
  da6ed3:	0f 29 00             	movaps XMMWORD PTR [rax],xmm0
  da6ed6:	45 0f 15 c8          	unpckhps xmm9,xmm8
  da6eda:	45 0f 15 da          	unpckhps xmm11,xmm10
  da6ede:	44 0f 29 8c 24 f0 00 	movaps XMMWORD PTR [rsp+0xf0],xmm9
  da6ee5:	00 00 
  da6ee7:	44 0f 29 9c 24 00 01 	movaps XMMWORD PTR [rsp+0x100],xmm11
  da6eee:	00 00 
  da6ef0:	48 8d b4 24 f0 00 00 	lea    rsi,[rsp+0xf0]
  da6ef7:	00 
  da6ef8:	48 89 da             	mov    rdx,rbx
  da6efb:	ff 15 df 67 4a 00    	call   QWORD PTR [rip+0x4a67df]        # 124d6e0 <memcpy@GLIBC_2.14>
  da6f01:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  da6f08:	0f 1f 84 00 00 00 00 
  da6f0f:	00 
  da6f10:	49 ff cd             	dec    r13
  da6f13:	49 83 c4 fc          	add    r12,0xfffffffffffffffc
  da6f17:	49 83 c6 20          	add    r14,0x20
  da6f1b:	49 83 c7 04          	add    r15,0x4
  da6f1f:	4d 85 ed             	test   r13,r13
  da6f22:	0f 84 98 f3 ff ff    	je     da62c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1640>
  da6f28:	48 8b 8c 24 b8 00 00 	mov    rcx,QWORD PTR [rsp+0xb8]
  da6f2f:	00 
  da6f30:	4a 8d 04 39          	lea    rax,[rcx+r15*1]
  da6f34:	49 83 fc 04          	cmp    r12,0x4
  da6f38:	bb 04 00 00 00       	mov    ebx,0x4
  da6f3d:	49 0f 42 dc          	cmovb  rbx,r12
  da6f41:	0f 57 c0             	xorps  xmm0,xmm0
  da6f44:	48 85 c0             	test   rax,rax
  da6f47:	74 77                	je     da6fc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2340>
  da6f49:	46 0f 10 44 b5 00    	movups xmm8,XMMWORD PTR [rbp+r14*4+0x0]
  da6f4f:	42 0f 10 4c b5 10    	movups xmm1,XMMWORD PTR [rbp+r14*4+0x10]
  da6f55:	48 8b 94 24 b0 00 00 	mov    rdx,QWORD PTR [rsp+0xb0]
  da6f5c:	00 
  da6f5d:	42 0f 10 54 b2 90    	movups xmm2,XMMWORD PTR [rdx+r14*4-0x70]
  da6f63:	42 0f 10 5c b2 a0    	movups xmm3,XMMWORD PTR [rdx+r14*4-0x60]
  da6f69:	0f 28 e1             	movaps xmm4,xmm1
  da6f6c:	0f 59 e3             	mulps  xmm4,xmm3
  da6f6f:	45 0f 28 c8          	movaps xmm9,xmm8
  da6f73:	44 0f 59 ca          	mulps  xmm9,xmm2
  da6f77:	44 0f 5c cc          	subps  xmm9,xmm4
  da6f7b:	0f 59 ca             	mulps  xmm1,xmm2
  da6f7e:	44 0f 59 c3          	mulps  xmm8,xmm3
  da6f82:	44 0f 58 c1          	addps  xmm8,xmm1
  da6f86:	49 83 fc 02          	cmp    r12,0x2
  da6f8a:	73 64                	jae    da6ff0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2370>
  da6f8c:	0f 57 c9             	xorps  xmm1,xmm1
  da6f8f:	45 0f 57 d2          	xorps  xmm10,xmm10
  da6f93:	0f 57 db             	xorps  xmm3,xmm3
  da6f96:	0f 57 d2             	xorps  xmm2,xmm2
  da6f99:	45 0f 57 db          	xorps  xmm11,xmm11
  da6f9d:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
  da6fa2:	48 39 04 24          	cmp    QWORD PTR [rsp],rax
  da6fa6:	0f 84 64 ff ff ff    	je     da6f10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2290>
  da6fac:	e9 3f 01 00 00       	jmp    da70f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2470>
  da6fb1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  da6fb8:	0f 1f 84 00 00 00 00 
  da6fbf:	00 
  da6fc0:	0f 57 c9             	xorps  xmm1,xmm1
  da6fc3:	45 0f 57 d2          	xorps  xmm10,xmm10
  da6fc7:	45 0f 57 c0          	xorps  xmm8,xmm8
  da6fcb:	0f 57 db             	xorps  xmm3,xmm3
  da6fce:	0f 57 d2             	xorps  xmm2,xmm2
  da6fd1:	45 0f 57 db          	xorps  xmm11,xmm11
  da6fd5:	45 0f 57 c9          	xorps  xmm9,xmm9
  da6fd9:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
  da6fde:	48 39 04 24          	cmp    QWORD PTR [rsp],rax
  da6fe2:	0f 84 28 ff ff ff    	je     da6f10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2290>
  da6fe8:	e9 03 01 00 00       	jmp    da70f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2470>
  da6fed:	0f 1f 00             	nop    DWORD PTR [rax]
  da6ff0:	4a 8d 04 39          	lea    rax,[rcx+r15*1]
  da6ff4:	48 83 c0 02          	add    rax,0x2
  da6ff8:	42 0f 10 4c b5 20    	movups xmm1,XMMWORD PTR [rbp+r14*4+0x20]
  da6ffe:	42 0f 10 5c b5 30    	movups xmm3,XMMWORD PTR [rbp+r14*4+0x30]
  da7004:	42 0f 10 64 b2 b0    	movups xmm4,XMMWORD PTR [rdx+r14*4-0x50]
  da700a:	42 0f 10 6c b2 c0    	movups xmm5,XMMWORD PTR [rdx+r14*4-0x40]
  da7010:	0f 28 f3             	movaps xmm6,xmm3
  da7013:	0f 59 f5             	mulps  xmm6,xmm5
  da7016:	0f 28 d1             	movaps xmm2,xmm1
  da7019:	0f 59 d4             	mulps  xmm2,xmm4
  da701c:	0f 5c d6             	subps  xmm2,xmm6
  da701f:	0f 59 dc             	mulps  xmm3,xmm4
  da7022:	0f 59 cd             	mulps  xmm1,xmm5
  da7025:	0f 58 cb             	addps  xmm1,xmm3
  da7028:	48 85 c0             	test   rax,rax
  da702b:	0f 84 82 00 00 00    	je     da70b3 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2433>
  da7031:	4a 8d 04 39          	lea    rax,[rcx+r15*1]
  da7035:	48 83 c0 03          	add    rax,0x3
  da7039:	46 0f 10 54 b5 40    	movups xmm10,XMMWORD PTR [rbp+r14*4+0x40]
  da703f:	42 0f 10 5c b5 50    	movups xmm3,XMMWORD PTR [rbp+r14*4+0x50]
  da7045:	42 0f 10 64 b2 d0    	movups xmm4,XMMWORD PTR [rdx+r14*4-0x30]
  da704b:	42 0f 10 6c b2 e0    	movups xmm5,XMMWORD PTR [rdx+r14*4-0x20]
  da7051:	0f 28 f3             	movaps xmm6,xmm3
  da7054:	0f 59 f5             	mulps  xmm6,xmm5
  da7057:	45 0f 28 da          	movaps xmm11,xmm10
  da705b:	44 0f 59 dc          	mulps  xmm11,xmm4
  da705f:	44 0f 5c de          	subps  xmm11,xmm6
  da7063:	0f 59 dc             	mulps  xmm3,xmm4
  da7066:	44 0f 59 d5          	mulps  xmm10,xmm5
  da706a:	44 0f 58 d3          	addps  xmm10,xmm3
  da706e:	48 85 c0             	test   rax,rax
  da7071:	74 5c                	je     da70cf <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x244f>
  da7073:	42 0f 10 44 b5 60    	movups xmm0,XMMWORD PTR [rbp+r14*4+0x60]
  da7079:	42 0f 10 64 b5 70    	movups xmm4,XMMWORD PTR [rbp+r14*4+0x70]
  da707f:	42 0f 10 6c b2 f0    	movups xmm5,XMMWORD PTR [rdx+r14*4-0x10]
  da7085:	42 0f 10 34 b2       	movups xmm6,XMMWORD PTR [rdx+r14*4]
  da708a:	0f 28 fc             	movaps xmm7,xmm4
  da708d:	0f 59 fe             	mulps  xmm7,xmm6
  da7090:	0f 28 d8             	movaps xmm3,xmm0
  da7093:	0f 59 dd             	mulps  xmm3,xmm5
  da7096:	0f 5c df             	subps  xmm3,xmm7
  da7099:	0f 59 e5             	mulps  xmm4,xmm5
  da709c:	0f 59 c6             	mulps  xmm0,xmm6
  da709f:	0f 58 c4             	addps  xmm0,xmm4
  da70a2:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
  da70a7:	48 39 04 24          	cmp    QWORD PTR [rsp],rax
  da70ab:	0f 84 5f fe ff ff    	je     da6f10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2290>
  da70b1:	eb 3d                	jmp    da70f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2470>
  da70b3:	45 0f 57 d2          	xorps  xmm10,xmm10
  da70b7:	0f 57 db             	xorps  xmm3,xmm3
  da70ba:	45 0f 57 db          	xorps  xmm11,xmm11
  da70be:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
  da70c3:	48 39 04 24          	cmp    QWORD PTR [rsp],rax
  da70c7:	0f 84 43 fe ff ff    	je     da6f10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2290>
  da70cd:	eb 21                	jmp    da70f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2470>
  da70cf:	0f 57 db             	xorps  xmm3,xmm3
  da70d2:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
  da70d7:	48 39 04 24          	cmp    QWORD PTR [rsp],rax
  da70db:	0f 84 2f fe ff ff    	je     da6f10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2290>
  da70e1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  da70e8:	0f 1f 84 00 00 00 00 
  da70ef:	00 
  da70f0:	41 0f 28 e1          	movaps xmm4,xmm9
  da70f4:	0f 14 e2             	unpcklps xmm4,xmm2
  da70f7:	41 0f 28 eb          	movaps xmm5,xmm11
  da70fb:	0f 14 eb             	unpcklps xmm5,xmm3
  da70fe:	44 0f 15 ca          	unpckhps xmm9,xmm2
  da7102:	44 0f 15 db          	unpckhps xmm11,xmm3
  da7106:	41 0f 28 f0          	movaps xmm6,xmm8
  da710a:	0f 14 f1             	unpcklps xmm6,xmm1
  da710d:	41 0f 28 da          	movaps xmm3,xmm10
  da7111:	0f 14 d8             	unpcklps xmm3,xmm0
  da7114:	44 0f 15 c1          	unpckhps xmm8,xmm1
  da7118:	44 0f 15 d0          	unpckhps xmm10,xmm0
  da711c:	48 c1 e3 03          	shl    rbx,0x3
  da7120:	0f 28 c4             	movaps xmm0,xmm4
  da7123:	0f 14 c6             	unpcklps xmm0,xmm6
  da7126:	0f 28 cd             	movaps xmm1,xmm5
  da7129:	0f 14 cb             	unpcklps xmm1,xmm3
  da712c:	49 83 fc 03          	cmp    r12,0x3
  da7130:	0f 86 9a 00 00 00    	jbe    da71d0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2550>
  da7136:	48 8b 44 24 58       	mov    rax,QWORD PTR [rsp+0x58]
  da713b:	42 0f 11 04 f8       	movups XMMWORD PTR [rax+r15*8],xmm0
  da7140:	42 0f 11 4c f8 10    	movups XMMWORD PTR [rax+r15*8+0x10],xmm1
  da7146:	48 83 7c 24 38 02    	cmp    QWORD PTR [rsp+0x38],0x2
  da714c:	0f 82 be fd ff ff    	jb     da6f10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2290>
  da7152:	0f 15 e6             	unpckhps xmm4,xmm6
  da7155:	0f 15 eb             	unpckhps xmm5,xmm3
  da7158:	48 8b 84 24 a8 00 00 	mov    rax,QWORD PTR [rsp+0xa8]
  da715f:	00 
  da7160:	42 0f 11 24 f8       	movups XMMWORD PTR [rax+r15*8],xmm4
  da7165:	42 0f 11 6c f8 10    	movups XMMWORD PTR [rax+r15*8+0x10],xmm5
  da716b:	0f 84 9f fd ff ff    	je     da6f10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2290>
  da7171:	41 0f 28 c1          	movaps xmm0,xmm9
  da7175:	41 0f 14 c0          	unpcklps xmm0,xmm8
  da7179:	41 0f 28 cb          	movaps xmm1,xmm11
  da717d:	41 0f 14 ca          	unpcklps xmm1,xmm10
  da7181:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
  da7188:	00 
  da7189:	42 0f 11 04 f8       	movups XMMWORD PTR [rax+r15*8],xmm0
  da718e:	42 0f 11 4c f8 10    	movups XMMWORD PTR [rax+r15*8+0x10],xmm1
  da7194:	48 83 7c 24 38 03    	cmp    QWORD PTR [rsp+0x38],0x3
  da719a:	0f 84 70 fd ff ff    	je     da6f10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2290>
  da71a0:	49 83 fc 03          	cmp    r12,0x3
  da71a4:	0f 86 f3 fc ff ff    	jbe    da6e9d <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x221d>
  da71aa:	45 0f 15 c8          	unpckhps xmm9,xmm8
  da71ae:	45 0f 15 da          	unpckhps xmm11,xmm10
  da71b2:	48 8b 84 24 e8 00 00 	mov    rax,QWORD PTR [rsp+0xe8]
  da71b9:	00 
  da71ba:	46 0f 11 0c f8       	movups XMMWORD PTR [rax+r15*8],xmm9
  da71bf:	46 0f 11 5c f8 10    	movups XMMWORD PTR [rax+r15*8+0x10],xmm11
  da71c5:	e9 46 fd ff ff       	jmp    da6f10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2290>
  da71ca:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  da71d0:	48 8b 44 24 58       	mov    rax,QWORD PTR [rsp+0x58]
  da71d5:	4a 8d 3c f8          	lea    rdi,[rax+r15*8]
  da71d9:	48 8d 84 24 10 01 00 	lea    rax,[rsp+0x110]
  da71e0:	00 
  da71e1:	0f 57 d2             	xorps  xmm2,xmm2
  da71e4:	0f 29 50 50          	movaps XMMWORD PTR [rax+0x50],xmm2
  da71e8:	0f 29 50 40          	movaps XMMWORD PTR [rax+0x40],xmm2
  da71ec:	0f 29 50 30          	movaps XMMWORD PTR [rax+0x30],xmm2
  da71f0:	0f 29 50 20          	movaps XMMWORD PTR [rax+0x20],xmm2
  da71f4:	0f 29 50 10          	movaps XMMWORD PTR [rax+0x10],xmm2
  da71f8:	0f 29 10             	movaps XMMWORD PTR [rax],xmm2
  da71fb:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da7202:	00 
  da7203:	0f 29 8c 24 00 01 00 	movaps XMMWORD PTR [rsp+0x100],xmm1
  da720a:	00 
  da720b:	48 8d b4 24 f0 00 00 	lea    rsi,[rsp+0xf0]
  da7212:	00 
  da7213:	48 89 da             	mov    rdx,rbx
  da7216:	44 0f 29 84 24 e0 01 	movaps XMMWORD PTR [rsp+0x1e0],xmm8
  da721d:	00 00 
  da721f:	44 0f 29 8c 24 d0 01 	movaps XMMWORD PTR [rsp+0x1d0],xmm9
  da7226:	00 00 
  da7228:	44 0f 29 94 24 b0 01 	movaps XMMWORD PTR [rsp+0x1b0],xmm10
  da722f:	00 00 
  da7231:	44 0f 29 9c 24 a0 01 	movaps XMMWORD PTR [rsp+0x1a0],xmm11
  da7238:	00 00 
  da723a:	0f 29 a4 24 70 01 00 	movaps XMMWORD PTR [rsp+0x170],xmm4
  da7241:	00 
  da7242:	0f 29 ac 24 c0 01 00 	movaps XMMWORD PTR [rsp+0x1c0],xmm5
  da7249:	00 
  da724a:	0f 29 9c 24 f0 01 00 	movaps XMMWORD PTR [rsp+0x1f0],xmm3
  da7251:	00 
  da7252:	0f 29 b4 24 10 02 00 	movaps XMMWORD PTR [rsp+0x210],xmm6
  da7259:	00 
  da725a:	ff 15 80 64 4a 00    	call   QWORD PTR [rip+0x4a6480]        # 124d6e0 <memcpy@GLIBC_2.14>
  da7260:	0f 28 a4 24 10 02 00 	movaps xmm4,XMMWORD PTR [rsp+0x210]
  da7267:	00 
  da7268:	0f 28 9c 24 f0 01 00 	movaps xmm3,XMMWORD PTR [rsp+0x1f0]
  da726f:	00 
  da7270:	0f 28 94 24 c0 01 00 	movaps xmm2,XMMWORD PTR [rsp+0x1c0]
  da7277:	00 
  da7278:	0f 28 8c 24 70 01 00 	movaps xmm1,XMMWORD PTR [rsp+0x170]
  da727f:	00 
  da7280:	48 83 7c 24 38 02    	cmp    QWORD PTR [rsp+0x38],0x2
  da7286:	0f 82 84 fc ff ff    	jb     da6f10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2290>
  da728c:	48 8b 84 24 a8 00 00 	mov    rax,QWORD PTR [rsp+0xa8]
  da7293:	00 
  da7294:	4a 8d 3c f8          	lea    rdi,[rax+r15*8]
  da7298:	48 8d 84 24 10 01 00 	lea    rax,[rsp+0x110]
  da729f:	00 
  da72a0:	0f 57 c0             	xorps  xmm0,xmm0
  da72a3:	0f 29 40 50          	movaps XMMWORD PTR [rax+0x50],xmm0
  da72a7:	0f 29 40 40          	movaps XMMWORD PTR [rax+0x40],xmm0
  da72ab:	0f 29 40 30          	movaps XMMWORD PTR [rax+0x30],xmm0
  da72af:	0f 29 40 20          	movaps XMMWORD PTR [rax+0x20],xmm0
  da72b3:	0f 29 40 10          	movaps XMMWORD PTR [rax+0x10],xmm0
  da72b7:	0f 29 00             	movaps XMMWORD PTR [rax],xmm0
  da72ba:	0f 15 cc             	unpckhps xmm1,xmm4
  da72bd:	0f 15 d3             	unpckhps xmm2,xmm3
  da72c0:	0f 29 8c 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm1
  da72c7:	00 
  da72c8:	0f 29 94 24 00 01 00 	movaps XMMWORD PTR [rsp+0x100],xmm2
  da72cf:	00 
  da72d0:	48 8d b4 24 f0 00 00 	lea    rsi,[rsp+0xf0]
  da72d7:	00 
  da72d8:	48 89 da             	mov    rdx,rbx
  da72db:	ff 15 ff 63 4a 00    	call   QWORD PTR [rip+0x4a63ff]        # 124d6e0 <memcpy@GLIBC_2.14>
  da72e1:	0f 28 a4 24 a0 01 00 	movaps xmm4,XMMWORD PTR [rsp+0x1a0]
  da72e8:	00 
  da72e9:	0f 28 9c 24 b0 01 00 	movaps xmm3,XMMWORD PTR [rsp+0x1b0]
  da72f0:	00 
  da72f1:	0f 28 94 24 d0 01 00 	movaps xmm2,XMMWORD PTR [rsp+0x1d0]
  da72f8:	00 
  da72f9:	0f 28 8c 24 e0 01 00 	movaps xmm1,XMMWORD PTR [rsp+0x1e0]
  da7300:	00 
  da7301:	48 83 7c 24 38 02    	cmp    QWORD PTR [rsp+0x38],0x2
  da7307:	0f 84 03 fc ff ff    	je     da6f10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2290>
  da730d:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
  da7314:	00 
  da7315:	4a 8d 3c f8          	lea    rdi,[rax+r15*8]
  da7319:	48 8d 84 24 10 01 00 	lea    rax,[rsp+0x110]
  da7320:	00 
  da7321:	0f 57 c0             	xorps  xmm0,xmm0
  da7324:	0f 29 40 50          	movaps XMMWORD PTR [rax+0x50],xmm0
  da7328:	0f 29 40 40          	movaps XMMWORD PTR [rax+0x40],xmm0
  da732c:	0f 29 40 30          	movaps XMMWORD PTR [rax+0x30],xmm0
  da7330:	0f 29 40 20          	movaps XMMWORD PTR [rax+0x20],xmm0
  da7334:	0f 29 40 10          	movaps XMMWORD PTR [rax+0x10],xmm0
  da7338:	0f 29 00             	movaps XMMWORD PTR [rax],xmm0
  da733b:	0f 28 c2             	movaps xmm0,xmm2
  da733e:	0f 14 c1             	unpcklps xmm0,xmm1
  da7341:	0f 28 cc             	movaps xmm1,xmm4
  da7344:	0f 14 cb             	unpcklps xmm1,xmm3
  da7347:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da734e:	00 
  da734f:	0f 29 8c 24 00 01 00 	movaps XMMWORD PTR [rsp+0x100],xmm1
  da7356:	00 
  da7357:	48 8d b4 24 f0 00 00 	lea    rsi,[rsp+0xf0]
  da735e:	00 
  da735f:	48 89 da             	mov    rdx,rbx
  da7362:	ff 15 78 63 4a 00    	call   QWORD PTR [rip+0x4a6378]        # 124d6e0 <memcpy@GLIBC_2.14>
  da7368:	44 0f 28 9c 24 a0 01 	movaps xmm11,XMMWORD PTR [rsp+0x1a0]
  da736f:	00 00 
  da7371:	44 0f 28 94 24 b0 01 	movaps xmm10,XMMWORD PTR [rsp+0x1b0]
  da7378:	00 00 
  da737a:	44 0f 28 8c 24 d0 01 	movaps xmm9,XMMWORD PTR [rsp+0x1d0]
  da7381:	00 00 
  da7383:	44 0f 28 84 24 e0 01 	movaps xmm8,XMMWORD PTR [rsp+0x1e0]
  da738a:	00 00 
  da738c:	48 83 7c 24 38 03    	cmp    QWORD PTR [rsp+0x38],0x3
  da7392:	0f 84 78 fb ff ff    	je     da6f10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2290>
  da7398:	48 8b 84 24 e8 00 00 	mov    rax,QWORD PTR [rsp+0xe8]
  da739f:	00 
  da73a0:	4a 8d 3c 30          	lea    rdi,[rax+r14*1]
  da73a4:	e9 0b fb ff ff       	jmp    da6eb4 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2234>
  da73a9:	80 7c 24 20 00       	cmp    BYTE PTR [rsp+0x20],0x0
  da73ae:	74 47                	je     da73f7 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2777>
  da73b0:	0f ae f8             	sfence
  da73b3:	f6 84 24 c0 00 00 00 	test   BYTE PTR [rsp+0xc0],0x3f
  da73ba:	3f 
  da73bb:	0f 94 c0             	sete   al
  da73be:	89 44 24 38          	mov    DWORD PTR [rsp+0x38],eax
  da73c2:	4d 85 e4             	test   r12,r12
  da73c5:	75 41                	jne    da7408 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2788>
  da73c7:	e9 41 1e 00 00       	jmp    da920d <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x458d>
  da73cc:	80 7c 24 20 00       	cmp    BYTE PTR [rsp+0x20],0x0
  da73d1:	0f 84 26 0f 00 00    	je     da82fd <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x367d>
  da73d7:	0f ae f8             	sfence
  da73da:	f6 84 24 c0 00 00 00 	test   BYTE PTR [rsp+0xc0],0x3f
  da73e1:	3f 
  da73e2:	0f 94 c0             	sete   al
  da73e5:	89 44 24 38          	mov    DWORD PTR [rsp+0x38],eax
  da73e9:	4d 85 e4             	test   r12,r12
  da73ec:	0f 85 1c 0f 00 00    	jne    da830e <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x368e>
  da73f2:	e9 16 1e 00 00       	jmp    da920d <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x458d>
  da73f7:	c7 44 24 38 00 00 00 	mov    DWORD PTR [rsp+0x38],0x0
  da73fe:	00 
  da73ff:	4d 85 e4             	test   r12,r12
  da7402:	0f 84 05 1e 00 00    	je     da920d <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x458d>
  da7408:	48 8d 04 5b          	lea    rax,[rbx+rbx*2]
  da740c:	4c 89 e6             	mov    rsi,r12
  da740f:	48 c1 ee 02          	shr    rsi,0x2
  da7413:	44 89 e1             	mov    ecx,r12d
  da7416:	83 e1 03             	and    ecx,0x3
  da7419:	48 83 f9 01          	cmp    rcx,0x1
  da741d:	48 83 de ff          	sbb    rsi,0xffffffffffffffff
  da7421:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da7426:	48 8d 14 c1          	lea    rdx,[rcx+rax*8]
  da742a:	48 89 54 24 60       	mov    QWORD PTR [rsp+0x60],rdx
  da742f:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7433:	48 01 d2             	add    rdx,rdx
  da7436:	48 89 94 24 b0 00 00 	mov    QWORD PTR [rsp+0xb0],rdx
  da743d:	00 
  da743e:	48 8d 44 c1 20       	lea    rax,[rcx+rax*8+0x20]
  da7443:	48 89 44 24 58       	mov    QWORD PTR [rsp+0x58],rax
  da7448:	48 8b 44 24 50       	mov    rax,QWORD PTR [rsp+0x50]
  da744d:	48 ff c8             	dec    rax
  da7450:	48 89 84 24 70 01 00 	mov    QWORD PTR [rsp+0x170],rax
  da7457:	00 
  da7458:	4a 8d 04 e5 00 00 00 	lea    rax,[r12*8+0x0]
  da745f:	00 
  da7460:	48 89 84 24 98 00 00 	mov    QWORD PTR [rsp+0x98],rax
  da7467:	00 
  da7468:	45 31 c0             	xor    r8d,r8d
  da746b:	eb 2e                	jmp    da749b <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x281b>
  da746d:	0f 1f 00             	nop    DWORD PTR [rax]
  da7470:	4c 8b 44 24 28       	mov    r8,QWORD PTR [rsp+0x28]
  da7475:	49 83 c0 04          	add    r8,0x4
  da7479:	48 8b b4 24 b8 00 00 	mov    rsi,QWORD PTR [rsp+0xb8]
  da7480:	00 
  da7481:	48 ff ce             	dec    rsi
  da7484:	48 83 84 24 c0 00 00 	add    QWORD PTR [rsp+0xc0],0x20
  da748b:	00 20 
  da748d:	48 85 f6             	test   rsi,rsi
  da7490:	48 8b 6c 24 78       	mov    rbp,QWORD PTR [rsp+0x78]
  da7495:	0f 84 72 1d 00 00    	je     da920d <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x458d>
  da749b:	4c 89 e0             	mov    rax,r12
  da749e:	4c 29 c0             	sub    rax,r8
  da74a1:	48 89 44 24 40       	mov    QWORD PTR [rsp+0x40],rax
  da74a6:	48 83 f8 04          	cmp    rax,0x4
  da74aa:	b9 04 00 00 00       	mov    ecx,0x4
  da74af:	48 0f 42 c8          	cmovb  rcx,rax
  da74b3:	48 89 4c 24 20       	mov    QWORD PTR [rsp+0x20],rcx
  da74b8:	80 bc 24 80 00 00 00 	cmp    BYTE PTR [rsp+0x80],0x0
  da74bf:	00 
  da74c0:	48 89 b4 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],rsi
  da74c7:	00 
  da74c8:	4c 89 44 24 28       	mov    QWORD PTR [rsp+0x28],r8
  da74cd:	74 71                	je     da7540 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x28c0>
  da74cf:	48 83 7c 24 50 00    	cmp    QWORD PTR [rsp+0x50],0x0
  da74d5:	0f 84 3d 39 00 00    	je     daae18 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6198>
  da74db:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
  da74e0:	48 8b 00             	mov    rax,QWORD PTR [rax]
  da74e3:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  da74e7:	48 83 f8 0d          	cmp    rax,0xd
  da74eb:	0f 87 eb 38 00 00    	ja     daaddc <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x615c>
  da74f1:	48 8b 8c 24 b0 00 00 	mov    rcx,QWORD PTR [rsp+0xb0]
  da74f8:	00 
  da74f9:	49 0f af c8          	imul   rcx,r8
  da74fd:	48 8b 94 24 88 00 00 	mov    rdx,QWORD PTR [rsp+0x88]
  da7504:	00 
  da7505:	48 8d 3c 8a          	lea    rdi,[rdx+rcx*4]
  da7509:	48 8d 0d e4 bb 2f ff 	lea    rcx,[rip+0xffffffffff2fbbe4]        # a30f4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x305a4>
  da7510:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da7514:	48 01 c8             	add    rax,rcx
  da7517:	ff e0                	jmp    rax
  da7519:	48 89 ee             	mov    rsi,rbp
  da751c:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7520:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da7525:	e8 d6 c5 ff ff       	call   da3b00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da752a:	49 89 ee             	mov    r14,rbp
  da752d:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da7533:	0f 83 97 02 00 00    	jae    da77d0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2b50>
  da7539:	e9 b2 0c 00 00       	jmp    da81f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da753e:	66 90                	xchg   ax,ax
  da7540:	48 8b 84 24 88 00 00 	mov    rax,QWORD PTR [rsp+0x88]
  da7547:	00 
  da7548:	4a 8d 3c c0          	lea    rdi,[rax+r8*8]
  da754c:	48 83 7c 24 40 03    	cmp    QWORD PTR [rsp+0x40],0x3
  da7552:	76 5c                	jbe    da75b0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2930>
  da7554:	48 83 7c 24 50 00    	cmp    QWORD PTR [rsp+0x50],0x0
  da755a:	0f 84 b8 38 00 00    	je     daae18 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6198>
  da7560:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
  da7565:	48 8b 00             	mov    rax,QWORD PTR [rax]
  da7568:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  da756c:	48 83 f8 0d          	cmp    rax,0xd
  da7570:	0f 87 66 38 00 00    	ja     daaddc <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x615c>
  da7576:	48 8d 0d 03 bb 2f ff 	lea    rcx,[rip+0xffffffffff2fbb03]        # a3080 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30530>
  da757d:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da7581:	48 01 c8             	add    rax,rcx
  da7584:	ff e0                	jmp    rax
  da7586:	48 89 ee             	mov    rsi,rbp
  da7589:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da758d:	4c 89 e1             	mov    rcx,r12
  da7590:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da7595:	e8 26 94 fe ff       	call   d909c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da759a:	49 89 ee             	mov    r14,rbp
  da759d:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da75a3:	0f 83 1a 08 00 00    	jae    da7dc3 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3143>
  da75a9:	e9 42 0c 00 00       	jmp    da81f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da75ae:	66 90                	xchg   ax,ax
  da75b0:	48 83 7c 24 50 00    	cmp    QWORD PTR [rsp+0x50],0x0
  da75b6:	0f 84 5c 38 00 00    	je     daae18 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6198>
  da75bc:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
  da75c1:	48 8b 00             	mov    rax,QWORD PTR [rax]
  da75c4:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  da75c8:	48 83 f8 0d          	cmp    rax,0xd
  da75cc:	0f 87 0a 38 00 00    	ja     daaddc <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x615c>
  da75d2:	48 8d 0d 33 ba 2f ff 	lea    rcx,[rip+0xffffffffff2fba33]        # a300c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x304bc>
  da75d9:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da75dd:	48 01 c8             	add    rax,rcx
  da75e0:	ff e0                	jmp    rax
  da75e2:	48 89 ee             	mov    rsi,rbp
  da75e5:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da75e9:	4c 89 e1             	mov    rcx,r12
  da75ec:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da75f1:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da75f6:	e8 45 fd fd ff       	call   d87340 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da75fb:	49 89 ee             	mov    r14,rbp
  da75fe:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da7604:	0f 83 de 09 00 00    	jae    da7fe8 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3368>
  da760a:	e9 e1 0b 00 00       	jmp    da81f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da760f:	48 89 ee             	mov    rsi,rbp
  da7612:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7616:	e8 25 ae fe ff       	call   d92440 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da761b:	49 89 ee             	mov    r14,rbp
  da761e:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da7624:	0f 83 a6 01 00 00    	jae    da77d0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2b50>
  da762a:	e9 c1 0b 00 00       	jmp    da81f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da762f:	48 89 ee             	mov    rsi,rbp
  da7632:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7636:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da763b:	e8 80 74 fe ff       	call   d8eac0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da7640:	49 89 ee             	mov    r14,rbp
  da7643:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da7649:	0f 83 81 01 00 00    	jae    da77d0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2b50>
  da764f:	e9 9c 0b 00 00       	jmp    da81f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da7654:	48 89 ee             	mov    rsi,rbp
  da7657:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da765b:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da7660:	e8 9b b8 ff ff       	call   da2f00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da7665:	49 89 ee             	mov    r14,rbp
  da7668:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da766e:	0f 83 5c 01 00 00    	jae    da77d0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2b50>
  da7674:	e9 77 0b 00 00       	jmp    da81f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da7679:	48 89 ee             	mov    rsi,rbp
  da767c:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7680:	e8 bb 76 fe ff       	call   d8ed40 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da7685:	49 89 ee             	mov    r14,rbp
  da7688:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da768e:	0f 83 3c 01 00 00    	jae    da77d0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2b50>
  da7694:	e9 57 0b 00 00       	jmp    da81f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da7699:	48 89 ee             	mov    rsi,rbp
  da769c:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da76a0:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da76a5:	e8 d6 f9 fd ff       	call   d87080 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da76aa:	49 89 ee             	mov    r14,rbp
  da76ad:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da76b3:	0f 83 17 01 00 00    	jae    da77d0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2b50>
  da76b9:	e9 32 0b 00 00       	jmp    da81f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da76be:	48 89 ee             	mov    rsi,rbp
  da76c1:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da76c5:	e8 76 44 ff ff       	call   d9bb40 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da76ca:	49 89 ee             	mov    r14,rbp
  da76cd:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da76d3:	0f 83 f7 00 00 00    	jae    da77d0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2b50>
  da76d9:	e9 12 0b 00 00       	jmp    da81f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da76de:	48 89 ee             	mov    rsi,rbp
  da76e1:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da76e5:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da76ea:	e8 91 26 ff ff       	call   d99d80 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da76ef:	49 89 ee             	mov    r14,rbp
  da76f2:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da76f8:	0f 83 d2 00 00 00    	jae    da77d0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2b50>
  da76fe:	e9 ed 0a 00 00       	jmp    da81f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da7703:	48 89 ee             	mov    rsi,rbp
  da7706:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da770a:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da770f:	e8 6c 26 fe ff       	call   d89d80 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da7714:	49 89 ee             	mov    r14,rbp
  da7717:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da771d:	0f 83 ad 00 00 00    	jae    da77d0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2b50>
  da7723:	e9 c8 0a 00 00       	jmp    da81f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da7728:	48 89 ee             	mov    rsi,rbp
  da772b:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da772f:	e8 cc ed fe ff       	call   d96500 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da7734:	49 89 ee             	mov    r14,rbp
  da7737:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da773d:	0f 83 8d 00 00 00    	jae    da77d0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2b50>
  da7743:	e9 a8 0a 00 00       	jmp    da81f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da7748:	48 89 ee             	mov    rsi,rbp
  da774b:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da774f:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da7754:	e8 a7 3b fe ff       	call   d8b300 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da7759:	49 89 ee             	mov    r14,rbp
  da775c:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da7762:	73 6c                	jae    da77d0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2b50>
  da7764:	e9 87 0a 00 00       	jmp    da81f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da7769:	48 89 ee             	mov    rsi,rbp
  da776c:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7770:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da7775:	e8 46 b5 fd ff       	call   d82cc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da777a:	49 89 ee             	mov    r14,rbp
  da777d:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da7783:	73 4b                	jae    da77d0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2b50>
  da7785:	e9 66 0a 00 00       	jmp    da81f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da778a:	48 89 ee             	mov    rsi,rbp
  da778d:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7791:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da7796:	e8 65 3c ff ff       	call   d9b400 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da779b:	49 89 ee             	mov    r14,rbp
  da779e:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da77a4:	73 2a                	jae    da77d0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2b50>
  da77a6:	e9 45 0a 00 00       	jmp    da81f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da77ab:	48 89 ee             	mov    rsi,rbp
  da77ae:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da77b2:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da77b7:	e8 c4 bc fe ff       	call   d93480 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da77bc:	49 89 ee             	mov    r14,rbp
  da77bf:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da77c5:	0f 82 25 0a 00 00    	jb     da81f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da77cb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  da77d0:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
  da77d5:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  da77d8:	4c 8b a4 24 70 01 00 	mov    r12,QWORD PTR [rsp+0x170]
  da77df:	00 
  da77e0:	4c 8b 6c 24 58       	mov    r13,QWORD PTR [rsp+0x58]
  da77e5:	48 8b 44 24 78       	mov    rax,QWORD PTR [rsp+0x78]
  da77ea:	4c 8b bc 24 a0 00 00 	mov    r15,QWORD PTR [rsp+0xa0]
  da77f1:	00 
  da77f2:	eb 40                	jmp    da7834 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2bb4>
  da77f4:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da77f9:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da7800:	00 
  da7801:	4c 89 ff             	mov    rdi,r15
  da7804:	4c 89 f6             	mov    rsi,r14
  da7807:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da780b:	48 89 d9             	mov    rcx,rbx
  da780e:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da7815:	00 
  da7816:	e8 65 b7 f1 ff       	call   cc2f80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da781b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  da7820:	48 0f af dd          	imul   rbx,rbp
  da7824:	49 83 c5 18          	add    r13,0x18
  da7828:	4c 89 f0             	mov    rax,r14
  da782b:	49 ff cc             	dec    r12
  da782e:	0f 84 bc 09 00 00    	je     da81f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da7834:	4d 89 fe             	mov    r14,r15
  da7837:	49 89 c7             	mov    r15,rax
  da783a:	49 8b 6d f8          	mov    rbp,QWORD PTR [r13-0x8]
  da783e:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  da7842:	4c 03 44 24 30       	add    r8,QWORD PTR [rsp+0x30]
  da7847:	48 89 6c 24 48       	mov    QWORD PTR [rsp+0x48],rbp
  da784c:	48 8d 45 fe          	lea    rax,[rbp-0x2]
  da7850:	48 83 f8 0e          	cmp    rax,0xe
  da7854:	0f 87 1b 35 00 00    	ja     daad75 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x60f5>
  da785a:	48 8d 0d cb b8 2f ff 	lea    rcx,[rip+0xffffffffff2fb8cb]        # a312c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x305dc>
  da7861:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da7865:	48 01 c8             	add    rax,rcx
  da7868:	ff e0                	jmp    rax
  da786a:	4c 89 ff             	mov    rdi,r15
  da786d:	4c 89 f6             	mov    rsi,r14
  da7870:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7874:	48 89 d9             	mov    rcx,rbx
  da7877:	e8 c4 32 f1 ff       	call   cbab40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da787c:	eb a2                	jmp    da7820 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2ba0>
  da787e:	4c 89 ff             	mov    rdi,r15
  da7881:	4c 89 f6             	mov    rsi,r14
  da7884:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7888:	48 89 d9             	mov    rcx,rbx
  da788b:	e8 30 7d f1 ff       	call   cbf5c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7890:	eb 8e                	jmp    da7820 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2ba0>
  da7892:	4c 89 ff             	mov    rdi,r15
  da7895:	4c 89 f6             	mov    rsi,r14
  da7898:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da789c:	48 89 d9             	mov    rcx,rbx
  da789f:	e8 1c 3c f1 ff       	call   cbb4c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da78a4:	e9 77 ff ff ff       	jmp    da7820 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2ba0>
  da78a9:	4c 89 ff             	mov    rdi,r15
  da78ac:	4c 89 f6             	mov    rsi,r14
  da78af:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da78b3:	48 89 d9             	mov    rcx,rbx
  da78b6:	e8 45 92 f1 ff       	call   cc0b00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da78bb:	e9 60 ff ff ff       	jmp    da7820 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2ba0>
  da78c0:	4c 89 ff             	mov    rdi,r15
  da78c3:	4c 89 f6             	mov    rsi,r14
  da78c6:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da78ca:	48 89 d9             	mov    rcx,rbx
  da78cd:	e8 6e 60 f1 ff       	call   cbd940 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da78d2:	e9 49 ff ff ff       	jmp    da7820 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2ba0>
  da78d7:	4c 89 ff             	mov    rdi,r15
  da78da:	4c 89 f6             	mov    rsi,r14
  da78dd:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da78e1:	48 89 d9             	mov    rcx,rbx
  da78e4:	e8 d7 35 f1 ff       	call   cbaec0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da78e9:	e9 32 ff ff ff       	jmp    da7820 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2ba0>
  da78ee:	4c 89 ff             	mov    rdi,r15
  da78f1:	4c 89 f6             	mov    rsi,r14
  da78f4:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da78f8:	48 89 d9             	mov    rcx,rbx
  da78fb:	e8 40 38 f1 ff       	call   cbb140 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7900:	e9 1b ff ff ff       	jmp    da7820 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2ba0>
  da7905:	4c 89 ff             	mov    rdi,r15
  da7908:	4c 89 f6             	mov    rsi,r14
  da790b:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da790f:	48 89 d9             	mov    rcx,rbx
  da7912:	e8 a9 4c f1 ff       	call   cbc5c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7917:	e9 04 ff ff ff       	jmp    da7820 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2ba0>
  da791c:	4c 89 ff             	mov    rdi,r15
  da791f:	4c 89 f6             	mov    rsi,r14
  da7922:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7926:	48 89 d9             	mov    rcx,rbx
  da7929:	e8 52 33 f1 ff       	call   cbac80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da792e:	e9 ed fe ff ff       	jmp    da7820 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2ba0>
  da7933:	4c 89 ff             	mov    rdi,r15
  da7936:	4c 89 f6             	mov    rsi,r14
  da7939:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da793d:	48 89 d9             	mov    rcx,rbx
  da7940:	e8 bb 3f f1 ff       	call   cbb900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7945:	e9 d6 fe ff ff       	jmp    da7820 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2ba0>
  da794a:	4c 89 ff             	mov    rdi,r15
  da794d:	4c 89 f6             	mov    rsi,r14
  da7950:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7954:	48 89 d9             	mov    rcx,rbx
  da7957:	e8 a4 a3 f1 ff       	call   cc1d00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da795c:	e9 bf fe ff ff       	jmp    da7820 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2ba0>
  da7961:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da7966:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da796d:	00 
  da796e:	4c 89 ff             	mov    rdi,r15
  da7971:	4c 89 f6             	mov    rsi,r14
  da7974:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7978:	48 89 d9             	mov    rcx,rbx
  da797b:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da7982:	00 
  da7983:	e8 38 46 f1 ff       	call   cbbfc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7988:	e9 93 fe ff ff       	jmp    da7820 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2ba0>
  da798d:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da7992:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da7999:	00 
  da799a:	4c 89 ff             	mov    rdi,r15
  da799d:	4c 89 f6             	mov    rsi,r14
  da79a0:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da79a4:	48 89 d9             	mov    rcx,rbx
  da79a7:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da79ae:	00 
  da79af:	e8 cc 6f f1 ff       	call   cbe980 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da79b4:	e9 67 fe ff ff       	jmp    da7820 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2ba0>
  da79b9:	4c 89 ff             	mov    rdi,r15
  da79bc:	4c 89 f6             	mov    rsi,r14
  da79bf:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da79c3:	48 89 d9             	mov    rcx,rbx
  da79c6:	e8 35 55 f1 ff       	call   cbcf00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da79cb:	e9 50 fe ff ff       	jmp    da7820 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2ba0>
  da79d0:	48 89 ee             	mov    rsi,rbp
  da79d3:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da79d7:	4c 89 e1             	mov    rcx,r12
  da79da:	e8 a1 c1 ff ff       	call   da3b80 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da79df:	49 89 ee             	mov    r14,rbp
  da79e2:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da79e8:	0f 83 d5 03 00 00    	jae    da7dc3 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3143>
  da79ee:	e9 fd 07 00 00       	jmp    da81f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da79f3:	48 89 ee             	mov    rsi,rbp
  da79f6:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da79fa:	4c 89 e1             	mov    rcx,r12
  da79fd:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da7a02:	e8 b9 8f ff ff       	call   da09c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da7a07:	49 89 ee             	mov    r14,rbp
  da7a0a:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da7a10:	0f 83 d2 05 00 00    	jae    da7fe8 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3368>
  da7a16:	e9 d5 07 00 00       	jmp    da81f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da7a1b:	48 89 ee             	mov    rsi,rbp
  da7a1e:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7a22:	4c 89 e1             	mov    rcx,r12
  da7a25:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da7a2a:	e8 d1 87 ff ff       	call   da0200 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da7a2f:	49 89 ee             	mov    r14,rbp
  da7a32:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da7a38:	0f 83 85 03 00 00    	jae    da7dc3 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3143>
  da7a3e:	e9 ad 07 00 00       	jmp    da81f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da7a43:	48 89 ee             	mov    rsi,rbp
  da7a46:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7a4a:	4c 89 e1             	mov    rcx,r12
  da7a4d:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da7a52:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da7a57:	e8 a4 71 ff ff       	call   d9ec00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da7a5c:	49 89 ee             	mov    r14,rbp
  da7a5f:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da7a65:	0f 83 7d 05 00 00    	jae    da7fe8 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3368>
  da7a6b:	e9 80 07 00 00       	jmp    da81f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da7a70:	48 89 ee             	mov    rsi,rbp
  da7a73:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7a77:	4c 89 e1             	mov    rcx,r12
  da7a7a:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da7a7f:	e8 3c 16 ff ff       	call   d990c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da7a84:	49 89 ee             	mov    r14,rbp
  da7a87:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da7a8d:	0f 83 30 03 00 00    	jae    da7dc3 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3143>
  da7a93:	e9 58 07 00 00       	jmp    da81f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da7a98:	48 89 ee             	mov    rsi,rbp
  da7a9b:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7a9f:	4c 89 e1             	mov    rcx,r12
  da7aa2:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da7aa7:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da7aac:	e8 4f 03 ff ff       	call   d97e00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da7ab1:	49 89 ee             	mov    r14,rbp
  da7ab4:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da7aba:	0f 83 28 05 00 00    	jae    da7fe8 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3368>
  da7ac0:	e9 2b 07 00 00       	jmp    da81f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da7ac5:	48 89 ee             	mov    rsi,rbp
  da7ac8:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7acc:	4c 89 e1             	mov    rcx,r12
  da7acf:	e8 6c 16 fe ff       	call   d89140 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da7ad4:	49 89 ee             	mov    r14,rbp
  da7ad7:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da7add:	0f 83 e0 02 00 00    	jae    da7dc3 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3143>
  da7ae3:	e9 08 07 00 00       	jmp    da81f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da7ae8:	48 89 ee             	mov    rsi,rbp
  da7aeb:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7aef:	4c 89 e1             	mov    rcx,r12
  da7af2:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da7af7:	e8 c4 bf fe ff       	call   d93ac0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da7afc:	49 89 ee             	mov    r14,rbp
  da7aff:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da7b05:	0f 83 dd 04 00 00    	jae    da7fe8 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3368>
  da7b0b:	e9 e0 06 00 00       	jmp    da81f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da7b10:	48 89 ee             	mov    rsi,rbp
  da7b13:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7b17:	4c 89 e1             	mov    rcx,r12
  da7b1a:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da7b1f:	e8 5c 6f ff ff       	call   d9ea80 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da7b24:	49 89 ee             	mov    r14,rbp
  da7b27:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da7b2d:	0f 83 90 02 00 00    	jae    da7dc3 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3143>
  da7b33:	e9 b8 06 00 00       	jmp    da81f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da7b38:	48 89 ee             	mov    rsi,rbp
  da7b3b:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7b3f:	4c 89 e1             	mov    rcx,r12
  da7b42:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da7b47:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da7b4c:	e8 af 94 fd ff       	call   d81000 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da7b51:	49 89 ee             	mov    r14,rbp
  da7b54:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da7b5a:	0f 83 88 04 00 00    	jae    da7fe8 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3368>
  da7b60:	e9 8b 06 00 00       	jmp    da81f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da7b65:	48 89 ee             	mov    rsi,rbp
  da7b68:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7b6c:	4c 89 e1             	mov    rcx,r12
  da7b6f:	e8 cc 4d ff ff       	call   d9c940 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da7b74:	49 89 ee             	mov    r14,rbp
  da7b77:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da7b7d:	0f 83 40 02 00 00    	jae    da7dc3 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3143>
  da7b83:	e9 68 06 00 00       	jmp    da81f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da7b88:	48 89 ee             	mov    rsi,rbp
  da7b8b:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7b8f:	4c 89 e1             	mov    rcx,r12
  da7b92:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da7b97:	e8 64 e4 fe ff       	call   d96000 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da7b9c:	49 89 ee             	mov    r14,rbp
  da7b9f:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da7ba5:	0f 83 3d 04 00 00    	jae    da7fe8 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3368>
  da7bab:	e9 40 06 00 00       	jmp    da81f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da7bb0:	48 89 ee             	mov    rsi,rbp
  da7bb3:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7bb7:	4c 89 e1             	mov    rcx,r12
  da7bba:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da7bbf:	e8 fc a3 fd ff       	call   d81fc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da7bc4:	49 89 ee             	mov    r14,rbp
  da7bc7:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da7bcd:	0f 83 f0 01 00 00    	jae    da7dc3 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3143>
  da7bd3:	e9 18 06 00 00       	jmp    da81f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da7bd8:	48 89 ee             	mov    rsi,rbp
  da7bdb:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7bdf:	4c 89 e1             	mov    rcx,r12
  da7be2:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da7be7:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da7bec:	e8 4f 83 fe ff       	call   d8ff40 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da7bf1:	49 89 ee             	mov    r14,rbp
  da7bf4:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da7bfa:	0f 83 e8 03 00 00    	jae    da7fe8 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3368>
  da7c00:	e9 eb 05 00 00       	jmp    da81f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da7c05:	48 89 ee             	mov    rsi,rbp
  da7c08:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7c0c:	4c 89 e1             	mov    rcx,r12
  da7c0f:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da7c14:	e8 a7 84 ff ff       	call   da00c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da7c19:	49 89 ee             	mov    r14,rbp
  da7c1c:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da7c22:	0f 83 9b 01 00 00    	jae    da7dc3 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3143>
  da7c28:	e9 c3 05 00 00       	jmp    da81f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da7c2d:	48 89 ee             	mov    rsi,rbp
  da7c30:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7c34:	4c 89 e1             	mov    rcx,r12
  da7c37:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da7c3c:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da7c41:	e8 3a 75 ff ff       	call   d9f180 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da7c46:	49 89 ee             	mov    r14,rbp
  da7c49:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da7c4f:	0f 83 93 03 00 00    	jae    da7fe8 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3368>
  da7c55:	e9 96 05 00 00       	jmp    da81f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da7c5a:	48 89 ee             	mov    rsi,rbp
  da7c5d:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7c61:	4c 89 e1             	mov    rcx,r12
  da7c64:	e8 57 4f ff ff       	call   d9cbc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da7c69:	49 89 ee             	mov    r14,rbp
  da7c6c:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da7c72:	0f 83 4b 01 00 00    	jae    da7dc3 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3143>
  da7c78:	e9 73 05 00 00       	jmp    da81f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da7c7d:	48 89 ee             	mov    rsi,rbp
  da7c80:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7c84:	4c 89 e1             	mov    rcx,r12
  da7c87:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da7c8c:	e8 2f 43 fe ff       	call   d8bfc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da7c91:	49 89 ee             	mov    r14,rbp
  da7c94:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da7c9a:	0f 83 48 03 00 00    	jae    da7fe8 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3368>
  da7ca0:	e9 4b 05 00 00       	jmp    da81f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da7ca5:	48 89 ee             	mov    rsi,rbp
  da7ca8:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7cac:	4c 89 e1             	mov    rcx,r12
  da7caf:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da7cb4:	e8 47 bf fd ff       	call   d83c00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da7cb9:	49 89 ee             	mov    r14,rbp
  da7cbc:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da7cc2:	0f 83 fb 00 00 00    	jae    da7dc3 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3143>
  da7cc8:	e9 23 05 00 00       	jmp    da81f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da7ccd:	48 89 ee             	mov    rsi,rbp
  da7cd0:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7cd4:	4c 89 e1             	mov    rcx,r12
  da7cd7:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da7cdc:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da7ce1:	e8 1a f8 fd ff       	call   d87500 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da7ce6:	49 89 ee             	mov    r14,rbp
  da7ce9:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da7cef:	0f 83 f3 02 00 00    	jae    da7fe8 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3368>
  da7cf5:	e9 f6 04 00 00       	jmp    da81f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da7cfa:	48 89 ee             	mov    rsi,rbp
  da7cfd:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7d01:	4c 89 e1             	mov    rcx,r12
  da7d04:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da7d09:	e8 b2 7f ff ff       	call   d9fcc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da7d0e:	49 89 ee             	mov    r14,rbp
  da7d11:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da7d17:	0f 83 a6 00 00 00    	jae    da7dc3 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3143>
  da7d1d:	e9 ce 04 00 00       	jmp    da81f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da7d22:	48 89 ee             	mov    rsi,rbp
  da7d25:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7d29:	4c 89 e1             	mov    rcx,r12
  da7d2c:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da7d31:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da7d36:	e8 45 aa ff ff       	call   da2780 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da7d3b:	49 89 ee             	mov    r14,rbp
  da7d3e:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da7d44:	0f 83 9e 02 00 00    	jae    da7fe8 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3368>
  da7d4a:	e9 a1 04 00 00       	jmp    da81f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da7d4f:	48 89 ee             	mov    rsi,rbp
  da7d52:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7d56:	4c 89 e1             	mov    rcx,r12
  da7d59:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da7d5e:	e8 dd 0b fe ff       	call   d88940 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da7d63:	49 89 ee             	mov    r14,rbp
  da7d66:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da7d6c:	73 55                	jae    da7dc3 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3143>
  da7d6e:	e9 7d 04 00 00       	jmp    da81f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da7d73:	48 89 ee             	mov    rsi,rbp
  da7d76:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7d7a:	4c 89 e1             	mov    rcx,r12
  da7d7d:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da7d82:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da7d87:	e8 74 4a fe ff       	call   d8c800 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da7d8c:	49 89 ee             	mov    r14,rbp
  da7d8f:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da7d95:	0f 83 4d 02 00 00    	jae    da7fe8 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3368>
  da7d9b:	e9 50 04 00 00       	jmp    da81f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da7da0:	48 89 ee             	mov    rsi,rbp
  da7da3:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7da7:	4c 89 e1             	mov    rcx,r12
  da7daa:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da7daf:	e8 cc 7a fe ff       	call   d8f880 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da7db4:	49 89 ee             	mov    r14,rbp
  da7db7:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da7dbd:	0f 82 2d 04 00 00    	jb     da81f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da7dc3:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
  da7dc8:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  da7dcb:	4c 8b a4 24 70 01 00 	mov    r12,QWORD PTR [rsp+0x170]
  da7dd2:	00 
  da7dd3:	4c 8b 6c 24 58       	mov    r13,QWORD PTR [rsp+0x58]
  da7dd8:	48 8b 44 24 78       	mov    rax,QWORD PTR [rsp+0x78]
  da7ddd:	4c 8b bc 24 a0 00 00 	mov    r15,QWORD PTR [rsp+0xa0]
  da7de4:	00 
  da7de5:	eb 3d                	jmp    da7e24 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x31a4>
  da7de7:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da7dec:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da7df3:	00 
  da7df4:	4c 89 ff             	mov    rdi,r15
  da7df7:	4c 89 f6             	mov    rsi,r14
  da7dfa:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7dfe:	48 89 d9             	mov    rcx,rbx
  da7e01:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da7e08:	00 
  da7e09:	e8 72 b1 f1 ff       	call   cc2f80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7e0e:	66 90                	xchg   ax,ax
  da7e10:	48 0f af dd          	imul   rbx,rbp
  da7e14:	49 83 c5 18          	add    r13,0x18
  da7e18:	4c 89 f0             	mov    rax,r14
  da7e1b:	49 ff cc             	dec    r12
  da7e1e:	0f 84 cc 03 00 00    	je     da81f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da7e24:	4d 89 fe             	mov    r14,r15
  da7e27:	49 89 c7             	mov    r15,rax
  da7e2a:	49 8b 6d f8          	mov    rbp,QWORD PTR [r13-0x8]
  da7e2e:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  da7e32:	4c 03 44 24 30       	add    r8,QWORD PTR [rsp+0x30]
  da7e37:	48 89 6c 24 48       	mov    QWORD PTR [rsp+0x48],rbp
  da7e3c:	48 8d 45 fe          	lea    rax,[rbp-0x2]
  da7e40:	48 83 f8 0e          	cmp    rax,0xe
  da7e44:	0f 87 2b 2f 00 00    	ja     daad75 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x60f5>
  da7e4a:	48 8d 0d 67 b2 2f ff 	lea    rcx,[rip+0xffffffffff2fb267]        # a30b8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30568>
  da7e51:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da7e55:	48 01 c8             	add    rax,rcx
  da7e58:	ff e0                	jmp    rax
  da7e5a:	4c 89 ff             	mov    rdi,r15
  da7e5d:	4c 89 f6             	mov    rsi,r14
  da7e60:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7e64:	48 89 d9             	mov    rcx,rbx
  da7e67:	e8 d4 2c f1 ff       	call   cbab40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7e6c:	eb a2                	jmp    da7e10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3190>
  da7e6e:	4c 89 ff             	mov    rdi,r15
  da7e71:	4c 89 f6             	mov    rsi,r14
  da7e74:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7e78:	48 89 d9             	mov    rcx,rbx
  da7e7b:	e8 40 77 f1 ff       	call   cbf5c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7e80:	eb 8e                	jmp    da7e10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3190>
  da7e82:	4c 89 ff             	mov    rdi,r15
  da7e85:	4c 89 f6             	mov    rsi,r14
  da7e88:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7e8c:	48 89 d9             	mov    rcx,rbx
  da7e8f:	e8 2c 36 f1 ff       	call   cbb4c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7e94:	e9 77 ff ff ff       	jmp    da7e10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3190>
  da7e99:	4c 89 ff             	mov    rdi,r15
  da7e9c:	4c 89 f6             	mov    rsi,r14
  da7e9f:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7ea3:	48 89 d9             	mov    rcx,rbx
  da7ea6:	e8 55 8c f1 ff       	call   cc0b00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7eab:	e9 60 ff ff ff       	jmp    da7e10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3190>
  da7eb0:	4c 89 ff             	mov    rdi,r15
  da7eb3:	4c 89 f6             	mov    rsi,r14
  da7eb6:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7eba:	48 89 d9             	mov    rcx,rbx
  da7ebd:	e8 7e 5a f1 ff       	call   cbd940 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7ec2:	e9 49 ff ff ff       	jmp    da7e10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3190>
  da7ec7:	4c 89 ff             	mov    rdi,r15
  da7eca:	4c 89 f6             	mov    rsi,r14
  da7ecd:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7ed1:	48 89 d9             	mov    rcx,rbx
  da7ed4:	e8 e7 2f f1 ff       	call   cbaec0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7ed9:	e9 32 ff ff ff       	jmp    da7e10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3190>
  da7ede:	4c 89 ff             	mov    rdi,r15
  da7ee1:	4c 89 f6             	mov    rsi,r14
  da7ee4:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7ee8:	48 89 d9             	mov    rcx,rbx
  da7eeb:	e8 50 32 f1 ff       	call   cbb140 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7ef0:	e9 1b ff ff ff       	jmp    da7e10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3190>
  da7ef5:	4c 89 ff             	mov    rdi,r15
  da7ef8:	4c 89 f6             	mov    rsi,r14
  da7efb:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7eff:	48 89 d9             	mov    rcx,rbx
  da7f02:	e8 b9 46 f1 ff       	call   cbc5c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7f07:	e9 04 ff ff ff       	jmp    da7e10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3190>
  da7f0c:	4c 89 ff             	mov    rdi,r15
  da7f0f:	4c 89 f6             	mov    rsi,r14
  da7f12:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7f16:	48 89 d9             	mov    rcx,rbx
  da7f19:	e8 62 2d f1 ff       	call   cbac80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7f1e:	e9 ed fe ff ff       	jmp    da7e10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3190>
  da7f23:	4c 89 ff             	mov    rdi,r15
  da7f26:	4c 89 f6             	mov    rsi,r14
  da7f29:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7f2d:	48 89 d9             	mov    rcx,rbx
  da7f30:	e8 cb 39 f1 ff       	call   cbb900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7f35:	e9 d6 fe ff ff       	jmp    da7e10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3190>
  da7f3a:	4c 89 ff             	mov    rdi,r15
  da7f3d:	4c 89 f6             	mov    rsi,r14
  da7f40:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7f44:	48 89 d9             	mov    rcx,rbx
  da7f47:	e8 b4 9d f1 ff       	call   cc1d00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7f4c:	e9 bf fe ff ff       	jmp    da7e10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3190>
  da7f51:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da7f56:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da7f5d:	00 
  da7f5e:	4c 89 ff             	mov    rdi,r15
  da7f61:	4c 89 f6             	mov    rsi,r14
  da7f64:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7f68:	48 89 d9             	mov    rcx,rbx
  da7f6b:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da7f72:	00 
  da7f73:	e8 48 40 f1 ff       	call   cbbfc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7f78:	e9 93 fe ff ff       	jmp    da7e10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3190>
  da7f7d:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da7f82:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da7f89:	00 
  da7f8a:	4c 89 ff             	mov    rdi,r15
  da7f8d:	4c 89 f6             	mov    rsi,r14
  da7f90:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7f94:	48 89 d9             	mov    rcx,rbx
  da7f97:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da7f9e:	00 
  da7f9f:	e8 dc 69 f1 ff       	call   cbe980 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7fa4:	e9 67 fe ff ff       	jmp    da7e10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3190>
  da7fa9:	4c 89 ff             	mov    rdi,r15
  da7fac:	4c 89 f6             	mov    rsi,r14
  da7faf:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7fb3:	48 89 d9             	mov    rcx,rbx
  da7fb6:	e8 45 4f f1 ff       	call   cbcf00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7fbb:	e9 50 fe ff ff       	jmp    da7e10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3190>
  da7fc0:	48 89 ee             	mov    rsi,rbp
  da7fc3:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7fc7:	4c 89 e1             	mov    rcx,r12
  da7fca:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da7fcf:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da7fd4:	e8 a7 3d ff ff       	call   d9bd80 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da7fd9:	49 89 ee             	mov    r14,rbp
  da7fdc:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da7fe2:	0f 82 08 02 00 00    	jb     da81f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da7fe8:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
  da7fed:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  da7ff0:	4c 8b a4 24 70 01 00 	mov    r12,QWORD PTR [rsp+0x170]
  da7ff7:	00 
  da7ff8:	4c 8b 6c 24 58       	mov    r13,QWORD PTR [rsp+0x58]
  da7ffd:	48 8b 44 24 78       	mov    rax,QWORD PTR [rsp+0x78]
  da8002:	4c 8b bc 24 a0 00 00 	mov    r15,QWORD PTR [rsp+0xa0]
  da8009:	00 
  da800a:	eb 48                	jmp    da8054 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x33d4>
  da800c:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da8011:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da8018:	00 
  da8019:	4c 89 ff             	mov    rdi,r15
  da801c:	4c 89 f6             	mov    rsi,r14
  da801f:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8023:	48 89 d9             	mov    rcx,rbx
  da8026:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da802d:	00 
  da802e:	e8 4d af f1 ff       	call   cc2f80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8033:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  da803a:	84 00 00 00 00 00 
  da8040:	48 0f af dd          	imul   rbx,rbp
  da8044:	49 83 c5 18          	add    r13,0x18
  da8048:	4c 89 f0             	mov    rax,r14
  da804b:	49 ff cc             	dec    r12
  da804e:	0f 84 9c 01 00 00    	je     da81f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da8054:	4d 89 fe             	mov    r14,r15
  da8057:	49 89 c7             	mov    r15,rax
  da805a:	49 8b 6d f8          	mov    rbp,QWORD PTR [r13-0x8]
  da805e:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  da8062:	4c 03 44 24 30       	add    r8,QWORD PTR [rsp+0x30]
  da8067:	48 89 6c 24 48       	mov    QWORD PTR [rsp+0x48],rbp
  da806c:	48 8d 45 fe          	lea    rax,[rbp-0x2]
  da8070:	48 83 f8 0e          	cmp    rax,0xe
  da8074:	0f 87 fb 2c 00 00    	ja     daad75 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x60f5>
  da807a:	48 8d 0d c3 af 2f ff 	lea    rcx,[rip+0xffffffffff2fafc3]        # a3044 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x304f4>
  da8081:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da8085:	48 01 c8             	add    rax,rcx
  da8088:	ff e0                	jmp    rax
  da808a:	4c 89 ff             	mov    rdi,r15
  da808d:	4c 89 f6             	mov    rsi,r14
  da8090:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8094:	48 89 d9             	mov    rcx,rbx
  da8097:	e8 a4 2a f1 ff       	call   cbab40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da809c:	eb a2                	jmp    da8040 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  da809e:	4c 89 ff             	mov    rdi,r15
  da80a1:	4c 89 f6             	mov    rsi,r14
  da80a4:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da80a8:	48 89 d9             	mov    rcx,rbx
  da80ab:	e8 10 75 f1 ff       	call   cbf5c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da80b0:	eb 8e                	jmp    da8040 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  da80b2:	4c 89 ff             	mov    rdi,r15
  da80b5:	4c 89 f6             	mov    rsi,r14
  da80b8:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da80bc:	48 89 d9             	mov    rcx,rbx
  da80bf:	e8 fc 33 f1 ff       	call   cbb4c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da80c4:	e9 77 ff ff ff       	jmp    da8040 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  da80c9:	4c 89 ff             	mov    rdi,r15
  da80cc:	4c 89 f6             	mov    rsi,r14
  da80cf:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da80d3:	48 89 d9             	mov    rcx,rbx
  da80d6:	e8 25 8a f1 ff       	call   cc0b00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da80db:	e9 60 ff ff ff       	jmp    da8040 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  da80e0:	4c 89 ff             	mov    rdi,r15
  da80e3:	4c 89 f6             	mov    rsi,r14
  da80e6:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da80ea:	48 89 d9             	mov    rcx,rbx
  da80ed:	e8 4e 58 f1 ff       	call   cbd940 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da80f2:	e9 49 ff ff ff       	jmp    da8040 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  da80f7:	4c 89 ff             	mov    rdi,r15
  da80fa:	4c 89 f6             	mov    rsi,r14
  da80fd:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8101:	48 89 d9             	mov    rcx,rbx
  da8104:	e8 b7 2d f1 ff       	call   cbaec0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8109:	e9 32 ff ff ff       	jmp    da8040 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  da810e:	4c 89 ff             	mov    rdi,r15
  da8111:	4c 89 f6             	mov    rsi,r14
  da8114:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8118:	48 89 d9             	mov    rcx,rbx
  da811b:	e8 20 30 f1 ff       	call   cbb140 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8120:	e9 1b ff ff ff       	jmp    da8040 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  da8125:	4c 89 ff             	mov    rdi,r15
  da8128:	4c 89 f6             	mov    rsi,r14
  da812b:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da812f:	48 89 d9             	mov    rcx,rbx
  da8132:	e8 89 44 f1 ff       	call   cbc5c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8137:	e9 04 ff ff ff       	jmp    da8040 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  da813c:	4c 89 ff             	mov    rdi,r15
  da813f:	4c 89 f6             	mov    rsi,r14
  da8142:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8146:	48 89 d9             	mov    rcx,rbx
  da8149:	e8 32 2b f1 ff       	call   cbac80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da814e:	e9 ed fe ff ff       	jmp    da8040 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  da8153:	4c 89 ff             	mov    rdi,r15
  da8156:	4c 89 f6             	mov    rsi,r14
  da8159:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da815d:	48 89 d9             	mov    rcx,rbx
  da8160:	e8 9b 37 f1 ff       	call   cbb900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8165:	e9 d6 fe ff ff       	jmp    da8040 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  da816a:	4c 89 ff             	mov    rdi,r15
  da816d:	4c 89 f6             	mov    rsi,r14
  da8170:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8174:	48 89 d9             	mov    rcx,rbx
  da8177:	e8 84 9b f1 ff       	call   cc1d00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da817c:	e9 bf fe ff ff       	jmp    da8040 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  da8181:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da8186:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da818d:	00 
  da818e:	4c 89 ff             	mov    rdi,r15
  da8191:	4c 89 f6             	mov    rsi,r14
  da8194:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8198:	48 89 d9             	mov    rcx,rbx
  da819b:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da81a2:	00 
  da81a3:	e8 18 3e f1 ff       	call   cbbfc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da81a8:	e9 93 fe ff ff       	jmp    da8040 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  da81ad:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da81b2:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da81b9:	00 
  da81ba:	4c 89 ff             	mov    rdi,r15
  da81bd:	4c 89 f6             	mov    rsi,r14
  da81c0:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da81c4:	48 89 d9             	mov    rcx,rbx
  da81c7:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da81ce:	00 
  da81cf:	e8 ac 67 f1 ff       	call   cbe980 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da81d4:	e9 67 fe ff ff       	jmp    da8040 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  da81d9:	4c 89 ff             	mov    rdi,r15
  da81dc:	4c 89 f6             	mov    rsi,r14
  da81df:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da81e3:	48 89 d9             	mov    rcx,rbx
  da81e6:	e8 15 4d f1 ff       	call   cbcf00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da81eb:	e9 50 fe ff ff       	jmp    da8040 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  da81f0:	48 83 3c 24 00       	cmp    QWORD PTR [rsp],0x0
  da81f5:	4c 8b 64 24 08       	mov    r12,QWORD PTR [rsp+0x8]
  da81fa:	4c 8d ac 24 10 01 00 	lea    r13,[rsp+0x110]
  da8201:	00 
  da8202:	48 8b ac 24 98 00 00 	mov    rbp,QWORD PTR [rsp+0x98]
  da8209:	00 
  da820a:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
  da820f:	0f 84 5b f2 ff ff    	je     da7470 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x27f0>
  da8215:	80 7c 24 38 00       	cmp    BYTE PTR [rsp+0x38],0x0
  da821a:	74 44                	je     da8260 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x35e0>
  da821c:	49 83 c6 10          	add    r14,0x10
  da8220:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
  da8224:	48 8b 8c 24 c0 00 00 	mov    rcx,QWORD PTR [rsp+0xc0]
  da822b:	00 
  da822c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  da8230:	41 0f 10 46 f0       	movups xmm0,XMMWORD PTR [r14-0x10]
  da8235:	41 0f 10 0e          	movups xmm1,XMMWORD PTR [r14]
  da8239:	0f 28 d0             	movaps xmm2,xmm0
  da823c:	0f 14 d1             	unpcklps xmm2,xmm1
  da823f:	0f 15 c1             	unpckhps xmm0,xmm1
  da8242:	0f 2b 11             	movntps XMMWORD PTR [rcx],xmm2
  da8245:	48 8d 51 10          	lea    rdx,[rcx+0x10]
  da8249:	0f 2b 02             	movntps XMMWORD PTR [rdx],xmm0
  da824c:	48 01 e9             	add    rcx,rbp
  da824f:	49 83 c6 20          	add    r14,0x20
  da8253:	48 ff c8             	dec    rax
  da8256:	75 d8                	jne    da8230 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x35b0>
  da8258:	e9 13 f2 ff ff       	jmp    da7470 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x27f0>
  da825d:	0f 1f 00             	nop    DWORD PTR [rax]
  da8260:	48 c1 64 24 20 03    	shl    QWORD PTR [rsp+0x20],0x3
  da8266:	49 83 c6 10          	add    r14,0x10
  da826a:	4c 8b 3c 24          	mov    r15,QWORD PTR [rsp]
  da826e:	48 8b 9c 24 c0 00 00 	mov    rbx,QWORD PTR [rsp+0xc0]
  da8275:	00 
  da8276:	eb 1f                	jmp    da8297 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3617>
  da8278:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  da827f:	00 
  da8280:	0f 11 0b             	movups XMMWORD PTR [rbx],xmm1
  da8283:	0f 11 43 10          	movups XMMWORD PTR [rbx+0x10],xmm0
  da8287:	48 01 eb             	add    rbx,rbp
  da828a:	49 83 c6 20          	add    r14,0x20
  da828e:	49 ff cf             	dec    r15
  da8291:	0f 84 d9 f1 ff ff    	je     da7470 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x27f0>
  da8297:	41 0f 10 46 f0       	movups xmm0,XMMWORD PTR [r14-0x10]
  da829c:	41 0f 10 16          	movups xmm2,XMMWORD PTR [r14]
  da82a0:	0f 28 c8             	movaps xmm1,xmm0
  da82a3:	0f 14 ca             	unpcklps xmm1,xmm2
  da82a6:	0f 15 c2             	unpckhps xmm0,xmm2
  da82a9:	48 83 f8 03          	cmp    rax,0x3
  da82ad:	77 d1                	ja     da8280 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3600>
  da82af:	0f 57 d2             	xorps  xmm2,xmm2
  da82b2:	41 0f 29 55 50       	movaps XMMWORD PTR [r13+0x50],xmm2
  da82b7:	41 0f 29 55 40       	movaps XMMWORD PTR [r13+0x40],xmm2
  da82bc:	41 0f 29 55 30       	movaps XMMWORD PTR [r13+0x30],xmm2
  da82c1:	41 0f 29 55 20       	movaps XMMWORD PTR [r13+0x20],xmm2
  da82c6:	41 0f 29 55 10       	movaps XMMWORD PTR [r13+0x10],xmm2
  da82cb:	41 0f 29 55 00       	movaps XMMWORD PTR [r13+0x0],xmm2
  da82d0:	0f 29 8c 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm1
  da82d7:	00 
  da82d8:	0f 29 84 24 00 01 00 	movaps XMMWORD PTR [rsp+0x100],xmm0
  da82df:	00 
  da82e0:	48 89 df             	mov    rdi,rbx
  da82e3:	48 8d b4 24 f0 00 00 	lea    rsi,[rsp+0xf0]
  da82ea:	00 
  da82eb:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  da82f0:	ff 15 ea 53 4a 00    	call   QWORD PTR [rip+0x4a53ea]        # 124d6e0 <memcpy@GLIBC_2.14>
  da82f6:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
  da82fb:	eb 8a                	jmp    da8287 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3607>
  da82fd:	c7 44 24 38 00 00 00 	mov    DWORD PTR [rsp+0x38],0x0
  da8304:	00 
  da8305:	4d 85 e4             	test   r12,r12
  da8308:	0f 84 ff 0e 00 00    	je     da920d <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x458d>
  da830e:	48 8d 04 5b          	lea    rax,[rbx+rbx*2]
  da8312:	4c 89 e6             	mov    rsi,r12
  da8315:	48 c1 ee 02          	shr    rsi,0x2
  da8319:	44 89 e1             	mov    ecx,r12d
  da831c:	83 e1 03             	and    ecx,0x3
  da831f:	48 83 f9 01          	cmp    rcx,0x1
  da8323:	48 83 de ff          	sbb    rsi,0xffffffffffffffff
  da8327:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da832c:	48 8d 14 c1          	lea    rdx,[rcx+rax*8]
  da8330:	48 89 54 24 60       	mov    QWORD PTR [rsp+0x60],rdx
  da8335:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8339:	48 01 d2             	add    rdx,rdx
  da833c:	48 89 94 24 b0 00 00 	mov    QWORD PTR [rsp+0xb0],rdx
  da8343:	00 
  da8344:	48 8d 44 c1 20       	lea    rax,[rcx+rax*8+0x20]
  da8349:	48 89 44 24 58       	mov    QWORD PTR [rsp+0x58],rax
  da834e:	48 8b 44 24 50       	mov    rax,QWORD PTR [rsp+0x50]
  da8353:	48 ff c8             	dec    rax
  da8356:	48 89 84 24 70 01 00 	mov    QWORD PTR [rsp+0x170],rax
  da835d:	00 
  da835e:	4a 8d 04 e5 00 00 00 	lea    rax,[r12*8+0x0]
  da8365:	00 
  da8366:	48 89 84 24 98 00 00 	mov    QWORD PTR [rsp+0x98],rax
  da836d:	00 
  da836e:	45 31 c0             	xor    r8d,r8d
  da8371:	eb 38                	jmp    da83ab <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x372b>
  da8373:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  da837a:	84 00 00 00 00 00 
  da8380:	4c 8b 44 24 28       	mov    r8,QWORD PTR [rsp+0x28]
  da8385:	49 83 c0 04          	add    r8,0x4
  da8389:	48 8b b4 24 b8 00 00 	mov    rsi,QWORD PTR [rsp+0xb8]
  da8390:	00 
  da8391:	48 ff ce             	dec    rsi
  da8394:	48 83 84 24 c0 00 00 	add    QWORD PTR [rsp+0xc0],0x20
  da839b:	00 20 
  da839d:	48 85 f6             	test   rsi,rsi
  da83a0:	48 8b 6c 24 78       	mov    rbp,QWORD PTR [rsp+0x78]
  da83a5:	0f 84 62 0e 00 00    	je     da920d <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x458d>
  da83ab:	4c 89 e0             	mov    rax,r12
  da83ae:	4c 29 c0             	sub    rax,r8
  da83b1:	48 89 44 24 40       	mov    QWORD PTR [rsp+0x40],rax
  da83b6:	48 83 f8 04          	cmp    rax,0x4
  da83ba:	b9 04 00 00 00       	mov    ecx,0x4
  da83bf:	48 0f 42 c8          	cmovb  rcx,rax
  da83c3:	48 89 4c 24 20       	mov    QWORD PTR [rsp+0x20],rcx
  da83c8:	80 bc 24 80 00 00 00 	cmp    BYTE PTR [rsp+0x80],0x0
  da83cf:	00 
  da83d0:	48 89 b4 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],rsi
  da83d7:	00 
  da83d8:	4c 89 44 24 28       	mov    QWORD PTR [rsp+0x28],r8
  da83dd:	74 71                	je     da8450 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x37d0>
  da83df:	48 83 7c 24 50 00    	cmp    QWORD PTR [rsp+0x50],0x0
  da83e5:	0f 84 2d 2a 00 00    	je     daae18 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6198>
  da83eb:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
  da83f0:	48 8b 00             	mov    rax,QWORD PTR [rax]
  da83f3:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  da83f7:	48 83 f8 0d          	cmp    rax,0xd
  da83fb:	0f 87 db 29 00 00    	ja     daaddc <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x615c>
  da8401:	48 8b 8c 24 b0 00 00 	mov    rcx,QWORD PTR [rsp+0xb0]
  da8408:	00 
  da8409:	49 0f af c8          	imul   rcx,r8
  da840d:	48 8b 94 24 88 00 00 	mov    rdx,QWORD PTR [rsp+0x88]
  da8414:	00 
  da8415:	48 8d 3c 8a          	lea    rdi,[rdx+rcx*4]
  da8419:	48 8d 0d 90 af 2f ff 	lea    rcx,[rip+0xffffffffff2faf90]        # a33b0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30860>
  da8420:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da8424:	48 01 c8             	add    rax,rcx
  da8427:	ff e0                	jmp    rax
  da8429:	48 89 ee             	mov    rsi,rbp
  da842c:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8430:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da8435:	e8 c6 b6 ff ff       	call   da3b00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da843a:	49 89 ee             	mov    r14,rbp
  da843d:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da8443:	0f 83 97 02 00 00    	jae    da86e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3a60>
  da8449:	e9 b2 0c 00 00       	jmp    da9100 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da844e:	66 90                	xchg   ax,ax
  da8450:	48 8b 84 24 88 00 00 	mov    rax,QWORD PTR [rsp+0x88]
  da8457:	00 
  da8458:	4a 8d 3c c0          	lea    rdi,[rax+r8*8]
  da845c:	48 83 7c 24 40 03    	cmp    QWORD PTR [rsp+0x40],0x3
  da8462:	76 5c                	jbe    da84c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3840>
  da8464:	48 83 7c 24 50 00    	cmp    QWORD PTR [rsp+0x50],0x0
  da846a:	0f 84 a8 29 00 00    	je     daae18 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6198>
  da8470:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
  da8475:	48 8b 00             	mov    rax,QWORD PTR [rax]
  da8478:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  da847c:	48 83 f8 0d          	cmp    rax,0xd
  da8480:	0f 87 56 29 00 00    	ja     daaddc <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x615c>
  da8486:	48 8d 0d af ae 2f ff 	lea    rcx,[rip+0xffffffffff2faeaf]        # a333c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x307ec>
  da848d:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da8491:	48 01 c8             	add    rax,rcx
  da8494:	ff e0                	jmp    rax
  da8496:	48 89 ee             	mov    rsi,rbp
  da8499:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da849d:	4c 89 e1             	mov    rcx,r12
  da84a0:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da84a5:	e8 16 85 fe ff       	call   d909c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da84aa:	49 89 ee             	mov    r14,rbp
  da84ad:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da84b3:	0f 83 1a 08 00 00    	jae    da8cd3 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4053>
  da84b9:	e9 42 0c 00 00       	jmp    da9100 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da84be:	66 90                	xchg   ax,ax
  da84c0:	48 83 7c 24 50 00    	cmp    QWORD PTR [rsp+0x50],0x0
  da84c6:	0f 84 4c 29 00 00    	je     daae18 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6198>
  da84cc:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
  da84d1:	48 8b 00             	mov    rax,QWORD PTR [rax]
  da84d4:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  da84d8:	48 83 f8 0d          	cmp    rax,0xd
  da84dc:	0f 87 fa 28 00 00    	ja     daaddc <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x615c>
  da84e2:	48 8d 0d df ad 2f ff 	lea    rcx,[rip+0xffffffffff2faddf]        # a32c8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30778>
  da84e9:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da84ed:	48 01 c8             	add    rax,rcx
  da84f0:	ff e0                	jmp    rax
  da84f2:	48 89 ee             	mov    rsi,rbp
  da84f5:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da84f9:	4c 89 e1             	mov    rcx,r12
  da84fc:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da8501:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da8506:	e8 35 ee fd ff       	call   d87340 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da850b:	49 89 ee             	mov    r14,rbp
  da850e:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da8514:	0f 83 de 09 00 00    	jae    da8ef8 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4278>
  da851a:	e9 e1 0b 00 00       	jmp    da9100 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da851f:	48 89 ee             	mov    rsi,rbp
  da8522:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8526:	e8 15 9f fe ff       	call   d92440 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da852b:	49 89 ee             	mov    r14,rbp
  da852e:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da8534:	0f 83 a6 01 00 00    	jae    da86e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3a60>
  da853a:	e9 c1 0b 00 00       	jmp    da9100 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da853f:	48 89 ee             	mov    rsi,rbp
  da8542:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8546:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da854b:	e8 70 65 fe ff       	call   d8eac0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8550:	49 89 ee             	mov    r14,rbp
  da8553:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da8559:	0f 83 81 01 00 00    	jae    da86e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3a60>
  da855f:	e9 9c 0b 00 00       	jmp    da9100 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da8564:	48 89 ee             	mov    rsi,rbp
  da8567:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da856b:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da8570:	e8 8b a9 ff ff       	call   da2f00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8575:	49 89 ee             	mov    r14,rbp
  da8578:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da857e:	0f 83 5c 01 00 00    	jae    da86e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3a60>
  da8584:	e9 77 0b 00 00       	jmp    da9100 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da8589:	48 89 ee             	mov    rsi,rbp
  da858c:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8590:	e8 ab 67 fe ff       	call   d8ed40 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8595:	49 89 ee             	mov    r14,rbp
  da8598:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da859e:	0f 83 3c 01 00 00    	jae    da86e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3a60>
  da85a4:	e9 57 0b 00 00       	jmp    da9100 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da85a9:	48 89 ee             	mov    rsi,rbp
  da85ac:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da85b0:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da85b5:	e8 c6 ea fd ff       	call   d87080 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da85ba:	49 89 ee             	mov    r14,rbp
  da85bd:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da85c3:	0f 83 17 01 00 00    	jae    da86e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3a60>
  da85c9:	e9 32 0b 00 00       	jmp    da9100 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da85ce:	48 89 ee             	mov    rsi,rbp
  da85d1:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da85d5:	e8 66 35 ff ff       	call   d9bb40 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da85da:	49 89 ee             	mov    r14,rbp
  da85dd:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da85e3:	0f 83 f7 00 00 00    	jae    da86e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3a60>
  da85e9:	e9 12 0b 00 00       	jmp    da9100 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da85ee:	48 89 ee             	mov    rsi,rbp
  da85f1:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da85f5:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da85fa:	e8 81 17 ff ff       	call   d99d80 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da85ff:	49 89 ee             	mov    r14,rbp
  da8602:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da8608:	0f 83 d2 00 00 00    	jae    da86e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3a60>
  da860e:	e9 ed 0a 00 00       	jmp    da9100 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da8613:	48 89 ee             	mov    rsi,rbp
  da8616:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da861a:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da861f:	e8 5c 17 fe ff       	call   d89d80 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8624:	49 89 ee             	mov    r14,rbp
  da8627:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da862d:	0f 83 ad 00 00 00    	jae    da86e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3a60>
  da8633:	e9 c8 0a 00 00       	jmp    da9100 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da8638:	48 89 ee             	mov    rsi,rbp
  da863b:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da863f:	e8 bc de fe ff       	call   d96500 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8644:	49 89 ee             	mov    r14,rbp
  da8647:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da864d:	0f 83 8d 00 00 00    	jae    da86e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3a60>
  da8653:	e9 a8 0a 00 00       	jmp    da9100 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da8658:	48 89 ee             	mov    rsi,rbp
  da865b:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da865f:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da8664:	e8 97 2c fe ff       	call   d8b300 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8669:	49 89 ee             	mov    r14,rbp
  da866c:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da8672:	73 6c                	jae    da86e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3a60>
  da8674:	e9 87 0a 00 00       	jmp    da9100 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da8679:	48 89 ee             	mov    rsi,rbp
  da867c:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8680:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da8685:	e8 36 a6 fd ff       	call   d82cc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da868a:	49 89 ee             	mov    r14,rbp
  da868d:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da8693:	73 4b                	jae    da86e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3a60>
  da8695:	e9 66 0a 00 00       	jmp    da9100 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da869a:	48 89 ee             	mov    rsi,rbp
  da869d:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da86a1:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da86a6:	e8 55 2d ff ff       	call   d9b400 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da86ab:	49 89 ee             	mov    r14,rbp
  da86ae:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da86b4:	73 2a                	jae    da86e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3a60>
  da86b6:	e9 45 0a 00 00       	jmp    da9100 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da86bb:	48 89 ee             	mov    rsi,rbp
  da86be:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da86c2:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da86c7:	e8 b4 ad fe ff       	call   d93480 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da86cc:	49 89 ee             	mov    r14,rbp
  da86cf:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da86d5:	0f 82 25 0a 00 00    	jb     da9100 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da86db:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  da86e0:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
  da86e5:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  da86e8:	4c 8b a4 24 70 01 00 	mov    r12,QWORD PTR [rsp+0x170]
  da86ef:	00 
  da86f0:	4c 8b 6c 24 58       	mov    r13,QWORD PTR [rsp+0x58]
  da86f5:	48 8b 44 24 78       	mov    rax,QWORD PTR [rsp+0x78]
  da86fa:	4c 8b bc 24 a0 00 00 	mov    r15,QWORD PTR [rsp+0xa0]
  da8701:	00 
  da8702:	eb 40                	jmp    da8744 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3ac4>
  da8704:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da8709:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da8710:	00 
  da8711:	4c 89 ff             	mov    rdi,r15
  da8714:	4c 89 f6             	mov    rsi,r14
  da8717:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da871b:	48 89 d9             	mov    rcx,rbx
  da871e:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da8725:	00 
  da8726:	e8 55 a8 f1 ff       	call   cc2f80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da872b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  da8730:	48 0f af dd          	imul   rbx,rbp
  da8734:	49 83 c5 18          	add    r13,0x18
  da8738:	4c 89 f0             	mov    rax,r14
  da873b:	49 ff cc             	dec    r12
  da873e:	0f 84 bc 09 00 00    	je     da9100 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da8744:	4d 89 fe             	mov    r14,r15
  da8747:	49 89 c7             	mov    r15,rax
  da874a:	49 8b 6d f8          	mov    rbp,QWORD PTR [r13-0x8]
  da874e:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  da8752:	4c 03 44 24 30       	add    r8,QWORD PTR [rsp+0x30]
  da8757:	48 89 6c 24 48       	mov    QWORD PTR [rsp+0x48],rbp
  da875c:	48 8d 45 fe          	lea    rax,[rbp-0x2]
  da8760:	48 83 f8 0e          	cmp    rax,0xe
  da8764:	0f 87 0b 26 00 00    	ja     daad75 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x60f5>
  da876a:	48 8d 0d 77 ac 2f ff 	lea    rcx,[rip+0xffffffffff2fac77]        # a33e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30898>
  da8771:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da8775:	48 01 c8             	add    rax,rcx
  da8778:	ff e0                	jmp    rax
  da877a:	4c 89 ff             	mov    rdi,r15
  da877d:	4c 89 f6             	mov    rsi,r14
  da8780:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8784:	48 89 d9             	mov    rcx,rbx
  da8787:	e8 b4 23 f1 ff       	call   cbab40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da878c:	eb a2                	jmp    da8730 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3ab0>
  da878e:	4c 89 ff             	mov    rdi,r15
  da8791:	4c 89 f6             	mov    rsi,r14
  da8794:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8798:	48 89 d9             	mov    rcx,rbx
  da879b:	e8 20 6e f1 ff       	call   cbf5c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da87a0:	eb 8e                	jmp    da8730 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3ab0>
  da87a2:	4c 89 ff             	mov    rdi,r15
  da87a5:	4c 89 f6             	mov    rsi,r14
  da87a8:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da87ac:	48 89 d9             	mov    rcx,rbx
  da87af:	e8 0c 2d f1 ff       	call   cbb4c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da87b4:	e9 77 ff ff ff       	jmp    da8730 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3ab0>
  da87b9:	4c 89 ff             	mov    rdi,r15
  da87bc:	4c 89 f6             	mov    rsi,r14
  da87bf:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da87c3:	48 89 d9             	mov    rcx,rbx
  da87c6:	e8 35 83 f1 ff       	call   cc0b00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da87cb:	e9 60 ff ff ff       	jmp    da8730 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3ab0>
  da87d0:	4c 89 ff             	mov    rdi,r15
  da87d3:	4c 89 f6             	mov    rsi,r14
  da87d6:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da87da:	48 89 d9             	mov    rcx,rbx
  da87dd:	e8 5e 51 f1 ff       	call   cbd940 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da87e2:	e9 49 ff ff ff       	jmp    da8730 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3ab0>
  da87e7:	4c 89 ff             	mov    rdi,r15
  da87ea:	4c 89 f6             	mov    rsi,r14
  da87ed:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da87f1:	48 89 d9             	mov    rcx,rbx
  da87f4:	e8 c7 26 f1 ff       	call   cbaec0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da87f9:	e9 32 ff ff ff       	jmp    da8730 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3ab0>
  da87fe:	4c 89 ff             	mov    rdi,r15
  da8801:	4c 89 f6             	mov    rsi,r14
  da8804:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8808:	48 89 d9             	mov    rcx,rbx
  da880b:	e8 30 29 f1 ff       	call   cbb140 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8810:	e9 1b ff ff ff       	jmp    da8730 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3ab0>
  da8815:	4c 89 ff             	mov    rdi,r15
  da8818:	4c 89 f6             	mov    rsi,r14
  da881b:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da881f:	48 89 d9             	mov    rcx,rbx
  da8822:	e8 99 3d f1 ff       	call   cbc5c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8827:	e9 04 ff ff ff       	jmp    da8730 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3ab0>
  da882c:	4c 89 ff             	mov    rdi,r15
  da882f:	4c 89 f6             	mov    rsi,r14
  da8832:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8836:	48 89 d9             	mov    rcx,rbx
  da8839:	e8 42 24 f1 ff       	call   cbac80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da883e:	e9 ed fe ff ff       	jmp    da8730 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3ab0>
  da8843:	4c 89 ff             	mov    rdi,r15
  da8846:	4c 89 f6             	mov    rsi,r14
  da8849:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da884d:	48 89 d9             	mov    rcx,rbx
  da8850:	e8 ab 30 f1 ff       	call   cbb900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8855:	e9 d6 fe ff ff       	jmp    da8730 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3ab0>
  da885a:	4c 89 ff             	mov    rdi,r15
  da885d:	4c 89 f6             	mov    rsi,r14
  da8860:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8864:	48 89 d9             	mov    rcx,rbx
  da8867:	e8 94 94 f1 ff       	call   cc1d00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da886c:	e9 bf fe ff ff       	jmp    da8730 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3ab0>
  da8871:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da8876:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da887d:	00 
  da887e:	4c 89 ff             	mov    rdi,r15
  da8881:	4c 89 f6             	mov    rsi,r14
  da8884:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8888:	48 89 d9             	mov    rcx,rbx
  da888b:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da8892:	00 
  da8893:	e8 28 37 f1 ff       	call   cbbfc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8898:	e9 93 fe ff ff       	jmp    da8730 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3ab0>
  da889d:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da88a2:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da88a9:	00 
  da88aa:	4c 89 ff             	mov    rdi,r15
  da88ad:	4c 89 f6             	mov    rsi,r14
  da88b0:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da88b4:	48 89 d9             	mov    rcx,rbx
  da88b7:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da88be:	00 
  da88bf:	e8 bc 60 f1 ff       	call   cbe980 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da88c4:	e9 67 fe ff ff       	jmp    da8730 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3ab0>
  da88c9:	4c 89 ff             	mov    rdi,r15
  da88cc:	4c 89 f6             	mov    rsi,r14
  da88cf:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da88d3:	48 89 d9             	mov    rcx,rbx
  da88d6:	e8 25 46 f1 ff       	call   cbcf00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da88db:	e9 50 fe ff ff       	jmp    da8730 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3ab0>
  da88e0:	48 89 ee             	mov    rsi,rbp
  da88e3:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da88e7:	4c 89 e1             	mov    rcx,r12
  da88ea:	e8 91 b2 ff ff       	call   da3b80 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da88ef:	49 89 ee             	mov    r14,rbp
  da88f2:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da88f8:	0f 83 d5 03 00 00    	jae    da8cd3 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4053>
  da88fe:	e9 fd 07 00 00       	jmp    da9100 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da8903:	48 89 ee             	mov    rsi,rbp
  da8906:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da890a:	4c 89 e1             	mov    rcx,r12
  da890d:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da8912:	e8 a9 80 ff ff       	call   da09c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8917:	49 89 ee             	mov    r14,rbp
  da891a:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da8920:	0f 83 d2 05 00 00    	jae    da8ef8 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4278>
  da8926:	e9 d5 07 00 00       	jmp    da9100 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da892b:	48 89 ee             	mov    rsi,rbp
  da892e:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8932:	4c 89 e1             	mov    rcx,r12
  da8935:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da893a:	e8 c1 78 ff ff       	call   da0200 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da893f:	49 89 ee             	mov    r14,rbp
  da8942:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da8948:	0f 83 85 03 00 00    	jae    da8cd3 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4053>
  da894e:	e9 ad 07 00 00       	jmp    da9100 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da8953:	48 89 ee             	mov    rsi,rbp
  da8956:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da895a:	4c 89 e1             	mov    rcx,r12
  da895d:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da8962:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da8967:	e8 94 62 ff ff       	call   d9ec00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da896c:	49 89 ee             	mov    r14,rbp
  da896f:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da8975:	0f 83 7d 05 00 00    	jae    da8ef8 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4278>
  da897b:	e9 80 07 00 00       	jmp    da9100 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da8980:	48 89 ee             	mov    rsi,rbp
  da8983:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8987:	4c 89 e1             	mov    rcx,r12
  da898a:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da898f:	e8 2c 07 ff ff       	call   d990c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8994:	49 89 ee             	mov    r14,rbp
  da8997:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da899d:	0f 83 30 03 00 00    	jae    da8cd3 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4053>
  da89a3:	e9 58 07 00 00       	jmp    da9100 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da89a8:	48 89 ee             	mov    rsi,rbp
  da89ab:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da89af:	4c 89 e1             	mov    rcx,r12
  da89b2:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da89b7:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da89bc:	e8 3f f4 fe ff       	call   d97e00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da89c1:	49 89 ee             	mov    r14,rbp
  da89c4:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da89ca:	0f 83 28 05 00 00    	jae    da8ef8 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4278>
  da89d0:	e9 2b 07 00 00       	jmp    da9100 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da89d5:	48 89 ee             	mov    rsi,rbp
  da89d8:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da89dc:	4c 89 e1             	mov    rcx,r12
  da89df:	e8 5c 07 fe ff       	call   d89140 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da89e4:	49 89 ee             	mov    r14,rbp
  da89e7:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da89ed:	0f 83 e0 02 00 00    	jae    da8cd3 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4053>
  da89f3:	e9 08 07 00 00       	jmp    da9100 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da89f8:	48 89 ee             	mov    rsi,rbp
  da89fb:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da89ff:	4c 89 e1             	mov    rcx,r12
  da8a02:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da8a07:	e8 b4 b0 fe ff       	call   d93ac0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8a0c:	49 89 ee             	mov    r14,rbp
  da8a0f:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da8a15:	0f 83 dd 04 00 00    	jae    da8ef8 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4278>
  da8a1b:	e9 e0 06 00 00       	jmp    da9100 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da8a20:	48 89 ee             	mov    rsi,rbp
  da8a23:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8a27:	4c 89 e1             	mov    rcx,r12
  da8a2a:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da8a2f:	e8 4c 60 ff ff       	call   d9ea80 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8a34:	49 89 ee             	mov    r14,rbp
  da8a37:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da8a3d:	0f 83 90 02 00 00    	jae    da8cd3 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4053>
  da8a43:	e9 b8 06 00 00       	jmp    da9100 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da8a48:	48 89 ee             	mov    rsi,rbp
  da8a4b:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8a4f:	4c 89 e1             	mov    rcx,r12
  da8a52:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da8a57:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da8a5c:	e8 9f 85 fd ff       	call   d81000 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8a61:	49 89 ee             	mov    r14,rbp
  da8a64:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da8a6a:	0f 83 88 04 00 00    	jae    da8ef8 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4278>
  da8a70:	e9 8b 06 00 00       	jmp    da9100 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da8a75:	48 89 ee             	mov    rsi,rbp
  da8a78:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8a7c:	4c 89 e1             	mov    rcx,r12
  da8a7f:	e8 bc 3e ff ff       	call   d9c940 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8a84:	49 89 ee             	mov    r14,rbp
  da8a87:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da8a8d:	0f 83 40 02 00 00    	jae    da8cd3 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4053>
  da8a93:	e9 68 06 00 00       	jmp    da9100 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da8a98:	48 89 ee             	mov    rsi,rbp
  da8a9b:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8a9f:	4c 89 e1             	mov    rcx,r12
  da8aa2:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da8aa7:	e8 54 d5 fe ff       	call   d96000 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8aac:	49 89 ee             	mov    r14,rbp
  da8aaf:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da8ab5:	0f 83 3d 04 00 00    	jae    da8ef8 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4278>
  da8abb:	e9 40 06 00 00       	jmp    da9100 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da8ac0:	48 89 ee             	mov    rsi,rbp
  da8ac3:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8ac7:	4c 89 e1             	mov    rcx,r12
  da8aca:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da8acf:	e8 ec 94 fd ff       	call   d81fc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8ad4:	49 89 ee             	mov    r14,rbp
  da8ad7:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da8add:	0f 83 f0 01 00 00    	jae    da8cd3 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4053>
  da8ae3:	e9 18 06 00 00       	jmp    da9100 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da8ae8:	48 89 ee             	mov    rsi,rbp
  da8aeb:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8aef:	4c 89 e1             	mov    rcx,r12
  da8af2:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da8af7:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da8afc:	e8 3f 74 fe ff       	call   d8ff40 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8b01:	49 89 ee             	mov    r14,rbp
  da8b04:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da8b0a:	0f 83 e8 03 00 00    	jae    da8ef8 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4278>
  da8b10:	e9 eb 05 00 00       	jmp    da9100 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da8b15:	48 89 ee             	mov    rsi,rbp
  da8b18:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8b1c:	4c 89 e1             	mov    rcx,r12
  da8b1f:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da8b24:	e8 97 75 ff ff       	call   da00c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8b29:	49 89 ee             	mov    r14,rbp
  da8b2c:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da8b32:	0f 83 9b 01 00 00    	jae    da8cd3 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4053>
  da8b38:	e9 c3 05 00 00       	jmp    da9100 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da8b3d:	48 89 ee             	mov    rsi,rbp
  da8b40:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8b44:	4c 89 e1             	mov    rcx,r12
  da8b47:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da8b4c:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da8b51:	e8 2a 66 ff ff       	call   d9f180 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8b56:	49 89 ee             	mov    r14,rbp
  da8b59:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da8b5f:	0f 83 93 03 00 00    	jae    da8ef8 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4278>
  da8b65:	e9 96 05 00 00       	jmp    da9100 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da8b6a:	48 89 ee             	mov    rsi,rbp
  da8b6d:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8b71:	4c 89 e1             	mov    rcx,r12
  da8b74:	e8 47 40 ff ff       	call   d9cbc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8b79:	49 89 ee             	mov    r14,rbp
  da8b7c:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da8b82:	0f 83 4b 01 00 00    	jae    da8cd3 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4053>
  da8b88:	e9 73 05 00 00       	jmp    da9100 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da8b8d:	48 89 ee             	mov    rsi,rbp
  da8b90:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8b94:	4c 89 e1             	mov    rcx,r12
  da8b97:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da8b9c:	e8 1f 34 fe ff       	call   d8bfc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8ba1:	49 89 ee             	mov    r14,rbp
  da8ba4:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da8baa:	0f 83 48 03 00 00    	jae    da8ef8 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4278>
  da8bb0:	e9 4b 05 00 00       	jmp    da9100 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da8bb5:	48 89 ee             	mov    rsi,rbp
  da8bb8:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8bbc:	4c 89 e1             	mov    rcx,r12
  da8bbf:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da8bc4:	e8 37 b0 fd ff       	call   d83c00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8bc9:	49 89 ee             	mov    r14,rbp
  da8bcc:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da8bd2:	0f 83 fb 00 00 00    	jae    da8cd3 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4053>
  da8bd8:	e9 23 05 00 00       	jmp    da9100 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da8bdd:	48 89 ee             	mov    rsi,rbp
  da8be0:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8be4:	4c 89 e1             	mov    rcx,r12
  da8be7:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da8bec:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da8bf1:	e8 0a e9 fd ff       	call   d87500 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8bf6:	49 89 ee             	mov    r14,rbp
  da8bf9:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da8bff:	0f 83 f3 02 00 00    	jae    da8ef8 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4278>
  da8c05:	e9 f6 04 00 00       	jmp    da9100 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da8c0a:	48 89 ee             	mov    rsi,rbp
  da8c0d:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8c11:	4c 89 e1             	mov    rcx,r12
  da8c14:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da8c19:	e8 a2 70 ff ff       	call   d9fcc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8c1e:	49 89 ee             	mov    r14,rbp
  da8c21:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da8c27:	0f 83 a6 00 00 00    	jae    da8cd3 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4053>
  da8c2d:	e9 ce 04 00 00       	jmp    da9100 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da8c32:	48 89 ee             	mov    rsi,rbp
  da8c35:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8c39:	4c 89 e1             	mov    rcx,r12
  da8c3c:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da8c41:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da8c46:	e8 35 9b ff ff       	call   da2780 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8c4b:	49 89 ee             	mov    r14,rbp
  da8c4e:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da8c54:	0f 83 9e 02 00 00    	jae    da8ef8 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4278>
  da8c5a:	e9 a1 04 00 00       	jmp    da9100 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da8c5f:	48 89 ee             	mov    rsi,rbp
  da8c62:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8c66:	4c 89 e1             	mov    rcx,r12
  da8c69:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da8c6e:	e8 cd fc fd ff       	call   d88940 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8c73:	49 89 ee             	mov    r14,rbp
  da8c76:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da8c7c:	73 55                	jae    da8cd3 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4053>
  da8c7e:	e9 7d 04 00 00       	jmp    da9100 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da8c83:	48 89 ee             	mov    rsi,rbp
  da8c86:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8c8a:	4c 89 e1             	mov    rcx,r12
  da8c8d:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da8c92:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da8c97:	e8 64 3b fe ff       	call   d8c800 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8c9c:	49 89 ee             	mov    r14,rbp
  da8c9f:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da8ca5:	0f 83 4d 02 00 00    	jae    da8ef8 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4278>
  da8cab:	e9 50 04 00 00       	jmp    da9100 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da8cb0:	48 89 ee             	mov    rsi,rbp
  da8cb3:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8cb7:	4c 89 e1             	mov    rcx,r12
  da8cba:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da8cbf:	e8 bc 6b fe ff       	call   d8f880 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8cc4:	49 89 ee             	mov    r14,rbp
  da8cc7:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da8ccd:	0f 82 2d 04 00 00    	jb     da9100 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da8cd3:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
  da8cd8:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  da8cdb:	4c 8b a4 24 70 01 00 	mov    r12,QWORD PTR [rsp+0x170]
  da8ce2:	00 
  da8ce3:	4c 8b 6c 24 58       	mov    r13,QWORD PTR [rsp+0x58]
  da8ce8:	48 8b 44 24 78       	mov    rax,QWORD PTR [rsp+0x78]
  da8ced:	4c 8b bc 24 a0 00 00 	mov    r15,QWORD PTR [rsp+0xa0]
  da8cf4:	00 
  da8cf5:	eb 3d                	jmp    da8d34 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x40b4>
  da8cf7:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da8cfc:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da8d03:	00 
  da8d04:	4c 89 ff             	mov    rdi,r15
  da8d07:	4c 89 f6             	mov    rsi,r14
  da8d0a:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8d0e:	48 89 d9             	mov    rcx,rbx
  da8d11:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da8d18:	00 
  da8d19:	e8 62 a2 f1 ff       	call   cc2f80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8d1e:	66 90                	xchg   ax,ax
  da8d20:	48 0f af dd          	imul   rbx,rbp
  da8d24:	49 83 c5 18          	add    r13,0x18
  da8d28:	4c 89 f0             	mov    rax,r14
  da8d2b:	49 ff cc             	dec    r12
  da8d2e:	0f 84 cc 03 00 00    	je     da9100 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da8d34:	4d 89 fe             	mov    r14,r15
  da8d37:	49 89 c7             	mov    r15,rax
  da8d3a:	49 8b 6d f8          	mov    rbp,QWORD PTR [r13-0x8]
  da8d3e:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  da8d42:	4c 03 44 24 30       	add    r8,QWORD PTR [rsp+0x30]
  da8d47:	48 89 6c 24 48       	mov    QWORD PTR [rsp+0x48],rbp
  da8d4c:	48 8d 45 fe          	lea    rax,[rbp-0x2]
  da8d50:	48 83 f8 0e          	cmp    rax,0xe
  da8d54:	0f 87 1b 20 00 00    	ja     daad75 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x60f5>
  da8d5a:	48 8d 0d 13 a6 2f ff 	lea    rcx,[rip+0xffffffffff2fa613]        # a3374 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30824>
  da8d61:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da8d65:	48 01 c8             	add    rax,rcx
  da8d68:	ff e0                	jmp    rax
  da8d6a:	4c 89 ff             	mov    rdi,r15
  da8d6d:	4c 89 f6             	mov    rsi,r14
  da8d70:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8d74:	48 89 d9             	mov    rcx,rbx
  da8d77:	e8 c4 1d f1 ff       	call   cbab40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8d7c:	eb a2                	jmp    da8d20 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x40a0>
  da8d7e:	4c 89 ff             	mov    rdi,r15
  da8d81:	4c 89 f6             	mov    rsi,r14
  da8d84:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8d88:	48 89 d9             	mov    rcx,rbx
  da8d8b:	e8 30 68 f1 ff       	call   cbf5c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8d90:	eb 8e                	jmp    da8d20 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x40a0>
  da8d92:	4c 89 ff             	mov    rdi,r15
  da8d95:	4c 89 f6             	mov    rsi,r14
  da8d98:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8d9c:	48 89 d9             	mov    rcx,rbx
  da8d9f:	e8 1c 27 f1 ff       	call   cbb4c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8da4:	e9 77 ff ff ff       	jmp    da8d20 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x40a0>
  da8da9:	4c 89 ff             	mov    rdi,r15
  da8dac:	4c 89 f6             	mov    rsi,r14
  da8daf:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8db3:	48 89 d9             	mov    rcx,rbx
  da8db6:	e8 45 7d f1 ff       	call   cc0b00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8dbb:	e9 60 ff ff ff       	jmp    da8d20 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x40a0>
  da8dc0:	4c 89 ff             	mov    rdi,r15
  da8dc3:	4c 89 f6             	mov    rsi,r14
  da8dc6:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8dca:	48 89 d9             	mov    rcx,rbx
  da8dcd:	e8 6e 4b f1 ff       	call   cbd940 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8dd2:	e9 49 ff ff ff       	jmp    da8d20 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x40a0>
  da8dd7:	4c 89 ff             	mov    rdi,r15
  da8dda:	4c 89 f6             	mov    rsi,r14
  da8ddd:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8de1:	48 89 d9             	mov    rcx,rbx
  da8de4:	e8 d7 20 f1 ff       	call   cbaec0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8de9:	e9 32 ff ff ff       	jmp    da8d20 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x40a0>
  da8dee:	4c 89 ff             	mov    rdi,r15
  da8df1:	4c 89 f6             	mov    rsi,r14
  da8df4:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8df8:	48 89 d9             	mov    rcx,rbx
  da8dfb:	e8 40 23 f1 ff       	call   cbb140 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8e00:	e9 1b ff ff ff       	jmp    da8d20 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x40a0>
  da8e05:	4c 89 ff             	mov    rdi,r15
  da8e08:	4c 89 f6             	mov    rsi,r14
  da8e0b:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8e0f:	48 89 d9             	mov    rcx,rbx
  da8e12:	e8 a9 37 f1 ff       	call   cbc5c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8e17:	e9 04 ff ff ff       	jmp    da8d20 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x40a0>
  da8e1c:	4c 89 ff             	mov    rdi,r15
  da8e1f:	4c 89 f6             	mov    rsi,r14
  da8e22:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8e26:	48 89 d9             	mov    rcx,rbx
  da8e29:	e8 52 1e f1 ff       	call   cbac80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8e2e:	e9 ed fe ff ff       	jmp    da8d20 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x40a0>
  da8e33:	4c 89 ff             	mov    rdi,r15
  da8e36:	4c 89 f6             	mov    rsi,r14
  da8e39:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8e3d:	48 89 d9             	mov    rcx,rbx
  da8e40:	e8 bb 2a f1 ff       	call   cbb900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8e45:	e9 d6 fe ff ff       	jmp    da8d20 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x40a0>
  da8e4a:	4c 89 ff             	mov    rdi,r15
  da8e4d:	4c 89 f6             	mov    rsi,r14
  da8e50:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8e54:	48 89 d9             	mov    rcx,rbx
  da8e57:	e8 a4 8e f1 ff       	call   cc1d00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8e5c:	e9 bf fe ff ff       	jmp    da8d20 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x40a0>
  da8e61:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da8e66:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da8e6d:	00 
  da8e6e:	4c 89 ff             	mov    rdi,r15
  da8e71:	4c 89 f6             	mov    rsi,r14
  da8e74:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8e78:	48 89 d9             	mov    rcx,rbx
  da8e7b:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da8e82:	00 
  da8e83:	e8 38 31 f1 ff       	call   cbbfc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8e88:	e9 93 fe ff ff       	jmp    da8d20 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x40a0>
  da8e8d:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da8e92:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da8e99:	00 
  da8e9a:	4c 89 ff             	mov    rdi,r15
  da8e9d:	4c 89 f6             	mov    rsi,r14
  da8ea0:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8ea4:	48 89 d9             	mov    rcx,rbx
  da8ea7:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da8eae:	00 
  da8eaf:	e8 cc 5a f1 ff       	call   cbe980 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8eb4:	e9 67 fe ff ff       	jmp    da8d20 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x40a0>
  da8eb9:	4c 89 ff             	mov    rdi,r15
  da8ebc:	4c 89 f6             	mov    rsi,r14
  da8ebf:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8ec3:	48 89 d9             	mov    rcx,rbx
  da8ec6:	e8 35 40 f1 ff       	call   cbcf00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8ecb:	e9 50 fe ff ff       	jmp    da8d20 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x40a0>
  da8ed0:	48 89 ee             	mov    rsi,rbp
  da8ed3:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8ed7:	4c 89 e1             	mov    rcx,r12
  da8eda:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da8edf:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da8ee4:	e8 97 2e ff ff       	call   d9bd80 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8ee9:	49 89 ee             	mov    r14,rbp
  da8eec:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da8ef2:	0f 82 08 02 00 00    	jb     da9100 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da8ef8:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
  da8efd:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  da8f00:	4c 8b a4 24 70 01 00 	mov    r12,QWORD PTR [rsp+0x170]
  da8f07:	00 
  da8f08:	4c 8b 6c 24 58       	mov    r13,QWORD PTR [rsp+0x58]
  da8f0d:	48 8b 44 24 78       	mov    rax,QWORD PTR [rsp+0x78]
  da8f12:	4c 8b bc 24 a0 00 00 	mov    r15,QWORD PTR [rsp+0xa0]
  da8f19:	00 
  da8f1a:	eb 48                	jmp    da8f64 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x42e4>
  da8f1c:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da8f21:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da8f28:	00 
  da8f29:	4c 89 ff             	mov    rdi,r15
  da8f2c:	4c 89 f6             	mov    rsi,r14
  da8f2f:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8f33:	48 89 d9             	mov    rcx,rbx
  da8f36:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da8f3d:	00 
  da8f3e:	e8 3d a0 f1 ff       	call   cc2f80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8f43:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  da8f4a:	84 00 00 00 00 00 
  da8f50:	48 0f af dd          	imul   rbx,rbp
  da8f54:	49 83 c5 18          	add    r13,0x18
  da8f58:	4c 89 f0             	mov    rax,r14
  da8f5b:	49 ff cc             	dec    r12
  da8f5e:	0f 84 9c 01 00 00    	je     da9100 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da8f64:	4d 89 fe             	mov    r14,r15
  da8f67:	49 89 c7             	mov    r15,rax
  da8f6a:	49 8b 6d f8          	mov    rbp,QWORD PTR [r13-0x8]
  da8f6e:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  da8f72:	4c 03 44 24 30       	add    r8,QWORD PTR [rsp+0x30]
  da8f77:	48 89 6c 24 48       	mov    QWORD PTR [rsp+0x48],rbp
  da8f7c:	48 8d 45 fe          	lea    rax,[rbp-0x2]
  da8f80:	48 83 f8 0e          	cmp    rax,0xe
  da8f84:	0f 87 eb 1d 00 00    	ja     daad75 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x60f5>
  da8f8a:	48 8d 0d 6f a3 2f ff 	lea    rcx,[rip+0xffffffffff2fa36f]        # a3300 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x307b0>
  da8f91:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da8f95:	48 01 c8             	add    rax,rcx
  da8f98:	ff e0                	jmp    rax
  da8f9a:	4c 89 ff             	mov    rdi,r15
  da8f9d:	4c 89 f6             	mov    rsi,r14
  da8fa0:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8fa4:	48 89 d9             	mov    rcx,rbx
  da8fa7:	e8 94 1b f1 ff       	call   cbab40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8fac:	eb a2                	jmp    da8f50 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x42d0>
  da8fae:	4c 89 ff             	mov    rdi,r15
  da8fb1:	4c 89 f6             	mov    rsi,r14
  da8fb4:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8fb8:	48 89 d9             	mov    rcx,rbx
  da8fbb:	e8 00 66 f1 ff       	call   cbf5c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8fc0:	eb 8e                	jmp    da8f50 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x42d0>
  da8fc2:	4c 89 ff             	mov    rdi,r15
  da8fc5:	4c 89 f6             	mov    rsi,r14
  da8fc8:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8fcc:	48 89 d9             	mov    rcx,rbx
  da8fcf:	e8 ec 24 f1 ff       	call   cbb4c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8fd4:	e9 77 ff ff ff       	jmp    da8f50 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x42d0>
  da8fd9:	4c 89 ff             	mov    rdi,r15
  da8fdc:	4c 89 f6             	mov    rsi,r14
  da8fdf:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8fe3:	48 89 d9             	mov    rcx,rbx
  da8fe6:	e8 15 7b f1 ff       	call   cc0b00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8feb:	e9 60 ff ff ff       	jmp    da8f50 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x42d0>
  da8ff0:	4c 89 ff             	mov    rdi,r15
  da8ff3:	4c 89 f6             	mov    rsi,r14
  da8ff6:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da8ffa:	48 89 d9             	mov    rcx,rbx
  da8ffd:	e8 3e 49 f1 ff       	call   cbd940 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da9002:	e9 49 ff ff ff       	jmp    da8f50 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x42d0>
  da9007:	4c 89 ff             	mov    rdi,r15
  da900a:	4c 89 f6             	mov    rsi,r14
  da900d:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da9011:	48 89 d9             	mov    rcx,rbx
  da9014:	e8 a7 1e f1 ff       	call   cbaec0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da9019:	e9 32 ff ff ff       	jmp    da8f50 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x42d0>
  da901e:	4c 89 ff             	mov    rdi,r15
  da9021:	4c 89 f6             	mov    rsi,r14
  da9024:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da9028:	48 89 d9             	mov    rcx,rbx
  da902b:	e8 10 21 f1 ff       	call   cbb140 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da9030:	e9 1b ff ff ff       	jmp    da8f50 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x42d0>
  da9035:	4c 89 ff             	mov    rdi,r15
  da9038:	4c 89 f6             	mov    rsi,r14
  da903b:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da903f:	48 89 d9             	mov    rcx,rbx
  da9042:	e8 79 35 f1 ff       	call   cbc5c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da9047:	e9 04 ff ff ff       	jmp    da8f50 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x42d0>
  da904c:	4c 89 ff             	mov    rdi,r15
  da904f:	4c 89 f6             	mov    rsi,r14
  da9052:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da9056:	48 89 d9             	mov    rcx,rbx
  da9059:	e8 22 1c f1 ff       	call   cbac80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da905e:	e9 ed fe ff ff       	jmp    da8f50 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x42d0>
  da9063:	4c 89 ff             	mov    rdi,r15
  da9066:	4c 89 f6             	mov    rsi,r14
  da9069:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da906d:	48 89 d9             	mov    rcx,rbx
  da9070:	e8 8b 28 f1 ff       	call   cbb900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da9075:	e9 d6 fe ff ff       	jmp    da8f50 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x42d0>
  da907a:	4c 89 ff             	mov    rdi,r15
  da907d:	4c 89 f6             	mov    rsi,r14
  da9080:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da9084:	48 89 d9             	mov    rcx,rbx
  da9087:	e8 74 8c f1 ff       	call   cc1d00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da908c:	e9 bf fe ff ff       	jmp    da8f50 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x42d0>
  da9091:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da9096:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da909d:	00 
  da909e:	4c 89 ff             	mov    rdi,r15
  da90a1:	4c 89 f6             	mov    rsi,r14
  da90a4:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da90a8:	48 89 d9             	mov    rcx,rbx
  da90ab:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da90b2:	00 
  da90b3:	e8 08 2f f1 ff       	call   cbbfc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da90b8:	e9 93 fe ff ff       	jmp    da8f50 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x42d0>
  da90bd:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da90c2:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da90c9:	00 
  da90ca:	4c 89 ff             	mov    rdi,r15
  da90cd:	4c 89 f6             	mov    rsi,r14
  da90d0:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da90d4:	48 89 d9             	mov    rcx,rbx
  da90d7:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da90de:	00 
  da90df:	e8 9c 58 f1 ff       	call   cbe980 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da90e4:	e9 67 fe ff ff       	jmp    da8f50 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x42d0>
  da90e9:	4c 89 ff             	mov    rdi,r15
  da90ec:	4c 89 f6             	mov    rsi,r14
  da90ef:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da90f3:	48 89 d9             	mov    rcx,rbx
  da90f6:	e8 05 3e f1 ff       	call   cbcf00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da90fb:	e9 50 fe ff ff       	jmp    da8f50 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x42d0>
  da9100:	48 83 3c 24 00       	cmp    QWORD PTR [rsp],0x0
  da9105:	4c 8b 64 24 08       	mov    r12,QWORD PTR [rsp+0x8]
  da910a:	4c 8d ac 24 10 01 00 	lea    r13,[rsp+0x110]
  da9111:	00 
  da9112:	48 8b ac 24 98 00 00 	mov    rbp,QWORD PTR [rsp+0x98]
  da9119:	00 
  da911a:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
  da911f:	0f 84 5b f2 ff ff    	je     da8380 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3700>
  da9125:	80 7c 24 38 00       	cmp    BYTE PTR [rsp+0x38],0x0
  da912a:	74 44                	je     da9170 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x44f0>
  da912c:	49 83 c6 10          	add    r14,0x10
  da9130:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
  da9134:	48 8b 8c 24 c0 00 00 	mov    rcx,QWORD PTR [rsp+0xc0]
  da913b:	00 
  da913c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  da9140:	41 0f 10 46 f0       	movups xmm0,XMMWORD PTR [r14-0x10]
  da9145:	41 0f 10 0e          	movups xmm1,XMMWORD PTR [r14]
  da9149:	0f 28 d1             	movaps xmm2,xmm1
  da914c:	0f 14 d0             	unpcklps xmm2,xmm0
  da914f:	0f 15 c8             	unpckhps xmm1,xmm0
  da9152:	0f 2b 11             	movntps XMMWORD PTR [rcx],xmm2
  da9155:	48 8d 51 10          	lea    rdx,[rcx+0x10]
  da9159:	0f 2b 0a             	movntps XMMWORD PTR [rdx],xmm1
  da915c:	48 01 e9             	add    rcx,rbp
  da915f:	49 83 c6 20          	add    r14,0x20
  da9163:	48 ff c8             	dec    rax
  da9166:	75 d8                	jne    da9140 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x44c0>
  da9168:	e9 13 f2 ff ff       	jmp    da8380 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3700>
  da916d:	0f 1f 00             	nop    DWORD PTR [rax]
  da9170:	48 c1 64 24 20 03    	shl    QWORD PTR [rsp+0x20],0x3
  da9176:	49 83 c6 10          	add    r14,0x10
  da917a:	4c 8b 3c 24          	mov    r15,QWORD PTR [rsp]
  da917e:	48 8b 9c 24 c0 00 00 	mov    rbx,QWORD PTR [rsp+0xc0]
  da9185:	00 
  da9186:	eb 1f                	jmp    da91a7 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4527>
  da9188:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  da918f:	00 
  da9190:	0f 11 0b             	movups XMMWORD PTR [rbx],xmm1
  da9193:	0f 11 43 10          	movups XMMWORD PTR [rbx+0x10],xmm0
  da9197:	48 01 eb             	add    rbx,rbp
  da919a:	49 83 c6 20          	add    r14,0x20
  da919e:	49 ff cf             	dec    r15
  da91a1:	0f 84 d9 f1 ff ff    	je     da8380 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3700>
  da91a7:	41 0f 10 56 f0       	movups xmm2,XMMWORD PTR [r14-0x10]
  da91ac:	41 0f 10 06          	movups xmm0,XMMWORD PTR [r14]
  da91b0:	0f 28 c8             	movaps xmm1,xmm0
  da91b3:	0f 14 ca             	unpcklps xmm1,xmm2
  da91b6:	0f 15 c2             	unpckhps xmm0,xmm2
  da91b9:	48 83 f8 03          	cmp    rax,0x3
  da91bd:	77 d1                	ja     da9190 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4510>
  da91bf:	0f 57 d2             	xorps  xmm2,xmm2
  da91c2:	41 0f 29 55 50       	movaps XMMWORD PTR [r13+0x50],xmm2
  da91c7:	41 0f 29 55 40       	movaps XMMWORD PTR [r13+0x40],xmm2
  da91cc:	41 0f 29 55 30       	movaps XMMWORD PTR [r13+0x30],xmm2
  da91d1:	41 0f 29 55 20       	movaps XMMWORD PTR [r13+0x20],xmm2
  da91d6:	41 0f 29 55 10       	movaps XMMWORD PTR [r13+0x10],xmm2
  da91db:	41 0f 29 55 00       	movaps XMMWORD PTR [r13+0x0],xmm2
  da91e0:	0f 29 8c 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm1
  da91e7:	00 
  da91e8:	0f 29 84 24 00 01 00 	movaps XMMWORD PTR [rsp+0x100],xmm0
  da91ef:	00 
  da91f0:	48 89 df             	mov    rdi,rbx
  da91f3:	48 8d b4 24 f0 00 00 	lea    rsi,[rsp+0xf0]
  da91fa:	00 
  da91fb:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  da9200:	ff 15 da 44 4a 00    	call   QWORD PTR [rip+0x4a44da]        # 124d6e0 <memcpy@GLIBC_2.14>
  da9206:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
  da920b:	eb 8a                	jmp    da9197 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4517>
  da920d:	80 7c 24 38 00       	cmp    BYTE PTR [rsp+0x38],0x0
  da9212:	74 03                	je     da9217 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4597>
  da9214:	0f ae f8             	sfence
  da9217:	48 81 c4 48 02 00 00 	add    rsp,0x248
  da921e:	5b                   	pop    rbx
  da921f:	41 5c                	pop    r12
  da9221:	41 5d                	pop    r13
  da9223:	41 5e                	pop    r14
  da9225:	41 5f                	pop    r15
  da9227:	5d                   	pop    rbp
  da9228:	c3                   	ret
  da9229:	89 d8                	mov    eax,ebx
  da922b:	31 d2                	xor    edx,edx
  da922d:	41 f7 f7             	div    r15d
  da9230:	48 8b b4 24 d8 00 00 	mov    rsi,QWORD PTR [rsp+0xd8]
  da9237:	00 
  da9238:	48 8d 0c f1          	lea    rcx,[rcx+rsi*8]
  da923c:	48 89 4c 24 38       	mov    QWORD PTR [rsp+0x38],rcx
  da9241:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [rsp+0x60]
  da9246:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  da924a:	0f 29 44 24 60       	movaps XMMWORD PTR [rsp+0x60],xmm0
  da924f:	31 c9                	xor    ecx,ecx
  da9251:	48 85 d2             	test   rdx,rdx
  da9254:	0f 95 c1             	setne  cl
  da9257:	48 01 c1             	add    rcx,rax
  da925a:	48 89 8c 24 98 01 00 	mov    QWORD PTR [rsp+0x198],rcx
  da9261:	00 
  da9262:	4c 89 84 24 b0 00 00 	mov    QWORD PTR [rsp+0xb0],r8
  da9269:	00 
  da926a:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  da926f:	48 89 5c 24 28       	mov    QWORD PTR [rsp+0x28],rbx
  da9274:	4c 89 b4 24 e0 01 00 	mov    QWORD PTR [rsp+0x1e0],r14
  da927b:	00 
  da927c:	4c 89 bc 24 d0 01 00 	mov    QWORD PTR [rsp+0x1d0],r15
  da9283:	00 
  da9284:	0f 84 fe 06 00 00    	je     da9988 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4d08>
  da928a:	48 89 d1             	mov    rcx,rdx
  da928d:	48 c1 e9 02          	shr    rcx,0x2
  da9291:	89 d0                	mov    eax,edx
  da9293:	83 e0 03             	and    eax,0x3
  da9296:	48 83 f8 01          	cmp    rax,0x1
  da929a:	48 83 d9 ff          	sbb    rcx,0xffffffffffffffff
  da929e:	48 89 4c 24 78       	mov    QWORD PTR [rsp+0x78],rcx
  da92a3:	4d 85 ed             	test   r13,r13
  da92a6:	0f 84 88 1b 00 00    	je     daae34 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x61b4>
  da92ac:	48 8b 84 24 90 01 00 	mov    rax,QWORD PTR [rsp+0x190]
  da92b3:	00 
  da92b4:	48 8b 48 70          	mov    rcx,QWORD PTR [rax+0x70]
  da92b8:	48 8b 80 90 00 00 00 	mov    rax,QWORD PTR [rax+0x90]
  da92bf:	48 89 84 24 c8 00 00 	mov    QWORD PTR [rsp+0xc8],rax
  da92c6:	00 
  da92c7:	48 01 c0             	add    rax,rax
  da92ca:	48 89 84 24 70 01 00 	mov    QWORD PTR [rsp+0x170],rax
  da92d1:	00 
  da92d2:	f3 48 0f bc c1       	tzcnt  rax,rcx
  da92d7:	48 89 04 24          	mov    QWORD PTR [rsp],rax
  da92db:	48 b8 ff ff ff ff ff 	movabs rax,0x7ffffffffffffff
  da92e2:	ff ff 07 
  da92e5:	48 89 4c 24 58       	mov    QWORD PTR [rsp+0x58],rcx
  da92ea:	48 01 c8             	add    rax,rcx
  da92ed:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
  da92f2:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  da92f7:	48 83 c0 20          	add    rax,0x20
  da92fb:	48 89 84 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rax
  da9302:	00 
  da9303:	49 8d 45 ff          	lea    rax,[r13-0x1]
  da9307:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
  da930c:	4c 89 c0             	mov    rax,r8
  da930f:	48 c1 e0 07          	shl    rax,0x7
  da9313:	48 89 84 24 a0 00 00 	mov    QWORD PTR [rsp+0xa0],rax
  da931a:	00 
  da931b:	48 89 d8             	mov    rax,rbx
  da931e:	48 c1 e0 05          	shl    rax,0x5
  da9322:	48 89 44 24 40       	mov    QWORD PTR [rsp+0x40],rax
  da9327:	31 c9                	xor    ecx,ecx
  da9329:	48 8b 84 24 88 00 00 	mov    rax,QWORD PTR [rsp+0x88]
  da9330:	00 
  da9331:	48 89 84 24 80 00 00 	mov    QWORD PTR [rsp+0x80],rax
  da9338:	00 
  da9339:	4c 89 ac 24 c0 01 00 	mov    QWORD PTR [rsp+0x1c0],r13
  da9340:	00 
  da9341:	40 88 ac 24 f0 01 00 	mov    BYTE PTR [rsp+0x1f0],bpl
  da9348:	00 
  da9349:	eb 4e                	jmp    da9399 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4719>
  da934b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  da9350:	48 8b 84 24 80 00 00 	mov    rax,QWORD PTR [rsp+0x80]
  da9357:	00 
  da9358:	48 03 84 24 a0 00 00 	add    rax,QWORD PTR [rsp+0xa0]
  da935f:	00 
  da9360:	48 89 84 24 80 00 00 	mov    QWORD PTR [rsp+0x80],rax
  da9367:	00 
  da9368:	48 8b 8c 24 e8 00 00 	mov    rcx,QWORD PTR [rsp+0xe8]
  da936f:	00 
  da9370:	48 83 bc 24 98 01 00 	cmp    QWORD PTR [rsp+0x198],0x0
  da9377:	00 00 
  da9379:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  da937e:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  da9383:	4c 8b b4 24 e0 01 00 	mov    r14,QWORD PTR [rsp+0x1e0]
  da938a:	00 
  da938b:	4c 8b bc 24 d0 01 00 	mov    r15,QWORD PTR [rsp+0x1d0]
  da9392:	00 
  da9393:	0f 84 ef 05 00 00    	je     da9988 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4d08>
  da9399:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  da939e:	48 8b 00             	mov    rax,QWORD PTR [rax]
  da93a1:	48 83 f8 02          	cmp    rax,0x2
  da93a5:	74 79                	je     da9420 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x47a0>
  da93a7:	48 83 f8 04          	cmp    rax,0x4
  da93ab:	74 43                	je     da93f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4770>
  da93ad:	48 83 f8 08          	cmp    rax,0x8
  da93b1:	0f 85 0d 1a 00 00    	jne    daadc4 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6144>
  da93b7:	48 8b 84 24 d0 00 00 	mov    rax,QWORD PTR [rsp+0xd0]
  da93be:	00 
  da93bf:	48 8d 3c c8          	lea    rdi,[rax+rcx*8]
  da93c3:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  da93c8:	49 89 ce             	mov    r14,rcx
  da93cb:	48 89 d9             	mov    rcx,rbx
  da93ce:	4c 8b 8c 24 c8 00 00 	mov    r9,QWORD PTR [rsp+0xc8]
  da93d5:	00 
  da93d6:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [rsp+0x60]
  da93db:	e8 20 6f fd ff       	call   d80300 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first_group>
  da93e0:	eb 67                	jmp    da9449 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x47c9>
  da93e2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  da93e9:	1f 84 00 00 00 00 00 
  da93f0:	48 8b 84 24 d0 00 00 	mov    rax,QWORD PTR [rsp+0xd0]
  da93f7:	00 
  da93f8:	48 8d 3c c8          	lea    rdi,[rax+rcx*8]
  da93fc:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  da9401:	49 89 ce             	mov    r14,rcx
  da9404:	48 89 d9             	mov    rcx,rbx
  da9407:	4c 8b 8c 24 c8 00 00 	mov    r9,QWORD PTR [rsp+0xc8]
  da940e:	00 
  da940f:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [rsp+0x60]
  da9414:	e8 27 73 fd ff       	call   d80740 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first_group>
  da9419:	eb 2e                	jmp    da9449 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x47c9>
  da941b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  da9420:	48 8b 84 24 d0 00 00 	mov    rax,QWORD PTR [rsp+0xd0]
  da9427:	00 
  da9428:	48 8d 3c c8          	lea    rdi,[rax+rcx*8]
  da942c:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  da9431:	49 89 ce             	mov    r14,rcx
  da9434:	48 89 d9             	mov    rcx,rbx
  da9437:	4c 8b 8c 24 c8 00 00 	mov    r9,QWORD PTR [rsp+0xc8]
  da943e:	00 
  da943f:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [rsp+0x60]
  da9444:	e8 b7 74 fd ff       	call   d80900 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first_group>
  da9449:	4b 8d 04 3e          	lea    rax,[r14+r15*1]
  da944d:	48 89 84 24 e8 00 00 	mov    QWORD PTR [rsp+0xe8],rax
  da9454:	00 
  da9455:	48 ff 8c 24 98 01 00 	dec    QWORD PTR [rsp+0x198]
  da945c:	00 
  da945d:	4d 01 f6             	add    r14,r14
  da9460:	4c 89 b4 24 b0 01 00 	mov    QWORD PTR [rsp+0x1b0],r14
  da9467:	00 
  da9468:	48 8b 84 24 80 00 00 	mov    rax,QWORD PTR [rsp+0x80]
  da946f:	00 
  da9470:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
  da9475:	31 c0                	xor    eax,eax
  da9477:	eb 29                	jmp    da94a2 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4822>
  da9479:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  da9480:	48 8b 84 24 98 00 00 	mov    rax,QWORD PTR [rsp+0x98]
  da9487:	00 
  da9488:	48 ff c0             	inc    rax
  da948b:	48 83 6c 24 10 80    	sub    QWORD PTR [rsp+0x10],0xffffffffffffff80
  da9491:	4c 8b 84 24 b0 00 00 	mov    r8,QWORD PTR [rsp+0xb0]
  da9498:	00 
  da9499:	4c 39 c0             	cmp    rax,r8
  da949c:	0f 84 ae fe ff ff    	je     da9350 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x46d0>
  da94a2:	48 89 84 24 98 00 00 	mov    QWORD PTR [rsp+0x98],rax
  da94a9:	00 
  da94aa:	48 0f af 84 24 70 01 	imul   rax,QWORD PTR [rsp+0x170]
  da94b1:	00 00 
  da94b3:	48 8b 4c 24 38       	mov    rcx,QWORD PTR [rsp+0x38]
  da94b8:	48 8d 0c 81          	lea    rcx,[rcx+rax*4]
  da94bc:	49 83 fd 02          	cmp    r13,0x2
  da94c0:	0f 82 ea 01 00 00    	jb     da96b0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4a30>
  da94c6:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  da94cb:	4c 8b 20             	mov    r12,QWORD PTR [rax]
  da94ce:	4c 8b 74 24 50       	mov    r14,QWORD PTR [rsp+0x50]
  da94d3:	4c 8b ac 24 90 00 00 	mov    r13,QWORD PTR [rsp+0x90]
  da94da:	00 
  da94db:	49 89 cf             	mov    r15,rcx
  da94de:	48 8b 9c 24 10 02 00 	mov    rbx,QWORD PTR [rsp+0x210]
  da94e5:	00 
  da94e6:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  da94eb:	48 89 8c 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],rcx
  da94f2:	00 
  da94f3:	eb 49                	jmp    da953e <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48be>
  da94f5:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [rsp+0x60]
  da94fa:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da9501:	00 
  da9502:	48 89 df             	mov    rdi,rbx
  da9505:	4c 89 fe             	mov    rsi,r15
  da9508:	4c 89 e1             	mov    rcx,r12
  da950b:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da9512:	00 
  da9513:	e8 68 9a f1 ff       	call   cc2f80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da9518:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  da951f:	00 
  da9520:	4c 0f af e5          	imul   r12,rbp
  da9524:	49 83 c5 18          	add    r13,0x18
  da9528:	49 ff ce             	dec    r14
  da952b:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  da9530:	48 8b 8c 24 b8 00 00 	mov    rcx,QWORD PTR [rsp+0xb8]
  da9537:	00 
  da9538:	0f 84 7a 01 00 00    	je     da96b8 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4a38>
  da953e:	48 89 d8             	mov    rax,rbx
  da9541:	4c 89 fb             	mov    rbx,r15
  da9544:	49 8b 6d f8          	mov    rbp,QWORD PTR [r13-0x8]
  da9548:	49 83 fe 01          	cmp    r14,0x1
  da954c:	49 89 c7             	mov    r15,rax
  da954f:	4c 0f 44 f9          	cmove  r15,rcx
  da9553:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  da9557:	4c 03 44 24 30       	add    r8,QWORD PTR [rsp+0x30]
  da955c:	48 89 6c 24 48       	mov    QWORD PTR [rsp+0x48],rbp
  da9561:	48 8d 45 fe          	lea    rax,[rbp-0x2]
  da9565:	48 83 f8 0e          	cmp    rax,0xe
  da9569:	0f 87 06 18 00 00    	ja     daad75 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x60f5>
  da956f:	48 8d 0d ae 9e 2f ff 	lea    rcx,[rip+0xffffffffff2f9eae]        # a3424 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x308d4>
  da9576:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da957a:	48 01 c8             	add    rax,rcx
  da957d:	ff e0                	jmp    rax
  da957f:	48 89 df             	mov    rdi,rbx
  da9582:	4c 89 fe             	mov    rsi,r15
  da9585:	4c 89 e1             	mov    rcx,r12
  da9588:	e8 b3 15 f1 ff       	call   cbab40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da958d:	eb 91                	jmp    da9520 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48a0>
  da958f:	48 89 df             	mov    rdi,rbx
  da9592:	4c 89 fe             	mov    rsi,r15
  da9595:	4c 89 e1             	mov    rcx,r12
  da9598:	e8 23 60 f1 ff       	call   cbf5c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da959d:	eb 81                	jmp    da9520 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48a0>
  da959f:	48 89 df             	mov    rdi,rbx
  da95a2:	4c 89 fe             	mov    rsi,r15
  da95a5:	4c 89 e1             	mov    rcx,r12
  da95a8:	e8 13 1f f1 ff       	call   cbb4c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da95ad:	e9 6e ff ff ff       	jmp    da9520 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48a0>
  da95b2:	48 89 df             	mov    rdi,rbx
  da95b5:	4c 89 fe             	mov    rsi,r15
  da95b8:	4c 89 e1             	mov    rcx,r12
  da95bb:	e8 40 75 f1 ff       	call   cc0b00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da95c0:	e9 5b ff ff ff       	jmp    da9520 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48a0>
  da95c5:	48 89 df             	mov    rdi,rbx
  da95c8:	4c 89 fe             	mov    rsi,r15
  da95cb:	4c 89 e1             	mov    rcx,r12
  da95ce:	e8 6d 43 f1 ff       	call   cbd940 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da95d3:	e9 48 ff ff ff       	jmp    da9520 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48a0>
  da95d8:	48 89 df             	mov    rdi,rbx
  da95db:	4c 89 fe             	mov    rsi,r15
  da95de:	4c 89 e1             	mov    rcx,r12
  da95e1:	e8 da 18 f1 ff       	call   cbaec0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da95e6:	e9 35 ff ff ff       	jmp    da9520 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48a0>
  da95eb:	48 89 df             	mov    rdi,rbx
  da95ee:	4c 89 fe             	mov    rsi,r15
  da95f1:	4c 89 e1             	mov    rcx,r12
  da95f4:	e8 47 1b f1 ff       	call   cbb140 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da95f9:	e9 22 ff ff ff       	jmp    da9520 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48a0>
  da95fe:	48 89 df             	mov    rdi,rbx
  da9601:	4c 89 fe             	mov    rsi,r15
  da9604:	4c 89 e1             	mov    rcx,r12
  da9607:	e8 b4 2f f1 ff       	call   cbc5c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da960c:	e9 0f ff ff ff       	jmp    da9520 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48a0>
  da9611:	48 89 df             	mov    rdi,rbx
  da9614:	4c 89 fe             	mov    rsi,r15
  da9617:	4c 89 e1             	mov    rcx,r12
  da961a:	e8 61 16 f1 ff       	call   cbac80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da961f:	e9 fc fe ff ff       	jmp    da9520 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48a0>
  da9624:	48 89 df             	mov    rdi,rbx
  da9627:	4c 89 fe             	mov    rsi,r15
  da962a:	4c 89 e1             	mov    rcx,r12
  da962d:	e8 ce 22 f1 ff       	call   cbb900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da9632:	e9 e9 fe ff ff       	jmp    da9520 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48a0>
  da9637:	48 89 df             	mov    rdi,rbx
  da963a:	4c 89 fe             	mov    rsi,r15
  da963d:	4c 89 e1             	mov    rcx,r12
  da9640:	e8 bb 86 f1 ff       	call   cc1d00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da9645:	e9 d6 fe ff ff       	jmp    da9520 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48a0>
  da964a:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [rsp+0x60]
  da964f:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da9656:	00 
  da9657:	48 89 df             	mov    rdi,rbx
  da965a:	4c 89 fe             	mov    rsi,r15
  da965d:	4c 89 e1             	mov    rcx,r12
  da9660:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da9667:	00 
  da9668:	e8 53 29 f1 ff       	call   cbbfc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da966d:	e9 ae fe ff ff       	jmp    da9520 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48a0>
  da9672:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [rsp+0x60]
  da9677:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da967e:	00 
  da967f:	48 89 df             	mov    rdi,rbx
  da9682:	4c 89 fe             	mov    rsi,r15
  da9685:	4c 89 e1             	mov    rcx,r12
  da9688:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da968f:	00 
  da9690:	e8 eb 52 f1 ff       	call   cbe980 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da9695:	e9 86 fe ff ff       	jmp    da9520 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48a0>
  da969a:	48 89 df             	mov    rdi,rbx
  da969d:	4c 89 fe             	mov    rsi,r15
  da96a0:	4c 89 e1             	mov    rcx,r12
  da96a3:	e8 58 38 f1 ff       	call   cbcf00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da96a8:	e9 73 fe ff ff       	jmp    da9520 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48a0>
  da96ad:	0f 1f 00             	nop    DWORD PTR [rax]
  da96b0:	49 89 cf             	mov    r15,rcx
  da96b3:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  da96b8:	48 8b 74 24 58       	mov    rsi,QWORD PTR [rsp+0x58]
  da96bd:	48 85 f6             	test   rsi,rsi
  da96c0:	0f 84 46 17 00 00    	je     daae0c <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x618c>
  da96c6:	48 89 d0             	mov    rax,rdx
  da96c9:	48 09 f0             	or     rax,rsi
  da96cc:	48 c1 e8 20          	shr    rax,0x20
  da96d0:	4c 8b ac 24 c0 01 00 	mov    r13,QWORD PTR [rsp+0x1c0]
  da96d7:	00 
  da96d8:	0f b6 ac 24 f0 01 00 	movzx  ebp,BYTE PTR [rsp+0x1f0]
  da96df:	00 
  da96e0:	48 89 d1             	mov    rcx,rdx
  da96e3:	74 1b                	je     da9700 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4a80>
  da96e5:	48 89 d0             	mov    rax,rdx
  da96e8:	31 d2                	xor    edx,edx
  da96ea:	48 f7 f6             	div    rsi
  da96ed:	48 85 c9             	test   rcx,rcx
  da96f0:	75 1d                	jne    da970f <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4a8f>
  da96f2:	e9 89 fd ff ff       	jmp    da9480 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4800>
  da96f7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  da96fe:	00 00 
  da9700:	89 d0                	mov    eax,edx
  da9702:	31 d2                	xor    edx,edx
  da9704:	f7 f6                	div    esi
  da9706:	48 85 c9             	test   rcx,rcx
  da9709:	0f 84 71 fd ff ff    	je     da9480 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4800>
  da970f:	48 8b 8c 24 b0 01 00 	mov    rcx,QWORD PTR [rsp+0x1b0]
  da9716:	00 
  da9717:	48 8b 94 24 98 00 00 	mov    rdx,QWORD PTR [rsp+0x98]
  da971e:	00 
  da971f:	48 8d 0c d1          	lea    rcx,[rcx+rdx*8]
  da9723:	48 0f af c1          	imul   rax,rcx
  da9727:	48 0f af 4c 24 58    	imul   rcx,QWORD PTR [rsp+0x58]
  da972d:	48 8b 94 24 a0 01 00 	mov    rdx,QWORD PTR [rsp+0x1a0]
  da9734:	00 
  da9735:	48 8d 04 82          	lea    rax,[rdx+rax*4]
  da9739:	48 8b 94 24 a8 00 00 	mov    rdx,QWORD PTR [rsp+0xa8]
  da9740:	00 
  da9741:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
  da9745:	49 83 c7 70          	add    r15,0x70
  da9749:	48 8b 74 24 10       	mov    rsi,QWORD PTR [rsp+0x10]
  da974e:	48 8b 7c 24 78       	mov    rdi,QWORD PTR [rsp+0x78]
  da9753:	45 31 c0             	xor    r8d,r8d
  da9756:	eb 42                	jmp    da979a <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4b1a>
  da9758:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  da975f:	00 
  da9760:	44 0f 11 06          	movups XMMWORD PTR [rsi],xmm8
  da9764:	44 0f 11 4e 10       	movups XMMWORD PTR [rsi+0x10],xmm9
  da9769:	0f 11 76 20          	movups XMMWORD PTR [rsi+0x20],xmm6
  da976d:	0f 11 66 30          	movups XMMWORD PTR [rsi+0x30],xmm4
  da9771:	0f 11 7e 40          	movups XMMWORD PTR [rsi+0x40],xmm7
  da9775:	0f 11 46 50          	movups XMMWORD PTR [rsi+0x50],xmm0
  da9779:	0f 11 6e 60          	movups XMMWORD PTR [rsi+0x60],xmm5
  da977d:	0f 11 5e 70          	movups XMMWORD PTR [rsi+0x70],xmm3
  da9781:	48 ff cf             	dec    rdi
  da9784:	48 03 74 24 40       	add    rsi,QWORD PTR [rsp+0x40]
  da9789:	49 83 ef 80          	sub    r15,0xffffffffffffff80
  da978d:	49 83 c0 04          	add    r8,0x4
  da9791:	48 85 ff             	test   rdi,rdi
  da9794:	0f 84 e6 fc ff ff    	je     da9480 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4800>
  da979a:	4d 89 c1             	mov    r9,r8
  da979d:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da97a1:	49 d3 e9             	shr    r9,cl
  da97a4:	49 c1 e1 05          	shl    r9,0x5
  da97a8:	42 0f 10 04 08       	movups xmm0,XMMWORD PTR [rax+r9*1]
  da97ad:	42 0f 10 74 08 10    	movups xmm6,XMMWORD PTR [rax+r9*1+0x10]
  da97b3:	4c 89 c1             	mov    rcx,r8
  da97b6:	48 23 4c 24 08       	and    rcx,QWORD PTR [rsp+0x8]
  da97bb:	48 c1 e1 05          	shl    rcx,0x5
  da97bf:	0f 10 24 0a          	movups xmm4,XMMWORD PTR [rdx+rcx*1]
  da97c3:	0f 10 4c 0a 10       	movups xmm1,XMMWORD PTR [rdx+rcx*1+0x10]
  da97c8:	0f 10 5c 0a 20       	movups xmm3,XMMWORD PTR [rdx+rcx*1+0x20]
  da97cd:	0f 10 54 0a 30       	movups xmm2,XMMWORD PTR [rdx+rcx*1+0x30]
  da97d2:	0f 28 ee             	movaps xmm5,xmm6
  da97d5:	0f 59 e9             	mulps  xmm5,xmm1
  da97d8:	0f 28 f8             	movaps xmm7,xmm0
  da97db:	0f 59 fc             	mulps  xmm7,xmm4
  da97de:	0f 5c fd             	subps  xmm7,xmm5
  da97e1:	0f 59 e6             	mulps  xmm4,xmm6
  da97e4:	0f 59 c8             	mulps  xmm1,xmm0
  da97e7:	0f 58 cc             	addps  xmm1,xmm4
  da97ea:	45 0f 10 4f 90       	movups xmm9,XMMWORD PTR [r15-0x70]
  da97ef:	45 0f 10 57 a0       	movups xmm10,XMMWORD PTR [r15-0x60]
  da97f4:	41 0f 10 6f b0       	movups xmm5,XMMWORD PTR [r15-0x50]
  da97f9:	45 0f 10 47 c0       	movups xmm8,XMMWORD PTR [r15-0x40]
  da97fe:	41 0f 28 e1          	movaps xmm4,xmm9
  da9802:	0f 59 e7             	mulps  xmm4,xmm7
  da9805:	41 0f 59 fa          	mulps  xmm7,xmm10
  da9809:	44 0f 59 d1          	mulps  xmm10,xmm1
  da980d:	41 0f 5c e2          	subps  xmm4,xmm10
  da9811:	41 0f 59 c9          	mulps  xmm1,xmm9
  da9815:	0f 58 cf             	addps  xmm1,xmm7
  da9818:	0f 28 fe             	movaps xmm7,xmm6
  da981b:	0f 59 fa             	mulps  xmm7,xmm2
  da981e:	44 0f 28 c8          	movaps xmm9,xmm0
  da9822:	44 0f 59 cb          	mulps  xmm9,xmm3
  da9826:	44 0f 5c cf          	subps  xmm9,xmm7
  da982a:	0f 59 de             	mulps  xmm3,xmm6
  da982d:	0f 59 d0             	mulps  xmm2,xmm0
  da9830:	0f 58 d3             	addps  xmm2,xmm3
  da9833:	0f 28 fd             	movaps xmm7,xmm5
  da9836:	41 0f 59 f9          	mulps  xmm7,xmm9
  da983a:	45 0f 59 c8          	mulps  xmm9,xmm8
  da983e:	44 0f 59 c2          	mulps  xmm8,xmm2
  da9842:	41 0f 5c f8          	subps  xmm7,xmm8
  da9846:	0f 59 d5             	mulps  xmm2,xmm5
  da9849:	41 0f 58 d1          	addps  xmm2,xmm9
  da984d:	45 0f 10 47 d0       	movups xmm8,XMMWORD PTR [r15-0x30]
  da9852:	45 0f 10 4f e0       	movups xmm9,XMMWORD PTR [r15-0x20]
  da9857:	0f 10 6c 0a 40       	movups xmm5,XMMWORD PTR [rdx+rcx*1+0x40]
  da985c:	0f 10 5c 0a 50       	movups xmm3,XMMWORD PTR [rdx+rcx*1+0x50]
  da9861:	44 0f 28 d6          	movaps xmm10,xmm6
  da9865:	44 0f 59 d3          	mulps  xmm10,xmm3
  da9869:	44 0f 28 d8          	movaps xmm11,xmm0
  da986d:	44 0f 59 dd          	mulps  xmm11,xmm5
  da9871:	45 0f 5c da          	subps  xmm11,xmm10
  da9875:	0f 59 ee             	mulps  xmm5,xmm6
  da9878:	0f 59 d8             	mulps  xmm3,xmm0
  da987b:	0f 58 dd             	addps  xmm3,xmm5
  da987e:	41 0f 28 e8          	movaps xmm5,xmm8
  da9882:	41 0f 59 eb          	mulps  xmm5,xmm11
  da9886:	45 0f 59 d9          	mulps  xmm11,xmm9
  da988a:	44 0f 59 cb          	mulps  xmm9,xmm3
  da988e:	41 0f 5c e9          	subps  xmm5,xmm9
  da9892:	41 0f 59 d8          	mulps  xmm3,xmm8
  da9896:	41 0f 58 db          	addps  xmm3,xmm11
  da989a:	45 0f 10 47 f0       	movups xmm8,XMMWORD PTR [r15-0x10]
  da989f:	45 0f 10 0f          	movups xmm9,XMMWORD PTR [r15]
  da98a3:	44 0f 10 54 0a 60    	movups xmm10,XMMWORD PTR [rdx+rcx*1+0x60]
  da98a9:	44 0f 10 5c 0a 70    	movups xmm11,XMMWORD PTR [rdx+rcx*1+0x70]
  da98af:	44 0f 28 e6          	movaps xmm12,xmm6
  da98b3:	45 0f 59 e3          	mulps  xmm12,xmm11
  da98b7:	44 0f 28 e8          	movaps xmm13,xmm0
  da98bb:	45 0f 59 ea          	mulps  xmm13,xmm10
  da98bf:	45 0f 5c ec          	subps  xmm13,xmm12
  da98c3:	41 0f 59 f2          	mulps  xmm6,xmm10
  da98c7:	41 0f 59 c3          	mulps  xmm0,xmm11
  da98cb:	0f 58 c6             	addps  xmm0,xmm6
  da98ce:	45 0f 28 d0          	movaps xmm10,xmm8
  da98d2:	45 0f 59 d5          	mulps  xmm10,xmm13
  da98d6:	45 0f 59 e9          	mulps  xmm13,xmm9
  da98da:	44 0f 59 c8          	mulps  xmm9,xmm0
  da98de:	45 0f 5c d1          	subps  xmm10,xmm9
  da98e2:	41 0f 59 c0          	mulps  xmm0,xmm8
  da98e6:	41 0f 58 c5          	addps  xmm0,xmm13
  da98ea:	44 0f 28 cc          	movaps xmm9,xmm4
  da98ee:	44 0f 14 cf          	unpcklps xmm9,xmm7
  da98f2:	0f 28 f5             	movaps xmm6,xmm5
  da98f5:	41 0f 14 f2          	unpcklps xmm6,xmm10
  da98f9:	45 0f 28 c1          	movaps xmm8,xmm9
  da98fd:	44 0f 16 c6          	movlhps xmm8,xmm6
  da9901:	41 0f 12 f1          	movhlps xmm6,xmm9
  da9905:	0f 15 e7             	unpckhps xmm4,xmm7
  da9908:	41 0f 15 ea          	unpckhps xmm5,xmm10
  da990c:	0f 28 fc             	movaps xmm7,xmm4
  da990f:	0f 16 fd             	movlhps xmm7,xmm5
  da9912:	0f 12 ec             	movhlps xmm5,xmm4
  da9915:	44 0f 28 d1          	movaps xmm10,xmm1
  da9919:	44 0f 14 d2          	unpcklps xmm10,xmm2
  da991d:	0f 28 e3             	movaps xmm4,xmm3
  da9920:	0f 14 e0             	unpcklps xmm4,xmm0
  da9923:	45 0f 28 ca          	movaps xmm9,xmm10
  da9927:	44 0f 16 cc          	movlhps xmm9,xmm4
  da992b:	41 0f 12 e2          	movhlps xmm4,xmm10
  da992f:	0f 15 ca             	unpckhps xmm1,xmm2
  da9932:	0f 15 d8             	unpckhps xmm3,xmm0
  da9935:	0f 28 c1             	movaps xmm0,xmm1
  da9938:	0f 16 c3             	movlhps xmm0,xmm3
  da993b:	0f 12 d9             	movhlps xmm3,xmm1
  da993e:	40 84 ed             	test   bpl,bpl
  da9941:	0f 84 19 fe ff ff    	je     da9760 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4ae0>
  da9947:	48 8d 4e 10          	lea    rcx,[rsi+0x10]
  da994b:	4c 8d 4e 20          	lea    r9,[rsi+0x20]
  da994f:	4c 8d 56 30          	lea    r10,[rsi+0x30]
  da9953:	4c 8d 5e 40          	lea    r11,[rsi+0x40]
  da9957:	48 8d 5e 50          	lea    rbx,[rsi+0x50]
  da995b:	4c 8d 76 60          	lea    r14,[rsi+0x60]
  da995f:	4c 8d 66 70          	lea    r12,[rsi+0x70]
  da9963:	44 0f 2b 06          	movntps XMMWORD PTR [rsi],xmm8
  da9967:	44 0f 2b 09          	movntps XMMWORD PTR [rcx],xmm9
  da996b:	41 0f 2b 31          	movntps XMMWORD PTR [r9],xmm6
  da996f:	41 0f 2b 22          	movntps XMMWORD PTR [r10],xmm4
  da9973:	41 0f 2b 3b          	movntps XMMWORD PTR [r11],xmm7
  da9977:	0f 2b 03             	movntps XMMWORD PTR [rbx],xmm0
  da997a:	41 0f 2b 2e          	movntps XMMWORD PTR [r14],xmm5
  da997e:	41 0f 2b 1c 24       	movntps XMMWORD PTR [r12],xmm3
  da9983:	e9 f9 fd ff ff       	jmp    da9781 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4b01>
  da9988:	40 84 ed             	test   bpl,bpl
  da998b:	74 03                	je     da9990 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4d10>
  da998d:	0f ae f8             	sfence
  da9990:	48 89 d0             	mov    rax,rdx
  da9993:	4c 09 f8             	or     rax,r15
  da9996:	48 c1 e8 20          	shr    rax,0x20
  da999a:	0f 84 a2 0d 00 00    	je     daa742 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5ac2>
  da99a0:	48 89 d0             	mov    rax,rdx
  da99a3:	31 d2                	xor    edx,edx
  da99a5:	49 f7 f7             	div    r15
  da99a8:	e9 9c 0d 00 00       	jmp    daa749 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5ac9>
  da99ad:	89 d8                	mov    eax,ebx
  da99af:	31 d2                	xor    edx,edx
  da99b1:	41 f7 f7             	div    r15d
  da99b4:	48 8b b4 24 d8 00 00 	mov    rsi,QWORD PTR [rsp+0xd8]
  da99bb:	00 
  da99bc:	48 8d 0c f1          	lea    rcx,[rcx+rsi*8]
  da99c0:	48 89 4c 24 38       	mov    QWORD PTR [rsp+0x38],rcx
  da99c5:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [rsp+0x60]
  da99ca:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  da99ce:	0f 29 44 24 60       	movaps XMMWORD PTR [rsp+0x60],xmm0
  da99d3:	31 c9                	xor    ecx,ecx
  da99d5:	48 85 d2             	test   rdx,rdx
  da99d8:	0f 95 c1             	setne  cl
  da99db:	48 01 c1             	add    rcx,rax
  da99de:	48 89 8c 24 98 01 00 	mov    QWORD PTR [rsp+0x198],rcx
  da99e5:	00 
  da99e6:	4c 89 84 24 b0 00 00 	mov    QWORD PTR [rsp+0xb0],r8
  da99ed:	00 
  da99ee:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  da99f3:	48 89 5c 24 28       	mov    QWORD PTR [rsp+0x28],rbx
  da99f8:	4c 89 b4 24 e0 01 00 	mov    QWORD PTR [rsp+0x1e0],r14
  da99ff:	00 
  da9a00:	4c 89 bc 24 d0 01 00 	mov    QWORD PTR [rsp+0x1d0],r15
  da9a07:	00 
  da9a08:	0f 84 fa 06 00 00    	je     daa108 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5488>
  da9a0e:	48 89 d1             	mov    rcx,rdx
  da9a11:	48 c1 e9 02          	shr    rcx,0x2
  da9a15:	89 d0                	mov    eax,edx
  da9a17:	83 e0 03             	and    eax,0x3
  da9a1a:	48 83 f8 01          	cmp    rax,0x1
  da9a1e:	48 83 d9 ff          	sbb    rcx,0xffffffffffffffff
  da9a22:	48 89 4c 24 78       	mov    QWORD PTR [rsp+0x78],rcx
  da9a27:	4d 85 ed             	test   r13,r13
  da9a2a:	0f 84 04 14 00 00    	je     daae34 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x61b4>
  da9a30:	48 8b 84 24 90 01 00 	mov    rax,QWORD PTR [rsp+0x190]
  da9a37:	00 
  da9a38:	48 8b 48 70          	mov    rcx,QWORD PTR [rax+0x70]
  da9a3c:	48 8b 80 90 00 00 00 	mov    rax,QWORD PTR [rax+0x90]
  da9a43:	48 89 84 24 c8 00 00 	mov    QWORD PTR [rsp+0xc8],rax
  da9a4a:	00 
  da9a4b:	48 01 c0             	add    rax,rax
  da9a4e:	48 89 84 24 70 01 00 	mov    QWORD PTR [rsp+0x170],rax
  da9a55:	00 
  da9a56:	f3 48 0f bc c1       	tzcnt  rax,rcx
  da9a5b:	48 89 04 24          	mov    QWORD PTR [rsp],rax
  da9a5f:	48 b8 ff ff ff ff ff 	movabs rax,0x7ffffffffffffff
  da9a66:	ff ff 07 
  da9a69:	48 89 4c 24 58       	mov    QWORD PTR [rsp+0x58],rcx
  da9a6e:	48 01 c8             	add    rax,rcx
  da9a71:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
  da9a76:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  da9a7b:	48 83 c0 20          	add    rax,0x20
  da9a7f:	48 89 84 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rax
  da9a86:	00 
  da9a87:	49 8d 45 ff          	lea    rax,[r13-0x1]
  da9a8b:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
  da9a90:	4c 89 c0             	mov    rax,r8
  da9a93:	48 c1 e0 07          	shl    rax,0x7
  da9a97:	48 89 84 24 a0 00 00 	mov    QWORD PTR [rsp+0xa0],rax
  da9a9e:	00 
  da9a9f:	48 89 d8             	mov    rax,rbx
  da9aa2:	48 c1 e0 05          	shl    rax,0x5
  da9aa6:	48 89 44 24 40       	mov    QWORD PTR [rsp+0x40],rax
  da9aab:	31 c9                	xor    ecx,ecx
  da9aad:	48 8b 84 24 88 00 00 	mov    rax,QWORD PTR [rsp+0x88]
  da9ab4:	00 
  da9ab5:	48 89 84 24 80 00 00 	mov    QWORD PTR [rsp+0x80],rax
  da9abc:	00 
  da9abd:	4c 89 ac 24 c0 01 00 	mov    QWORD PTR [rsp+0x1c0],r13
  da9ac4:	00 
  da9ac5:	40 88 ac 24 f0 01 00 	mov    BYTE PTR [rsp+0x1f0],bpl
  da9acc:	00 
  da9acd:	eb 4a                	jmp    da9b19 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4e99>
  da9acf:	90                   	nop
  da9ad0:	48 8b 84 24 80 00 00 	mov    rax,QWORD PTR [rsp+0x80]
  da9ad7:	00 
  da9ad8:	48 03 84 24 a0 00 00 	add    rax,QWORD PTR [rsp+0xa0]
  da9adf:	00 
  da9ae0:	48 89 84 24 80 00 00 	mov    QWORD PTR [rsp+0x80],rax
  da9ae7:	00 
  da9ae8:	48 8b 8c 24 e8 00 00 	mov    rcx,QWORD PTR [rsp+0xe8]
  da9aef:	00 
  da9af0:	48 83 bc 24 98 01 00 	cmp    QWORD PTR [rsp+0x198],0x0
  da9af7:	00 00 
  da9af9:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  da9afe:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  da9b03:	4c 8b b4 24 e0 01 00 	mov    r14,QWORD PTR [rsp+0x1e0]
  da9b0a:	00 
  da9b0b:	4c 8b bc 24 d0 01 00 	mov    r15,QWORD PTR [rsp+0x1d0]
  da9b12:	00 
  da9b13:	0f 84 ef 05 00 00    	je     daa108 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5488>
  da9b19:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  da9b1e:	48 8b 00             	mov    rax,QWORD PTR [rax]
  da9b21:	48 83 f8 02          	cmp    rax,0x2
  da9b25:	74 79                	je     da9ba0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4f20>
  da9b27:	48 83 f8 04          	cmp    rax,0x4
  da9b2b:	74 43                	je     da9b70 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4ef0>
  da9b2d:	48 83 f8 08          	cmp    rax,0x8
  da9b31:	0f 85 8d 12 00 00    	jne    daadc4 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6144>
  da9b37:	48 8b 84 24 d0 00 00 	mov    rax,QWORD PTR [rsp+0xd0]
  da9b3e:	00 
  da9b3f:	48 8d 3c c8          	lea    rdi,[rax+rcx*8]
  da9b43:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  da9b48:	49 89 ce             	mov    r14,rcx
  da9b4b:	48 89 d9             	mov    rcx,rbx
  da9b4e:	4c 8b 8c 24 c8 00 00 	mov    r9,QWORD PTR [rsp+0xc8]
  da9b55:	00 
  da9b56:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [rsp+0x60]
  da9b5b:	e8 a0 6e fd ff       	call   d80a00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first_group>
  da9b60:	eb 67                	jmp    da9bc9 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4f49>
  da9b62:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  da9b69:	1f 84 00 00 00 00 00 
  da9b70:	48 8b 84 24 d0 00 00 	mov    rax,QWORD PTR [rsp+0xd0]
  da9b77:	00 
  da9b78:	48 8d 3c c8          	lea    rdi,[rax+rcx*8]
  da9b7c:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  da9b81:	49 89 ce             	mov    r14,rcx
  da9b84:	48 89 d9             	mov    rcx,rbx
  da9b87:	4c 8b 8c 24 c8 00 00 	mov    r9,QWORD PTR [rsp+0xc8]
  da9b8e:	00 
  da9b8f:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [rsp+0x60]
  da9b94:	e8 a7 72 fd ff       	call   d80e40 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first_group>
  da9b99:	eb 2e                	jmp    da9bc9 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4f49>
  da9b9b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  da9ba0:	48 8b 84 24 d0 00 00 	mov    rax,QWORD PTR [rsp+0xd0]
  da9ba7:	00 
  da9ba8:	48 8d 3c c8          	lea    rdi,[rax+rcx*8]
  da9bac:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  da9bb1:	49 89 ce             	mov    r14,rcx
  da9bb4:	48 89 d9             	mov    rcx,rbx
  da9bb7:	4c 8b 8c 24 c8 00 00 	mov    r9,QWORD PTR [rsp+0xc8]
  da9bbe:	00 
  da9bbf:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [rsp+0x60]
  da9bc4:	e8 37 66 fd ff       	call   d80200 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first_group>
  da9bc9:	4b 8d 04 3e          	lea    rax,[r14+r15*1]
  da9bcd:	48 89 84 24 e8 00 00 	mov    QWORD PTR [rsp+0xe8],rax
  da9bd4:	00 
  da9bd5:	48 ff 8c 24 98 01 00 	dec    QWORD PTR [rsp+0x198]
  da9bdc:	00 
  da9bdd:	4d 01 f6             	add    r14,r14
  da9be0:	4c 89 b4 24 b0 01 00 	mov    QWORD PTR [rsp+0x1b0],r14
  da9be7:	00 
  da9be8:	48 8b 84 24 80 00 00 	mov    rax,QWORD PTR [rsp+0x80]
  da9bef:	00 
  da9bf0:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
  da9bf5:	31 c0                	xor    eax,eax
  da9bf7:	eb 29                	jmp    da9c22 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4fa2>
  da9bf9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  da9c00:	48 8b 84 24 98 00 00 	mov    rax,QWORD PTR [rsp+0x98]
  da9c07:	00 
  da9c08:	48 ff c0             	inc    rax
  da9c0b:	48 83 6c 24 10 80    	sub    QWORD PTR [rsp+0x10],0xffffffffffffff80
  da9c11:	4c 8b 84 24 b0 00 00 	mov    r8,QWORD PTR [rsp+0xb0]
  da9c18:	00 
  da9c19:	4c 39 c0             	cmp    rax,r8
  da9c1c:	0f 84 ae fe ff ff    	je     da9ad0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4e50>
  da9c22:	48 89 84 24 98 00 00 	mov    QWORD PTR [rsp+0x98],rax
  da9c29:	00 
  da9c2a:	48 0f af 84 24 70 01 	imul   rax,QWORD PTR [rsp+0x170]
  da9c31:	00 00 
  da9c33:	48 8b 4c 24 38       	mov    rcx,QWORD PTR [rsp+0x38]
  da9c38:	48 8d 0c 81          	lea    rcx,[rcx+rax*4]
  da9c3c:	49 83 fd 02          	cmp    r13,0x2
  da9c40:	0f 82 ea 01 00 00    	jb     da9e30 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x51b0>
  da9c46:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  da9c4b:	4c 8b 20             	mov    r12,QWORD PTR [rax]
  da9c4e:	4c 8b 74 24 50       	mov    r14,QWORD PTR [rsp+0x50]
  da9c53:	4c 8b ac 24 90 00 00 	mov    r13,QWORD PTR [rsp+0x90]
  da9c5a:	00 
  da9c5b:	49 89 cf             	mov    r15,rcx
  da9c5e:	48 8b 9c 24 10 02 00 	mov    rbx,QWORD PTR [rsp+0x210]
  da9c65:	00 
  da9c66:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  da9c6b:	48 89 8c 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],rcx
  da9c72:	00 
  da9c73:	eb 49                	jmp    da9cbe <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x503e>
  da9c75:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [rsp+0x60]
  da9c7a:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da9c81:	00 
  da9c82:	48 89 df             	mov    rdi,rbx
  da9c85:	4c 89 fe             	mov    rsi,r15
  da9c88:	4c 89 e1             	mov    rcx,r12
  da9c8b:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da9c92:	00 
  da9c93:	e8 e8 92 f1 ff       	call   cc2f80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da9c98:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  da9c9f:	00 
  da9ca0:	4c 0f af e5          	imul   r12,rbp
  da9ca4:	49 83 c5 18          	add    r13,0x18
  da9ca8:	49 ff ce             	dec    r14
  da9cab:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  da9cb0:	48 8b 8c 24 b8 00 00 	mov    rcx,QWORD PTR [rsp+0xb8]
  da9cb7:	00 
  da9cb8:	0f 84 7a 01 00 00    	je     da9e38 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x51b8>
  da9cbe:	48 89 d8             	mov    rax,rbx
  da9cc1:	4c 89 fb             	mov    rbx,r15
  da9cc4:	49 8b 6d f8          	mov    rbp,QWORD PTR [r13-0x8]
  da9cc8:	49 83 fe 01          	cmp    r14,0x1
  da9ccc:	49 89 c7             	mov    r15,rax
  da9ccf:	4c 0f 44 f9          	cmove  r15,rcx
  da9cd3:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  da9cd7:	4c 03 44 24 30       	add    r8,QWORD PTR [rsp+0x30]
  da9cdc:	48 89 6c 24 48       	mov    QWORD PTR [rsp+0x48],rbp
  da9ce1:	48 8d 45 fe          	lea    rax,[rbp-0x2]
  da9ce5:	48 83 f8 0e          	cmp    rax,0xe
  da9ce9:	0f 87 86 10 00 00    	ja     daad75 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x60f5>
  da9cef:	48 8d 0d 72 94 2f ff 	lea    rcx,[rip+0xffffffffff2f9472]        # a3168 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30618>
  da9cf6:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da9cfa:	48 01 c8             	add    rax,rcx
  da9cfd:	ff e0                	jmp    rax
  da9cff:	48 89 df             	mov    rdi,rbx
  da9d02:	4c 89 fe             	mov    rsi,r15
  da9d05:	4c 89 e1             	mov    rcx,r12
  da9d08:	e8 33 0e f1 ff       	call   cbab40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da9d0d:	eb 91                	jmp    da9ca0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5020>
  da9d0f:	48 89 df             	mov    rdi,rbx
  da9d12:	4c 89 fe             	mov    rsi,r15
  da9d15:	4c 89 e1             	mov    rcx,r12
  da9d18:	e8 a3 58 f1 ff       	call   cbf5c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da9d1d:	eb 81                	jmp    da9ca0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5020>
  da9d1f:	48 89 df             	mov    rdi,rbx
  da9d22:	4c 89 fe             	mov    rsi,r15
  da9d25:	4c 89 e1             	mov    rcx,r12
  da9d28:	e8 93 17 f1 ff       	call   cbb4c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da9d2d:	e9 6e ff ff ff       	jmp    da9ca0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5020>
  da9d32:	48 89 df             	mov    rdi,rbx
  da9d35:	4c 89 fe             	mov    rsi,r15
  da9d38:	4c 89 e1             	mov    rcx,r12
  da9d3b:	e8 c0 6d f1 ff       	call   cc0b00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da9d40:	e9 5b ff ff ff       	jmp    da9ca0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5020>
  da9d45:	48 89 df             	mov    rdi,rbx
  da9d48:	4c 89 fe             	mov    rsi,r15
  da9d4b:	4c 89 e1             	mov    rcx,r12
  da9d4e:	e8 ed 3b f1 ff       	call   cbd940 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da9d53:	e9 48 ff ff ff       	jmp    da9ca0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5020>
  da9d58:	48 89 df             	mov    rdi,rbx
  da9d5b:	4c 89 fe             	mov    rsi,r15
  da9d5e:	4c 89 e1             	mov    rcx,r12
  da9d61:	e8 5a 11 f1 ff       	call   cbaec0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da9d66:	e9 35 ff ff ff       	jmp    da9ca0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5020>
  da9d6b:	48 89 df             	mov    rdi,rbx
  da9d6e:	4c 89 fe             	mov    rsi,r15
  da9d71:	4c 89 e1             	mov    rcx,r12
  da9d74:	e8 c7 13 f1 ff       	call   cbb140 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da9d79:	e9 22 ff ff ff       	jmp    da9ca0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5020>
  da9d7e:	48 89 df             	mov    rdi,rbx
  da9d81:	4c 89 fe             	mov    rsi,r15
  da9d84:	4c 89 e1             	mov    rcx,r12
  da9d87:	e8 34 28 f1 ff       	call   cbc5c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da9d8c:	e9 0f ff ff ff       	jmp    da9ca0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5020>
  da9d91:	48 89 df             	mov    rdi,rbx
  da9d94:	4c 89 fe             	mov    rsi,r15
  da9d97:	4c 89 e1             	mov    rcx,r12
  da9d9a:	e8 e1 0e f1 ff       	call   cbac80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da9d9f:	e9 fc fe ff ff       	jmp    da9ca0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5020>
  da9da4:	48 89 df             	mov    rdi,rbx
  da9da7:	4c 89 fe             	mov    rsi,r15
  da9daa:	4c 89 e1             	mov    rcx,r12
  da9dad:	e8 4e 1b f1 ff       	call   cbb900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da9db2:	e9 e9 fe ff ff       	jmp    da9ca0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5020>
  da9db7:	48 89 df             	mov    rdi,rbx
  da9dba:	4c 89 fe             	mov    rsi,r15
  da9dbd:	4c 89 e1             	mov    rcx,r12
  da9dc0:	e8 3b 7f f1 ff       	call   cc1d00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da9dc5:	e9 d6 fe ff ff       	jmp    da9ca0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5020>
  da9dca:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [rsp+0x60]
  da9dcf:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da9dd6:	00 
  da9dd7:	48 89 df             	mov    rdi,rbx
  da9dda:	4c 89 fe             	mov    rsi,r15
  da9ddd:	4c 89 e1             	mov    rcx,r12
  da9de0:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da9de7:	00 
  da9de8:	e8 d3 21 f1 ff       	call   cbbfc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da9ded:	e9 ae fe ff ff       	jmp    da9ca0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5020>
  da9df2:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [rsp+0x60]
  da9df7:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da9dfe:	00 
  da9dff:	48 89 df             	mov    rdi,rbx
  da9e02:	4c 89 fe             	mov    rsi,r15
  da9e05:	4c 89 e1             	mov    rcx,r12
  da9e08:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da9e0f:	00 
  da9e10:	e8 6b 4b f1 ff       	call   cbe980 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da9e15:	e9 86 fe ff ff       	jmp    da9ca0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5020>
  da9e1a:	48 89 df             	mov    rdi,rbx
  da9e1d:	4c 89 fe             	mov    rsi,r15
  da9e20:	4c 89 e1             	mov    rcx,r12
  da9e23:	e8 d8 30 f1 ff       	call   cbcf00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da9e28:	e9 73 fe ff ff       	jmp    da9ca0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5020>
  da9e2d:	0f 1f 00             	nop    DWORD PTR [rax]
  da9e30:	49 89 cf             	mov    r15,rcx
  da9e33:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  da9e38:	48 8b 74 24 58       	mov    rsi,QWORD PTR [rsp+0x58]
  da9e3d:	48 85 f6             	test   rsi,rsi
  da9e40:	0f 84 c6 0f 00 00    	je     daae0c <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x618c>
  da9e46:	48 89 d0             	mov    rax,rdx
  da9e49:	48 09 f0             	or     rax,rsi
  da9e4c:	48 c1 e8 20          	shr    rax,0x20
  da9e50:	4c 8b ac 24 c0 01 00 	mov    r13,QWORD PTR [rsp+0x1c0]
  da9e57:	00 
  da9e58:	0f b6 ac 24 f0 01 00 	movzx  ebp,BYTE PTR [rsp+0x1f0]
  da9e5f:	00 
  da9e60:	48 89 d1             	mov    rcx,rdx
  da9e63:	74 1b                	je     da9e80 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5200>
  da9e65:	48 89 d0             	mov    rax,rdx
  da9e68:	31 d2                	xor    edx,edx
  da9e6a:	48 f7 f6             	div    rsi
  da9e6d:	48 85 c9             	test   rcx,rcx
  da9e70:	75 1d                	jne    da9e8f <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x520f>
  da9e72:	e9 89 fd ff ff       	jmp    da9c00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4f80>
  da9e77:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  da9e7e:	00 00 
  da9e80:	89 d0                	mov    eax,edx
  da9e82:	31 d2                	xor    edx,edx
  da9e84:	f7 f6                	div    esi
  da9e86:	48 85 c9             	test   rcx,rcx
  da9e89:	0f 84 71 fd ff ff    	je     da9c00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4f80>
  da9e8f:	48 8b 8c 24 b0 01 00 	mov    rcx,QWORD PTR [rsp+0x1b0]
  da9e96:	00 
  da9e97:	48 8b 94 24 98 00 00 	mov    rdx,QWORD PTR [rsp+0x98]
  da9e9e:	00 
  da9e9f:	48 8d 0c d1          	lea    rcx,[rcx+rdx*8]
  da9ea3:	48 0f af c1          	imul   rax,rcx
  da9ea7:	48 0f af 4c 24 58    	imul   rcx,QWORD PTR [rsp+0x58]
  da9ead:	48 8b 94 24 a0 01 00 	mov    rdx,QWORD PTR [rsp+0x1a0]
  da9eb4:	00 
  da9eb5:	48 8d 04 82          	lea    rax,[rdx+rax*4]
  da9eb9:	48 8b 94 24 a8 00 00 	mov    rdx,QWORD PTR [rsp+0xa8]
  da9ec0:	00 
  da9ec1:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
  da9ec5:	49 83 c7 70          	add    r15,0x70
  da9ec9:	48 8b 74 24 10       	mov    rsi,QWORD PTR [rsp+0x10]
  da9ece:	48 8b 7c 24 78       	mov    rdi,QWORD PTR [rsp+0x78]
  da9ed3:	45 31 c0             	xor    r8d,r8d
  da9ed6:	eb 42                	jmp    da9f1a <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x529a>
  da9ed8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  da9edf:	00 
  da9ee0:	44 0f 11 06          	movups XMMWORD PTR [rsi],xmm8
  da9ee4:	44 0f 11 4e 10       	movups XMMWORD PTR [rsi+0x10],xmm9
  da9ee9:	0f 11 76 20          	movups XMMWORD PTR [rsi+0x20],xmm6
  da9eed:	0f 11 66 30          	movups XMMWORD PTR [rsi+0x30],xmm4
  da9ef1:	0f 11 7e 40          	movups XMMWORD PTR [rsi+0x40],xmm7
  da9ef5:	0f 11 46 50          	movups XMMWORD PTR [rsi+0x50],xmm0
  da9ef9:	0f 11 6e 60          	movups XMMWORD PTR [rsi+0x60],xmm5
  da9efd:	0f 11 5e 70          	movups XMMWORD PTR [rsi+0x70],xmm3
  da9f01:	48 ff cf             	dec    rdi
  da9f04:	48 03 74 24 40       	add    rsi,QWORD PTR [rsp+0x40]
  da9f09:	49 83 ef 80          	sub    r15,0xffffffffffffff80
  da9f0d:	49 83 c0 04          	add    r8,0x4
  da9f11:	48 85 ff             	test   rdi,rdi
  da9f14:	0f 84 e6 fc ff ff    	je     da9c00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4f80>
  da9f1a:	4d 89 c1             	mov    r9,r8
  da9f1d:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da9f21:	49 d3 e9             	shr    r9,cl
  da9f24:	49 c1 e1 05          	shl    r9,0x5
  da9f28:	42 0f 10 04 08       	movups xmm0,XMMWORD PTR [rax+r9*1]
  da9f2d:	42 0f 10 74 08 10    	movups xmm6,XMMWORD PTR [rax+r9*1+0x10]
  da9f33:	4c 89 c1             	mov    rcx,r8
  da9f36:	48 23 4c 24 08       	and    rcx,QWORD PTR [rsp+0x8]
  da9f3b:	48 c1 e1 05          	shl    rcx,0x5
  da9f3f:	0f 10 24 0a          	movups xmm4,XMMWORD PTR [rdx+rcx*1]
  da9f43:	0f 10 4c 0a 10       	movups xmm1,XMMWORD PTR [rdx+rcx*1+0x10]
  da9f48:	0f 10 5c 0a 20       	movups xmm3,XMMWORD PTR [rdx+rcx*1+0x20]
  da9f4d:	0f 10 54 0a 30       	movups xmm2,XMMWORD PTR [rdx+rcx*1+0x30]
  da9f52:	0f 28 ee             	movaps xmm5,xmm6
  da9f55:	0f 59 e9             	mulps  xmm5,xmm1
  da9f58:	0f 28 f8             	movaps xmm7,xmm0
  da9f5b:	0f 59 fc             	mulps  xmm7,xmm4
  da9f5e:	0f 5c fd             	subps  xmm7,xmm5
  da9f61:	0f 59 e6             	mulps  xmm4,xmm6
  da9f64:	0f 59 c8             	mulps  xmm1,xmm0
  da9f67:	0f 58 cc             	addps  xmm1,xmm4
  da9f6a:	45 0f 10 4f 90       	movups xmm9,XMMWORD PTR [r15-0x70]
  da9f6f:	45 0f 10 57 a0       	movups xmm10,XMMWORD PTR [r15-0x60]
  da9f74:	41 0f 10 6f b0       	movups xmm5,XMMWORD PTR [r15-0x50]
  da9f79:	45 0f 10 47 c0       	movups xmm8,XMMWORD PTR [r15-0x40]
  da9f7e:	41 0f 28 e1          	movaps xmm4,xmm9
  da9f82:	0f 59 e7             	mulps  xmm4,xmm7
  da9f85:	41 0f 59 fa          	mulps  xmm7,xmm10
  da9f89:	44 0f 59 d1          	mulps  xmm10,xmm1
  da9f8d:	41 0f 5c e2          	subps  xmm4,xmm10
  da9f91:	41 0f 59 c9          	mulps  xmm1,xmm9
  da9f95:	0f 58 cf             	addps  xmm1,xmm7
  da9f98:	0f 28 fe             	movaps xmm7,xmm6
  da9f9b:	0f 59 fa             	mulps  xmm7,xmm2
  da9f9e:	44 0f 28 c8          	movaps xmm9,xmm0
  da9fa2:	44 0f 59 cb          	mulps  xmm9,xmm3
  da9fa6:	44 0f 5c cf          	subps  xmm9,xmm7
  da9faa:	0f 59 de             	mulps  xmm3,xmm6
  da9fad:	0f 59 d0             	mulps  xmm2,xmm0
  da9fb0:	0f 58 d3             	addps  xmm2,xmm3
  da9fb3:	0f 28 fd             	movaps xmm7,xmm5
  da9fb6:	41 0f 59 f9          	mulps  xmm7,xmm9
  da9fba:	45 0f 59 c8          	mulps  xmm9,xmm8
  da9fbe:	44 0f 59 c2          	mulps  xmm8,xmm2
  da9fc2:	41 0f 5c f8          	subps  xmm7,xmm8
  da9fc6:	0f 59 d5             	mulps  xmm2,xmm5
  da9fc9:	41 0f 58 d1          	addps  xmm2,xmm9
  da9fcd:	45 0f 10 47 d0       	movups xmm8,XMMWORD PTR [r15-0x30]
  da9fd2:	45 0f 10 4f e0       	movups xmm9,XMMWORD PTR [r15-0x20]
  da9fd7:	0f 10 6c 0a 40       	movups xmm5,XMMWORD PTR [rdx+rcx*1+0x40]
  da9fdc:	0f 10 5c 0a 50       	movups xmm3,XMMWORD PTR [rdx+rcx*1+0x50]
  da9fe1:	44 0f 28 d6          	movaps xmm10,xmm6
  da9fe5:	44 0f 59 d3          	mulps  xmm10,xmm3
  da9fe9:	44 0f 28 d8          	movaps xmm11,xmm0
  da9fed:	44 0f 59 dd          	mulps  xmm11,xmm5
  da9ff1:	45 0f 5c da          	subps  xmm11,xmm10
  da9ff5:	0f 59 ee             	mulps  xmm5,xmm6
  da9ff8:	0f 59 d8             	mulps  xmm3,xmm0
  da9ffb:	0f 58 dd             	addps  xmm3,xmm5
  da9ffe:	41 0f 28 e8          	movaps xmm5,xmm8
  daa002:	41 0f 59 eb          	mulps  xmm5,xmm11
  daa006:	45 0f 59 d9          	mulps  xmm11,xmm9
  daa00a:	44 0f 59 cb          	mulps  xmm9,xmm3
  daa00e:	41 0f 5c e9          	subps  xmm5,xmm9
  daa012:	41 0f 59 d8          	mulps  xmm3,xmm8
  daa016:	41 0f 58 db          	addps  xmm3,xmm11
  daa01a:	45 0f 10 47 f0       	movups xmm8,XMMWORD PTR [r15-0x10]
  daa01f:	45 0f 10 0f          	movups xmm9,XMMWORD PTR [r15]
  daa023:	44 0f 10 54 0a 60    	movups xmm10,XMMWORD PTR [rdx+rcx*1+0x60]
  daa029:	44 0f 10 5c 0a 70    	movups xmm11,XMMWORD PTR [rdx+rcx*1+0x70]
  daa02f:	44 0f 28 e6          	movaps xmm12,xmm6
  daa033:	45 0f 59 e3          	mulps  xmm12,xmm11
  daa037:	44 0f 28 e8          	movaps xmm13,xmm0
  daa03b:	45 0f 59 ea          	mulps  xmm13,xmm10
  daa03f:	45 0f 5c ec          	subps  xmm13,xmm12
  daa043:	41 0f 59 f2          	mulps  xmm6,xmm10
  daa047:	41 0f 59 c3          	mulps  xmm0,xmm11
  daa04b:	0f 58 c6             	addps  xmm0,xmm6
  daa04e:	45 0f 28 d0          	movaps xmm10,xmm8
  daa052:	45 0f 59 d5          	mulps  xmm10,xmm13
  daa056:	45 0f 59 e9          	mulps  xmm13,xmm9
  daa05a:	44 0f 59 c8          	mulps  xmm9,xmm0
  daa05e:	45 0f 5c d1          	subps  xmm10,xmm9
  daa062:	41 0f 59 c0          	mulps  xmm0,xmm8
  daa066:	41 0f 58 c5          	addps  xmm0,xmm13
  daa06a:	44 0f 28 cc          	movaps xmm9,xmm4
  daa06e:	44 0f 14 cf          	unpcklps xmm9,xmm7
  daa072:	0f 28 f5             	movaps xmm6,xmm5
  daa075:	41 0f 14 f2          	unpcklps xmm6,xmm10
  daa079:	45 0f 28 c1          	movaps xmm8,xmm9
  daa07d:	44 0f 16 c6          	movlhps xmm8,xmm6
  daa081:	41 0f 12 f1          	movhlps xmm6,xmm9
  daa085:	0f 15 e7             	unpckhps xmm4,xmm7
  daa088:	41 0f 15 ea          	unpckhps xmm5,xmm10
  daa08c:	0f 28 fc             	movaps xmm7,xmm4
  daa08f:	0f 16 fd             	movlhps xmm7,xmm5
  daa092:	0f 12 ec             	movhlps xmm5,xmm4
  daa095:	44 0f 28 d1          	movaps xmm10,xmm1
  daa099:	44 0f 14 d2          	unpcklps xmm10,xmm2
  daa09d:	0f 28 e3             	movaps xmm4,xmm3
  daa0a0:	0f 14 e0             	unpcklps xmm4,xmm0
  daa0a3:	45 0f 28 ca          	movaps xmm9,xmm10
  daa0a7:	44 0f 16 cc          	movlhps xmm9,xmm4
  daa0ab:	41 0f 12 e2          	movhlps xmm4,xmm10
  daa0af:	0f 15 ca             	unpckhps xmm1,xmm2
  daa0b2:	0f 15 d8             	unpckhps xmm3,xmm0
  daa0b5:	0f 28 c1             	movaps xmm0,xmm1
  daa0b8:	0f 16 c3             	movlhps xmm0,xmm3
  daa0bb:	0f 12 d9             	movhlps xmm3,xmm1
  daa0be:	40 84 ed             	test   bpl,bpl
  daa0c1:	0f 84 19 fe ff ff    	je     da9ee0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5260>
  daa0c7:	48 8d 4e 10          	lea    rcx,[rsi+0x10]
  daa0cb:	4c 8d 4e 20          	lea    r9,[rsi+0x20]
  daa0cf:	4c 8d 56 30          	lea    r10,[rsi+0x30]
  daa0d3:	4c 8d 5e 40          	lea    r11,[rsi+0x40]
  daa0d7:	48 8d 5e 50          	lea    rbx,[rsi+0x50]
  daa0db:	4c 8d 76 60          	lea    r14,[rsi+0x60]
  daa0df:	4c 8d 66 70          	lea    r12,[rsi+0x70]
  daa0e3:	44 0f 2b 06          	movntps XMMWORD PTR [rsi],xmm8
  daa0e7:	44 0f 2b 09          	movntps XMMWORD PTR [rcx],xmm9
  daa0eb:	41 0f 2b 31          	movntps XMMWORD PTR [r9],xmm6
  daa0ef:	41 0f 2b 22          	movntps XMMWORD PTR [r10],xmm4
  daa0f3:	41 0f 2b 3b          	movntps XMMWORD PTR [r11],xmm7
  daa0f7:	0f 2b 03             	movntps XMMWORD PTR [rbx],xmm0
  daa0fa:	41 0f 2b 2e          	movntps XMMWORD PTR [r14],xmm5
  daa0fe:	41 0f 2b 1c 24       	movntps XMMWORD PTR [r12],xmm3
  daa103:	e9 f9 fd ff ff       	jmp    da9f01 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5281>
  daa108:	40 84 ed             	test   bpl,bpl
  daa10b:	74 03                	je     daa110 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5490>
  daa10d:	0f ae f8             	sfence
  daa110:	48 89 d0             	mov    rax,rdx
  daa113:	4c 09 f8             	or     rax,r15
  daa116:	48 c1 e8 20          	shr    rax,0x20
  daa11a:	74 0a                	je     daa126 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x54a6>
  daa11c:	48 89 d0             	mov    rax,rdx
  daa11f:	31 d2                	xor    edx,edx
  daa121:	49 f7 f7             	div    r15
  daa124:	eb 07                	jmp    daa12d <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x54ad>
  daa126:	89 d0                	mov    eax,edx
  daa128:	31 d2                	xor    edx,edx
  daa12a:	41 f7 f7             	div    r15d
  daa12d:	40 20 ac 24 e0 00 00 	and    BYTE PTR [rsp+0xe0],bpl
  daa134:	00 
  daa135:	31 ff                	xor    edi,edi
  daa137:	48 85 d2             	test   rdx,rdx
  daa13a:	40 0f 95 c7          	setne  dil
  daa13e:	48 01 c7             	add    rdi,rax
  daa141:	0f 84 1b 0c 00 00    	je     daad62 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x60e2>
  daa147:	4d 85 f6             	test   r14,r14
  daa14a:	0f 84 f4 0c 00 00    	je     daae44 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x61c4>
  daa150:	4a 8d 04 6d 00 00 00 	lea    rax,[r13*2+0x0]
  daa157:	00 
  daa158:	4c 01 e8             	add    rax,r13
  daa15b:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa160:	48 8d 0c c2          	lea    rcx,[rdx+rax*8]
  daa164:	48 89 4c 24 40       	mov    QWORD PTR [rsp+0x40],rcx
  daa169:	48 8b b4 24 88 01 00 	mov    rsi,QWORD PTR [rsp+0x188]
  daa170:	00 
  daa171:	48 c1 e6 03          	shl    rsi,0x3
  daa175:	48 8b 8c 24 90 01 00 	mov    rcx,QWORD PTR [rsp+0x190]
  daa17c:	00 
  daa17d:	4c 8b 89 90 00 00 00 	mov    r9,QWORD PTR [rcx+0x90]
  daa184:	4b 8d 0c 09          	lea    rcx,[r9+r9*1]
  daa188:	48 89 8c 24 98 00 00 	mov    QWORD PTR [rsp+0x98],rcx
  daa18f:	00 
  daa190:	4a 8d 0c cd 00 00 00 	lea    rcx,[r9*8+0x0]
  daa197:	00 
  daa198:	48 89 4c 24 58       	mov    QWORD PTR [rsp+0x58],rcx
  daa19d:	4c 89 c1             	mov    rcx,r8
  daa1a0:	48 83 e1 fe          	and    rcx,0xfffffffffffffffe
  daa1a4:	48 89 8c 24 70 01 00 	mov    QWORD PTR [rsp+0x170],rcx
  daa1ab:	00 
  daa1ac:	48 8d 04 c2          	lea    rax,[rdx+rax*8]
  daa1b0:	48 83 c0 20          	add    rax,0x20
  daa1b4:	48 89 84 24 f0 01 00 	mov    QWORD PTR [rsp+0x1f0],rax
  daa1bb:	00 
  daa1bc:	49 8d 46 ff          	lea    rax,[r14-0x1]
  daa1c0:	48 89 84 24 b0 01 00 	mov    QWORD PTR [rsp+0x1b0],rax
  daa1c7:	00 
  daa1c8:	48 8b 8c 24 d8 00 00 	mov    rcx,QWORD PTR [rsp+0xd8]
  daa1cf:	00 
  daa1d0:	48 c1 e1 04          	shl    rcx,0x4
  daa1d4:	48 01 f1             	add    rcx,rsi
  daa1d7:	48 8b 84 24 88 00 00 	mov    rax,QWORD PTR [rsp+0x88]
  daa1de:	00 
  daa1df:	48 01 c8             	add    rax,rcx
  daa1e2:	48 83 c0 10          	add    rax,0x10
  daa1e6:	48 89 84 24 80 00 00 	mov    QWORD PTR [rsp+0x80],rax
  daa1ed:	00 
  daa1ee:	49 c1 e1 04          	shl    r9,0x4
  daa1f2:	4c 89 4c 24 10       	mov    QWORD PTR [rsp+0x10],r9
  daa1f7:	48 8b 84 24 c0 00 00 	mov    rax,QWORD PTR [rsp+0xc0]
  daa1fe:	00 
  daa1ff:	48 8d 48 30          	lea    rcx,[rax+0x30]
  daa203:	48 89 8c 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rcx
  daa20a:	00 
  daa20b:	49 c1 e0 05          	shl    r8,0x5
  daa20f:	4c 89 84 24 d0 00 00 	mov    QWORD PTR [rsp+0xd0],r8
  daa216:	00 
  daa217:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  daa21c:	48 8d 0c cd 00 00 00 	lea    rcx,[rcx*8+0x0]
  daa223:	00 
  daa224:	48 89 8c 24 c0 01 00 	mov    QWORD PTR [rsp+0x1c0],rcx
  daa22b:	00 
  daa22c:	31 c9                	xor    ecx,ecx
  daa22e:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
  daa233:	eb 36                	jmp    daa26b <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x55eb>
  daa235:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  daa23c:	00 00 00 00 
  daa240:	48 8b 84 24 d0 00 00 	mov    rax,QWORD PTR [rsp+0xd0]
  daa247:	00 
  daa248:	48 01 84 24 90 00 00 	add    QWORD PTR [rsp+0x90],rax
  daa24f:	00 
  daa250:	48 01 44 24 50       	add    QWORD PTR [rsp+0x50],rax
  daa255:	48 8b bc 24 a8 00 00 	mov    rdi,QWORD PTR [rsp+0xa8]
  daa25c:	00 
  daa25d:	48 85 ff             	test   rdi,rdi
  daa260:	48 8b 4c 24 78       	mov    rcx,QWORD PTR [rsp+0x78]
  daa265:	0f 84 f7 0a 00 00    	je     daad62 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x60e2>
  daa26b:	4a 8d 04 39          	lea    rax,[rcx+r15*1]
  daa26f:	48 89 44 24 78       	mov    QWORD PTR [rsp+0x78],rax
  daa274:	48 ff cf             	dec    rdi
  daa277:	48 89 bc 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],rdi
  daa27e:	00 
  daa27f:	48 89 8c 24 a0 01 00 	mov    QWORD PTR [rsp+0x1a0],rcx
  daa286:	00 
  daa287:	48 8d 04 09          	lea    rax,[rcx+rcx*1]
  daa28b:	48 89 84 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],rax
  daa292:	00 
  daa293:	31 d2                	xor    edx,edx
  daa295:	eb 49                	jmp    daa2e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5660>
  daa297:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  daa29e:	00 00 
  daa2a0:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  daa2a5:	48 ff c2             	inc    rdx
  daa2a8:	4c 8b 9c 24 b0 00 00 	mov    r11,QWORD PTR [rsp+0xb0]
  daa2af:	00 
  daa2b0:	4c 39 da             	cmp    rdx,r11
  daa2b3:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  daa2b8:	4c 8b b4 24 e0 01 00 	mov    r14,QWORD PTR [rsp+0x1e0]
  daa2bf:	00 
  daa2c0:	4c 8b bc 24 d0 01 00 	mov    r15,QWORD PTR [rsp+0x1d0]
  daa2c7:	00 
  daa2c8:	4c 8b 64 24 10       	mov    r12,QWORD PTR [rsp+0x10]
  daa2cd:	4c 8b 6c 24 58       	mov    r13,QWORD PTR [rsp+0x58]
  daa2d2:	48 8b ac 24 70 01 00 	mov    rbp,QWORD PTR [rsp+0x170]
  daa2d9:	00 
  daa2da:	0f 84 e0 02 00 00    	je     daa5c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5940>
  daa2e0:	48 89 d0             	mov    rax,rdx
  daa2e3:	48 0f af 84 24 98 00 	imul   rax,QWORD PTR [rsp+0x98]
  daa2ea:	00 00 
  daa2ec:	48 8b 4c 24 38       	mov    rcx,QWORD PTR [rsp+0x38]
  daa2f1:	48 8d 04 81          	lea    rax,[rcx+rax*4]
  daa2f5:	48 89 04 24          	mov    QWORD PTR [rsp],rax
  daa2f9:	48 8b 84 24 b8 00 00 	mov    rax,QWORD PTR [rsp+0xb8]
  daa300:	00 
  daa301:	48 8d 04 d0          	lea    rax,[rax+rdx*8]
  daa305:	48 0f af c3          	imul   rax,rbx
  daa309:	48 8b 8c 24 88 00 00 	mov    rcx,QWORD PTR [rsp+0x88]
  daa310:	00 
  daa311:	48 8d 3c 81          	lea    rdi,[rcx+rax*4]
  daa315:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
  daa31a:	48 8b 00             	mov    rax,QWORD PTR [rax]
  daa31d:	48 83 f8 02          	cmp    rax,0x2
  daa321:	48 89 54 24 08       	mov    QWORD PTR [rsp+0x8],rdx
  daa326:	74 58                	je     daa380 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5700>
  daa328:	48 83 f8 04          	cmp    rax,0x4
  daa32c:	74 32                	je     daa360 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x56e0>
  daa32e:	48 83 f8 08          	cmp    rax,0x8
  daa332:	0f 85 74 0a 00 00    	jne    daadac <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x612c>
  daa338:	48 8b 34 24          	mov    rsi,QWORD PTR [rsp]
  daa33c:	48 89 da             	mov    rdx,rbx
  daa33f:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [rsp+0x60]
  daa344:	e8 77 89 fd ff       	call   d82cc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  daa349:	49 83 fe 02          	cmp    r14,0x2
  daa34d:	0f 82 4d ff ff ff    	jb     daa2a0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5620>
  daa353:	eb 46                	jmp    daa39b <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x571b>
  daa355:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  daa35c:	00 00 00 00 
  daa360:	48 8b 34 24          	mov    rsi,QWORD PTR [rsp]
  daa364:	48 89 da             	mov    rdx,rbx
  daa367:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [rsp+0x60]
  daa36c:	e8 0f cd fd ff       	call   d87080 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  daa371:	49 83 fe 02          	cmp    r14,0x2
  daa375:	0f 82 25 ff ff ff    	jb     daa2a0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5620>
  daa37b:	eb 1e                	jmp    daa39b <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x571b>
  daa37d:	0f 1f 00             	nop    DWORD PTR [rax]
  daa380:	48 8b 34 24          	mov    rsi,QWORD PTR [rsp]
  daa384:	48 89 da             	mov    rdx,rbx
  daa387:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [rsp+0x60]
  daa38c:	e8 6f 97 ff ff       	call   da3b00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  daa391:	49 83 fe 02          	cmp    r14,0x2
  daa395:	0f 82 05 ff ff ff    	jb     daa2a0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5620>
  daa39b:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
  daa3a0:	4c 8b 38             	mov    r15,QWORD PTR [rax]
  daa3a3:	4c 8b ac 24 b0 01 00 	mov    r13,QWORD PTR [rsp+0x1b0]
  daa3aa:	00 
  daa3ab:	48 8b ac 24 f0 01 00 	mov    rbp,QWORD PTR [rsp+0x1f0]
  daa3b2:	00 
  daa3b3:	4c 8b 24 24          	mov    r12,QWORD PTR [rsp]
  daa3b7:	48 8b 9c 24 10 02 00 	mov    rbx,QWORD PTR [rsp+0x210]
  daa3be:	00 
  daa3bf:	eb 40                	jmp    daa401 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5781>
  daa3c1:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [rsp+0x60]
  daa3c6:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  daa3cd:	00 
  daa3ce:	48 89 df             	mov    rdi,rbx
  daa3d1:	4c 89 e6             	mov    rsi,r12
  daa3d4:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  daa3d9:	4c 89 f9             	mov    rcx,r15
  daa3dc:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  daa3e3:	00 
  daa3e4:	e8 97 8b f1 ff       	call   cc2f80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daa3e9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  daa3f0:	4d 0f af fe          	imul   r15,r14
  daa3f4:	48 83 c5 18          	add    rbp,0x18
  daa3f8:	49 ff cd             	dec    r13
  daa3fb:	0f 84 9f fe ff ff    	je     daa2a0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5620>
  daa401:	48 89 d8             	mov    rax,rbx
  daa404:	4c 89 e3             	mov    rbx,r12
  daa407:	4c 8b 75 f8          	mov    r14,QWORD PTR [rbp-0x8]
  daa40b:	49 83 fd 01          	cmp    r13,0x1
  daa40f:	49 89 c4             	mov    r12,rax
  daa412:	4c 0f 44 24 24       	cmove  r12,QWORD PTR [rsp]
  daa417:	4c 8b 45 00          	mov    r8,QWORD PTR [rbp+0x0]
  daa41b:	4c 03 44 24 30       	add    r8,QWORD PTR [rsp+0x30]
  daa420:	4c 89 74 24 48       	mov    QWORD PTR [rsp+0x48],r14
  daa425:	49 8d 46 fe          	lea    rax,[r14-0x2]
  daa429:	48 83 f8 0e          	cmp    rax,0xe
  daa42d:	0f 87 42 09 00 00    	ja     daad75 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x60f5>
  daa433:	48 8d 0d 6a 8d 2f ff 	lea    rcx,[rip+0xffffffffff2f8d6a]        # a31a4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30654>
  daa43a:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  daa43e:	48 01 c8             	add    rax,rcx
  daa441:	ff e0                	jmp    rax
  daa443:	48 89 df             	mov    rdi,rbx
  daa446:	4c 89 e6             	mov    rsi,r12
  daa449:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  daa44e:	4c 89 f9             	mov    rcx,r15
  daa451:	e8 ea 06 f1 ff       	call   cbab40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daa456:	eb 98                	jmp    daa3f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5770>
  daa458:	48 89 df             	mov    rdi,rbx
  daa45b:	4c 89 e6             	mov    rsi,r12
  daa45e:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  daa463:	4c 89 f9             	mov    rcx,r15
  daa466:	e8 55 51 f1 ff       	call   cbf5c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daa46b:	eb 83                	jmp    daa3f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5770>
  daa46d:	48 89 df             	mov    rdi,rbx
  daa470:	4c 89 e6             	mov    rsi,r12
  daa473:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  daa478:	4c 89 f9             	mov    rcx,r15
  daa47b:	e8 40 10 f1 ff       	call   cbb4c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daa480:	e9 6b ff ff ff       	jmp    daa3f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5770>
  daa485:	48 89 df             	mov    rdi,rbx
  daa488:	4c 89 e6             	mov    rsi,r12
  daa48b:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  daa490:	4c 89 f9             	mov    rcx,r15
  daa493:	e8 68 66 f1 ff       	call   cc0b00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daa498:	e9 53 ff ff ff       	jmp    daa3f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5770>
  daa49d:	48 89 df             	mov    rdi,rbx
  daa4a0:	4c 89 e6             	mov    rsi,r12
  daa4a3:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  daa4a8:	4c 89 f9             	mov    rcx,r15
  daa4ab:	e8 90 34 f1 ff       	call   cbd940 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daa4b0:	e9 3b ff ff ff       	jmp    daa3f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5770>
  daa4b5:	48 89 df             	mov    rdi,rbx
  daa4b8:	4c 89 e6             	mov    rsi,r12
  daa4bb:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  daa4c0:	4c 89 f9             	mov    rcx,r15
  daa4c3:	e8 f8 09 f1 ff       	call   cbaec0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daa4c8:	e9 23 ff ff ff       	jmp    daa3f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5770>
  daa4cd:	48 89 df             	mov    rdi,rbx
  daa4d0:	4c 89 e6             	mov    rsi,r12
  daa4d3:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  daa4d8:	4c 89 f9             	mov    rcx,r15
  daa4db:	e8 60 0c f1 ff       	call   cbb140 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daa4e0:	e9 0b ff ff ff       	jmp    daa3f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5770>
  daa4e5:	48 89 df             	mov    rdi,rbx
  daa4e8:	4c 89 e6             	mov    rsi,r12
  daa4eb:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  daa4f0:	4c 89 f9             	mov    rcx,r15
  daa4f3:	e8 c8 20 f1 ff       	call   cbc5c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daa4f8:	e9 f3 fe ff ff       	jmp    daa3f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5770>
  daa4fd:	48 89 df             	mov    rdi,rbx
  daa500:	4c 89 e6             	mov    rsi,r12
  daa503:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  daa508:	4c 89 f9             	mov    rcx,r15
  daa50b:	e8 70 07 f1 ff       	call   cbac80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daa510:	e9 db fe ff ff       	jmp    daa3f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5770>
  daa515:	48 89 df             	mov    rdi,rbx
  daa518:	4c 89 e6             	mov    rsi,r12
  daa51b:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  daa520:	4c 89 f9             	mov    rcx,r15
  daa523:	e8 d8 13 f1 ff       	call   cbb900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daa528:	e9 c3 fe ff ff       	jmp    daa3f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5770>
  daa52d:	48 89 df             	mov    rdi,rbx
  daa530:	4c 89 e6             	mov    rsi,r12
  daa533:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  daa538:	4c 89 f9             	mov    rcx,r15
  daa53b:	e8 c0 77 f1 ff       	call   cc1d00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daa540:	e9 ab fe ff ff       	jmp    daa3f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5770>
  daa545:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [rsp+0x60]
  daa54a:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  daa551:	00 
  daa552:	48 89 df             	mov    rdi,rbx
  daa555:	4c 89 e6             	mov    rsi,r12
  daa558:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  daa55d:	4c 89 f9             	mov    rcx,r15
  daa560:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  daa567:	00 
  daa568:	e8 53 1a f1 ff       	call   cbbfc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daa56d:	e9 7e fe ff ff       	jmp    daa3f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5770>
  daa572:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [rsp+0x60]
  daa577:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  daa57e:	00 
  daa57f:	48 89 df             	mov    rdi,rbx
  daa582:	4c 89 e6             	mov    rsi,r12
  daa585:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  daa58a:	4c 89 f9             	mov    rcx,r15
  daa58d:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  daa594:	00 
  daa595:	e8 e6 43 f1 ff       	call   cbe980 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daa59a:	e9 51 fe ff ff       	jmp    daa3f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5770>
  daa59f:	48 89 df             	mov    rdi,rbx
  daa5a2:	4c 89 e6             	mov    rsi,r12
  daa5a5:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  daa5aa:	4c 89 f9             	mov    rcx,r15
  daa5ad:	e8 4e 29 f1 ff       	call   cbcf00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daa5b2:	e9 39 fe ff ff       	jmp    daa3f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5770>
  daa5b7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  daa5be:	00 00 
  daa5c0:	48 85 db             	test   rbx,rbx
  daa5c3:	0f 84 77 fc ff ff    	je     daa240 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x55c0>
  daa5c9:	80 bc 24 e0 00 00 00 	cmp    BYTE PTR [rsp+0xe0],0x0
  daa5d0:	00 
  daa5d1:	74 7d                	je     daa650 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x59d0>
  daa5d3:	48 8b 84 24 80 00 00 	mov    rax,QWORD PTR [rsp+0x80]
  daa5da:	00 
  daa5db:	48 8b 4c 24 50       	mov    rcx,QWORD PTR [rsp+0x50]
  daa5e0:	31 d2                	xor    edx,edx
  daa5e2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  daa5e9:	1f 84 00 00 00 00 00 
  daa5f0:	4c 89 de             	mov    rsi,r11
  daa5f3:	48 89 c7             	mov    rdi,rax
  daa5f6:	49 89 c8             	mov    r8,rcx
  daa5f9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  daa600:	0f 10 47 f0          	movups xmm0,XMMWORD PTR [rdi-0x10]
  daa604:	0f 10 0f             	movups xmm1,XMMWORD PTR [rdi]
  daa607:	0f 28 d0             	movaps xmm2,xmm0
  daa60a:	0f 14 d1             	unpcklps xmm2,xmm1
  daa60d:	0f 15 c1             	unpckhps xmm0,xmm1
  daa610:	41 0f 2b 10          	movntps XMMWORD PTR [r8],xmm2
  daa614:	4d 8d 48 10          	lea    r9,[r8+0x10]
  daa618:	41 0f 2b 01          	movntps XMMWORD PTR [r9],xmm0
  daa61c:	49 83 c0 20          	add    r8,0x20
  daa620:	4c 01 ef             	add    rdi,r13
  daa623:	48 ff ce             	dec    rsi
  daa626:	75 d8                	jne    daa600 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5980>
  daa628:	48 ff c2             	inc    rdx
  daa62b:	48 03 8c 24 c0 01 00 	add    rcx,QWORD PTR [rsp+0x1c0]
  daa632:	00 
  daa633:	48 83 c0 20          	add    rax,0x20
  daa637:	48 39 da             	cmp    rdx,rbx
  daa63a:	75 b4                	jne    daa5f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5970>
  daa63c:	e9 ff fb ff ff       	jmp    daa240 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x55c0>
  daa641:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  daa648:	0f 1f 84 00 00 00 00 
  daa64f:	00 
  daa650:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
  daa657:	00 
  daa658:	48 8b 8c 24 80 00 00 	mov    rcx,QWORD PTR [rsp+0x80]
  daa65f:	00 
  daa660:	31 d2                	xor    edx,edx
  daa662:	eb 24                	jmp    daa688 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5a08>
  daa664:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  daa66b:	00 00 00 00 00 
  daa670:	48 ff c2             	inc    rdx
  daa673:	48 83 c1 20          	add    rcx,0x20
  daa677:	48 03 84 24 c0 01 00 	add    rax,QWORD PTR [rsp+0x1c0]
  daa67e:	00 
  daa67f:	48 39 da             	cmp    rdx,rbx
  daa682:	0f 84 b8 fb ff ff    	je     daa240 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x55c0>
  daa688:	48 89 d6             	mov    rsi,rdx
  daa68b:	48 c1 e6 05          	shl    rsi,0x5
  daa68f:	48 03 74 24 38       	add    rsi,QWORD PTR [rsp+0x38]
  daa694:	48 89 d7             	mov    rdi,rdx
  daa697:	48 0f af 7c 24 20    	imul   rdi,QWORD PTR [rsp+0x20]
  daa69d:	48 03 bc 24 a0 01 00 	add    rdi,QWORD PTR [rsp+0x1a0]
  daa6a4:	00 
  daa6a5:	4c 8b 84 24 c0 00 00 	mov    r8,QWORD PTR [rsp+0xc0]
  daa6ac:	00 
  daa6ad:	49 8d 3c f8          	lea    rdi,[r8+rdi*8]
  daa6b1:	49 89 c1             	mov    r9,rax
  daa6b4:	49 89 ca             	mov    r10,rcx
  daa6b7:	45 31 c0             	xor    r8d,r8d
  daa6ba:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  daa6c0:	41 0f 10 42 f0       	movups xmm0,XMMWORD PTR [r10-0x10]
  daa6c5:	41 0f 10 0a          	movups xmm1,XMMWORD PTR [r10]
  daa6c9:	0f 28 d0             	movaps xmm2,xmm0
  daa6cc:	0f 14 d1             	unpcklps xmm2,xmm1
  daa6cf:	0f 15 c1             	unpckhps xmm0,xmm1
  daa6d2:	41 0f 11 51 d0       	movups XMMWORD PTR [r9-0x30],xmm2
  daa6d7:	41 0f 11 41 e0       	movups XMMWORD PTR [r9-0x20],xmm0
  daa6dc:	49 83 c0 02          	add    r8,0x2
  daa6e0:	43 0f 10 44 2a f0    	movups xmm0,XMMWORD PTR [r10+r13*1-0x10]
  daa6e6:	43 0f 10 0c 2a       	movups xmm1,XMMWORD PTR [r10+r13*1]
  daa6eb:	0f 28 d0             	movaps xmm2,xmm0
  daa6ee:	0f 14 d1             	unpcklps xmm2,xmm1
  daa6f1:	0f 15 c1             	unpckhps xmm0,xmm1
  daa6f4:	41 0f 11 51 f0       	movups XMMWORD PTR [r9-0x10],xmm2
  daa6f9:	41 0f 11 01          	movups XMMWORD PTR [r9],xmm0
  daa6fd:	4d 01 e2             	add    r10,r12
  daa700:	49 83 c1 40          	add    r9,0x40
  daa704:	4c 39 c5             	cmp    rbp,r8
  daa707:	75 b7                	jne    daa6c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5a40>
  daa709:	41 f6 c3 01          	test   r11b,0x1
  daa70d:	0f 84 5d ff ff ff    	je     daa670 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x59f0>
  daa713:	4d 89 c1             	mov    r9,r8
  daa716:	4d 0f af cd          	imul   r9,r13
  daa71a:	42 0f 10 04 0e       	movups xmm0,XMMWORD PTR [rsi+r9*1]
  daa71f:	42 0f 10 4c 0e 10    	movups xmm1,XMMWORD PTR [rsi+r9*1+0x10]
  daa725:	0f 28 d0             	movaps xmm2,xmm0
  daa728:	0f 14 d1             	unpcklps xmm2,xmm1
  daa72b:	0f 15 c1             	unpckhps xmm0,xmm1
  daa72e:	49 c1 e0 05          	shl    r8,0x5
  daa732:	42 0f 11 14 07       	movups XMMWORD PTR [rdi+r8*1],xmm2
  daa737:	42 0f 11 44 07 10    	movups XMMWORD PTR [rdi+r8*1+0x10],xmm0
  daa73d:	e9 2e ff ff ff       	jmp    daa670 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x59f0>
  daa742:	89 d0                	mov    eax,edx
  daa744:	31 d2                	xor    edx,edx
  daa746:	41 f7 f7             	div    r15d
  daa749:	40 20 ac 24 e0 00 00 	and    BYTE PTR [rsp+0xe0],bpl
  daa750:	00 
  daa751:	31 ff                	xor    edi,edi
  daa753:	48 85 d2             	test   rdx,rdx
  daa756:	40 0f 95 c7          	setne  dil
  daa75a:	48 01 c7             	add    rdi,rax
  daa75d:	0f 84 ff 05 00 00    	je     daad62 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x60e2>
  daa763:	4d 85 f6             	test   r14,r14
  daa766:	0f 84 d8 06 00 00    	je     daae44 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x61c4>
  daa76c:	4a 8d 04 6d 00 00 00 	lea    rax,[r13*2+0x0]
  daa773:	00 
  daa774:	4c 01 e8             	add    rax,r13
  daa777:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa77c:	48 8d 0c c2          	lea    rcx,[rdx+rax*8]
  daa780:	48 89 4c 24 40       	mov    QWORD PTR [rsp+0x40],rcx
  daa785:	48 8b b4 24 88 01 00 	mov    rsi,QWORD PTR [rsp+0x188]
  daa78c:	00 
  daa78d:	48 c1 e6 03          	shl    rsi,0x3
  daa791:	48 8b 8c 24 90 01 00 	mov    rcx,QWORD PTR [rsp+0x190]
  daa798:	00 
  daa799:	4c 8b 89 90 00 00 00 	mov    r9,QWORD PTR [rcx+0x90]
  daa7a0:	4b 8d 0c 09          	lea    rcx,[r9+r9*1]
  daa7a4:	48 89 8c 24 98 00 00 	mov    QWORD PTR [rsp+0x98],rcx
  daa7ab:	00 
  daa7ac:	4a 8d 0c cd 00 00 00 	lea    rcx,[r9*8+0x0]
  daa7b3:	00 
  daa7b4:	48 89 4c 24 58       	mov    QWORD PTR [rsp+0x58],rcx
  daa7b9:	4c 89 c1             	mov    rcx,r8
  daa7bc:	48 83 e1 fe          	and    rcx,0xfffffffffffffffe
  daa7c0:	48 89 8c 24 70 01 00 	mov    QWORD PTR [rsp+0x170],rcx
  daa7c7:	00 
  daa7c8:	48 8d 04 c2          	lea    rax,[rdx+rax*8]
  daa7cc:	48 83 c0 20          	add    rax,0x20
  daa7d0:	48 89 84 24 f0 01 00 	mov    QWORD PTR [rsp+0x1f0],rax
  daa7d7:	00 
  daa7d8:	49 8d 46 ff          	lea    rax,[r14-0x1]
  daa7dc:	48 89 84 24 b0 01 00 	mov    QWORD PTR [rsp+0x1b0],rax
  daa7e3:	00 
  daa7e4:	48 8b 8c 24 d8 00 00 	mov    rcx,QWORD PTR [rsp+0xd8]
  daa7eb:	00 
  daa7ec:	48 c1 e1 04          	shl    rcx,0x4
  daa7f0:	48 01 f1             	add    rcx,rsi
  daa7f3:	48 8b 84 24 88 00 00 	mov    rax,QWORD PTR [rsp+0x88]
  daa7fa:	00 
  daa7fb:	48 01 c8             	add    rax,rcx
  daa7fe:	48 83 c0 10          	add    rax,0x10
  daa802:	48 89 84 24 80 00 00 	mov    QWORD PTR [rsp+0x80],rax
  daa809:	00 
  daa80a:	49 c1 e1 04          	shl    r9,0x4
  daa80e:	4c 89 4c 24 10       	mov    QWORD PTR [rsp+0x10],r9
  daa813:	48 8b 84 24 c0 00 00 	mov    rax,QWORD PTR [rsp+0xc0]
  daa81a:	00 
  daa81b:	48 8d 48 30          	lea    rcx,[rax+0x30]
  daa81f:	48 89 8c 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rcx
  daa826:	00 
  daa827:	49 c1 e0 05          	shl    r8,0x5
  daa82b:	4c 89 84 24 d0 00 00 	mov    QWORD PTR [rsp+0xd0],r8
  daa832:	00 
  daa833:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  daa838:	48 8d 0c cd 00 00 00 	lea    rcx,[rcx*8+0x0]
  daa83f:	00 
  daa840:	48 89 8c 24 c0 01 00 	mov    QWORD PTR [rsp+0x1c0],rcx
  daa847:	00 
  daa848:	31 c9                	xor    ecx,ecx
  daa84a:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
  daa84f:	eb 3a                	jmp    daa88b <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5c0b>
  daa851:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  daa858:	0f 1f 84 00 00 00 00 
  daa85f:	00 
  daa860:	48 8b 84 24 d0 00 00 	mov    rax,QWORD PTR [rsp+0xd0]
  daa867:	00 
  daa868:	48 01 84 24 90 00 00 	add    QWORD PTR [rsp+0x90],rax
  daa86f:	00 
  daa870:	48 01 44 24 50       	add    QWORD PTR [rsp+0x50],rax
  daa875:	48 8b bc 24 a8 00 00 	mov    rdi,QWORD PTR [rsp+0xa8]
  daa87c:	00 
  daa87d:	48 85 ff             	test   rdi,rdi
  daa880:	48 8b 4c 24 78       	mov    rcx,QWORD PTR [rsp+0x78]
  daa885:	0f 84 d7 04 00 00    	je     daad62 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x60e2>
  daa88b:	4a 8d 04 39          	lea    rax,[rcx+r15*1]
  daa88f:	48 89 44 24 78       	mov    QWORD PTR [rsp+0x78],rax
  daa894:	48 ff cf             	dec    rdi
  daa897:	48 89 bc 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],rdi
  daa89e:	00 
  daa89f:	48 89 8c 24 a0 01 00 	mov    QWORD PTR [rsp+0x1a0],rcx
  daa8a6:	00 
  daa8a7:	48 8d 04 09          	lea    rax,[rcx+rcx*1]
  daa8ab:	48 89 84 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],rax
  daa8b2:	00 
  daa8b3:	31 d2                	xor    edx,edx
  daa8b5:	eb 49                	jmp    daa900 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5c80>
  daa8b7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  daa8be:	00 00 
  daa8c0:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  daa8c5:	48 ff c2             	inc    rdx
  daa8c8:	4c 8b 9c 24 b0 00 00 	mov    r11,QWORD PTR [rsp+0xb0]
  daa8cf:	00 
  daa8d0:	4c 39 da             	cmp    rdx,r11
  daa8d3:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  daa8d8:	4c 8b b4 24 e0 01 00 	mov    r14,QWORD PTR [rsp+0x1e0]
  daa8df:	00 
  daa8e0:	4c 8b bc 24 d0 01 00 	mov    r15,QWORD PTR [rsp+0x1d0]
  daa8e7:	00 
  daa8e8:	4c 8b 64 24 10       	mov    r12,QWORD PTR [rsp+0x10]
  daa8ed:	4c 8b 6c 24 58       	mov    r13,QWORD PTR [rsp+0x58]
  daa8f2:	48 8b ac 24 70 01 00 	mov    rbp,QWORD PTR [rsp+0x170]
  daa8f9:	00 
  daa8fa:	0f 84 e0 02 00 00    	je     daabe0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5f60>
  daa900:	48 89 d0             	mov    rax,rdx
  daa903:	48 0f af 84 24 98 00 	imul   rax,QWORD PTR [rsp+0x98]
  daa90a:	00 00 
  daa90c:	48 8b 4c 24 38       	mov    rcx,QWORD PTR [rsp+0x38]
  daa911:	48 8d 04 81          	lea    rax,[rcx+rax*4]
  daa915:	48 89 04 24          	mov    QWORD PTR [rsp],rax
  daa919:	48 8b 84 24 b8 00 00 	mov    rax,QWORD PTR [rsp+0xb8]
  daa920:	00 
  daa921:	48 8d 04 d0          	lea    rax,[rax+rdx*8]
  daa925:	48 0f af c3          	imul   rax,rbx
  daa929:	48 8b 8c 24 88 00 00 	mov    rcx,QWORD PTR [rsp+0x88]
  daa930:	00 
  daa931:	48 8d 3c 81          	lea    rdi,[rcx+rax*4]
  daa935:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
  daa93a:	48 8b 00             	mov    rax,QWORD PTR [rax]
  daa93d:	48 83 f8 02          	cmp    rax,0x2
  daa941:	48 89 54 24 08       	mov    QWORD PTR [rsp+0x8],rdx
  daa946:	74 58                	je     daa9a0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5d20>
  daa948:	48 83 f8 04          	cmp    rax,0x4
  daa94c:	74 32                	je     daa980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5d00>
  daa94e:	48 83 f8 08          	cmp    rax,0x8
  daa952:	0f 85 54 04 00 00    	jne    daadac <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x612c>
  daa958:	48 8b 34 24          	mov    rsi,QWORD PTR [rsp]
  daa95c:	48 89 da             	mov    rdx,rbx
  daa95f:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [rsp+0x60]
  daa964:	e8 57 83 fd ff       	call   d82cc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  daa969:	49 83 fe 02          	cmp    r14,0x2
  daa96d:	0f 82 4d ff ff ff    	jb     daa8c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5c40>
  daa973:	eb 46                	jmp    daa9bb <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5d3b>
  daa975:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  daa97c:	00 00 00 00 
  daa980:	48 8b 34 24          	mov    rsi,QWORD PTR [rsp]
  daa984:	48 89 da             	mov    rdx,rbx
  daa987:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [rsp+0x60]
  daa98c:	e8 ef c6 fd ff       	call   d87080 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  daa991:	49 83 fe 02          	cmp    r14,0x2
  daa995:	0f 82 25 ff ff ff    	jb     daa8c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5c40>
  daa99b:	eb 1e                	jmp    daa9bb <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5d3b>
  daa99d:	0f 1f 00             	nop    DWORD PTR [rax]
  daa9a0:	48 8b 34 24          	mov    rsi,QWORD PTR [rsp]
  daa9a4:	48 89 da             	mov    rdx,rbx
  daa9a7:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [rsp+0x60]
  daa9ac:	e8 4f 91 ff ff       	call   da3b00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  daa9b1:	49 83 fe 02          	cmp    r14,0x2
  daa9b5:	0f 82 05 ff ff ff    	jb     daa8c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5c40>
  daa9bb:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
  daa9c0:	4c 8b 38             	mov    r15,QWORD PTR [rax]
  daa9c3:	4c 8b ac 24 b0 01 00 	mov    r13,QWORD PTR [rsp+0x1b0]
  daa9ca:	00 
  daa9cb:	48 8b ac 24 f0 01 00 	mov    rbp,QWORD PTR [rsp+0x1f0]
  daa9d2:	00 
  daa9d3:	4c 8b 24 24          	mov    r12,QWORD PTR [rsp]
  daa9d7:	48 8b 9c 24 10 02 00 	mov    rbx,QWORD PTR [rsp+0x210]
  daa9de:	00 
  daa9df:	eb 40                	jmp    daaa21 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5da1>
  daa9e1:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [rsp+0x60]
  daa9e6:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  daa9ed:	00 
  daa9ee:	48 89 df             	mov    rdi,rbx
  daa9f1:	4c 89 e6             	mov    rsi,r12
  daa9f4:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  daa9f9:	4c 89 f9             	mov    rcx,r15
  daa9fc:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  daaa03:	00 
  daaa04:	e8 77 85 f1 ff       	call   cc2f80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daaa09:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  daaa10:	4d 0f af fe          	imul   r15,r14
  daaa14:	48 83 c5 18          	add    rbp,0x18
  daaa18:	49 ff cd             	dec    r13
  daaa1b:	0f 84 9f fe ff ff    	je     daa8c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5c40>
  daaa21:	48 89 d8             	mov    rax,rbx
  daaa24:	4c 89 e3             	mov    rbx,r12
  daaa27:	4c 8b 75 f8          	mov    r14,QWORD PTR [rbp-0x8]
  daaa2b:	49 83 fd 01          	cmp    r13,0x1
  daaa2f:	49 89 c4             	mov    r12,rax
  daaa32:	4c 0f 44 24 24       	cmove  r12,QWORD PTR [rsp]
  daaa37:	4c 8b 45 00          	mov    r8,QWORD PTR [rbp+0x0]
  daaa3b:	4c 03 44 24 30       	add    r8,QWORD PTR [rsp+0x30]
  daaa40:	4c 89 74 24 48       	mov    QWORD PTR [rsp+0x48],r14
  daaa45:	49 8d 46 fe          	lea    rax,[r14-0x2]
  daaa49:	48 83 f8 0e          	cmp    rax,0xe
  daaa4d:	0f 87 22 03 00 00    	ja     daad75 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x60f5>
  daaa53:	48 8d 0d 06 8a 2f ff 	lea    rcx,[rip+0xffffffffff2f8a06]        # a3460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30910>
  daaa5a:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  daaa5e:	48 01 c8             	add    rax,rcx
  daaa61:	ff e0                	jmp    rax
  daaa63:	48 89 df             	mov    rdi,rbx
  daaa66:	4c 89 e6             	mov    rsi,r12
  daaa69:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  daaa6e:	4c 89 f9             	mov    rcx,r15
  daaa71:	e8 ca 00 f1 ff       	call   cbab40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daaa76:	eb 98                	jmp    daaa10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5d90>
  daaa78:	48 89 df             	mov    rdi,rbx
  daaa7b:	4c 89 e6             	mov    rsi,r12
  daaa7e:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  daaa83:	4c 89 f9             	mov    rcx,r15
  daaa86:	e8 35 4b f1 ff       	call   cbf5c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daaa8b:	eb 83                	jmp    daaa10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5d90>
  daaa8d:	48 89 df             	mov    rdi,rbx
  daaa90:	4c 89 e6             	mov    rsi,r12
  daaa93:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  daaa98:	4c 89 f9             	mov    rcx,r15
  daaa9b:	e8 20 0a f1 ff       	call   cbb4c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daaaa0:	e9 6b ff ff ff       	jmp    daaa10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5d90>
  daaaa5:	48 89 df             	mov    rdi,rbx
  daaaa8:	4c 89 e6             	mov    rsi,r12
  daaaab:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  daaab0:	4c 89 f9             	mov    rcx,r15
  daaab3:	e8 48 60 f1 ff       	call   cc0b00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daaab8:	e9 53 ff ff ff       	jmp    daaa10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5d90>
  daaabd:	48 89 df             	mov    rdi,rbx
  daaac0:	4c 89 e6             	mov    rsi,r12
  daaac3:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  daaac8:	4c 89 f9             	mov    rcx,r15
  daaacb:	e8 70 2e f1 ff       	call   cbd940 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daaad0:	e9 3b ff ff ff       	jmp    daaa10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5d90>
  daaad5:	48 89 df             	mov    rdi,rbx
  daaad8:	4c 89 e6             	mov    rsi,r12
  daaadb:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  daaae0:	4c 89 f9             	mov    rcx,r15
  daaae3:	e8 d8 03 f1 ff       	call   cbaec0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daaae8:	e9 23 ff ff ff       	jmp    daaa10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5d90>
  daaaed:	48 89 df             	mov    rdi,rbx
  daaaf0:	4c 89 e6             	mov    rsi,r12
  daaaf3:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  daaaf8:	4c 89 f9             	mov    rcx,r15
  daaafb:	e8 40 06 f1 ff       	call   cbb140 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daab00:	e9 0b ff ff ff       	jmp    daaa10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5d90>
  daab05:	48 89 df             	mov    rdi,rbx
  daab08:	4c 89 e6             	mov    rsi,r12
  daab0b:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  daab10:	4c 89 f9             	mov    rcx,r15
  daab13:	e8 a8 1a f1 ff       	call   cbc5c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daab18:	e9 f3 fe ff ff       	jmp    daaa10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5d90>
  daab1d:	48 89 df             	mov    rdi,rbx
  daab20:	4c 89 e6             	mov    rsi,r12
  daab23:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  daab28:	4c 89 f9             	mov    rcx,r15
  daab2b:	e8 50 01 f1 ff       	call   cbac80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daab30:	e9 db fe ff ff       	jmp    daaa10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5d90>
  daab35:	48 89 df             	mov    rdi,rbx
  daab38:	4c 89 e6             	mov    rsi,r12
  daab3b:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  daab40:	4c 89 f9             	mov    rcx,r15
  daab43:	e8 b8 0d f1 ff       	call   cbb900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daab48:	e9 c3 fe ff ff       	jmp    daaa10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5d90>
  daab4d:	48 89 df             	mov    rdi,rbx
  daab50:	4c 89 e6             	mov    rsi,r12
  daab53:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  daab58:	4c 89 f9             	mov    rcx,r15
  daab5b:	e8 a0 71 f1 ff       	call   cc1d00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daab60:	e9 ab fe ff ff       	jmp    daaa10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5d90>
  daab65:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [rsp+0x60]
  daab6a:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  daab71:	00 
  daab72:	48 89 df             	mov    rdi,rbx
  daab75:	4c 89 e6             	mov    rsi,r12
  daab78:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  daab7d:	4c 89 f9             	mov    rcx,r15
  daab80:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  daab87:	00 
  daab88:	e8 33 14 f1 ff       	call   cbbfc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daab8d:	e9 7e fe ff ff       	jmp    daaa10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5d90>
  daab92:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [rsp+0x60]
  daab97:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  daab9e:	00 
  daab9f:	48 89 df             	mov    rdi,rbx
  daaba2:	4c 89 e6             	mov    rsi,r12
  daaba5:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  daabaa:	4c 89 f9             	mov    rcx,r15
  daabad:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  daabb4:	00 
  daabb5:	e8 c6 3d f1 ff       	call   cbe980 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daabba:	e9 51 fe ff ff       	jmp    daaa10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5d90>
  daabbf:	48 89 df             	mov    rdi,rbx
  daabc2:	4c 89 e6             	mov    rsi,r12
  daabc5:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  daabca:	4c 89 f9             	mov    rcx,r15
  daabcd:	e8 2e 23 f1 ff       	call   cbcf00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daabd2:	e9 39 fe ff ff       	jmp    daaa10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5d90>
  daabd7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  daabde:	00 00 
  daabe0:	48 85 db             	test   rbx,rbx
  daabe3:	0f 84 77 fc ff ff    	je     daa860 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5be0>
  daabe9:	80 bc 24 e0 00 00 00 	cmp    BYTE PTR [rsp+0xe0],0x0
  daabf0:	00 
  daabf1:	74 7d                	je     daac70 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5ff0>
  daabf3:	48 8b 84 24 80 00 00 	mov    rax,QWORD PTR [rsp+0x80]
  daabfa:	00 
  daabfb:	48 8b 4c 24 50       	mov    rcx,QWORD PTR [rsp+0x50]
  daac00:	31 d2                	xor    edx,edx
  daac02:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  daac09:	1f 84 00 00 00 00 00 
  daac10:	4c 89 de             	mov    rsi,r11
  daac13:	48 89 c7             	mov    rdi,rax
  daac16:	49 89 c8             	mov    r8,rcx
  daac19:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  daac20:	0f 10 47 f0          	movups xmm0,XMMWORD PTR [rdi-0x10]
  daac24:	0f 10 0f             	movups xmm1,XMMWORD PTR [rdi]
  daac27:	0f 28 d1             	movaps xmm2,xmm1
  daac2a:	0f 14 d0             	unpcklps xmm2,xmm0
  daac2d:	0f 15 c8             	unpckhps xmm1,xmm0
  daac30:	41 0f 2b 10          	movntps XMMWORD PTR [r8],xmm2
  daac34:	4d 8d 48 10          	lea    r9,[r8+0x10]
  daac38:	41 0f 2b 09          	movntps XMMWORD PTR [r9],xmm1
  daac3c:	49 83 c0 20          	add    r8,0x20
  daac40:	4c 01 ef             	add    rdi,r13
  daac43:	48 ff ce             	dec    rsi
  daac46:	75 d8                	jne    daac20 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5fa0>
  daac48:	48 ff c2             	inc    rdx
  daac4b:	48 03 8c 24 c0 01 00 	add    rcx,QWORD PTR [rsp+0x1c0]
  daac52:	00 
  daac53:	48 83 c0 20          	add    rax,0x20
  daac57:	48 39 da             	cmp    rdx,rbx
  daac5a:	75 b4                	jne    daac10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5f90>
  daac5c:	e9 ff fb ff ff       	jmp    daa860 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5be0>
  daac61:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  daac68:	0f 1f 84 00 00 00 00 
  daac6f:	00 
  daac70:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
  daac77:	00 
  daac78:	48 8b 8c 24 80 00 00 	mov    rcx,QWORD PTR [rsp+0x80]
  daac7f:	00 
  daac80:	31 d2                	xor    edx,edx
  daac82:	eb 24                	jmp    daaca8 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6028>
  daac84:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  daac8b:	00 00 00 00 00 
  daac90:	48 ff c2             	inc    rdx
  daac93:	48 83 c1 20          	add    rcx,0x20
  daac97:	48 03 84 24 c0 01 00 	add    rax,QWORD PTR [rsp+0x1c0]
  daac9e:	00 
  daac9f:	48 39 da             	cmp    rdx,rbx
  daaca2:	0f 84 b8 fb ff ff    	je     daa860 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5be0>
  daaca8:	48 89 d6             	mov    rsi,rdx
  daacab:	48 c1 e6 05          	shl    rsi,0x5
  daacaf:	48 03 74 24 38       	add    rsi,QWORD PTR [rsp+0x38]
  daacb4:	48 89 d7             	mov    rdi,rdx
  daacb7:	48 0f af 7c 24 20    	imul   rdi,QWORD PTR [rsp+0x20]
  daacbd:	48 03 bc 24 a0 01 00 	add    rdi,QWORD PTR [rsp+0x1a0]
  daacc4:	00 
  daacc5:	4c 8b 84 24 c0 00 00 	mov    r8,QWORD PTR [rsp+0xc0]
  daaccc:	00 
  daaccd:	49 8d 3c f8          	lea    rdi,[r8+rdi*8]
  daacd1:	49 89 c1             	mov    r9,rax
  daacd4:	49 89 ca             	mov    r10,rcx
  daacd7:	45 31 c0             	xor    r8d,r8d
  daacda:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  daace0:	41 0f 10 42 f0       	movups xmm0,XMMWORD PTR [r10-0x10]
  daace5:	41 0f 10 0a          	movups xmm1,XMMWORD PTR [r10]
  daace9:	0f 28 d1             	movaps xmm2,xmm1
  daacec:	0f 14 d0             	unpcklps xmm2,xmm0
  daacef:	0f 15 c8             	unpckhps xmm1,xmm0
  daacf2:	41 0f 11 51 d0       	movups XMMWORD PTR [r9-0x30],xmm2
  daacf7:	41 0f 11 49 e0       	movups XMMWORD PTR [r9-0x20],xmm1
  daacfc:	49 83 c0 02          	add    r8,0x2
  daad00:	43 0f 10 44 2a f0    	movups xmm0,XMMWORD PTR [r10+r13*1-0x10]
  daad06:	43 0f 10 0c 2a       	movups xmm1,XMMWORD PTR [r10+r13*1]
  daad0b:	0f 28 d1             	movaps xmm2,xmm1
  daad0e:	0f 14 d0             	unpcklps xmm2,xmm0
  daad11:	0f 15 c8             	unpckhps xmm1,xmm0
  daad14:	41 0f 11 51 f0       	movups XMMWORD PTR [r9-0x10],xmm2
  daad19:	41 0f 11 09          	movups XMMWORD PTR [r9],xmm1
  daad1d:	4d 01 e2             	add    r10,r12
  daad20:	49 83 c1 40          	add    r9,0x40
  daad24:	4c 39 c5             	cmp    rbp,r8
  daad27:	75 b7                	jne    daace0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6060>
  daad29:	41 f6 c3 01          	test   r11b,0x1
  daad2d:	0f 84 5d ff ff ff    	je     daac90 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6010>
  daad33:	4d 89 c1             	mov    r9,r8
  daad36:	4d 0f af cd          	imul   r9,r13
  daad3a:	42 0f 10 04 0e       	movups xmm0,XMMWORD PTR [rsi+r9*1]
  daad3f:	42 0f 10 4c 0e 10    	movups xmm1,XMMWORD PTR [rsi+r9*1+0x10]
  daad45:	0f 28 d1             	movaps xmm2,xmm1
  daad48:	0f 14 d0             	unpcklps xmm2,xmm0
  daad4b:	0f 15 c8             	unpckhps xmm1,xmm0
  daad4e:	49 c1 e0 05          	shl    r8,0x5
  daad52:	42 0f 11 14 07       	movups XMMWORD PTR [rdi+r8*1],xmm2
  daad57:	42 0f 11 4c 07 10    	movups XMMWORD PTR [rdi+r8*1+0x10],xmm1
  daad5d:	e9 2e ff ff ff       	jmp    daac90 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6010>
  daad62:	80 bc 24 e0 00 00 00 	cmp    BYTE PTR [rsp+0xe0],0x0
  daad69:	00 
  daad6a:	0f 85 a4 e4 ff ff    	jne    da9214 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4594>
  daad70:	e9 a2 e4 ff ff       	jmp    da9217 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4597>
  daad75:	48 8d 44 24 48       	lea    rax,[rsp+0x48]
  daad7a:	48 89 84 24 f0 00 00 	mov    QWORD PTR [rsp+0xf0],rax
  daad81:	00 
  daad82:	48 8d 05 f7 33 e7 ff 	lea    rax,[rip+0xffffffffffe733f7]        # c1e180 <<u64 as core::fmt::Display>::fmt>
  daad89:	48 89 84 24 f8 00 00 	mov    QWORD PTR [rsp+0xf8],rax
  daad90:	00 
  daad91:	48 8d 3d 23 33 30 ff 	lea    rdi,[rip+0xffffffffff303323]        # ae0bb <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x3b56b>
  daad98:	48 8d 15 d1 e4 49 00 	lea    rdx,[rip+0x49e4d1]        # 1249270 <__frame_dummy_init_array_entry+0x31018>
  daad9f:	48 8d b4 24 f0 00 00 	lea    rsi,[rsp+0xf0]
  daada6:	00 
  daada7:	e8 54 8b e6 ff       	call   c13900 <core::panicking::panic_fmt>
  daadac:	48 8d 3d f5 b7 31 ff 	lea    rdi,[rip+0xffffffffff31b7f5]        # c65a8 <crc32fast::table::CRC32_TABLE+0x8924>
  daadb3:	48 8d 15 66 e3 49 00 	lea    rdx,[rip+0x49e366]        # 1249120 <__frame_dummy_init_array_entry+0x30ec8>
  daadba:	be 81 00 00 00       	mov    esi,0x81
  daadbf:	e8 3c 8b e6 ff       	call   c13900 <core::panicking::panic_fmt>
  daadc4:	48 8d 3d 1d b8 31 ff 	lea    rdi,[rip+0xffffffffff31b81d]        # c65e8 <crc32fast::table::CRC32_TABLE+0x8964>
  daadcb:	48 8d 15 96 e3 49 00 	lea    rdx,[rip+0x49e396]        # 1249168 <__frame_dummy_init_array_entry+0x30f10>
  daadd2:	be 87 00 00 00       	mov    esi,0x87
  daadd7:	e8 24 8b e6 ff       	call   c13900 <core::panicking::panic_fmt>
  daaddc:	48 8d 3d 97 b8 31 ff 	lea    rdi,[rip+0xffffffffff31b897]        # c667a <crc32fast::table::CRC32_TABLE+0x89f6>
  daade3:	48 8d 15 f6 e3 49 00 	lea    rdx,[rip+0x49e3f6]        # 12491e0 <__frame_dummy_init_array_entry+0x30f88>
  daadea:	be 83 00 00 00       	mov    esi,0x83
  daadef:	e8 0c 8b e6 ff       	call   c13900 <core::panicking::panic_fmt>
  daadf4:	48 8d 3d fe d5 31 ff 	lea    rdi,[rip+0xffffffffff31d5fe]        # c83f9 <oxifft::dft::codelets::simd::large_sizes::bit_reverse_permute_4096::BIT_REV_TABLE+0x100>
  daadfb:	48 8d 15 16 f5 49 00 	lea    rdx,[rip+0x49f516]        # 124a318 <__frame_dummy_init_array_entry+0x320c0>
  daae02:	be 1b 00 00 00       	mov    esi,0x1b
  daae07:	e8 b4 a9 e6 ff       	call   c157c0 <core::panicking::panic>
  daae0c:	48 8d 3d 3d e3 49 00 	lea    rdi,[rip+0x49e33d]        # 1249150 <__frame_dummy_init_array_entry+0x30ef8>
  daae13:	e8 28 ce e6 ff       	call   c17c40 <core::panicking::panic_const::panic_const_div_by_zero>
  daae18:	48 8d 15 a9 e3 49 00 	lea    rdx,[rip+0x49e3a9]        # 12491c8 <__frame_dummy_init_array_entry+0x30f70>
  daae1f:	31 ff                	xor    edi,edi
  daae21:	31 f6                	xor    esi,esi
  daae23:	e8 d8 ab e6 ff       	call   c15a00 <core::panicking::panic_bounds_check>
  daae28:	48 8d 3d c1 e2 49 00 	lea    rdi,[rip+0x49e2c1]        # 12490f0 <__frame_dummy_init_array_entry+0x30e98>
  daae2f:	e8 0c ce e6 ff       	call   c17c40 <core::panicking::panic_const::panic_const_div_by_zero>
  daae34:	48 8d 15 fd e2 49 00 	lea    rdx,[rip+0x49e2fd]        # 1249138 <__frame_dummy_init_array_entry+0x30ee0>
  daae3b:	31 ff                	xor    edi,edi
  daae3d:	31 f6                	xor    esi,esi
  daae3f:	e8 bc ab e6 ff       	call   c15a00 <core::panicking::panic_bounds_check>
  daae44:	48 8d 15 bd e2 49 00 	lea    rdx,[rip+0x49e2bd]        # 1249108 <__frame_dummy_init_array_entry+0x30eb0>
  daae4b:	31 ff                	xor    edi,edi
  daae4d:	31 f6                	xor    esi,esi
  daae4f:	e8 ac ab e6 ff       	call   c15a00 <core::panicking::panic_bounds_check>
