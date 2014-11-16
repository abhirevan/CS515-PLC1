	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__611
	subl	$8, %esp
.Ltmp1:
	.cfi_def_cfa_offset 12
	movl	$0, %eax
	movl	%eax, %ecx
	addl	$0, %ecx
	addl	$0, %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
# BB#1:                                 # %__612
	movl	$1, %eax
	addl	$0, %eax
	movl	%eax, (%esp)
# BB#2:                                 # %__613
# BB#3:                                 # %__615
	movl	$1, %eax
	addl	$0, %eax
	movl	%eax, 4(%esp)
# BB#4:                                 # %__616
	movl	4(%esp), %eax
	addl	(%esp), %eax
	addl	$8, %esp
	ret
.Ltmp2:
	.size	program, .Ltmp2-program
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
