	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__27
	pushl	%eax
.Ltmp1:
	.cfi_def_cfa_offset 8
	movl	$3, %eax
	addl	$0, %eax
	movl	%eax, (%esp)
# BB#1:                                 # %__28
# BB#2:                                 # %__30
	movl	$1, %eax
	movl	(%esp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, (%esp)
# BB#3:                                 # %__31
	movl	(%esp), %eax
	popl	%edx
	ret
.Ltmp2:
	.size	program, .Ltmp2-program
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
