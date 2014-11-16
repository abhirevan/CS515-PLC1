	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__265
	pushl	%ebp
.Ltmp3:
	.cfi_def_cfa_offset 8
.Ltmp4:
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
.Ltmp5:
	.cfi_def_cfa_register %ebp
	pushl	%ebx
	subl	$20, %esp
.Ltmp6:
	.cfi_offset %ebx, -12
	movl	$3, %eax
	addl	$0, %eax
	movl	%eax, -8(%ebp)
# BB#1:                                 # %__266
	movl	$2, %eax
	movl	-8(%ebp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	setl	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_7
# BB#2:                                 # %__268
	jmp	.LBB0_3
.LBB0_3:                                # %__269
	movl	$1, %eax
	movl	-8(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -8(%ebp)
# BB#4:                                 # %__270
	movl	$1, %eax
	movl	-8(%ebp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	setg	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_11
# BB#5:                                 # %__272
	movl	$1, %eax
	movl	-8(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -8(%ebp)
# BB#6:                                 # %__273
	jmp	.LBB0_11
.LBB0_7:                                # %__274
	movl	$3, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	-8(%ebp), %edx
	addl	$0, %eax
	addl	%eax, %edx
	movl	%edx, (%ecx)
	movl	%ecx, -12(%ebp)         # 4-byte Spill
# BB#8:                                 # %__275
	movl	$1, %eax
	movl	-12(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	cmpl	%eax, %edx
	setg	%bl
	andb	$1, %bl
	movzbl	%bl, %eax
	cmpl	$0, %eax
	je	.LBB0_12
# BB#9:                                 # %__277
	movl	$1, %eax
	movl	-12(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	orl	%eax, %edx
	movl	%edx, (%ecx)
# BB#10:                                # %__278
	jmp	.LBB0_12
.LBB0_11:                               # %__271
	jmp	.LBB0_13
.LBB0_12:                               # %__276
	jmp	.LBB0_13
.LBB0_13:                               # %__279
	movl	-8(%ebp), %eax
	leal	-4(%ebp), %esp
	popl	%ebx
	popl	%ebp
	ret
.Ltmp7:
	.size	program, .Ltmp7-program
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
