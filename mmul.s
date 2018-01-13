	.file	"mmul.cpp"
	.section	.text$_ZNKSt5ctypeIcE8do_widenEc,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZNKSt5ctypeIcE8do_widenEc
	.def	_ZNKSt5ctypeIcE8do_widenEc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt5ctypeIcE8do_widenEc
_ZNKSt5ctypeIcE8do_widenEc:
.LFB1324:
	.seh_endprologue
	movl	%edx, %eax
	ret
	.seh_endproc
	.text
	.p2align 4,,15
	.def	_ZL10mmul_saxpyiPKfS0_Pf;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL10mmul_saxpyiPKfS0_Pf
_ZL10mmul_saxpyiPKfS0_Pf:
.LFB7830:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$168, %rsp
	.seh_stackalloc	168
	.seh_endprologue
	movl	%ecx, %r13d
	movq	%rdx, 248(%rsp)
	movq	%r8, %rdi
	movq	%r9, %r15
	testl	%ecx, %ecx
	jle	.L32
	movslq	%ecx, %rax
	subq	%r9, %rdx
	movl	$3, 132(%rsp)
	movq	%r9, %r14
	movq	%rax, 144(%rsp)
	salq	$2, %rax
	movq	%rax, (%rsp)
	leaq	32(%r9), %rax
	movq	%rax, 8(%rsp)
	leal	-1(%rcx), %eax
	leaq	4(,%rax,4), %rcx
	movl	%eax, 52(%rsp)
	leaq	4(%rdx,%rax,4), %rax
	movq	%rcx, 136(%rsp)
	movl	$2, 128(%rsp)
	movl	$1, 124(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 104(%rsp)
	movl	$0, 120(%rsp)
	movq	%rax, 152(%rsp)
	.p2align 4,,10
.L13:
	movq	152(%rsp), %rax
	movl	124(%rsp), %ebx
	movl	%r13d, %ecx
	movq	112(%rsp), %r10
	movq	248(%rsp), %r12
	addq	%r14, %rax
	leal	-1(%rbx), %ebp
	movq	%rax, 16(%rsp)
	movq	%r14, %rax
	addq	%r10, %r12
	shrq	$2, %rax
	negq	%rax
	movl	%eax, %esi
	andl	$7, %esi
	leal	7(%rsi), %eax
	subl	%esi, %ecx
	movl	%esi, 32(%rsp)
	movl	%eax, 28(%rsp)
	movslq	%ebx, %rax
	leaq	(%r15,%rax,4), %rax
	movl	%ecx, 36(%rsp)
	movq	%rax, 56(%rsp)
	movslq	128(%rsp), %rax
	leaq	(%r15,%rax,4), %rax
	movq	%rax, 64(%rsp)
	movslq	132(%rsp), %rax
	leaq	(%r15,%rax,4), %rax
	movq	%rax, 72(%rsp)
	leal	3(%rbx), %eax
	cltq
	leaq	(%r15,%rax,4), %rax
	movq	%rax, 80(%rsp)
	leal	4(%rbx), %eax
	cltq
	leaq	(%r15,%rax,4), %rax
	movq	%rax, 88(%rsp)
	leal	5(%rbx), %eax
	movq	104(%rsp), %rbx
	cltq
	leaq	(%r15,%rax,4), %rax
	movq	%rax, 96(%rsp)
	movl	%esi, %eax
	movl	%ecx, %esi
	andl	$-8, %ecx
	leaq	0(,%rax,4), %r11
	leaq	(%rax,%rbx), %rdx
	movl	%ecx, 48(%rsp)
	shrl	$3, %esi
	movq	%r11, 40(%rsp)
	addq	%r10, %r11
	leaq	(%r15,%rdx,4), %rbx
	movq	%rdi, %r10
	addq	%r15, %r11
	xorl	%ecx, %ecx
	.p2align 4,,10
.L12:
	leaq	32(%r10), %rax
	movq	%r10, %r9
	vmovss	(%r12), %xmm0
	subq	%rdi, %r9
	cmpq	%rax, %r14
	setnb	%dl
	cmpq	8(%rsp), %r10
	setnb	%al
	orb	%al, %dl
	je	.L14
	cmpl	$10, %r13d
	jbe	.L14
	movl	52(%rsp), %edx
	cmpl	%edx, 28(%rsp)
	ja	.L15
	movl	32(%rsp), %edx
	testl	%edx, %edx
	je	.L16
	vmovss	(%r10), %xmm1
	vfmadd213ss	(%r14), %xmm0, %xmm1
	vmovss	%xmm1, (%r14)
	cmpl	$1, %edx
	je	.L17
	movq	56(%rsp), %r8
	leal	1(%rcx), %eax
	cltq
	vmovss	(%rdi,%rax,4), %xmm1
	vfmadd213ss	(%r8), %xmm0, %xmm1
	vmovss	%xmm1, (%r8)
	cmpl	$2, %edx
	je	.L18
	movq	64(%rsp), %r8
	leal	2(%rcx), %eax
	cltq
	vmovss	(%rdi,%rax,4), %xmm1
	vfmadd213ss	(%r8), %xmm0, %xmm1
	vmovss	%xmm1, (%r8)
	cmpl	$3, %edx
	je	.L19
	movq	72(%rsp), %r8
	leal	3(%rcx), %eax
	cltq
	vmovss	(%rdi,%rax,4), %xmm1
	vfmadd213ss	(%r8), %xmm0, %xmm1
	vmovss	%xmm1, (%r8)
	cmpl	$4, %edx
	je	.L20
	movq	80(%rsp), %r8
	leal	4(%rcx), %eax
	cltq
	vmovss	(%rdi,%rax,4), %xmm1
	vfmadd213ss	(%r8), %xmm0, %xmm1
	vmovss	%xmm1, (%r8)
	cmpl	$5, %edx
	je	.L21
	movq	88(%rsp), %r8
	leal	5(%rcx), %eax
	cltq
	vmovss	(%rdi,%rax,4), %xmm1
	vfmadd213ss	(%r8), %xmm0, %xmm1
	vmovss	%xmm1, (%r8)
	cmpl	$6, %edx
	je	.L22
	movq	96(%rsp), %rdx
	leal	6(%rcx), %eax
	movl	$7, %r8d
	cltq
	vmovss	(%rdi,%rax,4), %xmm1
	vfmadd213ss	(%rdx), %xmm0, %xmm1
	vmovss	%xmm1, (%rdx)
.L7:
	addq	40(%rsp), %r9
	vbroadcastss	%xmm0, %ymm2
	xorl	%eax, %eax
	xorl	%edx, %edx
	addq	%rdi, %r9
	.p2align 4,,10
.L9:
	vmovups	(%r9,%rax), %ymm1
	vfmadd213ps	(%rbx,%rax), %ymm2, %ymm1
	addl	$1, %edx
	vmovaps	%ymm1, (%r11,%rax)
	addq	$32, %rax
	cmpl	%edx, %esi
	ja	.L9
	movl	48(%rsp), %eax
	addl	%eax, %r8d
	cmpl	%eax, 36(%rsp)
	je	.L11
.L6:
	leal	(%r8,%rbp), %eax
	cltq
	leaq	(%r15,%rax,4), %rdx
	leal	(%rcx,%r8), %eax
	cltq
	vmovss	(%rdi,%rax,4), %xmm1
	vfmadd213ss	(%rdx), %xmm0, %xmm1
	leal	1(%r8), %eax
	vmovss	%xmm1, (%rdx)
	cmpl	%eax, %r13d
	jle	.L11
	leal	(%rax,%rbp), %edx
	addl	%ecx, %eax
	movslq	%edx, %rdx
	cltq
	leaq	(%r15,%rdx,4), %rdx
	vmovss	(%rdi,%rax,4), %xmm1
	leal	2(%r8), %eax
	vfmadd213ss	(%rdx), %xmm0, %xmm1
	vmovss	%xmm1, (%rdx)
	cmpl	%eax, %r13d
	jle	.L11
	leal	(%rax,%rbp), %edx
	addl	%ecx, %eax
	movslq	%edx, %rdx
	cltq
	leaq	(%r15,%rdx,4), %rdx
	vmovss	(%rdi,%rax,4), %xmm1
	leal	3(%r8), %eax
	vfmadd213ss	(%rdx), %xmm0, %xmm1
	vmovss	%xmm1, (%rdx)
	cmpl	%eax, %r13d
	jle	.L11
	leal	(%rax,%rbp), %edx
	addl	%ecx, %eax
	movslq	%edx, %rdx
	cltq
	leaq	(%r15,%rdx,4), %rdx
	vmovss	(%rdi,%rax,4), %xmm1
	leal	4(%r8), %eax
	vfmadd213ss	(%rdx), %xmm0, %xmm1
	vmovss	%xmm1, (%rdx)
	cmpl	%eax, %r13d
	jle	.L11
	leal	(%rax,%rbp), %edx
	addl	%ecx, %eax
	movslq	%edx, %rdx
	cltq
	leaq	(%r15,%rdx,4), %rdx
	vmovss	(%rdi,%rax,4), %xmm1
	leal	5(%r8), %eax
	vfmadd213ss	(%rdx), %xmm0, %xmm1
	vmovss	%xmm1, (%rdx)
	cmpl	%eax, %r13d
	jle	.L11
	leal	(%rax,%rbp), %edx
	addl	%ecx, %eax
	movslq	%edx, %rdx
	cltq
	leaq	(%r15,%rdx,4), %rdx
	vmovss	(%rdi,%rax,4), %xmm1
	leal	6(%r8), %eax
	vfmadd213ss	(%rdx), %xmm0, %xmm1
	vmovss	%xmm1, (%rdx)
	cmpl	%eax, %r13d
	jle	.L11
	leal	(%rax,%rbp), %edx
	addl	%ecx, %eax
	movslq	%edx, %rdx
	cltq
	leaq	(%r15,%rdx,4), %rdx
	vmovss	(%rdi,%rax,4), %xmm1
	leal	7(%r8), %eax
	vfmadd213ss	(%rdx), %xmm0, %xmm1
	vmovss	%xmm1, (%rdx)
	cmpl	%eax, %r13d
	jle	.L11
	leal	(%rax,%rbp), %edx
	addl	%ecx, %eax
	movslq	%edx, %rdx
	cltq
	leaq	(%r15,%rdx,4), %rdx
	vmovss	(%rdi,%rax,4), %xmm1
	leal	8(%r8), %eax
	vfmadd213ss	(%rdx), %xmm0, %xmm1
	vmovss	%xmm1, (%rdx)
	cmpl	%eax, %r13d
	jle	.L11
	leal	(%rax,%rbp), %edx
	addl	%ecx, %eax
	movslq	%edx, %rdx
	cltq
	leaq	(%r15,%rdx,4), %rdx
	vmovss	(%rdi,%rax,4), %xmm1
	leal	9(%r8), %eax
	vfmadd213ss	(%rdx), %xmm0, %xmm1
	vmovss	%xmm1, (%rdx)
	cmpl	%eax, %r13d
	jle	.L11
	leal	(%rax,%rbp), %edx
	addl	%ecx, %eax
	movslq	%edx, %rdx
	cltq
	leaq	(%r15,%rdx,4), %rdx
	vmovss	(%rdi,%rax,4), %xmm1
	leal	10(%r8), %eax
	vfmadd213ss	(%rdx), %xmm0, %xmm1
	vmovss	%xmm1, (%rdx)
	cmpl	%eax, %r13d
	jle	.L11
	leal	(%rax,%rbp), %edx
	addl	%ecx, %eax
	movslq	%edx, %rdx
	cltq
	leaq	(%r15,%rdx,4), %rdx
	vmovss	(%rdi,%rax,4), %xmm1
	leal	11(%r8), %eax
	vfmadd213ss	(%rdx), %xmm0, %xmm1
	vmovss	%xmm1, (%rdx)
	cmpl	%eax, %r13d
	jle	.L11
	leal	(%rax,%rbp), %edx
	addl	%ecx, %eax
	movslq	%edx, %rdx
	cltq
	leaq	(%r15,%rdx,4), %rdx
	vmovss	(%rdi,%rax,4), %xmm1
	leal	12(%r8), %eax
	vfmadd213ss	(%rdx), %xmm0, %xmm1
	vmovss	%xmm1, (%rdx)
	cmpl	%eax, %r13d
	jle	.L11
	leal	(%rax,%rbp), %edx
	addl	%ecx, %eax
	addl	$13, %r8d
	movslq	%edx, %rdx
	cltq
	leaq	(%r15,%rdx,4), %rdx
	vmovss	(%rdi,%rax,4), %xmm1
	vfmadd213ss	(%rdx), %xmm0, %xmm1
	vmovss	%xmm1, (%rdx)
	cmpl	%r8d, %r13d
	jle	.L11
	leal	(%r8,%rbp), %eax
	addl	%ecx, %r8d
	cltq
	movslq	%r8d, %rdx
	leaq	(%r15,%rax,4), %rax
	vmovss	(%rax), %xmm3
	vfmadd132ss	(%rdi,%rdx,4), %xmm3, %xmm0
	vmovss	%xmm0, (%rax)
	.p2align 4,,10
.L11:
	addl	%r13d, %ecx
	addq	$4, %r12
	addq	(%rsp), %r10
	cmpq	16(%rsp), %r12
	jne	.L12
	movq	(%rsp), %rsi
	addl	$1, 120(%rsp)
	movl	120(%rsp), %eax
	movq	144(%rsp), %rcx
	addq	%rsi, %r14
	addq	%rcx, 104(%rsp)
	addq	%rsi, 8(%rsp)
	addq	%rsi, 112(%rsp)
	addl	%r13d, 124(%rsp)
	addl	%r13d, 128(%rsp)
	addl	%r13d, 132(%rsp)
	cmpl	%eax, %r13d
	jne	.L13
	vzeroupper
.L32:
	addq	$168, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
.L14:
	movq	136(%rsp), %rdx
	xorl	%eax, %eax
	.p2align 4,,10
.L5:
	vmovss	(%r10,%rax), %xmm1
	vfmadd213ss	(%r14,%rax), %xmm0, %xmm1
	vmovss	%xmm1, (%r14,%rax)
	addq	$4, %rax
	cmpq	%rdx, %rax
	jne	.L5
	jmp	.L11
	.p2align 4,,10
.L17:
	movl	$1, %r8d
	jmp	.L7
	.p2align 4,,10
.L16:
	xorl	%r8d, %r8d
	jmp	.L7
	.p2align 4,,10
.L18:
	movl	$2, %r8d
	jmp	.L7
	.p2align 4,,10
.L15:
	xorl	%r8d, %r8d
	jmp	.L6
	.p2align 4,,10
.L19:
	movl	$3, %r8d
	jmp	.L7
	.p2align 4,,10
.L20:
	movl	$4, %r8d
	jmp	.L7
	.p2align 4,,10
.L21:
	movl	$5, %r8d
	jmp	.L7
.L22:
	movl	$6, %r8d
	jmp	.L7
	.seh_endproc
	.p2align 4,,15
	.def	_ZL12mmul_blockediPKfS0_Pf;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL12mmul_blockediPKfS0_Pf
_ZL12mmul_blockediPKfS0_Pf:
.LFB7831:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$344, %rsp
	.seh_stackalloc	344
	.seh_endprologue
	movl	%ecx, 416(%rsp)
	testl	%ecx, %ecx
	jle	.L51
	leal	0(,%rcx,8), %r10d
	movl	%ecx, %ebx
	movq	%r8, %r14
	movq	%rdx, 88(%rsp)
	movslq	%r10d, %rcx
	subl	416(%rsp), %r10d
	movq	%r14, %r13
	leaq	0(,%rcx,4), %rax
	movslq	%r10d, %r10
	movq	%rax, 264(%rsp)
	movslq	416(%rsp), %rax
	salq	$2, %rax
	leaq	(%r8,%rax), %rsi
	leal	(%rbx,%rbx,2), %r8d
	leaq	(%rsi,%rax), %rdi
	movq	%rsi, 152(%rsp)
	movslq	%r8d, %rbx
	addl	%r8d, %r8d
	leaq	(%rdi,%rax), %rsi
	movq	%rdi, 144(%rsp)
	movslq	%r8d, %r8
	movl	416(%rsp), %edi
	movq	%rsi, 136(%rsp)
	leal	0(,%rdi,4), %r11d
	leaq	(%rsi,%rax), %rdi
	leaq	(%rdi,%rax), %rsi
	movq	%rdi, 128(%rsp)
	movslq	%r11d, %r15
	addl	416(%rsp), %r11d
	leaq	(%rsi,%rax), %rdi
	movq	%rsi, 120(%rsp)
	movslq	%r11d, %r11
	addq	%rdi, %rax
	movq	%rdi, 112(%rsp)
	movq	%rdx, %rdi
	movq	%rax, 104(%rsp)
	movl	416(%rsp), %eax
	movq	%r15, 72(%rsp)
	subl	$1, %eax
	shrl	$3, %eax
	movq	%rax, %rsi
	leaq	8(,%rax,8), %rax
	movq	%rax, 248(%rsp)
	leaq	32(%r9), %rax
	salq	$5, %rsi
	movq	%rax, 280(%rsp)
	leaq	32(%r15), %rax
	leaq	32(%rdi,%rsi), %rsi
	movq	%rax, 320(%rsp)
	leaq	32(%rcx), %rax
	movq	%rax, 272(%rsp)
	leaq	32(,%rbx,4), %rax
	movq	%rax, 328(%rsp)
	leaq	32(,%r15,4), %rax
	movq	%rax, 312(%rsp)
	leaq	32(,%r11,4), %rax
	movq	%rax, 304(%rsp)
	leaq	32(,%r8,4), %rax
	movq	%rax, 296(%rsp)
	leaq	32(,%r10,4), %rax
	movq	%rsi, 256(%rsp)
	movq	%rax, 288(%rsp)
.L40:
	movq	280(%rsp), %rax
	movq	104(%rsp), %r12
	movq	%r13, %r14
	movq	$0, 168(%rsp)
	movq	$0, 80(%rsp)
	movq	112(%rsp), %rbp
	movq	%rax, 160(%rsp)
	leaq	32(%r13), %rax
	movq	120(%rsp), %rdi
	movq	%rax, 64(%rsp)
	movq	320(%rsp), %rax
	movq	%r13, 176(%rsp)
	movq	128(%rsp), %rsi
	addq	%r13, %rax
	movq	136(%rsp), %rbx
	movq	144(%rsp), %r11
	movq	%rax, 56(%rsp)
	movq	272(%rsp), %rax
	movq	152(%rsp), %r10
	addq	%r13, %rax
	movq	%rax, 48(%rsp)
	movq	328(%rsp), %rax
	addq	%r13, %rax
	movq	%rax, 40(%rsp)
	movq	312(%rsp), %rax
	addq	%r13, %rax
	movq	%rax, 32(%rsp)
	movq	304(%rsp), %rax
	addq	%r13, %rax
	movq	%rax, 24(%rsp)
	movq	296(%rsp), %rax
	addq	%r13, %rax
	movq	%rax, 16(%rsp)
	movq	288(%rsp), %rax
	addq	%r13, %rax
	movq	%rax, 8(%rsp)
	.p2align 4,,10
.L39:
	movq	80(%rsp), %rcx
	movq	160(%rsp), %r9
	xorl	%r13d, %r13d
	movq	88(%rsp), %rax
	addq	$8, %rcx
	leaq	-32(%r9), %r8
	movq	%rcx, 96(%rsp)
	.p2align 4,,10
.L38:
	cmpq	%r10, %r9
	setbe	%r15b
	cmpq	56(%rsp), %r8
	setnb	%dl
	orl	%r15d, %edx
	cmpq	%r14, %r9
	setbe	%cl
	cmpq	64(%rsp), %r8
	setnb	%r15b
	orl	%ecx, %r15d
	andl	%edx, %r15d
	cmpq	%r11, %r9
	setbe	%cl
	cmpq	48(%rsp), %r8
	setnb	%dl
	orl	%ecx, %edx
	andl	%r15d, %edx
	cmpq	%rbx, %r9
	setbe	%cl
	cmpq	40(%rsp), %r8
	setnb	%r15b
	orl	%ecx, %r15d
	andl	%edx, %r15d
	cmpq	%rsi, %r9
	setbe	%cl
	cmpq	32(%rsp), %r8
	setnb	%dl
	orl	%ecx, %edx
	andl	%r15d, %edx
	cmpq	%rdi, %r9
	setbe	%cl
	cmpq	24(%rsp), %r8
	setnb	%r15b
	orl	%ecx, %r15d
	andl	%edx, %r15d
	cmpq	%rbp, %r9
	setbe	%cl
	cmpq	16(%rsp), %r8
	setnb	%dl
	orl	%ecx, %edx
	andl	%r15d, %edx
	cmpq	%r12, %r9
	setbe	%cl
	cmpq	8(%rsp), %r8
	setnb	%r15b
	orl	%r15d, %ecx
	testb	%cl, %dl
	je	.L35
	leaq	32(%rax), %rdx
	cmpq	%rdx, %r8
	setnb	%cl
	cmpq	%rax, %r9
	setbe	%dl
	orb	%dl, %cl
	je	.L35
	vbroadcastss	(%rax), %ymm0
	vmovups	(%r8), %ymm2
	vfmadd132ps	(%r14), %ymm2, %ymm0
	vbroadcastss	4(%rax), %ymm1
	vfmadd231ps	(%r10), %ymm1, %ymm0
	vbroadcastss	8(%rax), %ymm1
	vfmadd231ps	(%r11), %ymm1, %ymm0
	vbroadcastss	12(%rax), %ymm1
	vfmadd231ps	(%rbx), %ymm1, %ymm0
	vbroadcastss	16(%rax), %ymm1
	vfmadd231ps	(%rsi), %ymm1, %ymm0
	vbroadcastss	20(%rax), %ymm1
	vfmadd231ps	(%rdi), %ymm1, %ymm0
	vbroadcastss	24(%rax), %ymm1
	vfmadd231ps	0(%rbp), %ymm1, %ymm0
	vbroadcastss	28(%rax), %ymm1
	vfmadd231ps	(%r12), %ymm1, %ymm0
	vmovups	%ymm0, (%r8)
.L36:
	movq	72(%rsp), %rcx
	addl	$1, %r13d
	addq	%rcx, %r8
	addq	%rcx, %r9
	addq	%rcx, %rax
	cmpl	%r13d, 416(%rsp)
	jne	.L38
	addq	$32, %r14
	addq	$32, %r10
	addq	$32, %r11
	addq	$32, %rbx
	addq	$32, %rsi
	addq	$32, %rdi
	addq	$32, %rbp
	addq	$32, %r12
	movq	96(%rsp), %rax
	addq	$32, 64(%rsp)
	movq	248(%rsp), %rcx
	addq	$32, 56(%rsp)
	movq	%rax, 80(%rsp)
	subq	$32, 168(%rsp)
	addq	$32, 160(%rsp)
	addq	$32, 48(%rsp)
	addq	$32, 40(%rsp)
	addq	$32, 32(%rsp)
	addq	$32, 24(%rsp)
	addq	$32, 16(%rsp)
	addq	$32, 8(%rsp)
	cmpq	%rcx, %rax
	jne	.L39
	movq	264(%rsp), %rax
	movq	176(%rsp), %r13
	addq	%rax, 152(%rsp)
	addq	%rax, %r13
	addq	%rax, 144(%rsp)
	addq	%rax, 136(%rsp)
	addq	%rax, 128(%rsp)
	addq	%rax, 120(%rsp)
	addq	%rax, 112(%rsp)
	addq	%rax, 104(%rsp)
	addq	$32, 88(%rsp)
	movq	88(%rsp), %rax
	cmpq	%rax, 256(%rsp)
	jne	.L40
	vzeroupper
.L51:
	addq	$344, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
.L35:
	movq	168(%rsp), %rcx
	movl	%r13d, 188(%rsp)
	movq	%rdi, 192(%rsp)
	movq	80(%rsp), %rdx
	movq	%r14, 200(%rsp)
	movq	96(%rsp), %r15
	addq	%r8, %rcx
	movq	%r10, 208(%rsp)
	movq	136(%rsp), %rdi
	movq	%r11, 216(%rsp)
	movq	104(%rsp), %r10
	movq	%rbx, 224(%rsp)
	movq	112(%rsp), %r11
	movq	%rsi, 232(%rsp)
	movq	120(%rsp), %rbx
	movq	%r12, 240(%rsp)
	movq	128(%rsp), %rsi
	movq	152(%rsp), %r13
	movq	176(%rsp), %r14
	movq	144(%rsp), %r12
	.p2align 4,,10
.L37:
	vmovss	(%rcx,%rdx,4), %xmm3
	vmovss	(%r14,%rdx,4), %xmm0
	vfmadd132ss	(%rax), %xmm3, %xmm0
	vmovss	0(%r13,%rdx,4), %xmm4
	vfmadd231ss	4(%rax), %xmm4, %xmm0
	vmovss	(%r12,%rdx,4), %xmm5
	vfmadd231ss	8(%rax), %xmm5, %xmm0
	vmovss	(%rdi,%rdx,4), %xmm3
	vfmadd231ss	12(%rax), %xmm3, %xmm0
	vmovss	(%rsi,%rdx,4), %xmm4
	vfmadd231ss	16(%rax), %xmm4, %xmm0
	vmovss	(%rbx,%rdx,4), %xmm5
	vfmadd231ss	20(%rax), %xmm5, %xmm0
	vmovss	(%r11,%rdx,4), %xmm3
	vfmadd231ss	24(%rax), %xmm3, %xmm0
	vmovss	(%r10,%rdx,4), %xmm4
	vfmadd231ss	28(%rax), %xmm4, %xmm0
	vmovss	%xmm0, (%rcx,%rdx,4)
	addq	$1, %rdx
	cmpq	%r15, %rdx
	jne	.L37
	movl	188(%rsp), %r13d
	movq	192(%rsp), %rdi
	movq	200(%rsp), %r14
	movq	208(%rsp), %r10
	movq	216(%rsp), %r11
	movq	224(%rsp), %rbx
	movq	232(%rsp), %rsi
	movq	240(%rsp), %r12
	jmp	.L36
	.seh_endproc
	.p2align 4,,15
	.def	_ZL14mmul_saxpy_avxiPKfS0_Pf;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL14mmul_saxpy_avxiPKfS0_Pf
_ZL14mmul_saxpy_avxiPKfS0_Pf:
.LFB7826:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	.seh_endprologue
	testl	%ecx, %ecx
	jle	.L60
	leal	-1(%rcx), %r10d
	movslq	%ecx, %rsi
	xorl	%edi, %edi
	movq	%r10, %rax
	leaq	4(%rdx,%r10,4), %rbx
	movq	%r10, %rdx
	salq	$2, %rsi
	shrl	$3, %eax
	negq	%rdx
	movl	%eax, %r10d
	leaq	-4(,%rdx,4), %rbp
	addq	$1, %r10
	salq	$5, %r10
	.p2align 4,,10
.L56:
	leaq	0(%rbp,%rbx), %r11
	movq	%r8, %rdx
	.p2align 4,,10
.L55:
	vbroadcastss	(%r11), %ymm1
	xorl	%eax, %eax
	.p2align 4,,10
.L54:
	vmovaps	(%rdx,%rax), %ymm0
	vfmadd213ps	(%r9,%rax), %ymm1, %ymm0
	vmovaps	%ymm0, (%r9,%rax)
	addq	$32, %rax
	cmpq	%rax, %r10
	jne	.L54
	addq	$4, %r11
	addq	%rsi, %rdx
	cmpq	%rbx, %r11
	jne	.L55
	addl	$1, %edi
	addq	%rsi, %rbx
	addq	%rsi, %r9
	cmpl	%edi, %ecx
	jne	.L56
	vzeroupper
.L60:
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_ZL23mmul_saxpy_avx_unrollediPKfS0_Pf;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL23mmul_saxpy_avx_unrollediPKfS0_Pf
_ZL23mmul_saxpy_avx_unrollediPKfS0_Pf:
.LFB7827:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$24, %rsp
	.seh_stackalloc	24
	.seh_endprologue
	testl	%ecx, %ecx
	jle	.L69
	movslq	%ecx, %rax
	leal	-1(%rcx), %r10d
	movq	%r9, %rsi
	xorl	%r12d, %r12d
	movq	%rax, 8(%rsp)
	leaq	4(%rdx,%r10,4), %rbx
	xorl	%ebp, %ebp
	leaq	256(%r9), %r14
	leaq	0(,%rax,4), %rdi
	movq	%r10, %rax
	negq	%r10
	shrl	$6, %eax
	leaq	-4(,%r10,4), %r15
	movl	%eax, %r13d
	salq	$6, %r13
	.p2align 4,,10
.L65:
	leaq	(%r12,%r13), %rax
	leaq	(%r15,%rbx), %r10
	movq	%r8, %r11
	leaq	(%r14,%rax,4), %r9
	.p2align 4,,10
.L67:
	vbroadcastss	(%r10), %ymm0
	movq	%r11, %rdx
	movq	%rsi, %rax
	.p2align 4,,10
.L64:
	vmovaps	(%rdx), %ymm1
	vfmadd213ps	(%rax), %ymm0, %ymm1
	addq	$256, %rax
	addq	$256, %rdx
	vmovaps	%ymm1, -256(%rax)
	vmovaps	-224(%rdx), %ymm1
	vfmadd213ps	-224(%rax), %ymm0, %ymm1
	vmovaps	%ymm1, -224(%rax)
	vmovaps	-192(%rdx), %ymm1
	vfmadd213ps	-192(%rax), %ymm0, %ymm1
	vmovaps	%ymm1, -192(%rax)
	vmovaps	-160(%rdx), %ymm1
	vfmadd213ps	-160(%rax), %ymm0, %ymm1
	vmovaps	%ymm1, -160(%rax)
	vmovaps	-128(%rdx), %ymm1
	vfmadd213ps	-128(%rax), %ymm0, %ymm1
	vmovaps	%ymm1, -128(%rax)
	vmovaps	-96(%rdx), %ymm1
	vfmadd213ps	-96(%rax), %ymm0, %ymm1
	vmovaps	%ymm1, -96(%rax)
	vmovaps	-64(%rdx), %ymm1
	vfmadd213ps	-64(%rax), %ymm0, %ymm1
	vmovaps	%ymm1, -64(%rax)
	vmovaps	-32(%rdx), %ymm1
	vfmadd213ps	-32(%rax), %ymm0, %ymm1
	vmovaps	%ymm1, -32(%rax)
	cmpq	%rax, %r9
	jne	.L64
	addq	$4, %r10
	addq	%rdi, %r11
	cmpq	%r10, %rbx
	jne	.L67
	addl	$1, %ebp
	addq	%rdi, %rbx
	addq	%rdi, %rsi
	addq	8(%rsp), %r12
	cmpl	%ebp, %ecx
	jne	.L65
	vzeroupper
.L69:
	addq	$24, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_ZL29mmul_saxpy_avx_unrolled_twiceiPKfS0_Pf;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL29mmul_saxpy_avx_unrolled_twiceiPKfS0_Pf
_ZL29mmul_saxpy_avx_unrolled_twiceiPKfS0_Pf:
.LFB7828:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	.seh_endprologue
	testl	%ecx, %ecx
	jle	.L92
	leal	0(,%rcx,8), %eax
	movq	%rdx, 24(%rsp)
	movslq	%ecx, %rsi
	movslq	%eax, %rdx
	movq	%rsi, %r14
	subl	%ecx, %eax
	movq	%rsi, 48(%rsp)
	leaq	0(,%rdx,4), %rbx
	leal	-1(%rcx), %edx
	cltq
	movq	$0, 32(%rsp)
	leaq	0(,%rsi,4), %rdi
	shrl	$6, %edx
	movq	%rbx, 8(%rsp)
	movq	%rsi, %rbx
	addq	%rdi, %r8
	salq	$6, %rdx
	movq	%rdi, 40(%rsp)
	subq	%rbx, %rax
	movq	%r8, 56(%rsp)
	leal	0(,%rcx,4), %r8d
	negq	%r14
	salq	$2, %rax
	movq	%rdx, 64(%rsp)
	leal	(%rcx,%rcx), %edx
	leal	(%r8,%rcx), %edi
	movslq	%r8d, %rbp
	movslq	%edx, %r13
	addl	%ecx, %edx
	movslq	%edi, %rdi
	subq	%rsi, %rbp
	movslq	%edx, %r12
	subq	%rsi, %r13
	subq	%rsi, %rdi
	movl	%ecx, 160(%rsp)
	salq	$2, %r14
	subq	%rsi, %r12
	leal	(%rdx,%rdx), %esi
	salq	$2, %r13
	salq	$2, %r12
	movslq	%esi, %rsi
	salq	$2, %rbp
	movq	%rax, %rcx
	subq	%rbx, %rsi
	leaq	256(%r9), %rbx
	movl	$0, 20(%rsp)
	salq	$2, %rdi
	movq	%rbx, 72(%rsp)
	salq	$2, %rsi
	.p2align 4,,10
.L88:
	movq	72(%rsp), %rbx
	movq	32(%rsp), %rax
	movq	56(%rsp), %r11
	addq	64(%rsp), %rax
	movq	24(%rsp), %r10
	leaq	(%rbx,%rax,4), %r8
	xorl	%ebx, %ebx
	.p2align 4,,10
.L90:
	vbroadcastss	(%r10), %ymm0
	leaq	(%r14,%r11), %rdx
	movq	%r9, %rax
	.p2align 4,,10
.L73:
	vmovaps	(%rdx), %ymm1
	vfmadd213ps	(%rax), %ymm0, %ymm1
	addq	$256, %rax
	addq	$256, %rdx
	vmovaps	%ymm1, -256(%rax)
	vmovaps	-224(%rdx), %ymm1
	vfmadd213ps	-224(%rax), %ymm0, %ymm1
	vmovaps	%ymm1, -224(%rax)
	vmovaps	-192(%rdx), %ymm1
	vfmadd213ps	-192(%rax), %ymm0, %ymm1
	vmovaps	%ymm1, -192(%rax)
	vmovaps	-160(%rdx), %ymm1
	vfmadd213ps	-160(%rax), %ymm0, %ymm1
	vmovaps	%ymm1, -160(%rax)
	vmovaps	-128(%rdx), %ymm1
	vfmadd213ps	-128(%rax), %ymm0, %ymm1
	vmovaps	%ymm1, -128(%rax)
	vmovaps	-96(%rdx), %ymm1
	vfmadd213ps	-96(%rax), %ymm0, %ymm1
	vmovaps	%ymm1, -96(%rax)
	vmovaps	-64(%rdx), %ymm1
	vfmadd213ps	-64(%rax), %ymm0, %ymm1
	vmovaps	%ymm1, -64(%rax)
	vmovaps	-32(%rdx), %ymm1
	vfmadd213ps	-32(%rax), %ymm0, %ymm1
	vmovaps	%ymm1, -32(%rax)
	cmpq	%rax, %r8
	jne	.L73
	vbroadcastss	4(%r10), %ymm0
	movq	%r11, %rdx
	movq	%r9, %rax
	.p2align 4,,10
.L75:
	vmovaps	(%rdx), %ymm1
	vfmadd213ps	(%rax), %ymm0, %ymm1
	addq	$256, %rax
	addq	$256, %rdx
	vmovaps	%ymm1, -256(%rax)
	vmovaps	-224(%rdx), %ymm1
	vfmadd213ps	-224(%rax), %ymm0, %ymm1
	vmovaps	%ymm1, -224(%rax)
	vmovaps	-192(%rdx), %ymm1
	vfmadd213ps	-192(%rax), %ymm0, %ymm1
	vmovaps	%ymm1, -192(%rax)
	vmovaps	-160(%rdx), %ymm1
	vfmadd213ps	-160(%rax), %ymm0, %ymm1
	vmovaps	%ymm1, -160(%rax)
	vmovaps	-128(%rdx), %ymm1
	vfmadd213ps	-128(%rax), %ymm0, %ymm1
	vmovaps	%ymm1, -128(%rax)
	vmovaps	-96(%rdx), %ymm1
	vfmadd213ps	-96(%rax), %ymm0, %ymm1
	vmovaps	%ymm1, -96(%rax)
	vmovaps	-64(%rdx), %ymm1
	vfmadd213ps	-64(%rax), %ymm0, %ymm1
	vmovaps	%ymm1, -64(%rax)
	vmovaps	-32(%rdx), %ymm1
	vfmadd213ps	-32(%rax), %ymm0, %ymm1
	vmovaps	%ymm1, -32(%rax)
	cmpq	%rax, %r8
	jne	.L75
	vbroadcastss	8(%r10), %ymm0
	leaq	0(%r13,%r11), %r15
	movq	%r9, %rdx
	.p2align 4,,10
.L77:
	vmovaps	(%r15), %ymm1
	vfmadd213ps	(%rdx), %ymm0, %ymm1
	addq	$256, %rdx
	addq	$256, %r15
	vmovaps	%ymm1, -256(%rdx)
	vmovaps	-224(%r15), %ymm1
	vfmadd213ps	-224(%rdx), %ymm0, %ymm1
	vmovaps	%ymm1, -224(%rdx)
	vmovaps	-192(%r15), %ymm1
	vfmadd213ps	-192(%rdx), %ymm0, %ymm1
	vmovaps	%ymm1, -192(%rdx)
	vmovaps	-160(%r15), %ymm1
	vfmadd213ps	-160(%rdx), %ymm0, %ymm1
	vmovaps	%ymm1, -160(%rdx)
	vmovaps	-128(%r15), %ymm1
	vfmadd213ps	-128(%rdx), %ymm0, %ymm1
	vmovaps	%ymm1, -128(%rdx)
	vmovaps	-96(%r15), %ymm1
	vfmadd213ps	-96(%rdx), %ymm0, %ymm1
	vmovaps	%ymm1, -96(%rdx)
	vmovaps	-64(%r15), %ymm1
	vfmadd213ps	-64(%rdx), %ymm0, %ymm1
	vmovaps	%ymm1, -64(%rdx)
	vmovaps	-32(%r15), %ymm1
	vfmadd213ps	-32(%rdx), %ymm0, %ymm1
	vmovaps	%ymm1, -32(%rdx)
	cmpq	%rdx, %rax
	jne	.L77
	vbroadcastss	12(%r10), %ymm0
	leaq	(%r12,%r11), %r15
	movq	%r9, %rdx
	.p2align 4,,10
.L79:
	vmovaps	(%r15), %ymm1
	vfmadd213ps	(%rdx), %ymm0, %ymm1
	addq	$256, %rdx
	addq	$256, %r15
	vmovaps	%ymm1, -256(%rdx)
	vmovaps	-224(%r15), %ymm1
	vfmadd213ps	-224(%rdx), %ymm0, %ymm1
	vmovaps	%ymm1, -224(%rdx)
	vmovaps	-192(%r15), %ymm1
	vfmadd213ps	-192(%rdx), %ymm0, %ymm1
	vmovaps	%ymm1, -192(%rdx)
	vmovaps	-160(%r15), %ymm1
	vfmadd213ps	-160(%rdx), %ymm0, %ymm1
	vmovaps	%ymm1, -160(%rdx)
	vmovaps	-128(%r15), %ymm1
	vfmadd213ps	-128(%rdx), %ymm0, %ymm1
	vmovaps	%ymm1, -128(%rdx)
	vmovaps	-96(%r15), %ymm1
	vfmadd213ps	-96(%rdx), %ymm0, %ymm1
	vmovaps	%ymm1, -96(%rdx)
	vmovaps	-64(%r15), %ymm1
	vfmadd213ps	-64(%rdx), %ymm0, %ymm1
	vmovaps	%ymm1, -64(%rdx)
	vmovaps	-32(%r15), %ymm1
	vfmadd213ps	-32(%rdx), %ymm0, %ymm1
	vmovaps	%ymm1, -32(%rdx)
	cmpq	%rdx, %rax
	jne	.L79
	vbroadcastss	16(%r10), %ymm0
	leaq	0(%rbp,%r11), %r15
	movq	%r9, %rdx
	.p2align 4,,10
.L81:
	vmovaps	(%r15), %ymm1
	vfmadd213ps	(%rdx), %ymm0, %ymm1
	addq	$256, %rdx
	addq	$256, %r15
	vmovaps	%ymm1, -256(%rdx)
	vmovaps	-224(%r15), %ymm1
	vfmadd213ps	-224(%rdx), %ymm0, %ymm1
	vmovaps	%ymm1, -224(%rdx)
	vmovaps	-192(%r15), %ymm1
	vfmadd213ps	-192(%rdx), %ymm0, %ymm1
	vmovaps	%ymm1, -192(%rdx)
	vmovaps	-160(%r15), %ymm1
	vfmadd213ps	-160(%rdx), %ymm0, %ymm1
	vmovaps	%ymm1, -160(%rdx)
	vmovaps	-128(%r15), %ymm1
	vfmadd213ps	-128(%rdx), %ymm0, %ymm1
	vmovaps	%ymm1, -128(%rdx)
	vmovaps	-96(%r15), %ymm1
	vfmadd213ps	-96(%rdx), %ymm0, %ymm1
	vmovaps	%ymm1, -96(%rdx)
	vmovaps	-64(%r15), %ymm1
	vfmadd213ps	-64(%rdx), %ymm0, %ymm1
	vmovaps	%ymm1, -64(%rdx)
	vmovaps	-32(%r15), %ymm1
	vfmadd213ps	-32(%rdx), %ymm0, %ymm1
	vmovaps	%ymm1, -32(%rdx)
	cmpq	%rdx, %rax
	jne	.L81
	vbroadcastss	20(%r10), %ymm0
	leaq	(%rdi,%r11), %r15
	movq	%r9, %rdx
	.p2align 4,,10
.L83:
	vmovaps	(%r15), %ymm1
	vfmadd213ps	(%rdx), %ymm0, %ymm1
	addq	$256, %rdx
	addq	$256, %r15
	vmovaps	%ymm1, -256(%rdx)
	vmovaps	-224(%r15), %ymm1
	vfmadd213ps	-224(%rdx), %ymm0, %ymm1
	vmovaps	%ymm1, -224(%rdx)
	vmovaps	-192(%r15), %ymm1
	vfmadd213ps	-192(%rdx), %ymm0, %ymm1
	vmovaps	%ymm1, -192(%rdx)
	vmovaps	-160(%r15), %ymm1
	vfmadd213ps	-160(%rdx), %ymm0, %ymm1
	vmovaps	%ymm1, -160(%rdx)
	vmovaps	-128(%r15), %ymm1
	vfmadd213ps	-128(%rdx), %ymm0, %ymm1
	vmovaps	%ymm1, -128(%rdx)
	vmovaps	-96(%r15), %ymm1
	vfmadd213ps	-96(%rdx), %ymm0, %ymm1
	vmovaps	%ymm1, -96(%rdx)
	vmovaps	-64(%r15), %ymm1
	vfmadd213ps	-64(%rdx), %ymm0, %ymm1
	vmovaps	%ymm1, -64(%rdx)
	vmovaps	-32(%r15), %ymm1
	vfmadd213ps	-32(%rdx), %ymm0, %ymm1
	vmovaps	%ymm1, -32(%rdx)
	cmpq	%rdx, %rax
	jne	.L83
	vbroadcastss	24(%r10), %ymm0
	leaq	(%rsi,%r11), %r15
	movq	%r9, %rdx
	.p2align 4,,10
.L85:
	vmovaps	(%r15), %ymm1
	vfmadd213ps	(%rdx), %ymm0, %ymm1
	addq	$256, %rdx
	addq	$256, %r15
	vmovaps	%ymm1, -256(%rdx)
	vmovaps	-224(%r15), %ymm1
	vfmadd213ps	-224(%rdx), %ymm0, %ymm1
	vmovaps	%ymm1, -224(%rdx)
	vmovaps	-192(%r15), %ymm1
	vfmadd213ps	-192(%rdx), %ymm0, %ymm1
	vmovaps	%ymm1, -192(%rdx)
	vmovaps	-160(%r15), %ymm1
	vfmadd213ps	-160(%rdx), %ymm0, %ymm1
	vmovaps	%ymm1, -160(%rdx)
	vmovaps	-128(%r15), %ymm1
	vfmadd213ps	-128(%rdx), %ymm0, %ymm1
	vmovaps	%ymm1, -128(%rdx)
	vmovaps	-96(%r15), %ymm1
	vfmadd213ps	-96(%rdx), %ymm0, %ymm1
	vmovaps	%ymm1, -96(%rdx)
	vmovaps	-64(%r15), %ymm1
	vfmadd213ps	-64(%rdx), %ymm0, %ymm1
	vmovaps	%ymm1, -64(%rdx)
	vmovaps	-32(%r15), %ymm1
	vfmadd213ps	-32(%rdx), %ymm0, %ymm1
	vmovaps	%ymm1, -32(%rdx)
	cmpq	%rdx, %rax
	jne	.L85
	vbroadcastss	28(%r10), %ymm0
	leaq	(%rcx,%r11), %r15
	movq	%r9, %rdx
	.p2align 4,,10
.L87:
	vmovaps	(%r15), %ymm1
	vfmadd213ps	(%rdx), %ymm0, %ymm1
	addq	$256, %rdx
	addq	$256, %r15
	vmovaps	%ymm1, -256(%rdx)
	vmovaps	-224(%r15), %ymm1
	vfmadd213ps	-224(%rdx), %ymm0, %ymm1
	vmovaps	%ymm1, -224(%rdx)
	vmovaps	-192(%r15), %ymm1
	vfmadd213ps	-192(%rdx), %ymm0, %ymm1
	vmovaps	%ymm1, -192(%rdx)
	vmovaps	-160(%r15), %ymm1
	vfmadd213ps	-160(%rdx), %ymm0, %ymm1
	vmovaps	%ymm1, -160(%rdx)
	vmovaps	-128(%r15), %ymm1
	vfmadd213ps	-128(%rdx), %ymm0, %ymm1
	vmovaps	%ymm1, -128(%rdx)
	vmovaps	-96(%r15), %ymm1
	vfmadd213ps	-96(%rdx), %ymm0, %ymm1
	vmovaps	%ymm1, -96(%rdx)
	vmovaps	-64(%r15), %ymm1
	vfmadd213ps	-64(%rdx), %ymm0, %ymm1
	vmovaps	%ymm1, -64(%rdx)
	vmovaps	-32(%r15), %ymm1
	vfmadd213ps	-32(%rdx), %ymm0, %ymm1
	vmovaps	%ymm1, -32(%rdx)
	cmpq	%rdx, %rax
	jne	.L87
	addl	$15, %ebx
	addq	$60, %r10
	addq	8(%rsp), %r11
	cmpl	%ebx, 160(%rsp)
	jg	.L90
	movq	40(%rsp), %rbx
	addl	$1, 20(%rsp)
	movq	48(%rsp), %r10
	movl	20(%rsp), %eax
	addq	%rbx, %r9
	addq	%r10, 32(%rsp)
	addq	%rbx, 24(%rsp)
	cmpl	%eax, 160(%rsp)
	jne	.L88
	vzeroupper
.L92:
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.seh_endproc
	.p2align 4,,15
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB8426:
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	jmp	_ZNSt8ios_base4InitD1Ev
	.seh_endproc
	.p2align 4,,15
	.def	_ZL11fill_matrixPfi;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL11fill_matrixPfi
_ZL11fill_matrixPfi:
.LFB7819:
	pushq	%r15
	.seh_pushreg	%r15
	movl	$5368, %eax
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	call	___chkstk_ms
	subq	%rax, %rsp
	.seh_stackalloc	5368
	vmovaps	%xmm6, 5248(%rsp)
	.seh_savexmm	%xmm6, 5248
	vmovaps	%xmm7, 5264(%rsp)
	.seh_savexmm	%xmm7, 5264
	vmovaps	%xmm8, 5280(%rsp)
	.seh_savexmm	%xmm8, 5280
	vmovaps	%xmm9, 5296(%rsp)
	.seh_savexmm	%xmm9, 5296
	vmovaps	%xmm10, 5312(%rsp)
	.seh_savexmm	%xmm10, 5312
	vmovaps	%xmm11, 5328(%rsp)
	.seh_savexmm	%xmm11, 5328
	vmovaps	%xmm12, 5344(%rsp)
	.seh_savexmm	%xmm12, 5344
	.seh_endprologue
	leaq	2736(%rsp), %rdi
	movl	%edx, %ebx
	movl	$13113, %edx
	movl	$959542381, 2752(%rsp)
	leaq	16(%rdi), %rax
	leaq	224(%rsp), %rsi
	movq	%rcx, %r15
	movq	%rax, 2736(%rsp)
	movq	%rsi, %rcx
	movw	%dx, 4(%rax)
	movq	%rdi, %rdx
	movb	$55, 6(%rax)
	movq	$7, 2744(%rsp)
	movb	$0, 2759(%rsp)
.LEHB0:
	call	_ZNSt13random_device14_M_init_pretr1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE0:
	movq	2736(%rsp), %rcx
	leaq	16(%rdi), %rax
	cmpq	%rax, %rcx
	je	.L95
	call	_ZdlPv
.L95:
	movq	%rsi, %rcx
.LEHB1:
	call	_ZNSt13random_device16_M_getval_pretr1Ev
	movl	$1, %ecx
	movabsq	$6364136223846793005, %r8
	movl	%eax, %eax
	movq	%rax, 2736(%rsp)
	movq	%rax, %rdx
	.p2align 4,,10
.L96:
	movq	%rdx, %rax
	shrq	$62, %rax
	xorq	%rdx, %rax
	imulq	%r8, %rax
	leaq	(%rax,%rcx), %rdx
	movq	%rdx, (%rdi,%rcx,8)
	addq	$1, %rcx
	cmpq	$312, %rcx
	jne	.L96
	imull	%ebx, %ebx
	vmovss	.LC5(%rip), %xmm9
	vmovss	.LC6(%rip), %xmm7
	vxorps	%xmm8, %xmm8, %xmm8
	vmovss	.LC7(%rip), %xmm11
	vmovss	.LC8(%rip), %xmm10
	vmovdqa	.LC0(%rip), %ymm5
	vmovdqa	.LC1(%rip), %ymm4
	movslq	%ebx, %rax
	vmovdqa	.LC2(%rip), %ymm3
	vmovdqa	.LC3(%rip), %ymm2
	leaq	(%r15,%rax,4), %rax
	movq	%rax, 40(%rsp)
	movq	%rdi, %rax
	shrq	$3, %rax
	negq	%rax
	movq	%rax, %rsi
	movl	$156, %eax
	andl	$3, %esi
	subq	%rsi, %rax
	movq	%rsi, 56(%rsp)
	movq	%rax, %rbx
	movq	%rax, %r14
	movq	%rax, 72(%rsp)
	leaq	0(,%rsi,8), %rax
	leaq	(%rdi,%rax), %rsi
	leaq	8(%rdi,%rax), %r13
	andq	$-4, %rbx
	shrq	$2, %r14
	leaq	1248(%rdi,%rax), %r12
	leaq	1248(%rdi), %rax
	movq	%rbx, 208(%rsp)
	shrq	$3, %rax
	negq	%rax
	movq	%rax, %rbx
	movl	$155, %eax
	andl	$3, %ebx
	subq	%rbx, %rax
	movq	%rbx, 48(%rsp)
	movq	%rax, 64(%rsp)
	leaq	1248(,%rbx,8), %rax
	leaq	(%rdi,%rax), %rbx
	leaq	8(%rdi,%rax), %rbp
	leaq	-1248(%rdi,%rax), %rdi
	.p2align 4,,10
.L97:
	cmpq	$312, %rcx
	je	.L98
	movq	2736(%rsp,%rcx,8), %rdx
	addq	$1, %rcx
.L99:
	movabsq	$6148914691236517205, %r10
	movq	%rdx, %rax
	movabsq	$8202884508482404352, %r8
	shrq	$29, %rax
	andq	%r10, %rax
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$17, %rdx
	andq	%r8, %rdx
	movabsq	$-2270628950310912, %r8
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$37, %rdx
	andq	%r8, %rdx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$43, %rdx
	xorq	%rdx, %rax
	js	.L125
	vxorps	%xmm0, %xmm0, %xmm0
	vcvtsi2ssq	%rax, %xmm0, %xmm0
	vaddss	%xmm8, %xmm0, %xmm0
	vmulss	%xmm9, %xmm0, %xmm0
	vucomiss	%xmm7, %xmm0
	jnb	.L189
.L186:
	vfmadd132ss	%xmm11, %xmm10, %xmm0
	addq	$4, %r15
	vmovss	%xmm0, -4(%r15)
	cmpq	%r15, 40(%rsp)
	jne	.L97
.L188:
	vzeroupper
	vmovaps	5248(%rsp), %xmm6
	vmovaps	5264(%rsp), %xmm7
	vmovaps	5280(%rsp), %xmm8
	vmovaps	5296(%rsp), %xmm9
	vmovaps	5312(%rsp), %xmm10
	vmovaps	5328(%rsp), %xmm11
	vmovaps	5344(%rsp), %xmm12
	addq	$5368, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
.L98:
	cmpq	$0, 56(%rsp)
	je	.L133
	movq	2744(%rsp), %rdx
	movq	2736(%rsp), %rax
	movq	%rdx, %rcx
	andq	$-2147483648, %rax
	andl	$2147483647, %ecx
	orq	%rcx, %rax
	movq	%rax, %rcx
	shrq	%rcx
	xorq	3984(%rsp), %rcx
	testb	$1, %al
	je	.L101
	movabsq	$-5403634167711393303, %rax
	xorq	%rax, %rcx
.L101:
	cmpq	$1, 56(%rsp)
	movq	%rcx, 2736(%rsp)
	je	.L134
	movq	2752(%rsp), %rcx
	andq	$-2147483648, %rdx
	movq	%rcx, %rax
	andl	$2147483647, %eax
	orq	%rax, %rdx
	movq	%rdx, %rax
	shrq	%rax
	xorq	3992(%rsp), %rax
	andl	$1, %edx
	je	.L103
	movabsq	$-5403634167711393303, %rdx
	xorq	%rdx, %rax
.L103:
	cmpq	$2, 56(%rsp)
	movq	%rax, 2744(%rsp)
	je	.L135
	movq	2760(%rsp), %rax
	andq	$-2147483648, %rcx
	andl	$2147483647, %eax
	orq	%rcx, %rax
	movq	%rax, %rdx
	shrq	%rdx
	xorq	4000(%rsp), %rdx
	testb	$1, %al
	jne	.L104
.L105:
	movq	%rdx, 2752(%rsp)
	movl	$153, %r9d
	movl	$3, %ecx
.L100:
	xorl	%eax, %eax
	xorl	%edx, %edx
	vpxor	%xmm12, %xmm12, %xmm12
	.p2align 4,,10
.L106:
	vpand	0(%r13,%rax), %ymm4, %ymm0
	vpand	(%rsi,%rax), %ymm5, %ymm1
	addq	$1, %rdx
	vpor	%ymm0, %ymm1, %ymm1
	vpsrlq	$1, %ymm1, %ymm0
	vpand	%ymm3, %ymm1, %ymm1
	vpxor	(%r12,%rax), %ymm0, %ymm0
	vpcmpeqq	%ymm12, %ymm1, %ymm1
	vpxor	%ymm2, %ymm0, %ymm6
	vpblendvb	%ymm1, %ymm0, %ymm6, %ymm0
	vmovdqa	%ymm0, (%rsi,%rax)
	addq	$32, %rax
	cmpq	%r14, %rdx
	jb	.L106
	movq	208(%rsp), %rdx
	movq	%rdx, %r11
	leaq	(%rcx,%rdx), %rax
	notq	%r11
	cmpq	%rdx, 72(%rsp)
	je	.L107
	leaq	1(%rax), %r10
	movq	2736(%rsp,%rax,8), %rcx
	movq	2736(%rsp,%r10,8), %r8
	andq	$-2147483648, %rcx
	movq	%r8, %rdx
	andl	$2147483647, %edx
	orq	%rdx, %rcx
	movq	%rcx, %rdx
	shrq	%rdx
	xorq	3984(%rsp,%rax,8), %rdx
	andl	$1, %ecx
	je	.L108
	movabsq	$-5403634167711393303, %rcx
	xorq	%rcx, %rdx
.L108:
	movq	%rdx, 2736(%rsp,%rax,8)
	addq	%r9, %r11
	je	.L107
	leaq	2(%rax), %r9
	movq	%r8, %rdx
	movq	2736(%rsp,%r9,8), %rcx
	andq	$-2147483648, %rdx
	movq	%rcx, %r8
	andl	$2147483647, %r8d
	orq	%r8, %rdx
	movq	%rdx, %r8
	shrq	%r8
	xorq	3992(%rsp,%rax,8), %r8
	andl	$1, %edx
	je	.L109
	movabsq	$-5403634167711393303, %rdx
	xorq	%rdx, %r8
.L109:
	movq	%r8, 2736(%rsp,%r10,8)
	cmpq	$1, %r11
	je	.L107
	movq	2760(%rsp,%rax,8), %rdx
	andq	$-2147483648, %rcx
	andl	$2147483647, %edx
	orq	%rcx, %rdx
	movq	%rdx, %rcx
	shrq	%rcx
	xorq	4000(%rsp,%rax,8), %rcx
	andl	$1, %edx
	movq	%rcx, %rax
	je	.L111
	movabsq	$-5403634167711393303, %rcx
	xorq	%rcx, %rax
.L111:
	movq	%rax, 2736(%rsp,%r9,8)
.L107:
	cmpq	$0, 48(%rsp)
	je	.L136
	movq	3992(%rsp), %rdx
	movq	3984(%rsp), %rax
	movq	%rdx, %rcx
	andq	$-2147483648, %rax
	andl	$2147483647, %ecx
	orq	%rcx, %rax
	movq	%rax, %rcx
	shrq	%rcx
	xorq	2736(%rsp), %rcx
	testb	$1, %al
	je	.L113
	movabsq	$-5403634167711393303, %rax
	xorq	%rax, %rcx
.L113:
	cmpq	$1, 48(%rsp)
	movq	%rcx, 3984(%rsp)
	je	.L137
	movq	4000(%rsp), %rcx
	andq	$-2147483648, %rdx
	movq	%rcx, %rax
	andl	$2147483647, %eax
	orq	%rax, %rdx
	movq	%rdx, %rax
	shrq	%rax
	xorq	2744(%rsp), %rax
	andl	$1, %edx
	je	.L115
	movabsq	$-5403634167711393303, %rdx
	xorq	%rdx, %rax
.L115:
	cmpq	$2, 48(%rsp)
	movq	%rax, 3992(%rsp)
	je	.L138
	movq	4008(%rsp), %rax
	andq	$-2147483648, %rcx
	andl	$2147483647, %eax
	orq	%rcx, %rax
	movq	%rax, %rdx
	shrq	%rdx
	xorq	2752(%rsp), %rdx
	testb	$1, %al
	jne	.L116
.L117:
	movq	%rdx, 4000(%rsp)
	movl	$152, %r8d
	movl	$159, %ecx
.L112:
	xorl	%eax, %eax
	xorl	%edx, %edx
	vpxor	%xmm12, %xmm12, %xmm12
	.p2align 4,,10
.L118:
	vpand	(%rbx,%rax), %ymm5, %ymm0
	vpand	0(%rbp,%rax), %ymm4, %ymm1
	addq	$1, %rdx
	vpor	%ymm0, %ymm1, %ymm1
	vpand	%ymm3, %ymm1, %ymm6
	vpsrlq	$1, %ymm1, %ymm0
	vpxor	(%rdi,%rax), %ymm0, %ymm0
	vpcmpeqq	%ymm12, %ymm6, %ymm6
	vpxor	%ymm2, %ymm0, %ymm1
	vpblendvb	%ymm6, %ymm0, %ymm1, %ymm0
	vmovdqa	%ymm0, (%rbx,%rax)
	addq	$32, %rax
	cmpq	$38, %rdx
	jne	.L118
	cmpq	$152, 64(%rsp)
	leaq	152(%rcx), %r11
	je	.L119
	leaq	153(%rcx), %r10
	movq	2736(%rsp,%r11,8), %rdx
	movq	2736(%rsp,%r10,8), %rax
	andq	$-2147483648, %rdx
	movq	%rax, %r9
	andl	$2147483647, %r9d
	orq	%r9, %rdx
	movq	%rdx, %r9
	shrq	%r9
	xorq	2704(%rsp,%rcx,8), %r9
	andl	$1, %edx
	je	.L120
	movabsq	$-5403634167711393303, %rdx
	xorq	%rdx, %r9
.L120:
	movq	%r9, 2736(%rsp,%r11,8)
	cmpq	$153, %r8
	je	.L119
	leaq	154(%rcx), %rdx
	andq	$-2147483648, %rax
	movq	2736(%rsp,%rdx,8), %r9
	movq	%r9, %r11
	andl	$2147483647, %r11d
	orq	%r11, %rax
	movq	%rax, %r11
	shrq	%r11
	xorq	2712(%rsp,%rcx,8), %r11
	movq	%r11, %rcx
	testb	$1, %al
	je	.L121
	movabsq	$-5403634167711393303, %rax
	xorq	%rax, %rcx
.L121:
	movq	%rcx, 2736(%rsp,%r10,8)
	cmpq	$154, %r8
	je	.L119
	movq	5224(%rsp), %rax
	andq	$-2147483648, %r9
	andl	$2147483647, %eax
	orq	%r9, %rax
	movq	%rax, %rcx
	shrq	%rcx
	xorq	3968(%rsp), %rcx
	testb	$1, %al
	je	.L123
	movabsq	$-5403634167711393303, %rax
	xorq	%rax, %rcx
.L123:
	movq	%rcx, 2736(%rsp,%rdx,8)
.L119:
	movq	2736(%rsp), %rdx
	movq	5224(%rsp), %rax
	movq	%rdx, %rcx
	andq	$-2147483648, %rax
	andl	$2147483647, %ecx
	orq	%rcx, %rax
	movq	%rax, %rcx
	shrq	%rcx
	xorq	3976(%rsp), %rcx
	testb	$1, %al
	je	.L124
	movabsq	$-5403634167711393303, %rax
	xorq	%rax, %rcx
.L124:
	movq	%rcx, 5224(%rsp)
	movl	$1, %ecx
	jmp	.L99
	.p2align 4,,10
.L125:
	movq	%rax, %rdx
	andl	$1, %eax
	vxorps	%xmm0, %xmm0, %xmm0
	shrq	%rdx
	orq	%rax, %rdx
	vcvtsi2ssq	%rdx, %xmm0, %xmm0
	vaddss	%xmm0, %xmm0, %xmm0
	vaddss	%xmm8, %xmm0, %xmm0
	vmulss	%xmm9, %xmm0, %xmm0
	vucomiss	%xmm7, %xmm0
	jb	.L186
.L189:
	vxorps	%xmm1, %xmm1, %xmm1
	vmovaps	%xmm7, %xmm0
	movq	%rcx, 216(%rsp)
	addq	$4, %r15
	vmovdqu	%ymm2, 176(%rsp)
	vmovdqu	%ymm3, 144(%rsp)
	vmovdqu	%ymm4, 112(%rsp)
	vmovdqu	%ymm5, 80(%rsp)
	call	nextafterf
	vmovdqu	80(%rsp), %ymm5
	vmovdqu	112(%rsp), %ymm4
	vfmadd132ss	%xmm11, %xmm10, %xmm0
	movq	216(%rsp), %rcx
	vmovdqu	144(%rsp), %ymm3
	vmovdqu	176(%rsp), %ymm2
	vmovss	%xmm0, -4(%r15)
	cmpq	%r15, 40(%rsp)
	jne	.L97
	jmp	.L188
.L137:
	movl	$154, %r8d
	movl	$157, %ecx
	jmp	.L112
.L136:
	movl	$155, %r8d
	movl	$156, %ecx
	jmp	.L112
.L134:
	movl	$155, %r9d
	movl	$1, %ecx
	jmp	.L100
.L133:
	movl	$156, %r9d
	xorl	%ecx, %ecx
	jmp	.L100
.L116:
	movabsq	$-5403634167711393303, %rax
	xorq	%rax, %rdx
	jmp	.L117
.L104:
	movabsq	$-5403634167711393303, %rax
	xorq	%rax, %rdx
	jmp	.L105
.L138:
	movl	$153, %r8d
	movl	$158, %ecx
	jmp	.L112
.L135:
	movl	$154, %r9d
	movl	$2, %ecx
	jmp	.L100
.L139:
	movq	2736(%rsp), %rcx
	addq	$16, %rdi
	movq	%rax, %rbx
	cmpq	%rdi, %rcx
	je	.L187
	vzeroupper
	call	_ZdlPv
.L132:
	movq	%rbx, %rcx
	call	_Unwind_Resume
.LEHE1:
.L187:
	vzeroupper
	jmp	.L132
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA7819:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7819-.LLSDACSB7819
.LLSDACSB7819:
	.uleb128 .LEHB0-.LFB7819
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L139-.LFB7819
	.uleb128 0
	.uleb128 .LEHB1-.LFB7819
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE7819:
	.text
	.seh_endproc
	.section .rdata,"dr"
.LC11:
	.ascii ",\0"
	.text
	.p2align 4,,15
	.def	_Z20throughput_benchmarkIPFviPKfS1_PfEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiiRT_.constprop.31;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z20throughput_benchmarkIPFviPKfS1_PfEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiiRT_.constprop.31
_Z20throughput_benchmarkIPFviPKfS1_PfEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiiRT_.constprop.31:
.LFB8463:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$104, %rsp
	.seh_stackalloc	104
	vmovaps	%xmm6, 80(%rsp)
	.seh_savexmm	%xmm6, 80
	.seh_endprologue
	movq	__imp__aligned_malloc(%rip), %r13
	movl	%edx, %r12d
	movq	%r8, %r14
	movl	%edx, %ebx
	movq	%rcx, 40(%rsp)
	imull	%edx, %r12d
	movl	$32, %edx
	movslq	%r12d, %rsi
	subl	$1, %r12d
	salq	$2, %rsi
	shrl	$3, %r12d
	movq	%rsi, %rcx
	addq	$1, %r12
	call	*%r13
	movl	%ebx, %edx
	salq	$5, %r12
	movq	%rax, %rcx
	movq	%rax, %rbp
	call	_ZL11fill_matrixPfi
	movq	%rsi, %rcx
	movl	$32, %edx
	call	*%r13
	movl	%ebx, %edx
	movq	%rax, %rcx
	movq	%rax, %rdi
	call	_ZL11fill_matrixPfi
	movq	%rsi, %rcx
	movl	$32, %edx
	call	*%r13
	movq	%r12, %r8
	xorl	%edx, %edx
	movl	$10, %r13d
	movq	%rax, %rcx
	movq	%rax, %rsi
	call	memset
	.p2align 4,,10
.L191:
	movq	%rdi, %r8
	movq	%rsi, %r9
	movq	%rbp, %rdx
	movl	%ebx, %ecx
	call	*(%r14)
	movl	%ebx, %edx
	movq	%rbp, %rcx
	call	_ZL11fill_matrixPfi
	movl	%ebx, %edx
	movq	%rdi, %rcx
	call	_ZL11fill_matrixPfi
	xorl	%edx, %edx
	movq	%r12, %r8
	movq	%rsi, %rcx
	call	memset
	subl	$1, %r13d
	jne	.L191
	movl	$1000, 32(%rsp)
	xorl	%r13d, %r13d
	.p2align 4,,10
.L192:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rsi, %r9
	movq	%rdi, %r8
	movq	%rbp, %rdx
	movq	%rax, %r15
	movl	%ebx, %ecx
	call	*(%r14)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movl	%ebx, %edx
	movq	%rbp, %rcx
	subq	%r15, %rax
	addq	%rax, %r13
	call	_ZL11fill_matrixPfi
	movl	%ebx, %edx
	movq	%rdi, %rcx
	call	_ZL11fill_matrixPfi
	xorl	%edx, %edx
	movq	%r12, %r8
	movq	%rsi, %rcx
	call	memset
	subl	$1, 32(%rsp)
	jne	.L192
	vxorpd	%xmm1, %xmm1, %xmm1
	vxorpd	%xmm6, %xmm6, %xmm6
	movq	40(%rsp), %rax
	movq	.refptr._ZSt4cout(%rip), %rcx
	vcvtsi2sd	%ebx, %xmm1, %xmm1
	vcvtsi2sdq	%r13, %xmm6, %xmm6
	vmulsd	.LC10(%rip), %xmm6, %xmm3
	movq	8(%rax), %r8
	movq	(%rax), %rdx
	vaddsd	%xmm1, %xmm1, %xmm0
	vmovsd	%xmm3, 48(%rsp)
	vmulsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm1, %xmm0, %xmm0
	vmulsd	.LC9(%rip), %xmm0, %xmm2
	vmovsd	%xmm2, 32(%rsp)
	fldl	32(%rsp)
	fdivl	48(%rsp)
	fstpt	48(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$1, %r8d
	leaq	.LC11(%rip), %rdx
	movq	%rax, %r12
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	%ebx, %edx
	movq	%r12, %rcx
	leaq	64(%rsp), %r12
	call	_ZNSolsEi
	movl	$1, %r8d
	leaq	.LC11(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	vdivsd	.LC12(%rip), %xmm6, %xmm4
	movq	%r12, %rdx
	movq	%rbx, %rcx
	vmovsd	%xmm4, 32(%rsp)
	flds	.LC13(%rip)
	fdivl	32(%rsp)
	fstpt	64(%rsp)
	call	_ZNSo9_M_insertIeEERSoT_
	movl	$1, %r8d
	leaq	.LC11(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	fldt	48(%rsp)
	movq	%r12, %rdx
	movq	%rbx, %rcx
	fstpt	64(%rsp)
	call	_ZNSo9_M_insertIeEERSoT_
	movq	%rax, %r12
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %rbx
	testq	%rbx, %rbx
	je	.L199
	cmpb	$0, 56(%rbx)
	je	.L194
	movsbl	67(%rbx), %edx
.L195:
	movq	%r12, %rcx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	call	_ZNSo5flushEv
	movq	__imp__aligned_free(%rip), %rbx
	movq	%rbp, %rcx
	call	*%rbx
	movq	%rdi, %rcx
	call	*%rbx
	nop
	vmovaps	80(%rsp), %xmm6
	movq	%rsi, %rcx
	movq	%rbx, %rax
	addq	$104, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	rex.W jmp	*%rax
	.p2align 4,,10
.L194:
	movq	%rbx, %rcx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %edx
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx
	movq	48(%rax), %rax
	cmpq	%rcx, %rax
	je	.L195
	movq	%rbx, %rcx
	call	*%rax
	movsbl	%al, %edx
	jmp	.L195
.L199:
	call	_ZSt16__throw_bad_castv
	nop
	.seh_endproc
	.p2align 4,,15
	.def	_Z20throughput_benchmarkIPFviPKfS1_PfEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiiRT_.constprop.30;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z20throughput_benchmarkIPFviPKfS1_PfEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiiRT_.constprop.30
_Z20throughput_benchmarkIPFviPKfS1_PfEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiiRT_.constprop.30:
.LFB8464:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$104, %rsp
	.seh_stackalloc	104
	vmovaps	%xmm6, 80(%rsp)
	.seh_savexmm	%xmm6, 80
	.seh_endprologue
	movq	__imp__aligned_malloc(%rip), %r13
	movl	%edx, %r12d
	movq	%r8, %r14
	movl	%edx, %ebx
	movq	%rcx, 40(%rsp)
	imull	%edx, %r12d
	movl	$32, %edx
	movslq	%r12d, %rsi
	subl	$1, %r12d
	salq	$2, %rsi
	shrl	$3, %r12d
	movq	%rsi, %rcx
	addq	$1, %r12
	call	*%r13
	movl	%ebx, %edx
	salq	$5, %r12
	movq	%rax, %rcx
	movq	%rax, %rbp
	call	_ZL11fill_matrixPfi
	movq	%rsi, %rcx
	movl	$32, %edx
	call	*%r13
	movl	%ebx, %edx
	movq	%rax, %rcx
	movq	%rax, %rdi
	call	_ZL11fill_matrixPfi
	movq	%rsi, %rcx
	movl	$32, %edx
	call	*%r13
	movq	%r12, %r8
	xorl	%edx, %edx
	movl	$10, %r13d
	movq	%rax, %rcx
	movq	%rax, %rsi
	call	memset
	.p2align 4,,10
.L201:
	movq	%rdi, %r8
	movq	%rsi, %r9
	movq	%rbp, %rdx
	movl	%ebx, %ecx
	call	*(%r14)
	movl	%ebx, %edx
	movq	%rbp, %rcx
	call	_ZL11fill_matrixPfi
	movl	%ebx, %edx
	movq	%rdi, %rcx
	call	_ZL11fill_matrixPfi
	xorl	%edx, %edx
	movq	%r12, %r8
	movq	%rsi, %rcx
	call	memset
	subl	$1, %r13d
	jne	.L201
	movl	$10000, 32(%rsp)
	xorl	%r13d, %r13d
	.p2align 4,,10
.L202:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rsi, %r9
	movq	%rdi, %r8
	movq	%rbp, %rdx
	movq	%rax, %r15
	movl	%ebx, %ecx
	call	*(%r14)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movl	%ebx, %edx
	movq	%rbp, %rcx
	subq	%r15, %rax
	addq	%rax, %r13
	call	_ZL11fill_matrixPfi
	movl	%ebx, %edx
	movq	%rdi, %rcx
	call	_ZL11fill_matrixPfi
	xorl	%edx, %edx
	movq	%r12, %r8
	movq	%rsi, %rcx
	call	memset
	subl	$1, 32(%rsp)
	jne	.L202
	vxorpd	%xmm1, %xmm1, %xmm1
	vxorpd	%xmm6, %xmm6, %xmm6
	movq	40(%rsp), %rax
	movq	.refptr._ZSt4cout(%rip), %rcx
	vcvtsi2sd	%ebx, %xmm1, %xmm1
	vcvtsi2sdq	%r13, %xmm6, %xmm6
	vmulsd	.LC10(%rip), %xmm6, %xmm3
	movq	8(%rax), %r8
	movq	(%rax), %rdx
	vaddsd	%xmm1, %xmm1, %xmm0
	vmovsd	%xmm3, 48(%rsp)
	vmulsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm1, %xmm0, %xmm0
	vmulsd	.LC15(%rip), %xmm0, %xmm2
	vmovsd	%xmm2, 32(%rsp)
	fldl	32(%rsp)
	fdivl	48(%rsp)
	fstpt	48(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$1, %r8d
	leaq	.LC11(%rip), %rdx
	movq	%rax, %r12
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	%ebx, %edx
	movq	%r12, %rcx
	leaq	64(%rsp), %r12
	call	_ZNSolsEi
	movl	$1, %r8d
	leaq	.LC11(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	vdivsd	.LC12(%rip), %xmm6, %xmm4
	movq	%r12, %rdx
	movq	%rbx, %rcx
	vmovsd	%xmm4, 32(%rsp)
	flds	.LC16(%rip)
	fdivl	32(%rsp)
	fstpt	64(%rsp)
	call	_ZNSo9_M_insertIeEERSoT_
	movl	$1, %r8d
	leaq	.LC11(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	fldt	48(%rsp)
	movq	%r12, %rdx
	movq	%rbx, %rcx
	fstpt	64(%rsp)
	call	_ZNSo9_M_insertIeEERSoT_
	movq	%rax, %r12
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %rbx
	testq	%rbx, %rbx
	je	.L209
	cmpb	$0, 56(%rbx)
	je	.L204
	movsbl	67(%rbx), %edx
.L205:
	movq	%r12, %rcx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	call	_ZNSo5flushEv
	movq	__imp__aligned_free(%rip), %rbx
	movq	%rbp, %rcx
	call	*%rbx
	movq	%rdi, %rcx
	call	*%rbx
	nop
	vmovaps	80(%rsp), %xmm6
	movq	%rsi, %rcx
	movq	%rbx, %rax
	addq	$104, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	rex.W jmp	*%rax
	.p2align 4,,10
.L204:
	movq	%rbx, %rcx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %edx
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx
	movq	48(%rax), %rax
	cmpq	%rcx, %rax
	je	.L205
	movq	%rbx, %rcx
	call	*%rax
	movsbl	%al, %edx
	jmp	.L205
.L209:
	call	_ZSt16__throw_bad_castv
	nop
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC17:
	.ascii "name\0"
.LC18:
	.ascii "size\0"
.LC19:
	.ascii "throughput (ops/s)\0"
.LC20:
	.ascii "flops/cycle\0"
	.section	.text.startup,"x"
	.p2align 4,,15
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB7832:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$664, %rsp
	.seh_stackalloc	664
	vmovaps	%xmm6, 640(%rsp)
	.seh_savexmm	%xmm6, 640
	.seh_endprologue
	movl	$1024, %r14d
	movl	$64, %r15d
	call	__main
	leaq	_ZL10mmul_saxpyiPKfS0_Pf(%rip), %rax
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$4, %r8d
	movq	%rax, 560(%rsp)
	leaq	_ZL12mmul_blockediPKfS0_Pf(%rip), %rax
	leaq	.LC17(%rip), %rdx
	movq	%rax, 568(%rsp)
	leaq	_ZL14mmul_saxpy_avxiPKfS0_Pf(%rip), %rax
	movq	%rax, 576(%rsp)
	leaq	_ZL23mmul_saxpy_avx_unrollediPKfS0_Pf(%rip), %rax
	movq	%rax, 584(%rsp)
	leaq	_ZL29mmul_saxpy_avx_unrolled_twiceiPKfS0_Pf(%rip), %rax
	movq	%rax, 592(%rsp)
.LEHB2:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$1, %r8d
	leaq	.LC11(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$4, %r8d
	leaq	.LC18(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$1, %r8d
	leaq	.LC11(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$18, %r8d
	leaq	.LC19(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$1, %r8d
	leaq	.LC11(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$11, %r8d
	leaq	.LC20(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
.LEHE2:
	leaq	608(%rsp), %rax
	movl	$63, 520(%rsp)
	vmovsd	.LC12(%rip), %xmm6
	movq	%rax, 448(%rsp)
	leaq	568(%rsp), %rax
	movl	$960, 456(%rsp)
	movl	$896, 460(%rsp)
	movl	$832, 464(%rsp)
	movl	$768, 468(%rsp)
	movl	$704, 472(%rsp)
	movl	$640, 476(%rsp)
	movl	$576, 480(%rsp)
	movl	$512, 484(%rsp)
	movl	$448, 488(%rsp)
	movl	$384, 492(%rsp)
	movl	$320, 496(%rsp)
	movl	$256, 500(%rsp)
	movl	$192, 504(%rsp)
	movl	$128, 508(%rsp)
	movq	%rax, 536(%rsp)
.L236:
	movq	448(%rsp), %rbx
	movl	$25963, %r8d
	movl	%r15d, %edx
	leaq	16(%rbx), %rax
	movq	%rbx, %rcx
	movq	%rax, 608(%rsp)
	movl	$1668246626, 16(%rbx)
	movw	%r8w, 4(%rax)
	movq	536(%rsp), %r8
	movb	$100, 6(%rax)
	movq	$7, 616(%rsp)
	movb	$0, 631(%rsp)
.LEHB3:
	call	_Z20throughput_benchmarkIPFviPKfS1_PfEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiiRT_.constprop.31
.LEHE3:
	movq	608(%rsp), %rcx
	leaq	16(%rbx), %rax
	cmpq	%rax, %rcx
	je	.L211
	call	_ZdlPv
.L211:
	movl	%r15d, %esi
	movl	$25964, %ecx
	movl	$32, %edx
	movq	448(%rsp), %rbx
	movabsq	$8530204144399049075, %rdi
	imull	%r15d, %esi
	leaq	16(%rbx), %rax
	movq	%rax, 608(%rsp)
	movq	%rdi, 16(%rbx)
	movslq	%esi, %rbx
	salq	$2, %rbx
	movw	%cx, 12(%rax)
	movl	$1769234296, 8(%rax)
	movq	%rbx, %rcx
	movb	$100, 14(%rax)
	movq	$15, 616(%rsp)
	movb	$0, 639(%rsp)
.LEHB4:
	call	*__imp__aligned_malloc(%rip)
	movl	%r15d, %edx
	movq	%rax, %rcx
	movq	%rax, %r12
	call	_ZL11fill_matrixPfi
	movl	$32, %edx
	movq	%rbx, %rcx
	call	*__imp__aligned_malloc(%rip)
	movl	%r15d, %edx
	movq	%rax, %rcx
	movq	%rax, %r13
	call	_ZL11fill_matrixPfi
	movl	$32, %edx
	movq	%rbx, %rcx
	call	*__imp__aligned_malloc(%rip)
	movq	%rax, %rcx
	movq	%rax, 72(%rsp)
	leal	-1(%rsi), %eax
	xorl	%edx, %edx
	shrl	$3, %eax
	addq	$1, %rax
	salq	$5, %rax
	movq	%rax, %r8
	movq	%rax, 512(%rsp)
	call	memset
	movl	520(%rsp), %eax
	movl	$10, 524(%rsp)
	andl	$-16, %eax
	addl	$16, %eax
	movl	%eax, 440(%rsp)
.L219:
	movq	$0, 264(%rsp)
	movl	%r14d, %eax
	movq	%r12, %r14
	movl	%eax, %r12d
	movq	264(%rsp), %rax
	.p2align 4,,10
.L218:
	movl	%eax, %ebx
	movl	%eax, 64(%rsp)
	xorl	%ebp, %ebp
	movl	456(%rsp), %eax
	addl	$256, %ebx
	movl	%r15d, 416(%rsp)
	movl	%eax, 360(%rsp)
	movl	460(%rsp), %eax
	movl	%ebx, 108(%rsp)
	movl	%eax, 364(%rsp)
	movl	464(%rsp), %eax
	movl	$6, 188(%rsp)
	movl	%eax, 368(%rsp)
	movl	468(%rsp), %eax
	movl	%eax, 372(%rsp)
	movl	472(%rsp), %eax
	movl	%eax, 376(%rsp)
	movl	476(%rsp), %eax
	movl	%eax, 380(%rsp)
	movl	480(%rsp), %eax
	movl	%eax, 384(%rsp)
	movl	484(%rsp), %eax
	movl	%eax, 388(%rsp)
	movl	488(%rsp), %eax
	movl	%eax, 392(%rsp)
	movl	492(%rsp), %eax
	movl	%eax, 396(%rsp)
	movl	496(%rsp), %eax
	movl	%eax, 400(%rsp)
	movl	500(%rsp), %eax
	movl	%eax, 404(%rsp)
	movl	504(%rsp), %eax
	movl	%eax, 408(%rsp)
	movl	508(%rsp), %eax
	movl	%eax, 412(%rsp)
	movl	%r12d, %eax
	movl	%ebp, %r12d
	movl	$5, 184(%rsp)
	movl	%eax, %ebp
	movl	$4, 152(%rsp)
	movl	$3, 104(%rsp)
	movl	$8, 228(%rsp)
	movl	$2, 84(%rsp)
	movl	$1, 32(%rsp)
	movl	$9, 336(%rsp)
	movl	$7, 224(%rsp)
	movl	$0, 420(%rsp)
	.p2align 4,,10
.L217:
	movslq	420(%rsp), %rax
	movl	%r12d, %esi
	xorl	%edi, %edi
	leaq	0(%r13,%rax,4), %rax
	movq	%rax, 48(%rsp)
	movslq	416(%rsp), %rax
	leaq	0(%r13,%rax,4), %rax
	movq	%rax, 88(%rsp)
	movslq	412(%rsp), %rax
	leaq	0(%r13,%rax,4), %rax
	movq	%rax, 120(%rsp)
	movslq	408(%rsp), %rax
	leaq	0(%r13,%rax,4), %rax
	movq	%rax, 144(%rsp)
	movslq	404(%rsp), %rax
	leaq	0(%r13,%rax,4), %rax
	movq	%rax, 176(%rsp)
	movslq	400(%rsp), %rax
	leaq	0(%r13,%rax,4), %rax
	movq	%rax, 200(%rsp)
	movslq	396(%rsp), %rax
	leaq	0(%r13,%rax,4), %rax
	movq	%rax, 216(%rsp)
	movslq	392(%rsp), %rax
	leaq	0(%r13,%rax,4), %rax
	movq	%rax, 232(%rsp)
	movslq	388(%rsp), %rax
	leaq	0(%r13,%rax,4), %rax
	movq	%rax, 240(%rsp)
	movslq	384(%rsp), %rax
	leaq	0(%r13,%rax,4), %rax
	movq	%rax, 248(%rsp)
	leal	10(%r12), %eax
	movl	%eax, 256(%rsp)
	movslq	380(%rsp), %rax
	leaq	0(%r13,%rax,4), %rax
	movq	%rax, 272(%rsp)
	leal	11(%r12), %eax
	movl	%eax, 280(%rsp)
	movslq	376(%rsp), %rax
	leaq	0(%r13,%rax,4), %rax
	movq	%rax, 288(%rsp)
	leal	12(%r12), %eax
	movl	%eax, 296(%rsp)
	movslq	372(%rsp), %rax
	leaq	0(%r13,%rax,4), %rax
	movq	%rax, 304(%rsp)
	leal	13(%r12), %eax
	movl	%eax, 312(%rsp)
	movslq	368(%rsp), %rax
	leaq	0(%r13,%rax,4), %rax
	movq	%rax, 320(%rsp)
	leal	14(%r12), %eax
	movl	%eax, 328(%rsp)
	movslq	364(%rsp), %rax
	movq	%r13, 424(%rsp)
	leaq	0(%r13,%rax,4), %rax
	movl	%r12d, 156(%rsp)
	movq	%rax, 344(%rsp)
	leal	15(%r12), %eax
	movl	%eax, 340(%rsp)
	movslq	360(%rsp), %rax
	movl	%ebp, 432(%rsp)
	leaq	0(%r13,%rax,4), %rax
	movq	%rax, 352(%rsp)
	jmp	.L216
	.p2align 4,,10
.L212:
	addl	$1, %edi
	addl	%r15d, %esi
	cmpl	%r15d, %edi
	je	.L285
.L216:
	cmpl	64(%rsp), %r15d
	jle	.L212
	movslq	%esi, %rax
	movq	72(%rsp), %rcx
	leaq	(%r14,%rax,4), %r8
	leal	1(%rsi), %eax
	cltq
	leaq	(%r14,%rax,4), %r9
	leal	2(%rsi), %eax
	cltq
	leaq	(%r14,%rax,4), %r10
	leal	3(%rsi), %eax
	cltq
	leaq	(%r14,%rax,4), %r11
	leal	4(%rsi), %eax
	cltq
	leaq	(%r14,%rax,4), %rbx
	leal	5(%rsi), %eax
	cltq
	leaq	(%r14,%rax,4), %rbp
	leal	6(%rsi), %eax
	cltq
	leaq	(%r14,%rax,4), %r13
	leal	7(%rsi), %eax
	cltq
	leaq	(%r14,%rax,4), %r12
	leal	8(%rsi), %eax
	cltq
	leaq	(%r14,%rax,4), %rax
	movq	%rax, 96(%rsp)
	leal	9(%rsi), %eax
	cltq
	leaq	(%r14,%rax,4), %rax
	movq	%rax, 112(%rsp)
	leal	10(%rsi), %eax
	cltq
	leaq	(%r14,%rax,4), %rax
	movq	%rax, 128(%rsp)
	leal	11(%rsi), %eax
	cltq
	leaq	(%r14,%rax,4), %rax
	movq	%rax, 136(%rsp)
	leal	12(%rsi), %eax
	cltq
	leaq	(%r14,%rax,4), %rax
	movq	%rax, 160(%rsp)
	leal	13(%rsi), %eax
	cltq
	leaq	(%r14,%rax,4), %rax
	movq	%rax, 168(%rsp)
	leal	14(%rsi), %eax
	cltq
	leaq	(%r14,%rax,4), %rax
	movq	%rax, 192(%rsp)
	leal	15(%rsi), %eax
	cltq
	leaq	(%r14,%rax,4), %rax
	movq	%rax, 208(%rsp)
	movl	%esi, %eax
	subl	156(%rsp), %eax
	cltq
	leaq	(%rcx,%rax,4), %rcx
	movq	264(%rsp), %rax
.L214:
	movq	48(%rsp), %rdx
	vbroadcastss	(%r8), %ymm0
	vmovaps	(%rcx,%rax,4), %ymm3
	vfmadd132ps	(%rdx,%rax,4), %ymm3, %ymm0
	cmpl	32(%rsp), %r15d
	jle	.L213
	movq	88(%rsp), %rdx
	vbroadcastss	(%r9), %ymm1
	vfmadd231ps	(%rdx,%rax,4), %ymm1, %ymm0
	cmpl	84(%rsp), %r15d
	jle	.L213
	movq	120(%rsp), %rdx
	vbroadcastss	(%r10), %ymm1
	vfmadd231ps	(%rdx,%rax,4), %ymm1, %ymm0
	cmpl	104(%rsp), %r15d
	jle	.L213
	movq	144(%rsp), %rdx
	vbroadcastss	(%r11), %ymm1
	vfmadd231ps	(%rdx,%rax,4), %ymm1, %ymm0
	cmpl	152(%rsp), %r15d
	jle	.L213
	movq	176(%rsp), %rdx
	vbroadcastss	(%rbx), %ymm1
	vfmadd231ps	(%rdx,%rax,4), %ymm1, %ymm0
	cmpl	184(%rsp), %r15d
	jle	.L213
	movq	200(%rsp), %rdx
	vbroadcastss	0(%rbp), %ymm1
	vfmadd231ps	(%rdx,%rax,4), %ymm1, %ymm0
	cmpl	188(%rsp), %r15d
	jle	.L213
	movq	216(%rsp), %rdx
	vbroadcastss	0(%r13), %ymm1
	vfmadd231ps	(%rdx,%rax,4), %ymm1, %ymm0
	cmpl	224(%rsp), %r15d
	jle	.L213
	movq	232(%rsp), %rdx
	vbroadcastss	(%r12), %ymm1
	vfmadd231ps	(%rdx,%rax,4), %ymm1, %ymm0
	cmpl	228(%rsp), %r15d
	jle	.L213
	movq	96(%rsp), %rdx
	vbroadcastss	(%rdx), %ymm1
	movq	240(%rsp), %rdx
	vfmadd231ps	(%rdx,%rax,4), %ymm1, %ymm0
	cmpl	336(%rsp), %r15d
	jle	.L213
	movq	112(%rsp), %rdx
	vbroadcastss	(%rdx), %ymm1
	movq	248(%rsp), %rdx
	vfmadd231ps	(%rdx,%rax,4), %ymm1, %ymm0
	cmpl	256(%rsp), %r15d
	jle	.L213
	movq	128(%rsp), %rdx
	vbroadcastss	(%rdx), %ymm1
	movq	272(%rsp), %rdx
	vfmadd231ps	(%rdx,%rax,4), %ymm1, %ymm0
	cmpl	280(%rsp), %r15d
	jle	.L213
	movq	136(%rsp), %rdx
	vbroadcastss	(%rdx), %ymm1
	movq	288(%rsp), %rdx
	vfmadd231ps	(%rdx,%rax,4), %ymm1, %ymm0
	cmpl	296(%rsp), %r15d
	jle	.L213
	movq	160(%rsp), %rdx
	vbroadcastss	(%rdx), %ymm1
	movq	304(%rsp), %rdx
	vfmadd231ps	(%rdx,%rax,4), %ymm1, %ymm0
	cmpl	312(%rsp), %r15d
	jle	.L213
	movq	168(%rsp), %rdx
	vbroadcastss	(%rdx), %ymm1
	movq	320(%rsp), %rdx
	vfmadd231ps	(%rdx,%rax,4), %ymm1, %ymm0
	cmpl	328(%rsp), %r15d
	jle	.L213
	movq	192(%rsp), %rdx
	vbroadcastss	(%rdx), %ymm1
	movq	344(%rsp), %rdx
	vfmadd231ps	(%rdx,%rax,4), %ymm1, %ymm0
	cmpl	340(%rsp), %r15d
	jle	.L213
	movq	208(%rsp), %rdx
	vbroadcastss	(%rdx), %ymm1
	movq	352(%rsp), %rdx
	vfmadd231ps	(%rdx,%rax,4), %ymm1, %ymm0
.L213:
	vmovaps	%ymm0, (%rcx,%rax,4)
	leal	256(%rax), %edx
	addq	$256, %rax
	cmpl	108(%rsp), %edx
	jge	.L212
	cmpl	%edx, %r15d
	jg	.L214
	addl	$1, %edi
	addl	%r15d, %esi
	cmpl	%r15d, %edi
	jne	.L216
.L285:
	movl	156(%rsp), %r12d
	movl	432(%rsp), %ebp
	movq	424(%rsp), %r13
	addl	%ebp, 420(%rsp)
	addl	%ebp, 416(%rsp)
	addl	$16, %r12d
	addl	%ebp, 412(%rsp)
	addl	%ebp, 408(%rsp)
	addl	%ebp, 404(%rsp)
	addl	%ebp, 400(%rsp)
	addl	%ebp, 396(%rsp)
	addl	%ebp, 392(%rsp)
	addl	%ebp, 388(%rsp)
	addl	%ebp, 384(%rsp)
	addl	%ebp, 380(%rsp)
	addl	%ebp, 376(%rsp)
	addl	%ebp, 372(%rsp)
	addl	%ebp, 368(%rsp)
	addl	%ebp, 364(%rsp)
	addl	%ebp, 360(%rsp)
	addl	$16, 224(%rsp)
	addl	$16, 336(%rsp)
	addl	$16, 32(%rsp)
	addl	$16, 84(%rsp)
	addl	$16, 228(%rsp)
	addl	$16, 104(%rsp)
	addl	$16, 152(%rsp)
	addl	$16, 184(%rsp)
	addl	$16, 188(%rsp)
	cmpl	440(%rsp), %r12d
	jne	.L217
	addq	$256, 264(%rsp)
	movl	%ebp, %eax
	movl	%r12d, %ebp
	movl	%eax, %r12d
	movq	264(%rsp), %rax
	cmpl	%eax, %r15d
	jg	.L218
	movl	%r12d, %eax
	movq	%r14, %r12
	movl	%r15d, %edx
	movl	%ebp, 436(%rsp)
	movq	%r12, %rcx
	movl	%eax, %r14d
	call	_ZL11fill_matrixPfi
	movl	%r15d, %edx
	movq	%r13, %rcx
	call	_ZL11fill_matrixPfi
	movq	512(%rsp), %r8
	movq	72(%rsp), %rcx
	xorl	%edx, %edx
	call	memset
	subl	$1, 524(%rsp)
	jne	.L219
	movl	$10000, 524(%rsp)
	movq	$0, 440(%rsp)
.L227:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	$0, 264(%rsp)
	movq	%rax, 528(%rsp)
	movl	%r14d, %eax
	movq	%r12, %r14
	movl	%eax, %r12d
	movq	264(%rsp), %rax
	.p2align 4,,10
.L226:
	movl	%eax, %ebx
	movl	%eax, 64(%rsp)
	xorl	%ebp, %ebp
	movl	456(%rsp), %eax
	addl	$256, %ebx
	movl	%r15d, 416(%rsp)
	movl	%eax, 360(%rsp)
	movl	460(%rsp), %eax
	movl	%ebx, 104(%rsp)
	movl	%eax, 364(%rsp)
	movl	464(%rsp), %eax
	movl	$0, 420(%rsp)
	movl	%eax, 368(%rsp)
	movl	468(%rsp), %eax
	movl	%eax, 372(%rsp)
	movl	472(%rsp), %eax
	movl	%eax, 376(%rsp)
	movl	476(%rsp), %eax
	movl	%eax, 380(%rsp)
	movl	480(%rsp), %eax
	movl	%eax, 384(%rsp)
	movl	484(%rsp), %eax
	movl	%eax, 388(%rsp)
	movl	488(%rsp), %eax
	movl	%eax, 392(%rsp)
	movl	492(%rsp), %eax
	movl	%eax, 396(%rsp)
	movl	496(%rsp), %eax
	movl	%eax, 400(%rsp)
	movl	500(%rsp), %eax
	movl	%eax, 404(%rsp)
	movl	504(%rsp), %eax
	movl	%eax, 408(%rsp)
	movl	508(%rsp), %eax
	movl	%eax, 412(%rsp)
	movl	%r12d, %eax
	movl	%ebp, %r12d
	movl	$6, 188(%rsp)
	movl	%eax, %ebp
	movl	$5, 184(%rsp)
	movl	$4, 152(%rsp)
	movl	$3, 108(%rsp)
	movl	$8, 228(%rsp)
	movl	$2, 84(%rsp)
	movl	$1, 32(%rsp)
	movl	$9, 336(%rsp)
	movl	$7, 224(%rsp)
	.p2align 4,,10
.L225:
	movslq	420(%rsp), %rax
	movl	%r12d, %esi
	xorl	%edi, %edi
	leaq	0(%r13,%rax,4), %rax
	movq	%rax, 48(%rsp)
	movslq	416(%rsp), %rax
	leaq	0(%r13,%rax,4), %rax
	movq	%rax, 88(%rsp)
	movslq	412(%rsp), %rax
	leaq	0(%r13,%rax,4), %rax
	movq	%rax, 120(%rsp)
	movslq	408(%rsp), %rax
	leaq	0(%r13,%rax,4), %rax
	movq	%rax, 144(%rsp)
	movslq	404(%rsp), %rax
	leaq	0(%r13,%rax,4), %rax
	movq	%rax, 176(%rsp)
	movslq	400(%rsp), %rax
	leaq	0(%r13,%rax,4), %rax
	movq	%rax, 200(%rsp)
	movslq	396(%rsp), %rax
	leaq	0(%r13,%rax,4), %rax
	movq	%rax, 216(%rsp)
	movslq	392(%rsp), %rax
	leaq	0(%r13,%rax,4), %rax
	movq	%rax, 232(%rsp)
	movslq	388(%rsp), %rax
	leaq	0(%r13,%rax,4), %rax
	movq	%rax, 240(%rsp)
	movslq	384(%rsp), %rax
	leaq	0(%r13,%rax,4), %rax
	movq	%rax, 256(%rsp)
	leal	10(%r12), %eax
	movl	%eax, 248(%rsp)
	movslq	380(%rsp), %rax
	leaq	0(%r13,%rax,4), %rax
	movq	%rax, 280(%rsp)
	leal	11(%r12), %eax
	movl	%eax, 272(%rsp)
	movslq	376(%rsp), %rax
	leaq	0(%r13,%rax,4), %rax
	movq	%rax, 296(%rsp)
	leal	12(%r12), %eax
	movl	%eax, 288(%rsp)
	movslq	372(%rsp), %rax
	leaq	0(%r13,%rax,4), %rax
	movq	%rax, 312(%rsp)
	leal	13(%r12), %eax
	movl	%eax, 304(%rsp)
	movslq	368(%rsp), %rax
	leaq	0(%r13,%rax,4), %rax
	movq	%rax, 328(%rsp)
	leal	14(%r12), %eax
	movl	%eax, 320(%rsp)
	movslq	364(%rsp), %rax
	movq	%r13, 424(%rsp)
	leaq	0(%r13,%rax,4), %rax
	movl	%r12d, 156(%rsp)
	movq	%rax, 344(%rsp)
	leal	15(%r12), %eax
	movl	%eax, 340(%rsp)
	movslq	360(%rsp), %rax
	movl	%ebp, 432(%rsp)
	leaq	0(%r13,%rax,4), %rax
	movq	%rax, 352(%rsp)
	jmp	.L224
	.p2align 4,,10
.L220:
	addl	$1, %edi
	addl	%r15d, %esi
	cmpl	%r15d, %edi
	je	.L286
.L224:
	cmpl	64(%rsp), %r15d
	jle	.L220
	movslq	%esi, %rax
	movq	72(%rsp), %rcx
	leaq	(%r14,%rax,4), %r8
	leal	1(%rsi), %eax
	cltq
	leaq	(%r14,%rax,4), %r9
	leal	2(%rsi), %eax
	cltq
	leaq	(%r14,%rax,4), %r10
	leal	3(%rsi), %eax
	cltq
	leaq	(%r14,%rax,4), %r11
	leal	4(%rsi), %eax
	cltq
	leaq	(%r14,%rax,4), %rbx
	leal	5(%rsi), %eax
	cltq
	leaq	(%r14,%rax,4), %rbp
	leal	6(%rsi), %eax
	cltq
	leaq	(%r14,%rax,4), %r13
	leal	7(%rsi), %eax
	cltq
	leaq	(%r14,%rax,4), %r12
	leal	8(%rsi), %eax
	cltq
	leaq	(%r14,%rax,4), %rax
	movq	%rax, 96(%rsp)
	leal	9(%rsi), %eax
	cltq
	leaq	(%r14,%rax,4), %rax
	movq	%rax, 112(%rsp)
	leal	10(%rsi), %eax
	cltq
	leaq	(%r14,%rax,4), %rax
	movq	%rax, 128(%rsp)
	leal	11(%rsi), %eax
	cltq
	leaq	(%r14,%rax,4), %rax
	movq	%rax, 136(%rsp)
	leal	12(%rsi), %eax
	cltq
	leaq	(%r14,%rax,4), %rax
	movq	%rax, 160(%rsp)
	leal	13(%rsi), %eax
	cltq
	leaq	(%r14,%rax,4), %rax
	movq	%rax, 168(%rsp)
	leal	14(%rsi), %eax
	cltq
	leaq	(%r14,%rax,4), %rax
	movq	%rax, 192(%rsp)
	leal	15(%rsi), %eax
	cltq
	leaq	(%r14,%rax,4), %rax
	movq	%rax, 208(%rsp)
	movl	%esi, %eax
	subl	156(%rsp), %eax
	cltq
	leaq	(%rcx,%rax,4), %rcx
	movq	264(%rsp), %rax
.L222:
	movq	48(%rsp), %rdx
	vbroadcastss	(%r8), %ymm0
	vmovaps	(%rcx,%rax,4), %ymm4
	vfmadd132ps	(%rdx,%rax,4), %ymm4, %ymm0
	cmpl	32(%rsp), %r15d
	jle	.L221
	movq	88(%rsp), %rdx
	vbroadcastss	(%r9), %ymm1
	vfmadd231ps	(%rdx,%rax,4), %ymm1, %ymm0
	cmpl	84(%rsp), %r15d
	jle	.L221
	movq	120(%rsp), %rdx
	vbroadcastss	(%r10), %ymm1
	vfmadd231ps	(%rdx,%rax,4), %ymm1, %ymm0
	cmpl	108(%rsp), %r15d
	jle	.L221
	movq	144(%rsp), %rdx
	vbroadcastss	(%r11), %ymm1
	vfmadd231ps	(%rdx,%rax,4), %ymm1, %ymm0
	cmpl	152(%rsp), %r15d
	jle	.L221
	movq	176(%rsp), %rdx
	vbroadcastss	(%rbx), %ymm1
	vfmadd231ps	(%rdx,%rax,4), %ymm1, %ymm0
	cmpl	184(%rsp), %r15d
	jle	.L221
	movq	200(%rsp), %rdx
	vbroadcastss	0(%rbp), %ymm1
	vfmadd231ps	(%rdx,%rax,4), %ymm1, %ymm0
	cmpl	188(%rsp), %r15d
	jle	.L221
	movq	216(%rsp), %rdx
	vbroadcastss	0(%r13), %ymm1
	vfmadd231ps	(%rdx,%rax,4), %ymm1, %ymm0
	cmpl	224(%rsp), %r15d
	jle	.L221
	movq	232(%rsp), %rdx
	vbroadcastss	(%r12), %ymm1
	vfmadd231ps	(%rdx,%rax,4), %ymm1, %ymm0
	cmpl	228(%rsp), %r15d
	jle	.L221
	movq	96(%rsp), %rdx
	vbroadcastss	(%rdx), %ymm1
	movq	240(%rsp), %rdx
	vfmadd231ps	(%rdx,%rax,4), %ymm1, %ymm0
	cmpl	336(%rsp), %r15d
	jle	.L221
	movq	112(%rsp), %rdx
	vbroadcastss	(%rdx), %ymm1
	movq	256(%rsp), %rdx
	vfmadd231ps	(%rdx,%rax,4), %ymm1, %ymm0
	cmpl	248(%rsp), %r15d
	jle	.L221
	movq	128(%rsp), %rdx
	vbroadcastss	(%rdx), %ymm1
	movq	280(%rsp), %rdx
	vfmadd231ps	(%rdx,%rax,4), %ymm1, %ymm0
	cmpl	272(%rsp), %r15d
	jle	.L221
	movq	136(%rsp), %rdx
	vbroadcastss	(%rdx), %ymm1
	movq	296(%rsp), %rdx
	vfmadd231ps	(%rdx,%rax,4), %ymm1, %ymm0
	cmpl	288(%rsp), %r15d
	jle	.L221
	movq	160(%rsp), %rdx
	vbroadcastss	(%rdx), %ymm1
	movq	312(%rsp), %rdx
	vfmadd231ps	(%rdx,%rax,4), %ymm1, %ymm0
	cmpl	304(%rsp), %r15d
	jle	.L221
	movq	168(%rsp), %rdx
	vbroadcastss	(%rdx), %ymm1
	movq	328(%rsp), %rdx
	vfmadd231ps	(%rdx,%rax,4), %ymm1, %ymm0
	cmpl	320(%rsp), %r15d
	jle	.L221
	movq	192(%rsp), %rdx
	vbroadcastss	(%rdx), %ymm1
	movq	344(%rsp), %rdx
	vfmadd231ps	(%rdx,%rax,4), %ymm1, %ymm0
	cmpl	340(%rsp), %r15d
	jle	.L221
	movq	208(%rsp), %rdx
	vbroadcastss	(%rdx), %ymm1
	movq	352(%rsp), %rdx
	vfmadd231ps	(%rdx,%rax,4), %ymm1, %ymm0
.L221:
	vmovaps	%ymm0, (%rcx,%rax,4)
	leal	256(%rax), %edx
	addq	$256, %rax
	cmpl	104(%rsp), %edx
	jge	.L220
	cmpl	%r15d, %edx
	jl	.L222
	addl	$1, %edi
	addl	%r15d, %esi
	cmpl	%r15d, %edi
	jne	.L224
.L286:
	movl	156(%rsp), %r12d
	movl	432(%rsp), %ebp
	movq	424(%rsp), %r13
	addl	%ebp, 420(%rsp)
	addl	%ebp, 416(%rsp)
	addl	$16, %r12d
	addl	%ebp, 412(%rsp)
	addl	%ebp, 408(%rsp)
	addl	%ebp, 404(%rsp)
	addl	%ebp, 400(%rsp)
	addl	%ebp, 396(%rsp)
	addl	%ebp, 392(%rsp)
	addl	%ebp, 388(%rsp)
	addl	%ebp, 384(%rsp)
	addl	%ebp, 380(%rsp)
	addl	%ebp, 376(%rsp)
	addl	%ebp, 372(%rsp)
	addl	%ebp, 368(%rsp)
	addl	%ebp, 364(%rsp)
	addl	%ebp, 360(%rsp)
	addl	$16, 224(%rsp)
	addl	$16, 336(%rsp)
	addl	$16, 32(%rsp)
	addl	$16, 84(%rsp)
	addl	$16, 228(%rsp)
	addl	$16, 108(%rsp)
	addl	$16, 152(%rsp)
	addl	$16, 184(%rsp)
	addl	$16, 188(%rsp)
	cmpl	%r12d, 436(%rsp)
	jne	.L225
	addq	$256, 264(%rsp)
	movl	%ebp, %r12d
	movq	264(%rsp), %rax
	cmpl	%eax, %r15d
	jg	.L226
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%r14, %r12
	movl	%r15d, %edx
	subq	528(%rsp), %rax
	movq	%r12, %rcx
	movl	%ebp, %r14d
	addq	%rax, 440(%rsp)
	call	_ZL11fill_matrixPfi
	movl	%r15d, %edx
	movq	%r13, %rcx
	call	_ZL11fill_matrixPfi
	movq	512(%rsp), %r8
	movq	72(%rsp), %rcx
	xorl	%edx, %edx
	call	memset
	subl	$1, 524(%rsp)
	jne	.L227
	vxorpd	%xmm0, %xmm0, %xmm0
	flds	.LC16(%rip)
	vxorpd	%xmm2, %xmm2, %xmm2
	movq	616(%rsp), %r8
	vcvtsi2sd	%r15d, %xmm2, %xmm2
	movq	608(%rsp), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	vcvtsi2sdq	440(%rsp), %xmm0, %xmm0
	vaddsd	%xmm2, %xmm2, %xmm1
	vdivsd	%xmm6, %xmm0, %xmm5
	vmulsd	%xmm2, %xmm1, %xmm1
	vmulsd	%xmm2, %xmm1, %xmm1
	vmulsd	.LC10(%rip), %xmm0, %xmm2
	vmovsd	%xmm2, 64(%rsp)
	vmovsd	%xmm5, 32(%rsp)
	fdivl	32(%rsp)
	vmulsd	.LC15(%rip), %xmm1, %xmm5
	vmovsd	%xmm5, 48(%rsp)
	fstpt	32(%rsp)
	fldl	48(%rsp)
	fdivl	64(%rsp)
	fstpt	48(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$1, %r8d
	leaq	.LC11(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	%r15d, %edx
	movq	%rbx, %rcx
	call	_ZNSolsEi
	movl	$1, %r8d
	leaq	.LC11(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	fldt	32(%rsp)
	leaq	544(%rsp), %rsi
	movq	%rbx, %rcx
	movq	%rsi, %rdx
	fstpt	544(%rsp)
	call	_ZNSo9_M_insertIeEERSoT_
	movl	$1, %r8d
	leaq	.LC11(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	fldt	48(%rsp)
	movq	%rsi, %rdx
	movq	%rbx, %rcx
	fstpt	544(%rsp)
	call	_ZNSo9_M_insertIeEERSoT_
	movq	%rax, %rsi
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rsi,%rax), %rbx
	testq	%rbx, %rbx
	je	.L287
	cmpb	$0, 56(%rbx)
	je	.L229
	movsbl	67(%rbx), %edx
.L230:
	movq	%rsi, %rcx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	call	_ZNSo5flushEv
	movq	%r12, %rcx
	movq	__imp__aligned_free(%rip), %rbx
	call	*%rbx
	movq	%r13, %rcx
	call	*%rbx
	movq	72(%rsp), %rcx
	call	*%rbx
.LEHE4:
	movq	448(%rsp), %rax
	movq	608(%rsp), %rcx
	addq	$16, %rax
	cmpq	%rax, %rcx
	je	.L231
	call	_ZdlPv
.L231:
	movq	448(%rsp), %rbx
	leaq	576(%rsp), %r8
	movl	%r15d, %edx
	movabsq	$8530204144399049075, %rdi
	leaq	16(%rbx), %rax
	movq	%rbx, %rcx
	movq	%rax, 608(%rsp)
	movq	%rdi, 16(%rbx)
	movb	$120, 8(%rax)
	movq	$9, 616(%rsp)
	movb	$0, 633(%rsp)
.LEHB5:
	call	_Z20throughput_benchmarkIPFviPKfS1_PfEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiiRT_.constprop.30
.LEHE5:
	movq	608(%rsp), %rcx
	leaq	16(%rbx), %rax
	cmpq	%rax, %rcx
	je	.L232
	call	_ZdlPv
.L232:
	movq	448(%rsp), %rdi
	xorl	%r8d, %r8d
	leaq	600(%rsp), %rbx
	movq	$18, 600(%rsp)
	movq	%rbx, %rdx
	leaq	16(%rdi), %rax
	movq	%rdi, %rcx
	movq	%rax, 608(%rsp)
.LEHB6:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
.LEHE6:
	movq	600(%rsp), %rdx
	movabsq	$7812741990851108728, %rcx
	leaq	584(%rsp), %r8
	movq	%rax, 608(%rsp)
	movq	%rdx, 624(%rsp)
	movabsq	$8530204144399049075, %rdx
	movq	%rdx, (%rax)
	movl	$25701, %edx
	movq	%rcx, 8(%rax)
	movq	%rdi, %rcx
	movw	%dx, 16(%rax)
	movq	600(%rsp), %rax
	movq	608(%rsp), %rdx
	movq	%rax, 616(%rsp)
	movb	$0, (%rdx,%rax)
	movl	%r15d, %edx
.LEHB7:
	call	_Z20throughput_benchmarkIPFviPKfS1_PfEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiiRT_.constprop.30
.LEHE7:
	movq	608(%rsp), %rcx
	leaq	16(%rdi), %rax
	cmpq	%rax, %rcx
	je	.L233
	call	_ZdlPv
.L233:
	movq	448(%rsp), %rdi
	movq	%rbx, %rdx
	xorl	%r8d, %r8d
	movq	$24, 600(%rsp)
	movabsq	$7812741990851108728, %rbp
	leaq	16(%rdi), %rax
	movq	%rdi, %rcx
	movq	%rdi, %rbx
	movabsq	$8530204144399049075, %rdi
	movq	%rax, 608(%rsp)
.LEHB8:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
.LEHE8:
	movq	600(%rsp), %rdx
	leaq	592(%rsp), %r8
	movq	%rbx, %rcx
	movq	%rax, 608(%rsp)
	movq	%rdx, 624(%rsp)
	movq	%rdi, (%rax)
	movabsq	$7305798982299509861, %rdi
	movq	%rbp, 8(%rax)
	movq	%rdi, 16(%rax)
	movq	600(%rsp), %rax
	movq	608(%rsp), %rdx
	movq	%rax, 616(%rsp)
	movb	$0, (%rdx,%rax)
	movl	%r15d, %edx
.LEHB9:
	call	_Z20throughput_benchmarkIPFviPKfS1_PfEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiiRT_.constprop.30
.LEHE9:
	movq	608(%rsp), %rcx
	leaq	16(%rbx), %rax
	cmpq	%rax, %rcx
	je	.L234
	call	_ZdlPv
.L234:
	movq	448(%rsp), %rbx
	leaq	560(%rsp), %r8
	movl	%r15d, %edx
	leaq	16(%rbx), %rax
	movq	%rbx, %rcx
	movq	%rax, 608(%rsp)
	movl	$1886937459, 16(%rbx)
	movb	$121, 4(%rax)
	movq	$5, 616(%rsp)
	movb	$0, 629(%rsp)
.LEHB10:
	call	_Z20throughput_benchmarkIPFviPKfS1_PfEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiiRT_.constprop.31
.LEHE10:
	movq	608(%rsp), %rcx
	leaq	16(%rbx), %rax
	cmpq	%rax, %rcx
	je	.L235
	call	_ZdlPv
.L235:
	addl	$64, %r15d
	addl	$1024, %r14d
	subl	$-128, 508(%rsp)
	addl	$192, 504(%rsp)
	addl	$256, 500(%rsp)
	addl	$320, 496(%rsp)
	addl	$384, 492(%rsp)
	addl	$448, 488(%rsp)
	addl	$512, 484(%rsp)
	addl	$576, 480(%rsp)
	addl	$640, 476(%rsp)
	addl	$704, 472(%rsp)
	addl	$768, 468(%rsp)
	addl	$832, 464(%rsp)
	addl	$896, 460(%rsp)
	addl	$960, 456(%rsp)
	addl	$64, 520(%rsp)
	cmpl	$1088, %r15d
	jne	.L236
	vmovaps	640(%rsp), %xmm6
	xorl	%eax, %eax
	addq	$664, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
.L229:
	movq	%rbx, %rcx
.LEHB11:
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx
	movl	$10, %edx
	movq	48(%rax), %rax
	cmpq	%rcx, %rax
	je	.L230
	movq	%rbx, %rcx
	call	*%rax
.LEHE11:
	movsbl	%al, %edx
	jmp	.L230
.L255:
	movq	448(%rsp), %rdx
	movq	608(%rsp), %rcx
	movq	%rax, %rbx
	addq	$16, %rdx
	cmpq	%rdx, %rcx
	je	.L277
.L279:
	vzeroupper
	call	_ZdlPv
.L248:
	movq	%rbx, %rcx
.LEHB12:
	call	_Unwind_Resume
.LEHE12:
.L251:
.L281:
	movq	%rax, %rbx
	movq	448(%rsp), %rax
	movq	608(%rsp), %rcx
	addq	$16, %rax
	cmpq	%rax, %rcx
	jne	.L279
.L277:
	vzeroupper
	jmp	.L248
.L253:
	jmp	.L281
.L252:
	jmp	.L281
.L254:
	jmp	.L281
.L287:
.LEHB13:
	call	_ZSt16__throw_bad_castv
.LEHE13:
.L250:
	jmp	.L281
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA7832:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7832-.LLSDACSB7832
.LLSDACSB7832:
	.uleb128 .LEHB2-.LFB7832
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB7832
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L250-.LFB7832
	.uleb128 0
	.uleb128 .LEHB4-.LFB7832
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L251-.LFB7832
	.uleb128 0
	.uleb128 .LEHB5-.LFB7832
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L252-.LFB7832
	.uleb128 0
	.uleb128 .LEHB6-.LFB7832
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB7832
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L253-.LFB7832
	.uleb128 0
	.uleb128 .LEHB8-.LFB7832
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB7832
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L254-.LFB7832
	.uleb128 0
	.uleb128 .LEHB10-.LFB7832
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L255-.LFB7832
	.uleb128 0
	.uleb128 .LEHB11-.LFB7832
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L251-.LFB7832
	.uleb128 0
	.uleb128 .LEHB12-.LFB7832
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB13-.LFB7832
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L251-.LFB7832
	.uleb128 0
.LLSDACSE7832:
	.section	.text.startup,"x"
	.seh_endproc
	.p2align 4,,15
	.def	_GLOBAL__sub_I_main;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I_main
_GLOBAL__sub_I_main:
.LFB8427:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	call	_ZNSt8ios_base4InitC1Ev
	leaq	__tcf_0(%rip), %rcx
	addq	$40, %rsp
	jmp	atexit
	.seh_endproc
	.section	.ctors,"w"
	.align 8
	.quad	_GLOBAL__sub_I_main
.lcomm _ZStL8__ioinit,1,1
	.section .rdata,"dr"
	.align 32
.LC0:
	.quad	-2147483648
	.quad	-2147483648
	.quad	-2147483648
	.quad	-2147483648
	.align 32
.LC1:
	.quad	2147483647
	.quad	2147483647
	.quad	2147483647
	.quad	2147483647
	.align 32
.LC2:
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.align 32
.LC3:
	.quad	-5403634167711393303
	.quad	-5403634167711393303
	.quad	-5403634167711393303
	.quad	-5403634167711393303
	.align 4
.LC5:
	.long	528482304
	.align 4
.LC6:
	.long	1065353216
	.align 4
.LC7:
	.long	1240736768
	.align 4
.LC8:
	.long	-915135488
	.align 8
.LC9:
	.long	0
	.long	1083129856
	.align 8
.LC10:
	.long	-858993459
	.long	1074056396
	.align 8
.LC12:
	.long	0
	.long	1104006501
	.align 4
.LC13:
	.long	1148846080
	.align 8
.LC15:
	.long	0
	.long	1086556160
	.align 4
.LC16:
	.long	1176256512
	.ident	"GCC: (x86_64-posix-seh-rev1, Built by MinGW-W64 project) 7.2.0"
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt13random_device14_M_init_pretr1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE;	.scl	2;	.type	32;	.endef
	.def	_ZdlPv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt13random_device16_M_getval_pretr1Ev;	.scl	2;	.type	32;	.endef
	.def	nextafterf;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6chrono3_V212system_clock3nowEv;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEi;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIeEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZNSo3putEc;	.scl	2;	.type	32;	.endef
	.def	_ZNSo5flushEv;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt5ctypeIcE13_M_widen_initEv;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__throw_bad_castv;	.scl	2;	.type	32;	.endef
	.def	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
