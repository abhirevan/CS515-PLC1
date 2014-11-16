	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__185
	pushl	%ebp
.Ltmp2:
	.cfi_def_cfa_offset 8
.Ltmp3:
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
.Ltmp4:
	.cfi_def_cfa_register %ebp
	subl	$8, %esp
	movl	$3, %eax
	addl	$0, %eax
	movl	%eax, -4(%ebp)
# BB#1:                                 # %__184
	movl	$3, %eax
	movl	-4(%ebp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	setl	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_3
# BB#2:                                 # %__178
	movl	$1, %eax
	movl	-4(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -4(%ebp)
	jmp	.LBB0_8
.LBB0_3:                                # %__183
	jmp	.LBB0_4
.LBB0_4:                                # %__182
	movl	$1, %eax
	movl	-4(%ebp), %ecx
	addl	$0, %eax
	subl	%eax, %ecx
	movl	%ecx, -4(%ebp)
# BB#5:                                 # %__181
	movl	$1, %eax
	movl	-4(%ebp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	setg	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_7
# BB#6:                                 # %__179
	movl	-4(%ebp), %eax
	incl	%eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	%eax, (%ecx)
	jmp	.LBB0_8
.LBB0_7:                                # %__180
	jmp	.LBB0_8
.LBB0_8:                                # %__177
	movl	-4(%ebp), %eax
	movl	%ebp, %esp
	popl	%ebp
	ret
.Ltmp5:
	.size	program, .Ltmp5-program
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
