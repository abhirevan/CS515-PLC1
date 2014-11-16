	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__103
	subl	$8, %esp
.Ltmp1:
	.cfi_def_cfa_offset 12
	movl	$1, %eax
	movl	$0, %ecx
	addl	$0, %ecx
	addl	$0, %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
# BB#1:                                 # %__104
	movl	$1, %eax
	movl	4(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_3
# BB#2:                                 # %__106
	movl	$2, %eax
	addl	$0, %eax
	movl	%eax, 4(%esp)
	jmp	.LBB0_6
.LBB0_3:                                # %__108
	movl	$1, %eax
	movl	(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_7
# BB#4:                                 # %__110
	movl	$1, %eax
	addl	$0, %eax
	movl	%eax, 4(%esp)
# BB#5:                                 # %__111
	jmp	.LBB0_7
.LBB0_6:                                # %__107
	jmp	.LBB0_8
.LBB0_7:                                # %__109
	jmp	.LBB0_8
.LBB0_8:                                # %__112
	movl	4(%esp), %eax
	addl	$8, %esp
	ret
.Ltmp2:
	.size	program, .Ltmp2-program
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
