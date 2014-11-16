	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__23
	pushl	%eax
.Ltmp1:
	.cfi_def_cfa_offset 8
	movl	$3, %eax
	addl	$0, %eax
	movl	%eax, (%esp)
# BB#1:                                 # %__22
	movl	$0, %eax
	movl	(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_3
# BB#2:                                 # %__20
	movl	$1, %eax
	movl	(%esp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, (%esp)
	jmp	.LBB0_4
.LBB0_3:                                # %__21
	jmp	.LBB0_4
.LBB0_4:                                # %__19
	movl	(%esp), %eax
	popl	%edx
	ret
.Ltmp2:
	.size	program, .Ltmp2-program
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
