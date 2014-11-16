	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__549
	subl	$8, %esp
.Ltmp1:
	.cfi_def_cfa_offset 12
	movl	$0, %eax
	movl	%eax, %ecx
	addl	$0, %ecx
	addl	$0, %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
# BB#1:                                 # %__550
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
# BB#2:                                 # %__552
	movl	$1, %eax
	addl	$0, %eax
	movl	%eax, 4(%esp)
# BB#3:                                 # %__553
	jmp	.LBB0_4
.LBB0_4:                                # %__551
	movl	$1, %eax
	addl	$0, %eax
	movl	%eax, (%esp)
# BB#5:                                 # %__554
	movl	4(%esp), %eax
	addl	(%esp), %eax
	addl	$8, %esp
	ret
.Ltmp2:
	.size	program, .Ltmp2-program
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
