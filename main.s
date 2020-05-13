	.file	"main.cpp"
	.text
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
.LC0:
	.string	"int getFileSize(const char*)"
.LC1:
	.string	"fileRead.h"
.LC2:
	.string	"inPath != nullptr"
.LC3:
	.string	"r"
.LC4:
	.string	"File opening failed"
	.text
	.globl	_Z11getFileSizePKc
	.type	_Z11getFileSizePKc, @function
_Z11getFileSizePKc:
.LFB5522:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L2
	leaq	.LC0(%rip), %rcx
	movl	$20, %edx
	leaq	.LC1(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	__assert_fail@PLT
.L2:
	movq	-24(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L3
	leaq	.LC4(%rip), %rdi
	call	perror@PLT
	call	__errno_location@PLT
	movl	(%rax), %eax
	jmp	.L4
.L3:
	movq	-16(%rbp), %rax
	movl	$2, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	fseek@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ftell@PLT
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movq	-8(%rbp), %rax
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5522:
	.size	_Z11getFileSizePKc, .-_Z11getFileSizePKc
	.section	.rodata
.LC5:
	.string	""
	.align 8
.LC6:
	.string	"int readFile(const char*, char*, size_t)"
.LC7:
	.string	"inPath != \"\""
.LC8:
	.string	"text != nullptr"
	.text
	.globl	_Z8readFilePKcPcm
	.type	_Z8readFilePKcPcm, @function
_Z8readFilePKcPcm:
.LFB5523:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	leaq	.LC5(%rip), %rax
	cmpq	%rax, -24(%rbp)
	jne	.L6
	leaq	.LC6(%rip), %rcx
	movl	$42, %edx
	leaq	.LC1(%rip), %rsi
	leaq	.LC7(%rip), %rdi
	call	__assert_fail@PLT
.L6:
	cmpq	$0, -32(%rbp)
	jne	.L7
	leaq	.LC6(%rip), %rcx
	movl	$43, %edx
	leaq	.LC1(%rip), %rsi
	leaq	.LC8(%rip), %rdi
	call	__assert_fail@PLT
.L7:
	movq	-24(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L8
	leaq	.LC4(%rip), %rdi
	call	perror@PLT
	call	__errno_location@PLT
	movl	(%rax), %eax
	jmp	.L9
.L8:
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	$0, %eax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5523:
	.size	_Z8readFilePKcPcm, .-_Z8readFilePKcPcm
	.section	.rodata
	.align 8
.LC9:
	.string	"int strCmp(const char*, const char*)"
.LC10:
	.string	"str1 != nullptr"
.LC11:
	.string	"str2 != nullptr"
	.text
	.globl	_Z6strCmpPKcS0_
	.type	_Z6strCmpPKcS0_, @function
_Z6strCmpPKcS0_:
.LFB5524:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L11
	leaq	.LC9(%rip), %rcx
	movl	$62, %edx
	leaq	.LC1(%rip), %rsi
	leaq	.LC10(%rip), %rdi
	call	__assert_fail@PLT
.L11:
	cmpq	$0, -32(%rbp)
	jne	.L12
	leaq	.LC9(%rip), %rcx
	movl	$63, %edx
	leaq	.LC1(%rip), %rsi
	leaq	.LC11(%rip), %rdi
	call	__assert_fail@PLT
.L12:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L16
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L14
.L16:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	isalpha@PLT
	testl	%eax, %eax
	jne	.L15
	addq	$1, -24(%rbp)
	jmp	.L16
.L15:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	isalpha@PLT
	testl	%eax, %eax
	jne	.L17
	addq	$1, -32(%rbp)
	jmp	.L15
.L17:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	tolower@PLT
	movl	%eax, -8(%rbp)
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	tolower@PLT
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	je	.L18
	movl	-8(%rbp), %eax
	subl	-4(%rbp), %eax
	jmp	.L10
.L18:
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L20
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L20
	movl	$0, %eax
	jmp	.L10
.L20:
	addq	$1, -24(%rbp)
	addq	$1, -32(%rbp)
	jmp	.L12
.L14:
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5524:
	.size	_Z6strCmpPKcS0_, .-_Z6strCmpPKcS0_
	.section	.rodata
	.align 8
.LC12:
	.string	"int strCmpForStruct(const void*, const void*)"
.LC13:
	.string	"string1 != nullptr"
.LC14:
	.string	"string2 != nullptr"
	.text
	.globl	_Z15strCmpForStructPKvS0_
	.type	_Z15strCmpForStructPKvS0_, @function
_Z15strCmpForStructPKvS0_:
.LFB5525:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L22
	leaq	.LC12(%rip), %rcx
	movl	$87, %edx
	leaq	.LC1(%rip), %rsi
	leaq	.LC13(%rip), %rdi
	call	__assert_fail@PLT
.L22:
	cmpq	$0, -32(%rbp)
	jne	.L23
	leaq	.LC12(%rip), %rcx
	movl	$88, %edx
	leaq	.LC1(%rip), %rsi
	leaq	.LC14(%rip), %rdi
	call	__assert_fail@PLT
.L23:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z6strCmpPKcS0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5525:
	.size	_Z15strCmpForStructPKvS0_, .-_Z15strCmpForStructPKvS0_
	.globl	_Z10strBackCmpPKcS0_S0_S0_
	.type	_Z10strBackCmpPKcS0_S0_S0_, @function
_Z10strBackCmpPKcS0_S0_S0_:
.LFB5526:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
.L34:
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.L29
	movq	-48(%rbp), %rax
	cmpq	-40(%rbp), %rax
	je	.L27
.L29:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	isalpha@PLT
	testl	%eax, %eax
	jne	.L28
	subq	$1, -32(%rbp)
	jmp	.L29
.L28:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	isalpha@PLT
	testl	%eax, %eax
	jne	.L30
	subq	$1, -48(%rbp)
	jmp	.L28
.L30:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	tolower@PLT
	movl	%eax, -8(%rbp)
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	tolower@PLT
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	je	.L31
	movl	-8(%rbp), %eax
	subl	-4(%rbp), %eax
	jmp	.L25
.L31:
	movq	-32(%rbp), %rax
	subq	$1, %rax
	cmpq	%rax, -24(%rbp)
	jne	.L33
	movq	-48(%rbp), %rax
	subq	$1, %rax
	cmpq	%rax, -40(%rbp)
	jne	.L33
	movl	$0, %eax
	jmp	.L25
.L33:
	subq	$1, -32(%rbp)
	subq	$1, -48(%rbp)
	jmp	.L34
.L27:
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5526:
	.size	_Z10strBackCmpPKcS0_S0_S0_, .-_Z10strBackCmpPKcS0_S0_S0_
	.section	.rodata
	.align 8
.LC15:
	.string	"int strBackCmpForStruct(const void*, const void*)"
	.text
	.globl	_Z19strBackCmpForStructPKvS0_
	.type	_Z19strBackCmpForStructPKvS0_, @function
_Z19strBackCmpForStructPKvS0_:
.LFB5527:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L36
	leaq	.LC15(%rip), %rcx
	movl	$128, %edx
	leaq	.LC1(%rip), %rsi
	leaq	.LC13(%rip), %rdi
	call	__assert_fail@PLT
.L36:
	cmpq	$0, -48(%rbp)
	jne	.L37
	leaq	.LC15(%rip), %rcx
	movl	$129, %edx
	leaq	.LC1(%rip), %rsi
	leaq	.LC14(%rip), %rdi
	call	__assert_fail@PLT
.L37:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_Z10strBackCmpPKcS0_S0_S0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5527:
	.size	_Z19strBackCmpForStructPKvS0_, .-_Z19strBackCmpForStructPKvS0_
	.section	.rodata
	.align 8
.LC16:
	.string	"int nRows(const char*, size_t, char)"
.LC17:
	.string	"str != nullptr"
	.text
	.globl	_Z5nRowsPKcmc
	.type	_Z5nRowsPKcmc, @function
_Z5nRowsPKcmc:
.LFB5528:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, %eax
	movb	%al, -36(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L40
	leaq	.LC16(%rip), %rcx
	movl	$149, %edx
	leaq	.LC1(%rip), %rsi
	leaq	.LC17(%rip), %rdi
	call	__assert_fail@PLT
.L40:
	movl	$1, -12(%rbp)
	movq	$0, -8(%rbp)
.L43:
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L41
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, -36(%rbp)
	jne	.L42
	addl	$1, -12(%rbp)
.L42:
	addq	$1, -8(%rbp)
	jmp	.L43
.L41:
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5528:
	.size	_Z5nRowsPKcmc, .-_Z5nRowsPKcmc
	.section	.rodata
	.align 8
.LC18:
	.string	"int writeFile(const char*, lineIndex*, size_t)"
.LC19:
	.string	"outPath != nullptr"
.LC20:
	.string	"a"
.LC21:
	.string	"%s\n"
.LC22:
	.string	"\n\n"
	.text
	.globl	_Z9writeFilePKcP9lineIndexm
	.type	_Z9writeFilePKcP9lineIndexm, @function
_Z9writeFilePKcP9lineIndexm:
.LFB5529:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L46
	leaq	.LC18(%rip), %rcx
	movl	$168, %edx
	leaq	.LC1(%rip), %rsi
	leaq	.LC19(%rip), %rdi
	call	__assert_fail@PLT
.L46:
	cmpq	$0, -32(%rbp)
	jne	.L47
	leaq	.LC18(%rip), %rcx
	movl	$169, %edx
	leaq	.LC1(%rip), %rsi
	leaq	.LC8(%rip), %rdi
	call	__assert_fail@PLT
.L47:
	movq	-24(%rbp), %rax
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L48
	leaq	.LC4(%rip), %rdi
	call	perror@PLT
	call	__errno_location@PLT
	movl	(%rax), %eax
	jmp	.L49
.L48:
	movq	$0, -16(%rbp)
.L51:
	movq	-16(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jnb	.L50
	movq	-16(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC21(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addq	$1, -16(%rbp)
	jmp	.L51
.L50:
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	movl	$2, %edx
	movl	$1, %esi
	leaq	.LC22(%rip), %rdi
	call	fwrite@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	$0, %eax
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5529:
	.size	_Z9writeFilePKcP9lineIndexm, .-_Z9writeFilePKcP9lineIndexm
	.section	.rodata
	.align 8
.LC23:
	.string	"int writeFile(const char*, char*, size_t)"
.LC24:
	.string	"w"
	.text
	.globl	_Z9writeFilePKcPcm
	.type	_Z9writeFilePKcPcm, @function
_Z9writeFilePKcPcm:
.LFB5530:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L53
	leaq	.LC23(%rip), %rcx
	movl	$194, %edx
	leaq	.LC1(%rip), %rsi
	leaq	.LC19(%rip), %rdi
	call	__assert_fail@PLT
.L53:
	cmpq	$0, -32(%rbp)
	jne	.L54
	leaq	.LC23(%rip), %rcx
	movl	$195, %edx
	leaq	.LC1(%rip), %rsi
	leaq	.LC8(%rip), %rdi
	call	__assert_fail@PLT
.L54:
	movq	-24(%rbp), %rax
	leaq	.LC24(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L55
	leaq	.LC4(%rip), %rdi
	call	perror@PLT
	call	__errno_location@PLT
	movl	(%rax), %eax
	jmp	.L56
.L55:
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	fwrite@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	$0, %eax
.L56:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5530:
	.size	_Z9writeFilePKcPcm, .-_Z9writeFilePKcPcm
	.section	.rodata
	.align 8
.LC25:
	.string	"void fillIndex(lineIndex*, char*, size_t)"
.LC26:
	.string	"index != nullptr"
	.text
	.globl	_Z9fillIndexP9lineIndexPcm
	.type	_Z9fillIndexP9lineIndexPcm, @function
_Z9fillIndexP9lineIndexPcm:
.LFB5531:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L58
	leaq	.LC25(%rip), %rcx
	movl	$216, %edx
	leaq	.LC1(%rip), %rsi
	leaq	.LC26(%rip), %rdi
	call	__assert_fail@PLT
.L58:
	cmpq	$0, -32(%rbp)
	jne	.L59
	leaq	.LC25(%rip), %rcx
	movl	$217, %edx
	leaq	.LC1(%rip), %rsi
	leaq	.LC8(%rip), %rdi
	call	__assert_fail@PLT
.L59:
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, -12(%rbp)
	movq	$0, -8(%rbp)
.L62:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jnb	.L60
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L61
	movq	-8(%rbp), %rax
	leaq	-1(%rax), %rcx
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	-16(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	-32(%rbp), %rdx
	addq	%rcx, %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rcx
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	-32(%rbp), %rdx
	addq	%rcx, %rdx
	movq	%rdx, (%rax)
	addl	$1, -12(%rbp)
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
.L61:
	addq	$1, -8(%rbp)
	jmp	.L62
.L60:
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rcx
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	-16(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	-32(%rbp), %rdx
	addq	%rcx, %rdx
	movq	%rdx, 8(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5531:
	.size	_Z9fillIndexP9lineIndexPcm, .-_Z9fillIndexP9lineIndexPcm
	.section	.rodata
	.align 8
.LC27:
	.string	"void getIndexCopy(lineIndex*, lineIndex*, size_t)"
.LC28:
	.string	"indexCopy != nullptr"
	.text
	.globl	_Z12getIndexCopyP9lineIndexS0_m
	.type	_Z12getIndexCopyP9lineIndexS0_m, @function
_Z12getIndexCopyP9lineIndexS0_m:
.LFB5532:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L64
	leaq	.LC27(%rip), %rcx
	movl	$242, %edx
	leaq	.LC1(%rip), %rsi
	leaq	.LC26(%rip), %rdi
	call	__assert_fail@PLT
.L64:
	cmpq	$0, -32(%rbp)
	jne	.L65
	leaq	.LC27(%rip), %rcx
	movl	$243, %edx
	leaq	.LC1(%rip), %rsi
	leaq	.LC28(%rip), %rdi
	call	__assert_fail@PLT
.L65:
	movq	$0, -8(%rbp)
.L67:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jnb	.L68
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rcx
	salq	$4, %rcx
	movq	-32(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rcx
	salq	$4, %rcx
	movq	-32(%rbp), %rdx
	addq	%rcx, %rdx
	movq	8(%rax), %rax
	movq	%rax, 8(%rdx)
	addq	$1, -8(%rbp)
	jmp	.L67
.L68:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5532:
	.size	_Z12getIndexCopyP9lineIndexS0_m, .-_Z12getIndexCopyP9lineIndexS0_m
	.section	.rodata
	.align 8
.LC29:
	.string	"char* readTextFromFile(const char*, size_t*)"
	.text
	.globl	_Z16readTextFromFilePKcPm
	.type	_Z16readTextFromFilePKcPm, @function
_Z16readTextFromFilePKcPm:
.LFB5533:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L70
	leaq	.LC29(%rip), %rcx
	movl	$276, %edx
	leaq	.LC1(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	__assert_fail@PLT
.L70:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_Z11getFileSizePKc
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	calloc@PLT
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z8readFilePKcPcm
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L71
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit@PLT
.L71:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5533:
	.size	_Z16readTextFromFilePKcPm, .-_Z16readTextFromFilePKcPm
	.section	.rodata
	.align 32
	.type	_ZN11avxBlendingL8mask1256E, @object
	.size	_ZN11avxBlendingL8mask1256E, 32
_ZN11avxBlendingL8mask1256E:
	.string	""
	.ascii	"\377\001\377\002\377\003\377\004\377\005\377\006\377\007\377"
	.ascii	"\020\377\021\377\022\377\023\377\024\377\025\377\026\377\027"
	.ascii	"\377"
	.align 32
	.type	_ZN11avxBlendingL8mask3478E, @object
	.size	_ZN11avxBlendingL8mask3478E, 32
_ZN11avxBlendingL8mask3478E:
	.ascii	"\b\377\t\377\n\377\013\377\f\377\r\377\016\377\017\377\030\377"
	.ascii	"\031\377\032\377\033\377\034\377\035\377\036\377\037\377"
	.align 32
	.type	_ZN11avxBlendingL10packed1256E, @object
	.size	_ZN11avxBlendingL10packed1256E, 32
_ZN11avxBlendingL10packed1256E:
	.ascii	"\001\003\005\377\t\013\r\377\377\377\377\377\377\377\377\377"
	.ascii	"\001\003\005\377\t\013\r\377\377\377\377\377\377\377\377\377"
	.align 32
	.type	_ZN11avxBlendingL10packed3478E, @object
	.size	_ZN11avxBlendingL10packed3478E, 32
_ZN11avxBlendingL10packed3478E:
	.ascii	"\377\377\377\377\377\377\377\377\001\003\005\377\t\013\r\377"
	.ascii	"\377\377\377\377\377\377\377\377\001\003\005\377\t\013\r\377"
	.align 32
	.type	_ZN11avxBlendingL6minuedE, @object
	.size	_ZN11avxBlendingL6minuedE, 32
_ZN11avxBlendingL6minuedE:
	.string	""
	.string	"\001"
	.string	"\001"
	.string	"\001"
	.string	"\001"
	.string	"\001"
	.string	"\001"
	.string	"\001"
	.string	"\001"
	.string	"\001"
	.string	"\001"
	.string	"\001"
	.string	"\001"
	.string	"\001"
	.string	"\001"
	.string	"\001"
	.ascii	"\001"
	.align 32
	.type	_ZN11avxBlendingL5alphaE, @object
	.size	_ZN11avxBlendingL5alphaE, 32
_ZN11avxBlendingL5alphaE:
	.string	""
	.string	""
	.string	""
	.string	"\377"
	.string	""
	.string	""
	.string	"\377"
	.string	""
	.string	""
	.string	"\377"
	.string	""
	.string	""
	.string	"\377"
	.string	""
	.string	""
	.string	"\377"
	.string	""
	.string	""
	.string	"\377"
	.string	""
	.string	""
	.string	"\377"
	.string	""
	.string	""
	.ascii	"\377"
	.text
	.globl	_Z8blendingPcS_
	.type	_Z8blendingPcS_, @function
_Z8blendingPcS_:
.LFB5534:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	-72(%rbp), %rax
	addq	$10, %rax
	movl	(%rax), %eax
	movl	%eax, -44(%rbp)
	movq	-80(%rbp), %rax
	addq	$10, %rax
	movl	(%rax), %eax
	movl	%eax, -40(%rbp)
	movq	-72(%rbp), %rax
	addq	$18, %rax
	movl	(%rax), %eax
	movl	%eax, -36(%rbp)
	movq	-80(%rbp), %rax
	addq	$18, %rax
	movl	(%rax), %eax
	movl	%eax, -32(%rbp)
	movq	-80(%rbp), %rax
	addq	$22, %rax
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)
	movl	-44(%rbp), %eax
	cltq
	addq	%rax, -72(%rbp)
	movl	-40(%rbp), %eax
	cltq
	addq	%rax, -80(%rbp)
	movl	$300, -24(%rbp)
	movl	$250, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -56(%rbp)
.L79:
	movl	-20(%rbp), %edx
	movl	-28(%rbp), %eax
	addl	%edx, %eax
	cmpl	%eax, -56(%rbp)
	jge	.L74
	movl	-24(%rbp), %eax
	movl	%eax, -52(%rbp)
.L78:
	movl	-24(%rbp), %edx
	movl	-32(%rbp), %eax
	addl	%edx, %eax
	cmpl	%eax, -52(%rbp)
	jge	.L75
	movl	-56(%rbp), %eax
	imull	-36(%rbp), %eax
	sall	$2, %eax
	movslq	%eax, %rdx
	movl	-52(%rbp), %eax
	sall	$2, %eax
	cltq
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movl	-56(%rbp), %eax
	subl	-20(%rbp), %eax
	imull	-32(%rbp), %eax
	sall	$2, %eax
	movslq	%eax, %rdx
	movl	-52(%rbp), %eax
	subl	-24(%rbp), %eax
	sall	$2, %eax
	cltq
	addq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	3(%rax), %eax
	movb	%al, -57(%rbp)
	movl	$0, -48(%rbp)
.L77:
	cmpl	$2, -48(%rbp)
	jg	.L76
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movzbl	-57(%rbp), %eax
	imull	%eax, %edx
	movl	-48(%rbp), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movzbl	-57(%rbp), %ecx
	movl	$256, %esi
	subl	%ecx, %esi
	movl	%esi, %ecx
	imull	%ecx, %eax
	addl	%edx, %eax
	sarl	$8, %eax
	movl	%eax, %ecx
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addl	$1, -48(%rbp)
	jmp	.L77
.L76:
	movq	-16(%rbp), %rax
	addq	$3, %rax
	movb	$-1, (%rax)
	addl	$1, -52(%rbp)
	jmp	.L78
.L75:
	addl	$1, -56(%rbp)
	jmp	.L79
.L74:
	movl	-44(%rbp), %eax
	cltq
	negq	%rax
	addq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5534:
	.size	_Z8blendingPcS_, .-_Z8blendingPcS_
	.globl	_Z11blendingSSEPcS_
	.type	_Z11blendingSSEPcS_, @function
_Z11blendingSSEPcS_:
.LFB5535:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	andq	$-32, %rsp
	subq	$1512, %rsp
	movq	%rdi, -112(%rsp)
	movq	%rsi, -120(%rsp)
	movq	-112(%rsp), %rax
	addq	$10, %rax
	movl	(%rax), %eax
	movl	%eax, -92(%rsp)
	movq	-120(%rsp), %rax
	addq	$10, %rax
	movl	(%rax), %eax
	movl	%eax, -88(%rsp)
	movq	-112(%rsp), %rax
	addq	$18, %rax
	movl	(%rax), %eax
	movl	%eax, -84(%rsp)
	movq	-120(%rsp), %rax
	addq	$18, %rax
	movl	(%rax), %eax
	movl	%eax, -80(%rsp)
	movq	-120(%rsp), %rax
	addq	$22, %rax
	movl	(%rax), %eax
	movl	%eax, -76(%rsp)
	movl	-92(%rsp), %eax
	cltq
	addq	%rax, -112(%rsp)
	movl	-88(%rsp), %eax
	cltq
	addq	%rax, -120(%rsp)
	movl	$300, -72(%rsp)
	movl	$250, -68(%rsp)
	leaq	_ZN11avxBlendingL8mask1256E(%rip), %rax
	movq	%rax, -24(%rsp)
	movq	-24(%rsp), %rax
	vmovdqu	(%rax), %xmm0
	vinserti128	$0x1, 16(%rax), %ymm0, %ymm0
	vmovdqa	%ymm0, 8(%rsp)
	leaq	_ZN11avxBlendingL8mask3478E(%rip), %rax
	movq	%rax, -32(%rsp)
	movq	-32(%rsp), %rax
	vmovdqu	(%rax), %xmm0
	vinserti128	$0x1, 16(%rax), %ymm0, %ymm0
	vmovdqa	%ymm0, 40(%rsp)
	leaq	_ZN11avxBlendingL10packed1256E(%rip), %rax
	movq	%rax, -40(%rsp)
	movq	-40(%rsp), %rax
	vmovdqu	(%rax), %xmm0
	vinserti128	$0x1, 16(%rax), %ymm0, %ymm0
	vmovdqa	%ymm0, 72(%rsp)
	leaq	_ZN11avxBlendingL10packed3478E(%rip), %rax
	movq	%rax, -48(%rsp)
	movq	-48(%rsp), %rax
	vmovdqu	(%rax), %xmm0
	vinserti128	$0x1, 16(%rax), %ymm0, %ymm0
	vmovdqa	%ymm0, 104(%rsp)
	leaq	_ZN11avxBlendingL6minuedE(%rip), %rax
	movq	%rax, -56(%rsp)
	movq	-56(%rsp), %rax
	vmovdqu	(%rax), %xmm0
	vinserti128	$0x1, 16(%rax), %ymm0, %ymm0
	vmovdqa	%ymm0, 136(%rsp)
	leaq	_ZN11avxBlendingL5alphaE(%rip), %rax
	movq	%rax, -64(%rsp)
	movq	-64(%rsp), %rax
	vmovdqu	(%rax), %xmm0
	vinserti128	$0x1, 16(%rax), %ymm0, %ymm0
	vmovdqa	%ymm0, 168(%rsp)
	movl	-68(%rsp), %eax
	movl	%eax, -100(%rsp)
.L108:
	movl	-68(%rsp), %edx
	movl	-76(%rsp), %eax
	addl	%edx, %eax
	cmpl	%eax, -100(%rsp)
	jge	.L88
	movl	-72(%rsp), %eax
	movl	%eax, -96(%rsp)
.L107:
	movl	-72(%rsp), %edx
	movl	-80(%rsp), %eax
	addl	%edx, %eax
	cmpl	%eax, -96(%rsp)
	jge	.L89
	movl	-100(%rsp), %eax
	imull	-84(%rsp), %eax
	sall	$2, %eax
	movslq	%eax, %rdx
	movl	-96(%rsp), %eax
	sall	$2, %eax
	cltq
	addq	%rax, %rdx
	movq	-112(%rsp), %rax
	addq	%rdx, %rax
	movq	%rax, (%rsp)
	movq	(%rsp), %rax
	vmovdqu	(%rax), %xmm0
	vinserti128	$0x1, 16(%rax), %ymm0, %ymm0
	vmovdqa	%ymm0, 200(%rsp)
	movl	-100(%rsp), %eax
	subl	-68(%rsp), %eax
	imull	-80(%rsp), %eax
	sall	$2, %eax
	movslq	%eax, %rdx
	movl	-96(%rsp), %eax
	subl	-72(%rsp), %eax
	sall	$2, %eax
	cltq
	addq	%rax, %rdx
	movq	-120(%rsp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rsp)
	movq	-8(%rsp), %rax
	vmovdqu	(%rax), %xmm0
	vinserti128	$0x1, 16(%rax), %ymm0, %ymm0
	vmovdqa	%ymm0, 232(%rsp)
	vmovdqa	232(%rsp), %ymm0
	vmovdqa	%ymm0, 1448(%rsp)
	vmovdqa	8(%rsp), %ymm0
	vmovdqa	%ymm0, 1480(%rsp)
	vmovdqa	1480(%rsp), %ymm1
	vmovdqa	1448(%rsp), %ymm0
	vpshufb	%ymm1, %ymm0, %ymm0
	vmovdqa	%ymm0, 264(%rsp)
	vmovdqa	232(%rsp), %ymm0
	vmovdqa	%ymm0, 1384(%rsp)
	vmovdqa	40(%rsp), %ymm0
	vmovdqa	%ymm0, 1416(%rsp)
	vmovdqa	1416(%rsp), %ymm1
	vmovdqa	1384(%rsp), %ymm0
	vpshufb	%ymm1, %ymm0, %ymm0
	vmovdqa	%ymm0, 296(%rsp)
	vmovdqa	200(%rsp), %ymm0
	vmovdqa	%ymm0, 1320(%rsp)
	vmovdqa	8(%rsp), %ymm0
	vmovdqa	%ymm0, 1352(%rsp)
	vmovdqa	1352(%rsp), %ymm1
	vmovdqa	1320(%rsp), %ymm0
	vpshufb	%ymm1, %ymm0, %ymm0
	vmovdqa	%ymm0, 328(%rsp)
	vmovdqa	200(%rsp), %ymm0
	vmovdqa	%ymm0, 1256(%rsp)
	vmovdqa	40(%rsp), %ymm0
	vmovdqa	%ymm0, 1288(%rsp)
	vmovdqa	1288(%rsp), %ymm1
	vmovdqa	1256(%rsp), %ymm0
	vpshufb	%ymm1, %ymm0, %ymm0
	vmovdqa	%ymm0, 360(%rsp)
	vmovdqa	232(%rsp), %ymm0
	vpshufhw	$255, %ymm0, %ymm0
	vmovdqa	%ymm0, 392(%rsp)
	vmovdqa	392(%rsp), %ymm0
	vpshuflw	$255, %ymm0, %ymm0
	vmovdqa	%ymm0, 392(%rsp)
	vmovdqa	264(%rsp), %ymm0
	vmovdqa	%ymm0, 1192(%rsp)
	vmovdqa	392(%rsp), %ymm0
	vmovdqa	%ymm0, 1224(%rsp)
	vmovdqa	1192(%rsp), %ymm1
	vmovdqa	1224(%rsp), %ymm0
	vpmullw	%ymm0, %ymm1, %ymm0
	vmovdqa	%ymm0, 264(%rsp)
	vmovdqa	296(%rsp), %ymm0
	vmovdqa	%ymm0, 1128(%rsp)
	vmovdqa	392(%rsp), %ymm0
	vmovdqa	%ymm0, 1160(%rsp)
	vmovdqa	1128(%rsp), %ymm1
	vmovdqa	1160(%rsp), %ymm0
	vpmullw	%ymm0, %ymm1, %ymm0
	vmovdqa	%ymm0, 296(%rsp)
	vmovdqa	136(%rsp), %ymm0
	vmovdqa	%ymm0, 1064(%rsp)
	vmovdqa	392(%rsp), %ymm0
	vmovdqa	%ymm0, 1096(%rsp)
	vmovdqa	1064(%rsp), %ymm0
	vmovdqa	1096(%rsp), %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vmovdqa	%ymm0, 424(%rsp)
	vmovdqa	328(%rsp), %ymm0
	vmovdqa	%ymm0, 1000(%rsp)
	vmovdqa	424(%rsp), %ymm0
	vmovdqa	%ymm0, 1032(%rsp)
	vmovdqa	1000(%rsp), %ymm1
	vmovdqa	1032(%rsp), %ymm0
	vpmullw	%ymm0, %ymm1, %ymm0
	vmovdqa	%ymm0, 328(%rsp)
	vmovdqa	360(%rsp), %ymm0
	vmovdqa	%ymm0, 936(%rsp)
	vmovdqa	424(%rsp), %ymm0
	vmovdqa	%ymm0, 968(%rsp)
	vmovdqa	936(%rsp), %ymm1
	vmovdqa	968(%rsp), %ymm0
	vpmullw	%ymm0, %ymm1, %ymm0
	vmovdqa	%ymm0, 360(%rsp)
	vmovdqa	328(%rsp), %ymm0
	vmovdqa	%ymm0, 872(%rsp)
	vmovdqa	264(%rsp), %ymm0
	vmovdqa	%ymm0, 904(%rsp)
	vmovdqa	872(%rsp), %ymm1
	vmovdqa	904(%rsp), %ymm0
	vpaddw	%ymm0, %ymm1, %ymm0
	vmovdqa	%ymm0, 456(%rsp)
	vmovdqa	360(%rsp), %ymm0
	vmovdqa	%ymm0, 808(%rsp)
	vmovdqa	296(%rsp), %ymm0
	vmovdqa	%ymm0, 840(%rsp)
	vmovdqa	808(%rsp), %ymm1
	vmovdqa	840(%rsp), %ymm0
	vpaddw	%ymm0, %ymm1, %ymm0
	vmovdqa	%ymm0, 488(%rsp)
	vmovdqa	456(%rsp), %ymm0
	vmovdqa	%ymm0, 744(%rsp)
	vmovdqa	72(%rsp), %ymm0
	vmovdqa	%ymm0, 776(%rsp)
	vmovdqa	776(%rsp), %ymm1
	vmovdqa	744(%rsp), %ymm0
	vpshufb	%ymm1, %ymm0, %ymm0
	vmovdqa	%ymm0, 456(%rsp)
	vmovdqa	488(%rsp), %ymm0
	vmovdqa	%ymm0, 680(%rsp)
	vmovdqa	104(%rsp), %ymm0
	vmovdqa	%ymm0, 712(%rsp)
	vmovdqa	712(%rsp), %ymm1
	vmovdqa	680(%rsp), %ymm0
	vpshufb	%ymm1, %ymm0, %ymm0
	vmovdqa	%ymm0, 488(%rsp)
	vmovdqa	456(%rsp), %ymm0
	vmovdqa	%ymm0, 616(%rsp)
	vmovdqa	488(%rsp), %ymm0
	vmovdqa	%ymm0, 648(%rsp)
	vmovdqa	616(%rsp), %ymm1
	vmovdqa	648(%rsp), %ymm0
	vpaddq	%ymm0, %ymm1, %ymm0
	vmovdqa	%ymm0, 456(%rsp)
	vmovdqa	456(%rsp), %ymm0
	vmovdqa	%ymm0, 552(%rsp)
	vmovdqa	168(%rsp), %ymm0
	vmovdqa	%ymm0, 584(%rsp)
	vmovdqa	552(%rsp), %ymm1
	vmovdqa	584(%rsp), %ymm0
	vpaddq	%ymm0, %ymm1, %ymm0
	vmovdqa	%ymm0, 456(%rsp)
	movl	-100(%rsp), %eax
	imull	-84(%rsp), %eax
	sall	$2, %eax
	movslq	%eax, %rdx
	movl	-96(%rsp), %eax
	sall	$2, %eax
	cltq
	addq	%rax, %rdx
	movq	-112(%rsp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rsp)
	vmovdqa	456(%rsp), %ymm0
	vmovdqa	%ymm0, 520(%rsp)
	vmovdqa	520(%rsp), %ymm0
	movq	-16(%rsp), %rax
	vmovups	%xmm0, (%rax)
	vextracti128	$0x1, %ymm0, 16(%rax)
	nop
	addl	$8, -96(%rsp)
	jmp	.L107
.L89:
	addl	$1, -100(%rsp)
	jmp	.L108
.L88:
	movl	-92(%rsp), %eax
	cltq
	negq	%rax
	addq	%rax, -112(%rsp)
	movq	-112(%rsp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5535:
	.size	_Z11blendingSSEPcS_, .-_Z11blendingSSEPcS_
	.globl	_Z8blendingPKcS0_S0_c
	.type	_Z8blendingPKcS0_S0_c, @function
_Z8blendingPKcS0_S0_c:
.LFB5536:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movl	%ecx, %eax
	movb	%al, -76(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$0, -48(%rbp)
	leaq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z16readTextFromFilePKcPm
	movq	%rax, -24(%rbp)
	movq	$0, -40(%rbp)
	leaq	-40(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z16readTextFromFilePKcPm
	movq	%rax, -16(%rbp)
	movq	$0, -32(%rbp)
	cmpb	$111, -76(%rbp)
	jne	.L111
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z11blendingSSEPcS_
	movq	%rax, -32(%rbp)
	jmp	.L112
.L111:
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z8blendingPcS_
	movq	%rax, -32(%rbp)
.L112:
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z9writeFilePKcPcm
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L113
	call	__stack_chk_fail@PLT
.L113:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5536:
	.size	_Z8blendingPKcS0_S0_c, .-_Z8blendingPKcS0_S0_c
	.section	.rodata
.LC30:
	.string	"../Table.bmp"
.LC31:
	.string	"../AskhatCat.bmp"
.LC32:
	.string	"../merge.bmp"
	.text
	.globl	main
	.type	main, @function
main:
.LFB5537:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	leaq	.LC30(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	.LC31(%rip), %rax
	movq	%rax, -16(%rbp)
	leaq	.LC32(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$111, %ecx
	movq	%rax, %rdi
	call	_Z8blendingPKcS0_S0_c
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5537:
	.size	main, .-main
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB6018:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L118
	cmpl	$65535, -8(%rbp)
	jne	.L118
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
.L118:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6018:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__Z11getFileSizePKc, @function
_GLOBAL__sub_I__Z11getFileSizePKc:
.LFB6019:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6019:
	.size	_GLOBAL__sub_I__Z11getFileSizePKc, .-_GLOBAL__sub_I__Z11getFileSizePKc
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z11getFileSizePKc
	.hidden	__dso_handle
	.ident	"GCC: (Arch Linux 9.3.0-1) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
