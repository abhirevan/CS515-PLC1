	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__560
	subl	$8, %esp
.Ltmp1:
	.cfi_def_cfa_offset 12
	movl	$0, %eax
	movl	%eax, %ecx
	addl	$0, %ecx
	movl	%ecx, 4(%esp)
	addl	$0, %eax
	movl	%eax, (%esp)
# BB#1:                                 # %__561
	movl	$0, %eax
	movl	4(%esp), %ecx
	imull	4(%esp), %ecx
	imull	4(%esp), %ecx
	imull	4(%esp), %ecx
	imull	4(%esp), %ecx
	imull	4(%esp), %ecx
	imull	4(%esp), %ecx
	imull	4(%esp), %ecx
	imull	4(%esp), %ecx
	imull	4(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_4
# BB#2:                                 # %__563
	movl	$1, %eax
	addl	$0, %eax
	movl	%eax, 4(%esp)
# BB#3:                                 # %__564
	jmp	.LBB0_4
.LBB0_4:                                # %__562
	movl	$1, %eax
	addl	$0, %eax
	movl	%eax, (%esp)
# BB#5:                                 # %__565
	movl	4(%esp), %eax
	addl	(%esp), %eax
	addl	$8, %esp
	ret
.Ltmp2:
	.size	program, .Ltmp2-program
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
