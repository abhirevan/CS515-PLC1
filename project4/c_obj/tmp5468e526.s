	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__30
	pushl	%eax
.Ltmp1:
	.cfi_def_cfa_offset 8
	movl	$3, %eax
	addl	$0, %eax
	movl	%eax, (%esp)
# BB#1:                                 # %__31
	movl	$0, %eax
	movl	(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_5
# BB#2:                                 # %__33
	jmp	.LBB0_3
.LBB0_3:                                # %__34
	movl	$1, %eax
	movl	(%esp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, (%esp)
# BB#4:                                 # %__35
	jmp	.LBB0_5
.LBB0_5:                                # %__32
	movl	(%esp), %eax
	popl	%edx
	ret
.Ltmp2:
	.size	program, .Ltmp2-program
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
